clc;
clear all;
close all;
x = [0 -2 -1 3 -4 -2 -1 2];
y = [-1 3 -4];
n = 3;

for i = 1:length(x) + 1 - length(y)
    temp = [x(i) x(i + 1) x(i + 2)]
    A = n * sum(temp .* y) - sum(temp) * sum(y);
    B = sqrt(n * sum(temp.^2) - sum(temp)^2);
    C = sqrt(n * sum(y.^2) - sum(y)^2);
    r(i) = A / (B * C);
endfor

r
index = find(r == max(r))
