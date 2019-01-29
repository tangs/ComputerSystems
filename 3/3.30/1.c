long func(int i) {
    long ret = 1;
    switch(i) {
        case 1:
            ret = 3;
            break;
        case 4:
            ret = 4;
            break;
        case 2: {
            int a = 5;
            ret *= a;
            ret += 3500000;
        }
            break;
        case 3:
            ret = 45451321311;
            break;
    }
    return ret;
}