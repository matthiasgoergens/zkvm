# VM Exercise

We solve the lion's share of the requirements by declaring Risc-V itself to be our source language.  That way translation to Risc-V becomes easy.

I have written some example programs in assembly language, because that's what the requirments ask for.  However, I trust you will find it easier to read example programs in Rust or C.  We can ask the compiler to produce the assembly files for us, if we want to.

(TODO: add how to run the compile and run the example programs.  Also make a dockerfile to get Risc-V's toolchain and qemu installed.)

Fibonacci example is to demonstrate a call stack like requirement point 2 asks for.

# Bonus challenge: custom instructions

The bonus challange asks us to custom implement instructions for some cryptographic algorithms.  As an example, I show how we can use GDB's Python API to implement a custom hash instruction.  This is a bit of a hack, but it's a fun hack.  It allows for quick prototyping.

In production usage, you might want to add the custom instruction directly to QEMU itself.  But that's a lot more work, and I would only do that after some profiling showed that the custom instruction (or gdb itself) was a bottleneck.  Keep in mind that the heavy lifting is not done in Python, but in a C extension.  So it's probably not as slow as you might think.

# How to run

You can follow [the instructions](https://github.com/riscv-collab/riscv-gnu-toolchain) to install the Risc-V toolchain natively, and then run the example programs.

To simplify things for you, we can also run via docker.  [Docker works with QEMU to run Risc-V programs.](https://docs.docker.com/build/building/multi-platform/)

If you are on Mac and using Docker desktop, things might just work.  On Linux, you might have to explicitly install QEMU and register it with `binfmt_misc`, like the [docs](https://docs.docker.com/build/building/multi-platform/) suggest:

```
docker run --privileged --rm tonistiigi/binfmt --install all
```

> You might need to restart your machine to make that work.

Now this works:

```bash
docker run --rm -it --platform linux/riscv64 riscv64/ubuntu bash
```

> If you are getting an error message like `exec /usr/bin/bash: exec format error`, then something went wrong with the `binfmt_misc` registration.  Run `docker run --privileged --rm tonistiigi/binfmt --install all` again and/or restart your machine.  If that still doesn't work, ask Matthias for help.

```bash
docker build --tag eternis-riscv64 . && docker run --rm -it --platform linux/riscv64 eternis-riscv64
```

Bind mount current directory, and set workdir:

```bash
docker run --rm -it --platform linux/riscv64 -v $(pwd):/work -w /work eternis-riscv64
```
