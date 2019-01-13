#include <stdio.h>

long fact_do(long);
long get_max();

int main() {
    for (long i = 0; i < 100; ++i) {
        printf("%ld: %ld\n", i, fact_do(i));
    }
    printf("max:%ld\n", get_max());
    return 0;
}
