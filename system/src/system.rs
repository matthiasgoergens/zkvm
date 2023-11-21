#[cfg(target_os = "zkvm")]
use core::arch::asm;

pub mod ecall {
    pub const HALT: u32 = 0;
    pub const PANIC: u32 = 1;
    pub const IO_READ_PRIVATE: u32 = 2;
    pub const POSEIDON2: u32 = 3;
    pub const IO_READ_PUBLIC: u32 = 4;
}

pub mod reg_abi {
    pub const REG_ZERO: u8 = 0; // zero constant
    pub const REG_RA: u8 = 1; // return address
    pub const REG_SP: u8 = 2; // stack pointer
    pub const REG_GP: u8 = 3; // global pointer
    pub const REG_TP: u8 = 4; // thread pointer
    pub const REG_T0: u8 = 5; // temporary
    pub const REG_T1: u8 = 6; // temporary
    pub const REG_T2: u8 = 7; // temporary
    pub const REG_S0: u8 = 8; // saved register
    pub const REG_FP: u8 = 8; // frame pointer
    pub const REG_S1: u8 = 9; // saved register
    pub const REG_A0: u8 = 10; // fn arg / return value
    pub const REG_A1: u8 = 11; // fn arg / return value
    pub const REG_A2: u8 = 12; // fn arg
    pub const REG_A3: u8 = 13; // fn arg
    pub const REG_A4: u8 = 14; // fn arg
    pub const REG_A5: u8 = 15; // fn arg
    pub const REG_A6: u8 = 16; // fn arg
    pub const REG_A7: u8 = 17; // fn arg
    pub const REG_S2: u8 = 18; // saved register
    pub const REG_S3: u8 = 19; // saved register
    pub const REG_S4: u8 = 20; // saved register
    pub const REG_S5: u8 = 21; // saved register
    pub const REG_S6: u8 = 22; // saved register
    pub const REG_S7: u8 = 23; // saved register
    pub const REG_S8: u8 = 24; // saved register
    pub const REG_S9: u8 = 25; // saved register
    pub const REG_S10: u8 = 26; // saved register
    pub const REG_S11: u8 = 27; // saved register
    pub const REG_T3: u8 = 28; // temporary
    pub const REG_T4: u8 = 29; // temporary
    pub const REG_T5: u8 = 30; // temporary
    pub const REG_T6: u8 = 31; // temporary
    pub const REG_MAX: u8 = 32; // maximum number of registers
}

pub fn syscall_poseidon2(input_ptr: *const u8, input_len: usize, output_ptr: *mut u8) {
    #[cfg(target_os = "zkvm")]
    unsafe {
        core::arch::asm!(
            "ecall",
            in ("a0") ecall::POSEIDON2,
            in ("a1") input_ptr,
            in ("a2") input_len,
            in ("a3") output_ptr,
        );
    }
    #[cfg(not(target_os = "zkvm"))]
    {
        let _ = input_ptr;
        let _ = input_len;
        let _ = output_ptr;
        unimplemented!()
    }
}

pub fn syscall_ioread_private(buf_ptr: *mut u8, buf_len: usize) {
    #[cfg(target_os = "zkvm")]
    unsafe {
        core::arch::asm!(
            "ecall",
            in ("a0") ecall::IO_READ_PRIVATE,
            in ("a1") buf_ptr,
            in ("a2") buf_len,
        );
    }
    #[cfg(not(target_os = "zkvm"))]
    {
        let _ = buf_ptr;
        let _ = buf_len;
        unimplemented!()
    }
}

pub fn syscall_ioread_public(buf_ptr: *mut u8, buf_len: usize) {
    #[cfg(target_os = "zkvm")]
    unsafe {
        core::arch::asm!(
        "ecall",
        in ("a0") ecall::IO_READ_PUBLIC,
        in ("a1") buf_ptr,
        in ("a2") buf_len,
        );
    }
    #[cfg(not(target_os = "zkvm"))]
    {
        let _ = buf_ptr;
        let _ = buf_len;
        unimplemented!()
    }
}

pub fn syscall_panic(msg_ptr: *const u8, msg_len: usize) {
    #[cfg(target_os = "zkvm")]
    unsafe {
        core::arch::asm!(
            "ecall",
            in ("a0") ecall::PANIC,
            in ("a1") msg_len,
            in ("a2") msg_ptr,
        );
    }
    #[cfg(not(target_os = "zkvm"))]
    {
        let _ = msg_ptr;
        let _ = msg_len;
        unimplemented!()
    }
}

pub fn syscall_halt(output: u8) {
    #[cfg(target_os = "zkvm")]
    // HALT syscall
    //
    // As per RISC-V Calling Convention a0/a1 (which are actually X10/X11) can be
    // used as function argument/result.
    // a0 is used to indicate that its HALT system call.
    // a1 is used to pass output bytes.
    unsafe {
        asm!(
            "ecall",
            in ("a0") ecall::HALT,
            in ("a1") output,
        );
        unreachable!();
    }
    #[cfg(not(target_os = "zkvm"))]
    {
        let _ = output;
        unimplemented!()
    }
}