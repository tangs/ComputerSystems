#include <stdio.h>

void multstore(long, long, long *);

void uchar2long(unsigned char* v1, long* v2) {
    *v2 = (long)(*v1);
}

int main() {
    // long d;
    // multstore(2, 3, &d);
    // printf("2 * 3 --> %ld\n", d);
    unsigned char v1 = 0x00;
    long v2 = 0;
    uchar2long(&v1, &v2);
    printf("%ld\n", v2);
    v1 = 0x80;
    uchar2long(&v1, &v2);
    printf("%ld\n", v2);
    v1 = 0xFF;
    uchar2long(&v1, &v2);
    printf("%ld\n", v2);
    return 0;
}

long mult2(long a, long b) {
    return a * b;
}
