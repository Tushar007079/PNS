% prac1.2 Make a user defined function that find factorial of given number
clc;
clear all;
close all;
n = input('Enter value n: ');

fact = fn_fact(n);

printf("Factorial of %d is %d\n", n, fact)
