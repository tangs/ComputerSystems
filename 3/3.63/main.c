#include <stdio.h>

int main() {
    long num = 0x7000000000000000;
    printf("%ld %ld %ld\n", num, num << 1, num * 2);
    long num1 = -1;
    printf("%ld %ld %ld\n", num1, num1 >> 1, num1 / 2);
    return 0;
}
