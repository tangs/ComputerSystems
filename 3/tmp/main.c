#include "stdio.h"

struct A {
    int i;
    int j;
    int a[2];
    int *p;
};
void* func(struct A*);

int main() {
    struct A a;
    a.i = 0;
    a.j = 1;
    a.a[0] = 10;
    a.a[1] = 11;
    a.p = 0;
    int *p1 = func(&a);
    printf("%p %p\n", &a.a[1], a.p);
    return 0;
}