clc;
clear all;
close all;
#for 1 dice
A = [1 2 3 4 5 6];
P = [1/6 1/6 1/6 1/6 1/6 1/6];
bar(A, P, 1)
B = [];
d = 4;
#for 2 dice
for k = 2:d

    for i = 1:6
        C = A + i;
        B = [B C]
    endfor

    for j = k:6 * k
        P(j - (k - 1)) = length(find(B == j)) / 6^k
    endfor

    figure
    bar(k:6 * k, P, 1)
    A = B;
    B = [];
endfor
