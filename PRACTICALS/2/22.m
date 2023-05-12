clc;
clear all;
close all;
pHead = 0;
pTail = 0;
n = input ("Enter the Number of trials: ");
r = randi ([0, 1], 1, n);
disp (r);
pHead = pHead + sum (r(:) == 1); pTail = pTail + sum (r(:) == 0);
probHead = pHead / n;
probTail = pTail / n;
disp('Probability of head: ');
disp (probHead);
disp('Probability of tail: ');
disp (probTail);