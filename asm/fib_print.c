#include <stdint.h>
#include <stdio.h>
#include <string.h>

// struct

unsigned int fib(unsigned int n) {
  if (n < 2) {
    return n;
  } else
    return fib(n - 1) + fib(n - 2);
}

int hash(char *str, unsigned int len, char *output) {
  int syscall_number = 23;

  asm volatile(
      // move the syscall number to a0
      "mv a0, %0\n"
      // move the string pointer to a1
      "mv a1, %1\n"
      // move the length to a2
      "mv a2, %2\n"
      // move the output pointer to a3
      "mv a3, %3\n"
      "ebreak\n"
      : "=m" (*output) /* output operand */
      // : "=m" (*(char (*)[32])output) /* Indicate that up to 32 bytes of memory are modified */
      
      : "r"(syscall_number), "r"(str), "r"(len), "r"(output)
      : "memory" // clobbers
      );
}

int main(int argc, char **argv) {
  unsigned int exit_code1 = fib(5);
  // asm volatile("ebreak\n");
  unsigned int exit_code = fib(10);
  printf("exit_code1: %d\n", exit_code);
  char *str = "Hello, World!\n";
  unsigned int len = strlen(str);
  char output[32];
  hash(str, len, output);

  // asm volatile(
  //     //   "li a0, 10\n" // Load immediate 10 into register a0
  //     "mv a0, %0\n"    // Move the exit code into a0 (argument register)
  //     "li a7, 93\n"    // Load the exit syscall number (93) into a7
  //     "ecall"          // Make the syscall
  //     :                /* no output operands */
  //     : "r"(exit_code) // input operand
  //     : "a0", "a7"     // clobbers
  // );
}
