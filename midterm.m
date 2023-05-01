% 090210128 Hasan Mert Güneş

tic
% radius of ellipse;
rxHMG = 7;
ryHMG = 3;
 
for k=1:6
    %random point vectors
    vecxHMG = [];
    vecyHMG = [];

    N=10^k;
    % random point generator, Number of sample:N
    for i=1:N
        kxHMG = 0 + 7*rand(1,1); % 
        kyHMG = 0 + 3*rand(1,1); %
        vecxHMG = [vecxHMG kxHMG(1)];
        vecyHMG = [vecyHMG kyHMG(1)];    
    end
    
    % mHMG(2) is number of points which being inside the ellipse
    % found by leaving alone y value of "x^2a^2+y^2b^2=1" ellipse equation
    mHMG = size(vecyHMG(vecyHMG< sqrt((rxHMG^2-vecxHMG.^2)*ryHMG^2/rxHMG^2)));
    
    % results
    piHMG = 4*mHMG(2)/N;
    errorHMG = abs(pi - piHMG)/pi*100;
    disp("k= "+k+ "  |  calculated pi= "+piHMG)
 

    % plot k vs pi table
    hold on
    plot((1:0.01:6),3.1415,"r.")
    grid on
    plot(k,piHMG,Marker=".", Color="#0072BD", MarkerSize=30)
    legend("actual pi")
    title("K VS CALCULATED PI")
    xlabel("k=1,2,3,4,5,6")
    ylabel("calculated pi values")

end
timeHMG = toc;






