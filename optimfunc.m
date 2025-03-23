function[fun_val] = optimfunc(xo)

data_1 = readmatrix('non linear output.xlsx');

M = (27.5 - 25);

Glucose_plant = data_1(5007:10007,2);
t_data = data_1(5007:10007,1);

G_ss = data_1(5006,2);

Glucose_model = G_ss + xo(1)*M*(1-exp(-(t_data - 500 - xo(3))./xo(2)));

error = Glucose_plant - Glucose_model;

fun_val = sum(error.^2);

end
