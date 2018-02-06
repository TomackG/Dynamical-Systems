function xdot = F_lin( t,x )
g=9.80665;%set gravitational acceleration
xdot(1)=x(2);%calculates linear approx. of F_1 in terms of initial condition
xdot(2)=-g*x(1);%calculates linear approx of F_2 in terms of initial cond.
xdot=xdot';%returns vector
end

