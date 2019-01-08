#include <stdio.h>

void multstore(long, long, long *);
void remdiv(long, long, long *, long*);
void uremdiv(unsigned long, unsigned long, unsigned long *, unsigned long*);

void decode1(long *xp, long *yp, long *zp) {
    long a = *xp;
    long b = *yp;
    long c = *zp;
    *yp = a;
    *zp = b;
    *xp = c;
}

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
    long c = 0;
    // decode1(&a, &b, &c);
    long d = c;
    multstore(2, 3, &d);
    printf("2 * 3 --> %ld\n", d);
    long l1 = 20;
    long l2 = 7;
    long l3, l4;
    remdiv(l1, l2, &l3, &l4);
    printf("%ld %ld\n", l3, l4);
    return 0;
}

long mult2(long a, long b) {
    return a * b;
}
