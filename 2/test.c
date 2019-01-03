#include <stdio.h>

#include <limits.h>

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
    // float f1 = 0.0, f2 = -0.0;
    // showBinByFloat(f1);
    // showBinByFloat(f2);
    int i3 = 0x7f800000;
    int i4 = 0xff800000;
    float *f3 = (float*)(&i3);
    float *f4 = (float*)(&i4);
    // float f5 = inf;
    showBinByFloat(*f3);
    showBinByFloat(*f4);
    // 
    printf("%f %f\n", *f3, *f4);
    float f5 = 16777210.0;
    for (int i = 0; i < 10; ++i) {
        f5 += 1;
        printf("%f\n", f5);
    }
    return 0;
}
