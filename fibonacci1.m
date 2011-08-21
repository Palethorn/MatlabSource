function [x,fx,n,rez] = fibonacci1(fun,a,b,tol)
    % Korak 1. trazi broj iteracija
    n = 1;
    while b - a >= Fibonacci( n + 2) * tol
        n = n + 1;
    end
    % Korak 2. pocetne tocke
    y = a + Fibonacci(n) / Fibonacci(n + 2) * (b - a);
    z = a + b - y;
    fy = feval(fun, y);
    fz = feval(fun,z);
    rez = [a y z b fy fz];
    if fy <= fz
        b = z;
    else
        a = y;
    end
    % Korak 3. iteracija
    for k = 2 : n
        if fy <= fz
            z = y;
            fz = fy;
            y = a + b - y;
            fy = feval(fun, y);
            x = y;
        else
            y = z;
            fy = fz;
            z = a + b -z;
            fz = feval(fun,z);
            x = z;
        end
        rez = [rez; [a y z b fy fz]];
        if fy <= fz
            b = z;
        else
            a = y;
        end
        fy
    end
    fx = feval(fun, x);
    x
    n