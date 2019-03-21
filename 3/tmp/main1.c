#include <stdio.h>

struct S {
    int i;
    int *p;
};

int main() {
    struct S s;
    int *p = &s.i;
    p[0] = 4;
    p[1] = 3;
    s.p = p;
    s.p[1] = 0;
    s.p[0] = 2;
    printf("%lu\n", sizeof(struct S));
    printf("%d %p\n", s.i, s.p);
    return 0;
}
