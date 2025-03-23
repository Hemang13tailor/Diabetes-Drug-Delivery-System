clear all
clc

optimal_x(1) = -5.877;
optimal_x(2) = 65.13;
optimal_x(3) = 13.03;

xo(1) = optimal_x(1)
xo(2) = optimal_x(2)
xo(3) = optimal_x(3)

data_2 = readmatrix('non linear output.xlsx');

M = 2.5;

Glucose_plant1 = data_2(10007:15007, 2);
t_data1 = data_2(10007:15007, 1);

G_ss = data_2(10007,2);

for i = 1:1:length(t_data1)
    Glucose_model1(i,1) = G_ss + xo(1)*M*(1-exp(-(t_data1(i) - 1000 - xo(3))./xo(2)));
end

figure(1)
plot(1:size(Glucose_plant1), Glucose_plant1, 'b', 1:size(Glucose_plant1), Glucose_model1, 'r'), legend('Plant data', 'Model Response')


y_plant2 = data_2(20015:25013,2);
t_data2 = data_2(20015:25013,1);

M = -2.5;

y_ss2 = data_2(20012,2);


for i=1:1:length(t_data2)
    y_model2(i, 1) = y_ss2 + M*xo(1)*(1-exp(-(t_data2(i)-2000-xo(3))./xo(2)));
end

figure(2)
plot(t_data2,y_plant2,'b');
hold on
plot(t_data2,y_model2,'r');


