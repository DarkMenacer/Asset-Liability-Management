
f = [0.7 1.1 -1.03 -1.08 -1.04];
A = [-3 0 0 0 -1
    0 0 0 -1 0
    0 0 0 0 -1];
b = [-8000 -500 -1000];

Aeq = [1 1 1 1 1
    0 0 7 3 0];

beq = [10000 3000];
lb = [0 0 0 0 0];
ub = [10000,10000,10000,10000, 10000];

x = linprog(-f,A,b,Aeq,beq,lb,ub);
disp(x);
fval = f*x;
disp("Net Profit after performing Asset-Liability Management modelling is " + fval + "$");