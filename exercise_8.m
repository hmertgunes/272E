% finding process
total_ques = 100; % student needs 30 points to pass the test
year = 2023;

while true
    stud_answers = randi(5,[1,100]); % a,b,c,d,e which student answered
    test_results = randi(5,[1,100]); % correct answers
    stud_point = 0;

    % student gets point if he answers correctly
    for i=1:total_ques
        if(test_results(i) - stud_answers(i) == 0)
            stud_point = stud_point + 1; 
        end
    end

    % if he gets 30 points, he passes
    if (stud_point >= 30)
        break
    end

    % he can take the test once a year
    year = year + 1;
end

disp("Student passed the test with points " + stud_point + " in "  + year)