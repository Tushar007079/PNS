clc; clear all; close all;
dx = 0.001;
x = 0:dx:1;
y = 3 * (x.^2);
plot(x, y, 'b.');
% to generate random numbers between a and b
k = 10000;
a = min(x); b = max(x);
xrgen = a + (b - a) * rand(1, k);
yrcom = 3 * xrgen .* xrgen;
plot(xrgen, yrcom, 'k.')
hold on;
c = min(y);
d = max(y);
yrgen = c + (d - c) * rand(1, k);
A = yrgen < yrcom;
B = find(A);
plot(xrgen(B), yrgen(B), 'k.');
hold on;
C = yrgen >= yrcom;
D = find(C);
plot(xrgen(D), yrgen(D), 'g.');
hold off;
prob = length(B) / k
Area_under_curve = prob * (max(x) - min(x)) * (max(y) - min(y))
