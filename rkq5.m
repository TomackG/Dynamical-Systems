t0=0;%sets initial time
T=5;%sets size of time interval
x0=2.0;%sets initial condition for time=0
dtr=[0.0125, 0.025, 0.05, 0.1, 0.2, 0.5, 1];%specifies various sizes of 
                                            %time-step as a vector
for j=1:7%intialises loop that runs over dtr
    clear x;%clears x
    x(1)=x0;%sets initial condition as first entry in solution vector
    n=(T-t0)/dtr(j);%specifies number of time steps taken according to dt
    ts=[t0:dtr(j):T];%sets time steps as a vector
    for i=1:n%initialises loop to implement Runge-Kutta method
        a=-x(i);%calculates left point estimate for solution
        b=-(x(i)+a*dtr(j)/2);%calculates first midpoint estimate
        c=-(x(i)+b*dtr(j)/2);%calculates second midpoint estimate
        d=-(x(i)+c*dtr(j));%calculates right point estimate
        x(i+1)=x(i)+(a+2*b+2*c+d)*dtr(j)/6;%calculates average over 
                                           %time-step
    end
    xexact=x0.*exp(-ts);%calculates exact solution over the vector ts
    yr(j)=max(abs(x-xexact));%calculates biggest difference for each dt
end
plot(log(dtr),log(yr))%plots log-log plot of differences
