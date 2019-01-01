#include <stdio.h>

void showBin(unsigned char* p, int len) {
    for (int i = len - 1; i >= 0; --i) {
        for (int j = 7; j >= 0; --j) {
            printf("%d", ((1 << j) & *(p + i)) != 0);
        }
        printf(" ");
    }
    printf("\n");
}

void showBinByInt(int num) {
    unsigned char* p = (unsigned char*)&num;
    showBin(p, sizeof(int));
}

void showBinByFloat(float num) {
    unsigned char* p = (unsigned char*)&num;
    showBin(p, sizeof(float));
}

int main() {
    showBinByInt(65);
    showBinByFloat(3.75);
    showBinByFloat(3.5);
    // bin: 1000011.001
    // 1.000011001 * 2^6
    // 000011001 * 2^6
    // exp: (6+127=133) frac: 000011001
    // exp: 10000101 frac: 000011001
    // 01000010 10000110 01000000 00000000
    showBinByFloat(67.125);
    // bin: 0.0011
    // 1.1 * 1^-3
    // 1 * 1^-3
    // exp: (-3 + 127 = 124)  frac: 1
    // exp: 01111100 frac: 1
    // 00111110 01000000 00000000 00000000
    showBinByFloat(0.1875);
    return 0;
}