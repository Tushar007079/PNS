A = [1 2 3 4 5 6];
n = 5;
B = [];

for k = 2:n

    for i = 1:6
        C = A + i
        B = [B C]
    endfor

    for j = k:6 * k
        p(j - (k - 1)) = length(find(B == j)) / 6^k;
    endfor

    A = B;
    B = [];
endfor

bar(k:6 * k, p, 1)
title(sprintf('When %d dice are rolled ', k))
xlabel(sprintf('Outcome when %d dice are rolled ', k))
ylabel(sprintf('Probablity'))
xticks([k:6 * k])
