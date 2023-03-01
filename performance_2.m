timelist1 = [];
timelist2 = [];

for N=1:8
    
    % creating the vector without Preallocating
    tic;
    for i=1:size(v,2)
        v(i) = i*i;
    end
    mytime1 = toc;
    timelist1 = [timelist1, mytime1];

    % creating the vector with Preallocating
    k=zeros(1,10^N);
    tic;
    for i=1:size(k,2)
        k(i) = i*i;
    end
    mytime2 = toc;
    timelist2 = [timelist2, mytime2];

end

%plotting
plot(1:1:8,timelist1,"b", 1:1:8, timelist2, "r", LineWidth=2, Marker="o")
legend("without Preallocating", "with Preallocating")
title("SPEED TEST")
xlabel("(1:1:8)")
ylabel("time")
grid on


