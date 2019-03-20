#include <stdio.h>
#include <string.h>

#define N 4
typedef int fix_matrix[N][N];

void fix_set_diag_opt(fix_matrix A, int val) {
    int* base = &A[0][0];
    long i = 0;
    int end = N * N;
    while (i < end) {
        *(base + i) = val;
        i += N + 1;
    }
}

int var_ele(long n, int A[n][n], long i, long j) {
    return A[i][j];
}

int main() {
    int a[N][N] = { { 1, 2, 3, 4 }, { 1, 2, 3, 4 }, { 1, 2, 3, 4 }, { 1, 2, 3, 4 } };
    fix_set_diag_opt(a, 10);
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < N; ++j) {
            printf("%d ", a[i][j]);
        }
        printf("\n");
    }
    int b = 3;
    int arr[b][b];
    int len = b * b;
    memset(arr, 1, len * sizeof(int));
    printf("%d \n", var_ele(3, arr, 1, 1));
    printf("%d \n", var_ele(3, arr, 1, 1) == 0x01010101);
    
    return 0;
}
