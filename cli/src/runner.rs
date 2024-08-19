//! Utility functions that helps the CLI to interact with the
//! [Mozak runner crate](mozak_runner).

use anyhow::Result;
use log::debug;
use mozak_runner::elf::Program;

pub fn load_program<F: std::io::Read>(mut elf: F) -> Result<Program> {
    let mut elf_bytes = Vec::new();
    let bytes_read = elf.read_to_end(&mut elf_bytes)?;
    debug!("Read {bytes_read} of ELF data.");
    Program::mozak_load_program(&elf_bytes)
}
