#include <stdint.h>
#include <stdio.h>
#include <string.h>

// This one would go into a header file of our VM's standard library.
int sha256(char *str, unsigned int len, char *output) {
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
      :
      : "r"(syscall_number), "r"(str), "r"(len), "r"(output)
      : "memory" // clobbers
      );
}

int main(int argc, char **argv) {
  char *str = "Hello, World!\n";
  unsigned int len = strlen(str);
  char output[32];
  sha256(str, len, output);
  printf("output: ");
  for(int i = 0; i < 32; i++) {
    printf("%x ", output[i]);
  }
  printf("\n");
}
