function x = taylor(f,df1,df2,a,tol)
    x = inf;
    n = 0;
    while abs(x-a)>tol
        x = a;
        a = x - df1(x)/df2(x);
        n = n + 1;
        y = f(x);
    end
    n
    y