clc;
clear all;
close all;
n = 100;
p = 0.4:-0.01:0.1;

for i = 1:length(p)
    A = p(i);
    B = 1 - A;
    #lemda
    c = n * A;

    for r = 0:n
        Bin(r + 1) = factorial(n) / (factorial(r) * factorial(n - r)) * A^r * B^(n - r);
        Pois(r + 1) = e^(-c) * c^r / factorial(r);
    endfor

endfor

subplot(3, 1, 1)
plot(0:n, Bin, 'r');
title('Binomial v/s r');
subplot(3, 1, 2)
plot(0:n, Pois, 'b');
title('Poisson v/s r');
subplot(3, 1, 3)
plot(0:n, Bin, 'r', 0:n, Pois, 'b')
title('Combine graph');
