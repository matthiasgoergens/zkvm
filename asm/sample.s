.section .text
.globl _start

_start:
    li a0, 10       # Load immediate 10 into register a0
    li a1, 20       # Load immediate 20 into register a1
    li a2,  5       # Load immediate 5 into register a2
    add a0, a0, a1  # Add a0 and a1, result in a0 (should be 30)
    mul a0, a0, a2  # Mul a0 and a2, result in a0 (should be 150)
    li a7, 93       # Exit syscall
    ecall           # Make system call (exit code should be 150)
