#include <stdio.h>

long decode(long x, long y, long z);
long decode2(long x, long y, long z);

int main() {
    long data[][3] = {
        {10, 245, 364},
        {81, 245, -4523},
        {161, -322, 48123},
        {221, -3282, -64823},
        {-481, 472, 143},
        {-68421, 41632, -3},
        {-18771, -95132, 5843},
        {-55211, 3292, -6263},
        {-55771, -5772, -8433},
    };
    long size = sizeof(data) / sizeof(long) / 3;
    for (int i = 0; i < size; ++i) {
        long *p = data[i];
        long ret1 = decode(p[0], p[1], p[2]);
        long ret2 = decode2(p[0], p[1], p[2]);
        printf("x:%ld, y:%ld, z:%ld\n%d %ld %ld\n", p[0], p[1], p[2], ret1 == ret2, ret1, ret2);
    }
    return 0;
}