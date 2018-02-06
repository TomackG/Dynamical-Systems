t0=0;%sets initial time
T=10;%specidfies size of time interval
dt=0.001;%specisfies size of time steps
n=(T-t0)/dt;%specifies number of time steps 
tspan=[t0:dt:T];%specifies time range as a vector
clear x;
clear y;

x0=pi/6;%sets initial condition for theta
y0=0;%sets initial condition for gamma
g=9.80665;%sets the gravitational constant

x(1)=x0;%sets initial condition as first entry in the solution vextor x
y(1)=y0;%sets initial condition as first entry in the solution vextor y
for i=1:n%initialises counter from 1 to n
    ax=y(i);%calculates left estimate of force for theta
    bx=y(i)+ax*dt/2;%estimates midpoint force
    cx=y(i)+bx*dt/2;%refines estimate of midpoint force
    dx=y(i)+cx*dt/2;%refines estimate of midpoint force
    x(i+1)=x(i)+(ax+2*bx+2*cx+dx)*dt/6;%estimates force on the right side
                                       %of the time interval
    ay=-g*sin(x(i));%as above for gamma
    by=-g*sin(x(i)+ax*dt/2);
    cy=-g*sin(x(i)+bx*dt/2);
    dy=-g*sin(x(i)+cx*dt/2);
    y(i+1)=y(i)+(ay+2*by+2*cy+dy)*dt/6;
end
