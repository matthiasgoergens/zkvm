#include <stdint.h>
#include <stdio.h>
#include <string.h>

unsigned int fib(unsigned int n) {
  if (n < 2) {
    return n;
  } else
    return fib(n - 1) + fib(n - 2);
}

int main(int argc, char **argv) {
  unsigned int fib10 = fib(10);
  printf("fib: %d\n", fib10);
}
