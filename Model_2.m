
f = [0.76 1.09 1.08 -1.02 -1.05];
A = [0 0 1 0 6
    -1 -1 0 0 0
    0 0 0 0 -1
    0 0 0 -1 0
    0 0 0 -1 -3];

b= [5000000 -4000000 -450000 -500000 -2000000];
Aeq =[1 1 1 1 1
    0 1 0 -1 0];
beq = [10000000 2000000];
lb = [0 0 0 0 0];
ub = [10000000 10000000 10000000 10000000 10000000];
x = linprog(-f,A,b,Aeq,beq,lb,ub);
disp(x);
fval = f*x;
disp("Net Profit after performing Asset-Liability Management modelling is " + fval + "$");