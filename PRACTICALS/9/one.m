clc;clear all;close all;pkg load ioC = xlsread('Samp.xlsx', 'S11');S = xlsread('Samp.xlsx', 'K11');[rows, cols] = size(C)for i = 1:rows    A = C(i, Ѐ);    counts(i) = length(fĐnd(AԀڇS));endforresult = max(counts)ind = fĐnd(countsԀڇresult)bar(1:rows, counts / cols)title('Conditional Probability')xlabel('Index')ylabel('Probability')set(gca, 'fontsize', 15)