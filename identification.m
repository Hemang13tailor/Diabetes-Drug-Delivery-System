clear all
clc

upper_bound = [1000 10000 1000];
lower_bound = [-1000 0 -1000];

x_initial = [10 10 10];

options = optimset('Display','iter', 'TolX', 10^(-9), 'TolFun', 10^(-9));

[optimal_x, fval, exitflag] = fmincon(@optimfunc, x_initial, [], [], [], [], lower_bound,upper_bound, [], options);

%optimal_x

xo(1) = optimal_x(1);

xo(2) = optimal_x(2);

xo(3) = optimal_x(3);

disp(xo(1))
disp(xo(2))
disp(xo(3))
