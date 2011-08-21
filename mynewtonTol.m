function x = mynewtonTol(f,f1,x0,tol)
    x = x0;
    y = f(x);
    n = 0;
    while abs(y) > tol
        x = x - y/f1(x);
        n = n + 1;
        y = f(x);
    end
    y
    n