#include <stdio.h>

void multstore(long, long, long *);

void decode1(long *xp, long *yp, long *zp) {
    long a = *xp;
    long b = *yp;
    long c = *zp;
    *yp = a;
    *zp = b;
    *xp = c;
}

int main() {
    long c = 0;
    // decode1(&a, &b, &c);
    long d = c;
    multstore(2, 3, &d);
    printf("2 * 3 --> %ld\n", d);
    return 0;
}

long mult2(long a, long b) {
    return a * b;
}
