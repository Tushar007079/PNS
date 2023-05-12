clc;
close all;
clear all;
u = 2; s = 2;
dx = 0.5;
x=-10:dx:10;
%to compute PDF
for i = 1:length(x)
    pd(i) = (1 / (s * sqrt(2 * pi))) * e^(-0.5 * ((x(i) - u) / s)^2)
    pdf(i) = pd(i) * dx
endfor

sum(pdf)
subplot(2,1,1)
plot(x, pd, "r-");
title('pdf graph','fontsize',30)

cdf(1) = pdf(1);
for i = 2:length(x)
    cdf(i) = pdf(i) + cdf(i - 1)
endfor
subplot(2,1,2)
plot(x,cdf,'r-');
title('cdf graph','fontsize',30)
