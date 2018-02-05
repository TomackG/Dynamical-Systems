t0=0;%sets initial time
T=50;%sets size of time interval
dt=0.001;%sets size of time increment
tspan=[0:dt:T];%sets time increments as a row vector

x0(1)=0;%sets initial condition for x'
x0(2)=0;%sets intitial condition for x''

[ts, sol]=ode45('eqDO',[t0:dt:T],x0);%solves system
plot(sol(:,1),sol(:,2)) %plots phase space trajectory