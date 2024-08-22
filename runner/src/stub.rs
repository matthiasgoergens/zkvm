use gdbstub::common::Signal;
use gdbstub::target::ext::base::singlethread::{
    SingleThreadBase, SingleThreadResume, SingleThreadResumeOps, SingleThreadSingleStep,
    SingleThreadSingleStepOps,
};
use gdbstub::target::ext::base::{singlethread, BaseOps};
use gdbstub::target::ext::breakpoints::{
    Breakpoints, BreakpointsOps, SwBreakpoint, SwBreakpointOps,
};
use gdbstub::target::{Target, TargetResult};
use gdbstub_arch::riscv::reg::RiscvCoreRegs;
use gdbstub_arch::riscv::Riscv32;

use crate::state::State;

impl Target for State {
    type Arch = Riscv32;
    type Error = ();

    #[inline(always)]
    fn base_ops(&mut self) -> BaseOps<Self::Arch, Self::Error> { BaseOps::SingleThread(self) }

    // opt-in to support for setting/removing breakpoints
    #[inline(always)]
    fn support_breakpoints(&mut self) -> Option<BreakpointsOps<Self>> { Some(self) }
}

impl SingleThreadBase for State {
    fn read_registers(&mut self, regs: &mut RiscvCoreRegs<u32>) -> TargetResult<(), Self> {
        todo!()
    }

    fn write_registers(&mut self, regs: &RiscvCoreRegs<u32>) -> TargetResult<(), Self> { todo!() }

    fn read_addrs(&mut self, start_addr: u32, data: &mut [u8]) -> TargetResult<usize, Self> {
        todo!()
    }

    fn write_addrs(&mut self, start_addr: u32, data: &[u8]) -> TargetResult<(), Self> { todo!() }

    // most targets will want to support at resumption as well...
    #[inline(always)]
    fn support_resume(&mut self) -> Option<SingleThreadResumeOps<Self>> { Some(self) }
}

impl SingleThreadResume for State {
    fn resume(&mut self, signal: Option<Signal>) -> Result<(), Self::Error> { todo!() }

    // ...and if the target supports resumption, it'll likely want to support
    // single-step resume as well

    #[inline(always)]
    fn support_single_step(&mut self) -> Option<SingleThreadSingleStepOps<'_, Self>> { Some(self) }
}

impl SingleThreadSingleStep for State {
    fn step(&mut self, signal: Option<Signal>) -> Result<(), Self::Error> { todo!() }
}

impl Breakpoints for State {
    // there are several kinds of breakpoints - this target uses software
    // breakpoints
    #[inline(always)]
    fn support_sw_breakpoint(&mut self) -> Option<SwBreakpointOps<Self>> { Some(self) }
}

impl SwBreakpoint for State {
    fn add_sw_breakpoint(&mut self, addr: u32, kind: usize) -> TargetResult<bool, Self> { todo!() }

    fn remove_sw_breakpoint(&mut self, addr: u32, kind: usize) -> TargetResult<bool, Self> {
        todo!()
    }
}
