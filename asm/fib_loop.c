unsigned int fib_loop(unsigned int n) {
    if (n == 0) return 0;
    if (n == 1) return 1;
    unsigned int a = 0, b = 1, c;
    for (unsigned int i = 2; i <= n; i++) {
        c = a + b;
        a = b;
        b = c;
    }
    return b;
}
