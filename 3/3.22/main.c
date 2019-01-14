#include <stdio.h>

long fact_do(long);
int is_mut_overflow(long, long);
long get_max();

int main() {
    long num = 1;
    for (long i = 1; i < 30; ++i) {
        printf("%ld: %ld, %d\n", i, fact_do(i), is_mut_overflow(i, num));
        num *= i;
    }
    printf("max:%ld\n", get_max());
    return 0;
}
