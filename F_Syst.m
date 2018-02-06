function xdot = F_Syst( t,x )
g=9.80665;% This is the gravitational acceleration.
xdot(1)=x(2);%This calculates F_1 in terms of initial conditions.
xdot(2)=-g*sin(x(1));%This calculates F_2 in terms of initial conditions.
xdot=xdot';%This returns a vector.
end

