clc;
close all;
clear all;
u = 2; s = 1;
dx = 0.5;
x=-10:dx:10;
%to compute PDF
for i = 1:length(x)
    pd(i) = (1 / (s * sqrt(2 * pi))) * e^(-0.5 * ((x(i) - u) / s)^2)
    pdf(i) = pd(i) * dx
endfor
plot(pdf);
%to compute CDF
cdf(1) = pdf(1);

for j = 2:length(x)
    cdf(j) = pdf(j) + cdf(j - 1)
endfor
pl

plot(x, cdf, "bx")
%mean
2827M = sum(x .* pdf)
%varience
V = sum((x.^2) .* pdf) - M^2
