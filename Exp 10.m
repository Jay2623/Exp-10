1 clc; clear all; close all
 2
 3 t0 = input( 'Enter initial time: ');
 4 t1 = input( 'Enter final time: ');
 5 step_size = input ('Enter step size: ');
 6 y0 = input( 'Enter initial boundary condition: ');
 7 t = t0:step_size:t1;
 8 y = zeros(1, length(t));
 9 y (1) = y0
10 i = 1;
11 time = 0;
12
13 while time<=4
14     y (i+1) = y(i) + step_size*(4*exp(0.8*time) - 0.5*y(i));
15     time = time + step_size;
16 i = i + 1;
17 end
18
19 y_real = 4*(exp(0.8*t) - exp(-0.5*t))/1.3 + 2*exp(-0.5*t); 20 disp (y);
21 disp (y_real);
22 plot(t,y_real,'-*');
23 hold on;
24 plot(t,y(1:length(t)),'-o');
25 grid on;
26 legend ('Real value', 'Euler value');