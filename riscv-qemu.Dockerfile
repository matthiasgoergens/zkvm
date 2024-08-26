FROM --platform=linux/riscv64 riscv64/ubuntu

RUN apt-get update && \
    apt-get --yes install gcc gdb tmux
WORKDIR /vm
