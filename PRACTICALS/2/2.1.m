pHead = 0;
pTail = 0;

% number of trials
n = input("Enter no of trials:");

for i = 1:n
    r = rand();
    disp(r);
    pHead = pHead + (r < 0.5);
    pTail = pTail + (r >= 0.5);
endfor

probHead = pHead / n;
probTail = pTail / n;

disp('Probability of head: ');
disp(probHead);

disp('Probability of tail: ');
disp(probTail);
