t=0;		%intialises time at 0
T=10;		%specifies size of time interval
dt=0.01;	%specifies time steps
x0(1)=pi/6;	%specifies initial condition theta(0)=pi/6
x0(2)=0;	%specifies initial condition gamma(0)=0
[ts1, sol1]=ode45('F_Syst', [t:dt:T], x0);%solves for initial conditions
x0(1)=pi/3;%changes initial condition so that theta(0)=pi/3
[ts2, sol2]=ode45('F_Syst', [t:dt:T], x0);%solves for new initial conditions
x0(1)=3*pi/4;%changes intitial condition so that theta(0)=3pi/4
[ts3, sol3]=ode45('F_Syst', [t:dt:T], x0);%solves for new initial conditions
plot(ts1,sol1(:,1),ts2,sol2(:,1),ts3,sol3(:,1))%plots trajectories for theta
