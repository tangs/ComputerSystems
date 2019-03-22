long func(long n) {
    long arr[n];
    long ret = 0;
    for (int i = 0; i < n; ++i) {
        ret += arr[i];
    }
    return ret;
}