function xdot = lorenz( t,x )
sigm=10;%sets the vaue of sigma
rho=28;%sets the value of rho
bet=8/3;%sets the value of beta
xdot(1)=sigm*(x(2)-x(1));%calculates x'
xdot(2)=x(1)*(rho-x(3))-x(2);%calculates y'
xdot(3)=x(1)*x(2)-bet*x(3);%calculates z'
xdot=xdot';%returns solution as a vector
end

