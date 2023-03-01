% reading the data
data = dlmread("randomexercise.txt",",");
% data2 = readmatrix("randomexercise.txt"); is the ideal one

% creating the vectors
myvec1 = data(1,:);
myvec2 = data(2,:);

% myvec2 to the function "findeverything"
% size of the myvec must be like (1,i) to be able to work correctly 
[mymax, mymin, myavg, mystdv, myclosest] = findeverything(myvec2);
disp("mymax= "+ mymax)
disp("mymin=" + mymin)
disp("myavg=" + myavg)
disp("mystdv=" + mystdv)
disp("myclosest element=" + myclosest)

% plotting
plot(myvec1, myvec2,"-r", find(myvec2 == myclosest), myclosest,"k*", LineStyle=":", LineWidth=2);
legend("myvec2", "myclosest to the average")
title("data from randomexercise.txt")
xlabel("(1:1:100)")
ylabel("rand(1,100)")
grid on

