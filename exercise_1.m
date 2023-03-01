vec1 = (1:1:100);
vec2 = rand(1,100);
vec3 = [vec1; vec2];

dlmwrite("randomexercise.txt",vec3); 
% writematrix(vec3,"randomexercise1.txt") is the ideal one 