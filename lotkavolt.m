function xdot = lotkavolt( t ,x )
mu=4.5;%sets mu parameter value
xdot(1)=x(1)*(1-x(2));%calculates the rate of growth of baboons
xdot(2)=mu*x(2)*(x(1)-1);%calculates the rate of growth of leopards
xdot=xdot';%returns a vector
end

