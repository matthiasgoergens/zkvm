//! Permutation arguments
#![allow(clippy::module_name_repetitions)]
use std::fmt::Debug;

use itertools::Itertools;
use plonky2::field::batch_util::batch_multiply_inplace;
use plonky2::field::extension::{Extendable, FieldExtension};
use plonky2::field::packed::PackedField;
use plonky2::field::polynomial::PolynomialValues;
use plonky2::field::types::Field;
use plonky2::hash::hash_types::RichField;
use plonky2::iop::challenger::Challenger;
use plonky2::plonk::config::Hasher;
use plonky2::plonk::plonk_common::reduce_with_powers;
use plonky2::util::reducing::ReducingFactor;
use plonky2_maybe_rayon::{MaybeIntoParIter, ParallelIterator};
use starky::config::StarkConfig;
use starky::constraint_consumer::ConstraintConsumer;
use starky::permutation::PermutationPair;
use starky::stark::Stark;
use starky::vars::StarkEvaluationVars;

/// A single instance of a permutation check protocol.
pub(crate) struct PermutationInstance<'a, T: Copy + Eq + PartialEq + Debug> {
    pub(crate) pair: &'a PermutationPair,
    pub(crate) challenge: GrandProductChallenge<T>,
}

/// Randomness for a single instance of a permutation check protocol.
#[derive(Copy, Clone, Eq, PartialEq, Debug)]
pub(crate) struct GrandProductChallenge<T: Copy + Eq + PartialEq + Debug> {
    /// Randomness used to combine multiple columns into one.
    pub(crate) beta: T,
    /// Random offset that's added to the beta-reduced column values.
    pub(crate) gamma: T,
}

impl<F: Field> GrandProductChallenge<F> {
    pub(crate) fn combine<'a, FE, P, T: IntoIterator<Item = &'a P>, const D2: usize>(
        &self,
        terms: T,
    ) -> P
    where
        FE: FieldExtension<D2, BaseField = F>,
        P: PackedField<Scalar = FE>,
        T::IntoIter: DoubleEndedIterator, {
        reduce_with_powers(terms, FE::from_basefield(self.beta)) + FE::from_basefield(self.gamma)
    }
}
/// Like `PermutationChallenge`, but with `num_challenges` copies to boost
/// soundness.
#[derive(Clone, Eq, PartialEq, Debug)]
pub(crate) struct GrandProductChallengeSet<T: Copy + Eq + PartialEq + Debug> {
    pub(crate) challenges: Vec<GrandProductChallenge<T>>,
}

/// Compute all Z polynomials (for permutation arguments).
pub(crate) fn compute_permutation_z_polys<F, S, const D: usize>(
    stark: &S,
    config: &StarkConfig,
    trace_poly_values: &[PolynomialValues<F>],
    permutation_challenge_sets: &[GrandProductChallengeSet<F>],
) -> Vec<PolynomialValues<F>>
where
    F: RichField + Extendable<D>,
    S: Stark<F, D>, {
    let permutation_pairs = stark.permutation_pairs();
    let permutation_batches = get_permutation_batches(
        &permutation_pairs,
        permutation_challenge_sets,
        config.num_challenges,
        stark.permutation_batch_size(),
    );

    permutation_batches
        .into_par_iter()
        .map(|instances| compute_permutation_z_poly(&instances, trace_poly_values))
        .collect()
}

/// Compute a single Z polynomial.
#[allow(clippy::similar_names)]
fn compute_permutation_z_poly<F: Field>(
    instances: &[PermutationInstance<F>],
    trace_poly_values: &[PolynomialValues<F>],
) -> PolynomialValues<F> {
    let degree = trace_poly_values[0].len();
    let (reduced_lhs_polys, reduced_rhs_polys): (Vec<_>, Vec<_>) = instances
        .iter()
        .map(|instance| permutation_reduced_polys(instance, trace_poly_values, degree))
        .unzip();

    let numerator = poly_product_elementwise(reduced_lhs_polys.into_iter());
    let denominator = poly_product_elementwise(reduced_rhs_polys.into_iter());

    // Compute the quotients.
    let denominator_inverses = F::batch_multiplicative_inverse(&denominator.values);
    let mut quotients = numerator.values;
    batch_multiply_inplace(&mut quotients, &denominator_inverses);

    // Compute Z, which contains partial products of the quotients.
    let mut partial_products = Vec::with_capacity(degree);
    let mut acc = F::ONE;
    for q in quotients {
        partial_products.push(acc);
        acc *= q;
    }
    PolynomialValues::new(partial_products)
}

/// Computes the reduced polynomial, `\sum beta^i f_i(x) + gamma`, for both the
/// "left" and "right" sides of a given `PermutationPair`.
fn permutation_reduced_polys<F: Field>(
    instance: &PermutationInstance<F>,
    trace_poly_values: &[PolynomialValues<F>],
    degree: usize,
) -> (PolynomialValues<F>, PolynomialValues<F>) {
    let PermutationInstance {
        pair: PermutationPair { column_pairs },
        challenge: GrandProductChallenge { beta, gamma },
    } = instance;

    let mut reduced_lhs = PolynomialValues::constant(*gamma, degree);
    let mut reduced_rhs = PolynomialValues::constant(*gamma, degree);
    for ((lhs, rhs), weight) in column_pairs.iter().zip(beta.powers()) {
        reduced_lhs.add_assign_scaled(&trace_poly_values[*lhs], weight);
        reduced_rhs.add_assign_scaled(&trace_poly_values[*rhs], weight);
    }
    (reduced_lhs, reduced_rhs)
}

/// Computes the elementwise product of a set of polynomials. Assumes that the
/// set is non-empty and that each polynomial has the same length.
fn poly_product_elementwise<F: Field>(
    mut polys: impl Iterator<Item = PolynomialValues<F>>,
) -> PolynomialValues<F> {
    let mut product = polys.next().expect("Expected at least one polynomial");
    for poly in polys {
        batch_multiply_inplace(&mut product.values, &poly.values);
    }
    product
}

fn get_grand_product_challenge<F: RichField, H: Hasher<F>>(
    challenger: &mut Challenger<F, H>,
) -> GrandProductChallenge<F> {
    let beta = challenger.get_challenge();
    let gamma = challenger.get_challenge();
    GrandProductChallenge { beta, gamma }
}

pub(crate) fn get_grand_product_challenge_set<F: RichField, H: Hasher<F>>(
    challenger: &mut Challenger<F, H>,
    num_challenges: usize,
) -> GrandProductChallengeSet<F> {
    GrandProductChallengeSet {
        challenges: (0..num_challenges)
            .map(|_| get_grand_product_challenge(challenger))
            .collect(),
    }
}

pub(crate) fn get_n_grand_product_challenge_sets<F: RichField, H: Hasher<F>>(
    challenger: &mut Challenger<F, H>,
    num_challenges: usize,
    num_sets: usize,
) -> Vec<GrandProductChallengeSet<F>> {
    (0..num_sets)
        .map(|_| get_grand_product_challenge_set(challenger, num_challenges))
        .collect()
}

/// Get a list of instances of our batch-permutation argument. These are
/// permutation arguments where the same `Z(x)` polynomial is used to check more
/// than one permutation. Before batching, each permutation pair leads to
/// `num_challenges` permutation arguments, so we start with the cartesian
/// product of `permutation_pairs` and `0..num_challenges`. Then we chunk these
/// arguments based on our batch size.
pub(crate) fn get_permutation_batches<'a, T: Copy + Eq + PartialEq + Debug>(
    permutation_pairs: &'a [PermutationPair],
    permutation_challenge_sets: &[GrandProductChallengeSet<T>],
    num_challenges: usize,
    batch_size: usize,
) -> Vec<Vec<PermutationInstance<'a, T>>> {
    permutation_pairs
        .iter()
        .cartesian_product(0..num_challenges)
        .chunks(batch_size)
        .into_iter()
        .map(|batch| {
            batch
                .enumerate()
                .map(|(i, (pair, chal))| {
                    let challenge = permutation_challenge_sets[i].challenges[chal];
                    PermutationInstance { pair, challenge }
                })
                .collect_vec()
        })
        .collect()
}

pub struct PermutationCheckVars<F, FE, P, const D2: usize>
where
    F: Field,
    FE: FieldExtension<D2, BaseField = F>,
    P: PackedField<Scalar = FE>, {
    pub(crate) local_zs: Vec<P>,
    pub(crate) next_zs: Vec<P>,
    pub(crate) permutation_challenge_sets: Vec<GrandProductChallengeSet<F>>,
}

pub(crate) fn eval_permutation_checks<F, FE, P, S, const D: usize, const D2: usize>(
    stark: &S,
    config: &StarkConfig,
    vars: StarkEvaluationVars<FE, P, { S::COLUMNS }, { S::PUBLIC_INPUTS }>,
    permutation_vars: PermutationCheckVars<F, FE, P, D2>,
    consumer: &mut ConstraintConsumer<P>,
) where
    F: RichField + Extendable<D>,
    FE: FieldExtension<D2, BaseField = F>,
    P: PackedField<Scalar = FE>,
    S: Stark<F, D>, {
    let PermutationCheckVars {
        local_zs,
        next_zs,
        permutation_challenge_sets,
    } = permutation_vars;

    // Check that Z(1) = 1;
    for &z in &local_zs {
        consumer.constraint_first_row(z - FE::ONE);
    }

    let permutation_pairs = stark.permutation_pairs();

    let permutation_batches = get_permutation_batches(
        &permutation_pairs,
        &permutation_challenge_sets,
        config.num_challenges,
        stark.permutation_batch_size(),
    );

    // Each zs value corresponds to a permutation batch.
    for (i, instances) in permutation_batches.iter().enumerate() {
        // Z(gx) * down = Z x  * up
        let (reduced_lhs, reduced_rhs): (Vec<P>, Vec<P>) = instances
            .iter()
            .map(|instance| {
                let PermutationInstance {
                    pair: PermutationPair { column_pairs },
                    challenge: GrandProductChallenge { beta, gamma },
                } = instance;
                let mut factor = ReducingFactor::new(*beta);
                let (lhs, rhs): (Vec<_>, Vec<_>) = column_pairs
                    .iter()
                    .map(|&(i, j)| (vars.local_values[i], vars.local_values[j]))
                    .unzip();
                (
                    factor.reduce_ext(lhs.into_iter()) + FE::from_basefield(*gamma),
                    factor.reduce_ext(rhs.into_iter()) + FE::from_basefield(*gamma),
                )
            })
            .unzip();
        let constraint = next_zs[i] * reduced_rhs.into_iter().product::<P>()
            - local_zs[i] * reduced_lhs.into_iter().product::<P>();
        consumer.constraint(constraint);
    }
}