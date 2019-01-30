long func1();
long func2();
long func3();

long func(int i) {
    long ret = 1;
    switch(i) {
        case 10:
            ret = 3 * func2();
            break;
        case 14:
            ret = 4 * func1();
            break;
        case 12: {
            int a = 5;
            ret *= a * func3();
            ret += 3500000;
        }
            break;
        case 13:
            ret = 45451321311;
            break;
    }
    return ret;
}