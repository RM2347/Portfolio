x = [-250 -200 -100 70 200 400 600 800 1000 1200 1400 1600]; %tempF
y = [67 70 74 83 89 98 109 120 131 143 154 164];%thermc(BTUin/ft^2hF)
p = polyfit(x,y,8);
xp = -250:0.1:1600;%range of temp(F)
yp = polyval(p,xp);
plot(x,y,'o',xp,yp);
xlabel('Temperature(F)');
ylabel('Thermal C(BTU*in/ft^2*h*F)');
title('Thermal Conductivity of Inconel 718');
%%
%Thermal conductivity of inconel 625
x = [209.67 259.67 359.67 459.67 529.67 559.67 659.67 859.67 1059.67 1259.67 1459.67 1659.67 1859.67 2059.67 2259.67]; %tempR
y = [4.2 4.3 4.8 5.3 5.7 5.8 6.3 7.3 8.2 9.1 10.1 11.0 12.0 13.2 14.6];%thermc(BTUin/ft^2-hr-F)
p = polyfit(x,y,8);
xp = 210:0.1:2260;%range of temp(R)
yp = polyval(p,xp);
plot(x,y,'o',xp,yp);
xlabel('Temperature(R)');
ylabel('Thermal C(BTU*in/ft^2*h*F)');
title('Thermal Conductivity of Inconel 625');
%%
%Thermal conductivity of copper
%Source:https://www.efunda.com/materials/elements/TC_Table.cfm?Element_ID=Cu
x = [70 80 90 100 150 200 250 300 350 400 500 600 800 1000 1200].*1.8; %tempR
y = ([647 557 508 482 429 413 406 401 396 292 286 279 366 352 339].*6.9381117892)./144;%thermc(BTUin/ft^2-hr-F)
p = polyfit(x,y,5);
xp = 125:0.1:2200;%range of temp(R)
yp = polyval(p,xp);
plot(x,y,'o',xp,yp);
xlabel('Temperature(R)');
ylabel('Thermal C(BTU*in/ft^2*h*F)');
title('Thermal Conductivity of Inconel 625');
