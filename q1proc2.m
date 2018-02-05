t=0;%intialises time at 0
T=6;%specifies time interval
dt=0.01;%specifies increment length of time
x0(2)=0;%sets initial condition of gamma(0)=0
x0(1)=pi/4;%sets initial condition theta(0)=pi/4
[ts1, sol1]=ode45('q1eq1', [t:dt:T], x0);%solves ODE for above conditions
[tsl1,soll1]=ode45('q1eq2',[t:dt:T], x0);%solves linear approx. for above
                                         %conditions
x0(1)=pi/3;%sets new theta(0)=pi/3
[ts2, sol2]=ode45('q1eq1', [t:dt:T], x0);%solves ODE for above conditions
[tsl2, soll2]=ode45('q1eq2', [t:dt:T], x0);%solves linear approx. for above
                                           %conditions
x0(1)=3*pi/5;%sets new theta(0)=3pi/5
[ts3, sol3]=ode45('q1eq1', [t:dt:T], x0);%solves ODE for above conditions
[tsl3, soll3]=ode45('q1eq2', [t:dt:T], x0);%solves linear approx. for above
                                           %conditions
