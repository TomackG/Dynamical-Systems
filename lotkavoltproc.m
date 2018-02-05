t=0;%sets initial time
T=30;%sets end of time interval
dt=0.01;%sets size of time increment
clear ts;%clears ts
clear sol;%clears sol

x0(1)=6;%sets initial population of baboons
x0(2)=4;%sets initial population of leopards

[ts, sol]=ode45('lotkavolt', [t:dt:T], x0);%solves differential equation
plot(ts,sol(:,1),ts,sol(:,2))%returns trajectory of baboons and leopards 
                             %over time
