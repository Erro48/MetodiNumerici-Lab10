clc
clear all

A = [1 2 3; 4 0 2; 1 6 2];
b = [6; 6; 9];
n = 3;

xesatta = ones(n, 1);
[L, U, flag] = LUnopivot(A);
P = eye(n);
[xcalc, flag] = LUsolve(L, U, P, b);
xcalc


