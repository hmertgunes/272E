% Generating -1 or 1 step with possibility of %50
function [step] = step_direction()
    a = randi([0,1]);
    if (a == 0) 
        a = -1;
        step = a;
    else
        step = a;
    end
end