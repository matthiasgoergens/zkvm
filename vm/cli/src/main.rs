#![deny(clippy::pedantic)]
#![deny(clippy::cargo)]

use anyhow::Result;
use clap::{Parser, Subcommand};
use clap_derive::Args;
use clio::{Input, Output};
use log::debug;
#[cfg(feature = "bench")]
use mozak_cli::cli_benches::benches::BenchArgs;
use mozak_cli::runner::load_program;
use mozak_runner::state::{RawTapes, State};
use mozak_runner::vm::step;

#[derive(Parser, Debug, Clone)]
#[command(author, version, about, long_about = None)]
struct Cli {
    #[clap(flatten)]
    verbose: clap_verbosity_flag::Verbosity,
    #[command(subcommand)]
    command: Command,
    /// Debug API, default is OFF, currently only `prove` command is supported
    #[arg(short, long)]
    debug: bool,
}

#[derive(Clone, Debug, Args)]
pub struct RunArgs {
    elf: Input,
    // TODO(Matthias): restore tapes.
    // #[arg(long)]
    // system_tape: Option<Input>,
}

#[derive(Clone, Debug, Args)]
pub struct ProveArgs {
    elf: Input,
    proof: Output,
    #[arg(long)]
    batch_proof: Option<Output>,
    #[arg(long)]
    system_tape: Option<Input>,
    recursive_proof: Option<Output>,
}

#[derive(Clone, Debug, Subcommand)]
enum Command {
    /// Decode a given ELF and prints the program
    Decode { elf: Input },
    /// Decode and execute a given ELF. Prints the final state of
    /// the registers
    Run(RunArgs),
}

/// Run me eg like `cargo run -- -vvv run vm/tests/testdata/rv32ui-p-addi
/// iotape.txt`
#[allow(clippy::too_many_lines)]
fn main() -> Result<()> {
    let cli = Cli::parse();
    env_logger::Builder::new()
        .filter_level(cli.verbose.log_level_filter())
        .init();
    match cli.command {
        Command::Decode { elf } => {
            let program = load_program(elf)?;
            debug!("{program:?}");
        }
        Command::Run(RunArgs { elf }) => {
            let program = load_program(elf).unwrap();
            // TODO(Matthias): restore tapes.
            let raw_tapes = RawTapes::default();
            let state: State = State::new(program.clone(), raw_tapes);
            step(&program, state)?;
        }
    }
    Ok(())
}
