clc
clear all

A = [1 2 3; 0 0 1; 1 3 5];
b = [6; 1; 9];
n = 3;

[L, U, flag] = LUnopivot(A);
P = eye(n);

if flag == 0
   [x, flag] = LUsolve(L, U, P, b);
end

[Lp, Up, P, flag] = LUparziale(A);
if flag == 0
    [x, flag] = LUsolve(Lp, Up, P, b);
    disp('Soluzione con Lu parziale')
    x
end

