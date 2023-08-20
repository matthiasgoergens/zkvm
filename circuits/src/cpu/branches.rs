use plonky2::field::packed::PackedField;
use plonky2::field::types::Field;
use starky::constraint_consumer::ConstraintConsumer;

use super::columns::CpuState;
use super::stark::is_binary;

/// Constraints for `less_than` and `not_diff`
pub(crate) fn comparison_constraints<P: PackedField>(
    lv: &CpuState<P>,
    yield_constr: &mut ConstraintConsumer<P>,
) {
    let lt = lv.less_than;
    is_binary(yield_constr, lt);

    // abs_diff calculation
    yield_constr.constraint((P::ONES - lt) * (lv.abs_diff - lv.signed_diff()));
    yield_constr.constraint(lt * (lv.abs_diff + lv.signed_diff()));

    // Enforce:
    // normalised_diff == 0 iff op1 == op2
    // normalised_diff == 1 iff op1 != op2
    is_binary(yield_constr, lv.normalised_diff);
    yield_constr.constraint(lv.signed_diff() * (P::ONES - lv.normalised_diff));
    yield_constr.constraint(lv.signed_diff() * lv.cmp_diff_inv - lv.normalised_diff);

    yield_constr.constraint(lt * (P::ONES - lv.normalised_diff));
}

/// Constraints for conditional branch operations
pub(crate) fn constraints<P: PackedField>(
    lv: &CpuState<P>,
    nv: &CpuState<P>,
    yield_constr: &mut ConstraintConsumer<P>,
) {
    let ops = &lv.inst.ops;
    let is_blt = ops.blt;
    let is_bltu = ops.bltu;
    let is_bge = ops.bge;
    let is_bgeu = ops.bgeu;

    let bumped_pc = lv.inst.pc + P::Scalar::from_noncanonical_u64(4);
    let branched_pc = lv.inst.branch_target;
    let next_pc = nv.inst.pc;

    let lt = lv.less_than;

    yield_constr.constraint((is_blt + is_bltu) * lt * (next_pc - branched_pc));
    yield_constr.constraint((is_blt + is_bltu) * (P::ONES - lt) * (next_pc - bumped_pc));

    yield_constr.constraint((is_bge + is_bgeu) * lt * (next_pc - bumped_pc));
    yield_constr.constraint((is_bge + is_bgeu) * (P::ONES - lt) * (next_pc - branched_pc));

    yield_constr.constraint(ops.beq * (P::ONES - lv.normalised_diff) * (next_pc - branched_pc));
    yield_constr.constraint(ops.beq * lv.normalised_diff * (next_pc - bumped_pc));

    yield_constr.constraint(ops.bne * lv.normalised_diff * (next_pc - branched_pc));
    yield_constr.constraint(ops.bne * (P::ONES - lv.normalised_diff) * (next_pc - bumped_pc));
}

#[cfg(test)]
#[allow(clippy::cast_possible_wrap)]
mod tests {
    use mozak_vm::instruction::{Args, Instruction, Op};
    use mozak_vm::test_utils::{simple_test_code, state_before_final, u32_extra};
    use proptest::prelude::ProptestConfig;
    use proptest::strategy::Just;
    use proptest::{prop_oneof, proptest};

    use crate::cpu::stark::CpuStark;
    use crate::test_utils::ProveAndVerify;
    fn test_cond_branch(a: u32, b: u32, op: Op) {
        let (program, record) = simple_test_code(
            &[
                Instruction {
                    op,
                    args: Args {
                        rd: 0,
                        rs1: 6,
                        rs2: 7,
                        branch_target: 8,
                        ..Args::default()
                    },
                },
                // if above branch is not taken R1 has value 10.
                Instruction {
                    op: Op::ADD,
                    args: Args {
                        rd: 1,
                        imm: 10,
                        ..Args::default()
                    },
                },
            ],
            &[],
            &[(6, a), (7, b)],
        );
        let taken = match op {
            Op::BLT => (a as i32) < (b as i32),
            Op::BLTU => a < b,
            Op::BGE => (a as i32) >= (b as i32),
            Op::BGEU => a >= b,
            Op::BEQ => a == b,
            Op::BNE => a != b,
            _ => unreachable!(),
        };
        assert_eq!(
            state_before_final(&record).get_register_value(1),
            if taken { 0 } else { 10 }
        );

        CpuStark::prove_and_verify(&program, &record).unwrap();
    }
    proptest! {
        #![proptest_config(ProptestConfig::with_cases(32))]
        #[test]
        fn prove_branch_proptest(a in u32_extra(), b in u32_extra(), op in prop_oneof![Just(Op::BLT), Just(Op::BLTU), Just(Op::BGE), Just(Op::BGEU), Just(Op::BEQ), Just(Op::BNE)]) {
            test_cond_branch(a, b, op);
        }
    }
}