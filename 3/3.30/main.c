#include <stdio.h>

long fact_switch(long);

int main() {
    long num = 1;
    for (long i = 0; i < 20; ++i) {
        printf("%ld: %ld\n", i, fact_switch(i));
        num *= i;
    }
    return 0;
}
