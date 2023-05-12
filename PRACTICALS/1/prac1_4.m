##1.4 Write a program to calculate combination nCr
clc;
clear all;
close all;
n = input("Enter the n: ");
nCr = zeros(1, n + 1);
r = 0:n;

for i = 0:n
    nCr(i + 1) = fn_fact(n) / (fn_fact(n - i) * fn_fact(i));
    printf("\n%dC%d = %d\n", n, i, nCr(i + 1));
endfor

plot(r, nCr, "r-", "Markersize", 18)
title("r VS nCr", "fontsize", 17)
