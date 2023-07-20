use itertools::{izip, Itertools};
use mozak_vm::instruction::Op;
use mozak_vm::vm::Row;
use plonky2::hash::hash_types::RichField;

use crate::bitwise::columns as cols;
use crate::cpu::columns::{self as cpu_cols};
use crate::lookup::permute_cols;
use crate::utils::from_u32;

#[must_use]
fn filter_bitwise_trace(step_rows: &[Row]) -> Vec<usize> {
    step_rows
        .iter()
        .enumerate()
        .filter(|(_, row)| {
            matches!(
                row.state.current_instruction().op,
                // TODO: Figure out a less error-prone way to check whether we need to deal with a
                // column.
                Op::AND | Op::OR | Op::XOR | Op::SLL | Op::SRL | Op::SRA
            )
        })
        .map(|(i, _row)| i)
        .collect()
}

#[must_use]
#[allow(clippy::missing_panics_doc)]
#[allow(clippy::cast_possible_truncation)]
pub fn generate_bitwise_trace<F: RichField>(
    step_rows: &[Row],
    cpu_trace: &[Vec<F>; cpu_cols::NUM_CPU_COLS],
) -> [Vec<F>; cols::NUM_BITWISE_COL] {
    let filtered_step_rows = filter_bitwise_trace(step_rows);
    let trace_len = filtered_step_rows.len();
    let ext_trace_len = trace_len.max(cols::BITWISE_U8_SIZE).next_power_of_two();
    let mut trace: Vec<Vec<F>> = vec![vec![F::ZERO; ext_trace_len]; cols::NUM_BITWISE_COL];
    for (i, clk) in filtered_step_rows.iter().enumerate() {
        let xor_a = cpu_trace[cpu_cols::XOR_A][*clk];
        let xor_b = cpu_trace[cpu_cols::XOR_B][*clk];
        let xor_out = cpu_trace[cpu_cols::XOR_OUT][*clk];

        trace[cols::OP1][i] = xor_a;
        trace[cols::OP2][i] = xor_b;
        trace[cols::RES][i] = xor_out;
        // TODO: make the CPU trace somehow pass the u32 values as well, not just the
        // field elements. So we don't have to reverse engineer them here.
        for (cols, limbs) in [
            (
                cols::OP1_LIMBS,
                (xor_a.to_canonical_u64() as u32).to_le_bytes(),
            ),
            (
                cols::OP2_LIMBS,
                (xor_b.to_canonical_u64() as u32).to_le_bytes(),
            ),
            (
                cols::RES_LIMBS,
                (xor_out.to_canonical_u64() as u32).to_le_bytes(),
            ),
        ] {
            for (col, limb) in izip!(cols, limbs) {
                trace[col][i] = from_u32(limb.into());
            }
        }
    }

    // add FIXED bitwise table
    // 2^8 * 2^8 possible rows
    trace[cols::FIX_RANGE_CHECK_U8] = cols::RANGE_U8.map(|x| from_u32(x.into())).collect();
    trace[cols::FIX_RANGE_CHECK_U8].resize(ext_trace_len, F::ZERO);

    for (index, (op1, op2)) in cols::RANGE_U8.cartesian_product(cols::RANGE_U8).enumerate() {
        trace[cols::FIX_BITWISE_OP1][index] = from_u32(op1.into());
        trace[cols::FIX_BITWISE_OP2][index] = from_u32(op2.into());
        trace[cols::FIX_BITWISE_RES][index] = from_u32((op1 ^ op2).into());
    }

    let base: F = from_u32(cols::BASE.into());
    // FIXME: make the verifier check that we used the right bitwise lookup table.
    // See https://github.com/0xmozak/mozak-vm/issues/309
    // TODO: use a random linear combination of the table columns to 'compress'
    // them. That would save us a bunch of range checks on the limbs.
    // However see https://github.com/0xmozak/mozak-vm/issues/310 for some potential issues with that.

    for i in 0..trace[0].len() {
        for (compress_limb, op1_limb, op2_limb, res_limb) in izip!(
            cols::COMPRESS_LIMBS,
            cols::OP1_LIMBS,
            cols::OP2_LIMBS,
            cols::RES_LIMBS
        ) {
            trace[compress_limb][i] =
                trace[op1_limb][i] + base * (trace[op2_limb][i] + base * trace[res_limb][i]);
        }

        trace[cols::FIX_COMPRESS][i] = trace[cols::FIX_BITWISE_OP1][i]
            + base * (trace[cols::FIX_BITWISE_OP2][i] + base * trace[cols::FIX_BITWISE_RES][i]);
    }

    // add the permutation information
    for (op_limbs_permuted, range_check_permuted, op_limbs, table_col) in [
        (
            cols::OP1_LIMBS_PERMUTED,
            cols::FIX_RANGE_CHECK_U8_PERMUTED.skip(0),
            cols::OP1_LIMBS,
            cols::FIX_RANGE_CHECK_U8,
        ),
        (
            cols::OP2_LIMBS_PERMUTED,
            cols::FIX_RANGE_CHECK_U8_PERMUTED.skip(4),
            cols::OP2_LIMBS,
            cols::FIX_RANGE_CHECK_U8,
        ),
        (
            cols::RES_LIMBS_PERMUTED,
            cols::FIX_RANGE_CHECK_U8_PERMUTED.skip(8),
            cols::RES_LIMBS,
            cols::FIX_RANGE_CHECK_U8,
        ),
        (
            cols::COMPRESS_PERMUTED,
            cols::FIX_COMPRESS_PERMUTED.skip(0),
            cols::COMPRESS_LIMBS,
            cols::FIX_COMPRESS,
        ),
    ] {
        for (op_limb_permuted, range_check_limb_permuted, op_limb) in
            izip!(op_limbs_permuted, range_check_permuted, op_limbs)
        {
            (trace[op_limb_permuted], trace[range_check_limb_permuted]) =
                permute_cols(&trace[op_limb], &trace[table_col]);
        }
    }

    let trace_row_vecs = trace.try_into().unwrap_or_else(|v: Vec<Vec<F>>| {
        panic!(
            "Expected a Vec of length {} but it was {}",
            cols::NUM_BITWISE_COL,
            v.len()
        )
    });
    log::trace!("trace {:?}", trace_row_vecs);
    trace_row_vecs
}