t0=0;%sets initial condition
T=5;%sets size of time interval
x0=2.0;%sets initial condition at time=0
dt=[0.0125, 0.025, 0.05, 0.1, 0.2, 0.5, 1];%this generates a vector for the
                                           %various values of dt
for j=1:7%initialises a loop that will run over the entries of dt
n=(T-t0)/dt(j);%calculates the number of time steps we take for each dt
ts=[t0:dt(j):T];%specifices the time steps as a vector
clear x;%clears the vector x
x(1)=x0;%sets initial condition as first entry in solution vector
    for i=1:n%initialises loop to implement Euler's method
        x(i+1)=x(i)-x(i)*dt(j);%implements Euler's method
    end
 xexact=x0.*exp(-ts);%calculates exact solution for time steps specified
 y(j)=max(abs(x-xexact));%calculates the biggest difference between the two
                         %solutions
end
plot(log(dt),log(y))%plots the vector of differences (y) against the
                    %corresponding dt values
