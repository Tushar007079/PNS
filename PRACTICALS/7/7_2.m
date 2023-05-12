clc; clear all; close all;
d = 5;
r = 5000;

for i = 1:d
    A = randi([1, 6], i, r);
    B = sum(A, 1);
endfor

for j = d:6 * d
    p(j - (d - 1)) = length(find(B == j)) / r;
endfor

bar(d:6 * d, p, 1)%histogram
set(gca, 'fontsize', 17);
title(sprintf('When %d dice are rolled', d))
xlabel(sprintf('Sum of outcomes when %d dice are rolled', d))
ylabel('Probability')
