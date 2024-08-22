// Implementation for various ecall functions.

use std::str::from_utf8;

use crate::constants::ecall;
use crate::constants::reg_abi::{REG_A0, REG_A1, REG_A2};
use crate::state::{read_bytes, Aux, State, StorageDeviceEntry, StorageDeviceOpcode};

impl State {
    fn ecall_halt(self) -> (Aux, Self) {
        // Note: we don't advance the program counter for 'halt'.
        // That is we treat 'halt' like an endless loop.
        (
            Aux {
                will_halt: true,
                ..Aux::default()
            },
            self.halt(),
        )
    }

    /// # Panics
    ///
    /// Panics if while executing `IO_READ`, I/O tape does not have sufficient
    /// bytes.
    fn ecall_read(mut self, op: StorageDeviceOpcode) -> (Aux, Self) {
        let buffer_start = self.get_register_value(REG_A1);
        let num_bytes_requested = self.get_register_value(REG_A2);
        log::trace!("ECALL {:?}", op);

        let data = match op {
            StorageDeviceOpcode::StorePublic =>
                read_bytes(&mut self.public_tape.data, num_bytes_requested as usize),
            StorageDeviceOpcode::StorePrivate =>
                read_bytes(&mut self.private_tape.data, num_bytes_requested as usize),
            StorageDeviceOpcode::None => panic!(),
        };
        let data_len = u32::try_from(data.len()).expect("cannot fit data.len() into u32");
        let mem_addresses_used: Vec<u32> = (0..data_len)
            .map(|i| buffer_start.wrapping_add(i))
            .collect();
        (
            Aux {
                dst_val: data_len,
                mem_addresses_used,
                storage_device_entry: Some(StorageDeviceEntry {
                    addr: buffer_start,
                    op,
                    data: data.iter().copied().collect(),
                }),
                ..Default::default()
            },
            data.iter()
                .enumerate()
                .fold(self, |acc, (i, byte)| {
                    acc.store_u8(
                        buffer_start.wrapping_add(u32::try_from(i).expect("cannot fit i into u32")),
                        *byte,
                    )
                    .unwrap()
                })
                .bump_pc(),
        )
    }

    /// # Panics
    ///
    /// Panics if Vec<u8> to string conversion fails.
    fn ecall_panic(self) -> (Aux, Self) {
        let msg_ptr = self.get_register_value(REG_A1);
        let msg_len = self.get_register_value(REG_A2);
        let mut msg_vec = vec![];
        for addr in msg_ptr..(msg_ptr + msg_len) {
            msg_vec.push(self.load_u8(addr));
        }
        panic!(
            "VM panicked with msg: {}",
            from_utf8(&msg_vec).expect("A valid utf8 VM panic message should be provided")
        );
    }

    /// Outputs the VM trace log at `clk`. Useful for debugging.
    /// # Panics
    ///
    /// Panics if Vec<u8> to string conversion fails.
    fn ecall_trace_log(self) -> (Aux, Self) {
        let msg_ptr = self.get_register_value(REG_A1);
        let msg_len = self.get_register_value(REG_A2);
        let mut msg_vec = vec![];
        for addr in msg_ptr..(msg_ptr + msg_len) {
            msg_vec.push(self.load_u8(addr));
        }
        log::debug!(
            "VM TRACE LOG: {}",
            from_utf8(&msg_vec).expect("A valid utf8 VM trace log message should be provided")
        );
        (Aux::default(), self.bump_pc())
    }

    #[must_use]
    pub fn ecall(self) -> (Aux, Self) {
        log::trace!(
            "ecall '{}' at clk: {}",
            ecall::log(self.get_register_value(REG_A0)),
            self.clk
        );
        match self.get_register_value(REG_A0) {
            ecall::HALT => self.ecall_halt(),
            ecall::PRIVATE_TAPE => self.ecall_read(StorageDeviceOpcode::StorePrivate),
            ecall::PUBLIC_TAPE => self.ecall_read(StorageDeviceOpcode::StorePublic),
            ecall::PANIC => self.ecall_panic(),
            ecall::VM_TRACE_LOG => self.ecall_trace_log(),
            _ => (Aux::default(), self.bump_pc()),
        }
    }
}
