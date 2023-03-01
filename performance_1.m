N = 10^6;
v = rand(1,N);

% finding the values greater than 0.5 via for loop and vectorization
num_of = 0;
for i=1:size(v,2)
    if(v(i) > 0.5)
        num_of = num_of + 1;
    end
end
disp("via loop= "+num_of)

num_of1 = sum(v > 0.5);
disp("via vectorization= "+num_of1)

%%
index_list = 1:1:8;
time_list = [];
time1_list = [];

for M=1:8
    % calculating via vectorization
    k = rand(1,10^M);
    tic;
    sum(k > 0.5);
    mytime = toc;
    time_list = [time_list mytime];
    
    % calculating via loop
    num_of = 0;
    tic;
    for l=1:size(k,2)
        if(k(l) > 0.5)
            num_of = num_of + 1;
        end
    mytime1 = toc;
    time1_list = [time1_list mytime1];
    end
end

% plotting
plot(index_list,time_list,"r", index_list, time1_list, "b")

% it says vectorization is much more better for saving time 



