#include <stdio.h>

int main() {
    printf("%d, %d, %d, %d\n", -2 >> 1, -1 >> 1, -1 >> 10, ((unsigned)-1) >> 30);
    return 0;
}
