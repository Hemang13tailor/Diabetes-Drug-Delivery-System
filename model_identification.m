clear all
clc

upper_bound = [1000 5000 10000];
lower_bound = [-1000 -5000 -10000];

x_initial_guess = [100 200 10];

options = optimset('Display','iter', 'TolX', 10^(-9), 'TolFun', 10^(-9));

[optimal_x, fval, exitflag] = fmincon(@optimfunc, x_initial_guess, [], [], [], [], lower_bound,upper_bound, [], options);

%optimal_x

disp(['Process gain: '])
xo(1) = optimal_x(1);
disp(xo(1))

disp(['Time constant: '])
xo(2) = optimal_x(2)

disp(['Time delay: '])
xo(3) = optimal_x(3)

save model_identification_glucose