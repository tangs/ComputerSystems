#include <stdio.h>

void multstore(long, long, long *);
void remdiv(long, long, long *, long*);
void uremdiv(unsigned long, unsigned long, unsigned long *, unsigned long*);
long fact_do(long);
long func_paras(long, long, long, long, long, long, long);

void decode1(long *xp, long *yp, long *zp) {
    long a = *xp;
    long b = *yp;
    long c = *zp;
    *yp = a;
    *zp = b;
    *xp = c;
}

void fun(int* a) {
    if (*a > 0) {
        *a = 4;
    } else {
        *a = 6;
    }

}

void uchar2long(unsigned char* v1, long* v2) {
    *v2 = (long)(*v1);
}

int main() {
    // long d;
    // multstore(2, 3, &d);
    // printf("2 * 3 --> %ld\n", d);
    // unsigned char v1 = 0x00;
    // long v2 = 0;
    // uchar2long(&v1, &v2);
    // printf("%ld\n", v2);
    // v1 = 0x80;
    // uchar2long(&v1, &v2);
    // printf("%ld\n", v2);
    // v1 = 0xFF;
    // uchar2long(&v1, &v2);
    // printf("%ld\n", v2);
    // long c = 0;
    // // decode1(&a, &b, &c);
    // long d = c;
    // multstore(2, 3, &d);
    // printf("2 * 3 --> %ld\n", d);
    // long l1 = 20;
    // long l2 = 7;
    // long l3, l4;
    // remdiv(l1, l2, &l3, &l4);
    // printf("%ld %ld\n", l3, l4);
    // for (long i = 0; i < 10; ++i) {
    //     printf("!%ld = %ld\n", i, fact_do(i));
    // }
    printf("%ld\n", func_paras(1, 2, 3, 4, 5, 6, 7));
    int data[100];
    printf("%ld\n", (&data[10] - data));
    printf("%ld\n", ((long)&data[10] - (long)data));
    printf("%p %p\n", &data[10], data);
    return 0;
}

long mult2(long a, long b) {
    return a * b;
}
