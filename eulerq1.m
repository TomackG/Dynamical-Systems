t0=0;%initialises time
T=10;%specifies size of time interval
dt=0.001;%specifies size of time step
n=(T-t0)/dt;%specifies number of steps
tspan=[t0:dt:T];%specifies time range as a vector
clear x;
clear y;

x0=pi/6;%sets initial angle theta
y0=0;%sets initial angle gamma
g=9.80665;%sets gravitational constant

x(1)=x0;%specifies initial angle theta as first entry in solution vector x
y(1)=y0;%specifies initial angle gamma as first entry in solution vector y
for i=1:n%initialises counter to run from 1 to n
    x(i+1)=x(i)+dt*y(i);%solves for each theta as time progresses
    y(i+1)=y(i)+dt*(-g*sin(x(i)));%solves for each gamma as time progresses
end