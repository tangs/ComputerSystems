#include <stdio.h>

struct A {
    int a;
    char b;
};

struct B
{
    struct A a;
    short b;
};

int main() {
    printf("%lu %lu\n", sizeof(struct A), sizeof(struct B));
}

