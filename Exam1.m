%Exam 1
%Reilly Melov
%Problem 1

%Define Variables
R = 8.314;
V = 1000:1000:10000;
T = 300;
P = 100;
MW = 29;
%Define equations
n = (P*V)/(R*T);
m = n.*MW;
%Display answers in Table] for part a
Table = [V;m];
fprintf('Table\n')
fprintf('m^2\tmass\n')
fprintf('%2.0f\t%2.1f\n',Table)
%Display plots for part b
P = 100200300
figure(1)
%plot(V,(P.*V)./(n.*R))
%plot()
%plot()
%plot(V,(P.*V)./(n.*R));hold on;
%plot();hold on;
%plot()hold on;
title('Temp vs. Volume')


%%
%Problem 2

%read data file & make a matrix
sensor = readmatrix('sensor.xlsx');
sensor1 = readmatrix('sensor.xlsx','Range','B2:B100');
sensor3 = readmatrix('sensor.xlsx','Range','D2:D100');
%plot data for sensors 1&3
figure(1)
plot(1:99,sensor1);hold on;
plot(1:99,sensor3,'r');hold on;
%Find max and min values in sensor1 and sensor 3
max1 = max(sensor1)
min1 = min(sensor1)
max3 = max(sensor3)
min3 = min(sensor3)
%Find mean of sensor5 and add to plot
sensor5 = readmatrix('sensor.xlsx','Range','F2:F100')
m5=mean(sensor5)
plot(1:99,m5,'g--');hold off;

%%
%Problem 3

%Define matrices
A = [-5 2 -8;1 2 6;4 -1 -7];
B = [6;-5;3];
%Solve for x and display it
x = A^-1*B;
disp(x)
%Define matrices for moment calculation
r = [3;5;8]
F = [2 2 2;-2 -7 -5;2 -3 -7]
%Calculate moment and display it



