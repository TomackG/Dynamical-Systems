function xdot = eqDO(t,x)
alpha=0.06667;%sets parameter value for alpha
mu=0.13333;%sets parameter value for mu
omega=1;%sets parameter value for omega
xdot(1)=x(2);%calcultes dx/dt 
xdot(2)=-alpha*x(2)-x(1)-mu*x(1)^3+cos(omega*t);%calculates dy/dt
xdot=xdot';%returns the solution vector
end