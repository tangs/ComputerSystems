#include <stdio.h>

long rfact(long);

int main() {
    for (int i = 1; i < 20; ++i) {
        printf("%ld\n", rfact(i));
    }
    return 0;
}
