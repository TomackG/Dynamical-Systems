t0=0;%sets initial time
T=50;%sets size of time interval
dt=0.01;%sets size of time increment
n=(T-t0)/dt;%sets number of increments
tspan=[t0:dt:T];%sets increments as a row vector

clear x;
clear y;
clear z;

sigma=10;%sets sigma parameter
rho=28;%sets rho parameter
beta=8/3;%sets beta parameter
x0=0.1;%sets initial condition for x
y0=0.1;%sets initial condition for y
z0=0.1;%sets initial condition for z

x(1)=x0;%sets initial condition for x as for entry in solution vector x
y(1)=y0;%sets initial condition for y as for entry in solution vecto y
z(1)=z0;%sets initial condition for z as for entry in solution vectr z
for i=1:n
    x(i+1)=x(i)+dt*sigma*(y(i)-x(i));%calculates Euler estimate for
                                     %x value at each time increment
    y(i+1)=y(i)+dt*(x(i)*(rho-z(i))-y(i));%calculates Euler estimate for
                                          %y value at each time increment
    z(i+1)=z(i)+dt*(x(i)*y(i)-beta*z(i));%calculates Euler estimate for
                                         %z value at each time increment
end
