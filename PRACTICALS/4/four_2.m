clc; clear all; close all;
T = audioread('Sample_Audio.wav');
#sound(T)
S = audioread('good_morning.wav');
#sound(S)
n = length(S);

for i = 1:length(T) - length(S) + 1
    A = n * sum(T(i:i + (length(S) - 1)) .* S) - sum(T(i:i+
    (length(S) - 1))) * sum(S);
    B = sqrt(n * sum(T(i:i + (length(S) - 1)).^2) - sum(T(i:i+
    (length(S) - 1)))^2);
    C = sqrt(n * sum(S.^2) - sum(S)^2);
    r(i) = A / (B * C);
endfor

max_r = max(r)
index = find(r == max(r))
subplot(3, 1, 1);
plot(T);
title('Sample Audio')
subplot(3, 1, 2);
plot(S);
title('good morning')
subplot(3, 1, 3);
plot(r);
title('Correlation')
