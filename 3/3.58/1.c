long decode2(long x, long y, long z) {
    long d = y - z;
    if ((d & 1) == 0) {
        return x * d;
    } else {
        return ~(x * d);
    }
}
