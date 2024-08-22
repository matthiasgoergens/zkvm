We want to run Risc-V via docker.

We need docker and qemu.

The [docs](https://docs.docker.com/build/building/multi-platform/) say that we need to register with `binfmt_misc` on Linux:

```
docker run --privileged --rm tonistiigi/binfmt --install all
```

(Without this we are getting `exec /usr/bin/bash: exec format error`.)

(Might need to restart your machine to make that work.)

Now this works:

```bash
docker run --rm -it --platform linux/riscv64 riscv64/ubuntu bash
```

# Capturing core dumps for QEMU

https://libvirt.org/kbase/qemu-core-dump.html

https://github.com/daniel5151/gdbstub seems neat to drive GDB from Rust.  Let's see, if we need that.

# Deliverables

## Specification of the VM instruction set (for all implemented tiers)

We use Risc-V as the [VM instruction set](https://riscv.org/technical/specifications/).  Specifically, RV64I+M.  That's the Base Integer Instruction set with the Multiplication and Division extension.

## Compiler and assembler source code

Follow [these instructions](https://www.gnu.org/software/binutils/) to download the source for the GNU assembler, which we use to compile and assemble our VM assembly code.

TODO: link to all the glue code we need inside of our repository.

## Example programs for each tier (simple arithmetic, control flow, and if implemented, transactions

TODO: write the example programs.

TODO: Link to the Risc-V official example / test programs, and our glue code for setting them up.

## Compiled RISCV assembly output for each example program

TODO: write the 

## Test suite covering implemented features

TODO: port over Risc-V test suite.
