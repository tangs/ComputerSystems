int cc = 0;
int fun1() {
    return cc++;
}

int fun2() {
    return fun1() + fun1() + fun1();
}


int fun3() {
    return fun1() * 3;
}
