## 1.3 Write a program to calculate permutation nPr
clc;
clear all;
close all;
n = input("Enter the n :");
nPr = zeros(1, n + 1);
r = 0:n;

for i = 0:n
      nPr(i + 1) = fn_fact(n) / fn_fact(n - i);
    printf("\n%dp%d = %d\n", n, i, nPr(i + 1));
endfor

plot(r, nPr, "r*", "Markersize", 17)
title("r VS nPr", "fontsize", 18)
