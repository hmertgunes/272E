% 090210128 Hasan Mert Güneş

dataHMG = readmatrix("sleeplessnights.txt");

chirpsHMG = dataHMG(:,1); % number of per min
chirps_per_secHMG = chirpsHMG/60; % number of per sec
fahrHMG = dataHMG(:,2); % temperature in fahrenheit
celciusHMG = (fahrHMG-32)*5/9; % temperature in celcius 

% plotting temp and chirps to determine a relationship
scatter(celciusHMG,chirps_per_secHMG,"filled","bo")
hold on

% linear fitting process
pHMG = polyfit(celciusHMG,chirps_per_secHMG,1);
chirps_fit_HMG = pHMG(1)*celciusHMG+pHMG(2);

% fitting plot
plot(celciusHMG,chirps_fit_HMG,'r-',MarkerSize=20);
legend("Real Chirps"," Fitting")
title("Number of Chirps Per Second")
xlabel("Temperature in Celcius")
ylabel("Number of Chirps per sec")
grid on
    
% chi square test by "χ2 = ∑(Oi – Ei)2/Ei" equation
chi_squHMG = 0; % starting sum loop with 0
for i = 1:size(chirps_per_secHMG)
    chi_squHMG = chi_squHMG + (chirps_per_secHMG(i)- ...
        chirps_fit_HMG(i))^2/chirps_fit_HMG(i);
end

disp("χ2 test result= " + chi_squHMG);
