use itertools::Itertools;
use mozak_vm::instruction::Op;
use mozak_vm::vm::Row;
use plonky2::hash::hash_types::RichField;

use crate::cpu::columns as cpu_cols;
use crate::utils::{from_, pad_trace};

#[allow(clippy::missing_panics_doc)]
pub fn generate_cpu_trace<F: RichField>(step_rows: &[Row]) -> [Vec<F>; cpu_cols::NUM_CPU_COLS] {
    let trace_len = step_rows.len() - 1;
    let mut trace: Vec<Vec<F>> = vec![vec![F::ZERO; trace_len]; cpu_cols::NUM_CPU_COLS];
    for (i, (s, ns)) in step_rows.iter().tuple_windows().enumerate() {
        trace[cpu_cols::COL_CLK][i] = from_(s.state.clk);
        trace[cpu_cols::COL_PC][i] = from_(s.state.get_pc());

        let inst = s.state.current_instruction();

        trace[cpu_cols::COL_RS1][i] = from_(inst.data.rs1);
        trace[cpu_cols::COL_RS2][i] = from_(inst.data.rs2);
        trace[cpu_cols::COL_RD][i] = from_(inst.data.rd);
        trace[cpu_cols::COL_OP1_VALUE][i] =
            from_(s.state.get_register_value(usize::from(inst.data.rs1)));
        trace[cpu_cols::COL_OP2_VALUE][i] =
            from_(s.state.get_register_value(usize::from(inst.data.rs2)));
        // NOTE: Updated value of DST register is next step.
        trace[cpu_cols::COL_DST_VALUE][i] =
            from_(ns.state.get_register_value(usize::from(inst.data.rd)));
        trace[cpu_cols::COL_IMM_VALUE][i] = from_(inst.data.imm);
        // NOTE: Updated halted status is in next step.
        trace[cpu_cols::COL_S_HALT][i] = from_(ns.state.has_halted());
        for j in 0..32_usize {
            trace[cpu_cols::COL_START_REG + j][i] = from_(s.state.get_register_value(j));
        }

        match inst.op {
            Op::ADD => trace[cpu_cols::COL_S_ADD][i] = F::ONE,
            Op::BEQ => trace[cpu_cols::COL_S_BEQ][i] = F::ONE,
            Op::ECALL => trace[cpu_cols::COL_S_ECALL][i] = F::ONE,
            _ => {}
        }
    }

    // For expanded trace from `trace_len` to `trace_len's power of two`,
    // we use last row `HALT` to pad them.
    let trace = pad_trace(trace, Some(cpu_cols::COL_CLK));

    log::trace!("trace {:?}", trace);
    trace.try_into().unwrap_or_else(|v: Vec<Vec<F>>| {
        panic!(
            "Expected a Vec of length {} but it was {}",
            cpu_cols::NUM_CPU_COLS,
            v.len()
        )
    })
}
