unsigned int fib(unsigned int n) {
  if (n < 2) {
    return n;
  } else
    return fib(n - 1) + fib(n - 2);
}

void _start() {
  unsigned int exit_code1 = fib(5);
  asm volatile("ebreak\n");
  unsigned int exit_code = fib(10);
  asm volatile("ebreak\n");
  asm volatile(
      //   "li a0, 10\n" // Load immediate 10 into register a0
      "mv a0, %0\n"    // Move the exit code into a0 (argument register)
      "li a7, 93\n"    // Load the exit syscall number (93) into a7
      "ecall"          // Make the syscall
      :                /* no output operands */
      : "r"(exit_code) // input operand
      : "a0", "a7"     // clobbers
  );
}
