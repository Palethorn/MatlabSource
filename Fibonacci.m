function fib = Fibonacci(n)
    if (n~=floor(n))
        error('Argument mora biti integetr!');
        return;
    end
    if ~isreal(n)
        error('Argument mora biti integer!');
        return;
    end
    if size(n,1)~=1 || size(n,2)~=1
        error('Argument mora biti integer!');
        return;
    end
    if (n==0)
        fib = 0;
        return;
    end
    if(n<0)
        fib = round(-1)^(n+1)*Fibonacci(-n);
        return;
    end
    alpha = (1+sqrt(5))/2;
    fib = round(alpha^n / sqrt(5));