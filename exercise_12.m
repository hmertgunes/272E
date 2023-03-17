% initial parameters
init_loc = 50;
home_loc = [0, 100];
number_of_steps = 0;
step_arr = [];
loc_arr =[];

% finding iteration
while init_loc ~= home_loc 

    loc_arr = [loc_arr init_loc];
    init_loc = init_loc + step_direction();
    step_arr = [step_arr number_of_steps];
    number_of_steps = number_of_steps + 1;
    
end

% last step
loc_arr = [loc_arr init_loc];
step_arr = [step_arr number_of_steps];

% result
disp("The drunken man walk " + number_of_steps + " steps to get his home.")

% plotting 
plot(step_arr, loc_arr, "r.")
title("Monte Carlo Random Walk simulation")
xlabel("i th step")
ylabel("i th position")
grid on






