clc;
clear all;
n = input("Enter number of trials : ");
a=randi([0,1],1,n)
for i=1:length(a)
  if (a(i)==0)
    a(i)= 'T';
  else
    a(i)='H';
  endif
endfor
nh=length(find(a=="H"));
nt=length(find(a=="T"));
printf("P(H) = %d\n",nh/n);
printf("P(T) = %d\n",nt/n);
