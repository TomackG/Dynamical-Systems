t=0;%sets initial time
T=50;%sets size of time interval
dt=0.001;%sets size of time increment

x0(1)=0.1;%sets initial value for x
x0(2)=0.1;%sets initial value for y
x0(3)=0.1;%sets initial value for z

[ts, sol]=ode45('lorenz', [t:dt:T], x0);%solves system numerically