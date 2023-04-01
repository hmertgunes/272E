% A is N*N matrix,
% X = a column vector with N elements
% X will converge to the dominant eigenvec

A = [0 11 -5; -2 17 -7; -4 26 -10];
X = [1; 1; 1];
eps = 10^-5;
c = eps + 1; % putting it so loop doesn't give an error 

while true
    % Power Method
    Y = A*X;

    if( abs(c-max(Y)) < eps) % c= former c value, max(Y)= new c value
        break
    end

    c = max(Y);
    X = (1/c)*Y;


end

disp("Eigenvalue is equal to " + c);