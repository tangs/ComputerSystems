#include <stdio.h>

#define N 4
typedef int fix_matrix[N][N];

void fix_set_diag_opt(fix_matrix A, int val) {
    int* base = &A[0][0];
    long i = 0;
    while (i < N * N) {
        *(base + i) = val;
        i += N + 1;
    }
}

int main() {
    int a[N][N] = {{1, 2, 3, 4}, {1, 2, 3, 4}, {1, 2, 3, 4}, {1, 2, 3, 4}};
    fix_set_diag_opt(a, 10);
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < N; ++j) {
            printf("%d ", a[i][j]);
        }
        printf("\n");
    }
    return 0;
}
