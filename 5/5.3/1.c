#include <stdlib.h>

typedef long data_t;

typedef struct {
    long len;
    data_t *data;
} vec_rec, *vec_ptr;

vec_ptr new_vec(long len) {
    vec_ptr result = (vec_ptr)malloc(sizeof(vec_rec));
    data_t *data = NULL;
    if (!result) return NULL;
    result->len = len;
    if (len > 0) {
        data = (data_t *)calloc(len, sizeof(data_t));
        if (!data) {
            free((void *) result);
            return NULL;
        }
    }
    result->data = data;
    return result;
}

int get_vec_element(vec_ptr v, long index, data_t *dest) {
    if (index < 0 || index >= v->len) {
        return 0;
    }
    *dest = v->data[index];
    return 1;
}

long vec_length(vec_ptr v) {
    return v->len;
}

#define IDENT 0
#define OP +

void combine1(vec_ptr v, data_t *dest) {
    *dest = IDENT;
    for (long i = 0; i < vec_length(v); ++i) {
        data_t val;
        get_vec_element(v, i, &val);
        *dest = *dest OP val;
    }
}

void combine2(vec_ptr v, data_t *dest) {
    *dest = IDENT;
    long len = vec_length(v);
    data_t* p = v->data;
    for (long i = 0; i < len; ++i) {
        *dest = *dest OP *p;
        ++p;
    }
}
