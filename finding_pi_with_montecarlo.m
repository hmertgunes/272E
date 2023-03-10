% radius of circle
r = 1;

% area of quarter circle
area_of_qu_circle = pi * r^2 / 4;

% side of square
a = 1; 

% area of square
area_of_squ = a*a;

% probability of random point R(x,y) being inside the circle
prob = area_of_qu_circle / area_of_squ;

%random point vectors
vecx = [];
vecy = [];
N=2000;
% Random point generator, Number of sample:N
for i=1:N
    k = rand(1,2);
    vecx = [vecx k(1)];
    vecy = [vecy k(2)];    
end
%% plotting

% center of circle
C = [0. 0.] ; 

% angle 
th = pi/2:-pi/90:0; 

xc = cos(th) ; 
yc = sin(th) ; 
plot(xc,yc,"r",vecx,vecy,"g.",LineWidth=3,MarkerSize=5)
legend("circle", "random points")
title("Monte Carlo Finding pi value")
%%
% M(2) is number of points which being inside the circle
M = size(vecy(vecy< sin(acos(vecx))));

%Results
my_pi = 4*M(2)/N;
my_error = abs(pi - my_pi)/pi*100;
disp("my_pi= "+my_pi)
disp("myerror="+ my_error + " for " + N + " samples.")

