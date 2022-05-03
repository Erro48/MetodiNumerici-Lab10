clc
clear all

%A = [1 2 3; 4 0 2; 1 6 2];
%b = [6; 6; 9];
%n = 3;

A = [2 1 3 4; 1 0 3 4; 1 5 0 6; 2 1 3 0];
b = [10; 8; 12; 6];
n = 4;

xesatta = ones(n, 1);
[L, U, flag] = LUnopivot(A);
P = eye(n);
[xcalc, flag] = LUsolve(L, U, P, b);
xcalc


