#include <stdio.h>

long fact_for(long);

int main() {
    long num = 1;
    for (long i = 0; i < 20; ++i) {
        printf("%ld: %ld\n", i, fact_for(i));
        num *= i;
    }
    return 0;
}
