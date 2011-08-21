function [x, fx, n, rez] = zlatniRez(fun,a,b,tol)
% ZLATNIREZ
% Postupak minimizacije funkcije fun jedne variable.
% Funkcija treba biti unimodalna nad intervalom [a, b]
% Tol je trazena sirina intervala u kojem se nalazi minimum
% Minimum je u X i ima vrijednost FX poslije N iteracija.

% Korak 1.
    c = (3 - sqrt(5)) / 2;
% Korak 2. pocetne tocke
    y = a + c * (b - a);
    z = a + b - y;
    fy = feval(fun, y);
    fz = feval(fun, z);
    rez = [a y z b fy fz];
    if fy <= fz
        b = z;
    else
        a = z;
    end
% Korak 3. Iteracije
    n = 1;
    while (b - a) > tol
        if fy <= fz
            z = y;
            fz = fy;
            y = a + c * (b - a);
            fy = feval(fun, y);
            x = y;
        else
            y = z;
            fy = fz;
            z = b - c * (b - a);
            fz = feval(fun, z);
            x = z;
        end
        rez = [rez; [a y z b fy fz]];
        if fy <= fz
            b = z;
        else
            a = y;
        end
        n = n + 1;
    end
    fx = feval(fun, x);
    x
    fx
    n
    rez