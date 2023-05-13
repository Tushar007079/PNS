

clear all;
close all;

x= audioread("0-9.wav")
y= audioread("4.wav")

 n = length(y)

for i = 1:length(x)-length(y)+1
 s = n * sum(x(i:i + (length(y) - 1)) .* y) - sum(x(i:i+
 (length(y) - 1))) * sum(y);
p = sqrt(n * sum(x(i:i + (length(y) - 1)).^2) - sum(x(i:i+
 (length(y) - 1)))^2);
 q = sqrt(n * sum(y.^2) - sum(y)^2);
 r(i) = s/ (p * q);
endfor
max_r = max(r)
index = find(r == max(r))
subplot(3, 1, 1);
plot(x);
subplot(3, 1, 2);
plot(y);
subplot(3, 1, 3);
plot(r);
