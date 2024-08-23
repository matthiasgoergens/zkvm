#include <stdint.h>
#include <stdio.h>
#include <string.h>

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
      // : "=m" (*output) /* output operand */
      :
      // : "=m" (*(char (*)[32])output) /* Indicate that up to 32 bytes of memory are modified */
      
      : "r"(syscall_number), "r"(str), "r"(len), "r"(output)
      : "memory" // clobbers
      );
}

int main(int argc, char **argv) {
  unsigned int fib10 = fib(10);
  printf("fib: %d\n", fib10);
  char *str = "Hello, World!\n";
  unsigned int len = strlen(str);
  char output[32];
  hash(str, len, output);
  printf("output: ");
  for(int i = 0; i < 32; i++) {
    printf("%x ", output[i]);
  }
  printf("\n");
}
