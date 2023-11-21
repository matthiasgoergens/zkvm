use itertools::Itertools;
use mozak_runner::vm::Row;
use plonky2::hash::hash_types::RichField;
use plonky2::hash::hashing::PlonkyPermutation;
use plonky2::hash::poseidon2::Poseidon2Permutation;

use crate::generation::MIN_TRACE_LENGTH;
use crate::poseidon2_sponge::columns::{Ops, Poseidon2Sponge};

fn pad_poseidon2_sponge_trace<F: RichField>(
    mut trace: Vec<Poseidon2Sponge<F>>,
) -> Vec<Poseidon2Sponge<F>> {
    trace.resize(
        trace.len().next_power_of_two().max(MIN_TRACE_LENGTH),
        Poseidon2Sponge::default(),
    );
    trace
}

pub fn filter<F: RichField>(step_rows: &[Row<F>]) -> impl Iterator<Item = &Row<F>> {
    step_rows.iter().filter(|row| row.aux.poseidon2.is_some())
}

fn unroll_sponge_data<F: RichField>(row: &Row<F>) -> Vec<Poseidon2Sponge<F>> {
    let poseidon2 = row.aux.poseidon2.clone().expect("please pass filtered row");
    let mut unroll = vec![];
    let rate_size = u32::try_from(Poseidon2Permutation::<F>::RATE).expect("RATE > 2^32");
    assert_eq!(poseidon2.len % rate_size, 0);
    let unroll_count = u32::try_from(poseidon2.sponge_data.len()).expect("too many rows");

    let output_addr = poseidon2.output_addr;
    let mut input_addr = poseidon2.addr;
    let mut input_len = poseidon2.len;
    for i in 0..unroll_count {
        let ops: Ops<F> = Ops {
            is_init_permute: F::from_bool(i == 0),
            is_permute: F::from_bool(i != 0),
        };
        let sponge_datum = poseidon2
            .sponge_data
            .get(i as usize)
            .expect("unroll_count not consistent with number of permutations");
        unroll.push(Poseidon2Sponge {
            clk: F::from_canonical_u64(row.state.clk),
            ops,
            input_addr: F::from_canonical_u32(input_addr),
            output_addr: F::from_canonical_u32(output_addr),
            input_len: F::from_canonical_u32(input_len),
            preimage: sponge_datum.preimage,
            output: sponge_datum.output,
            gen_output: sponge_datum.gen_output,
        });
        input_addr += rate_size;
        input_len -= rate_size;
    }

    unroll
}

#[must_use]
pub fn generate_poseidon2_sponge_trace<F: RichField>(
    step_rows: &[Row<F>],
) -> Vec<Poseidon2Sponge<F>> {
    let trace = pad_poseidon2_sponge_trace(
        filter(step_rows)
            .map(|s| unroll_sponge_data(s))
            .collect_vec()
            .into_iter()
            .flatten()
            .collect::<Vec<Poseidon2Sponge<F>>>(),
    );
    log::trace!("Poseidon2 Sponge trace {:#?}", trace);
    trace
}