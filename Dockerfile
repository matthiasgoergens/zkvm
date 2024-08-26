FROM greyltc/archlinux-aur
RUN pacman --noconfirm -Suy tmux qemu gdb gcc qemu-user-static
RUN aur-install riscv-gnu-toolchain-bin
