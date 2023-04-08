% 3rd order polynomial fitting

x = [1,2,3,4,5];
y = [2,4,1,3,8];

% M matrix process
M = zeros(4);
for a=1:4
    for b=1:4
        for i=1:5
            M(a,b) = M(a,b) + (x(i)^(a+b-2));
        end
    end
end

% V vector process
V = zeros(1,4);
for i=1:5
    for a=1:4
        V(a) = V(a) + y(i)*(x(i))^(a-1);
    end
end

% finding coeffs
coeff = M/V;
a0 = coeff(1);
a1 = coeff(2);
a2 = coeff(3);
a3 = coeff(4);

% plotting
denklemx = linspace(1,5,100);
denklemy = a0 + a1*denklemx + a2*(denklemx.^2) + a3*(denklemx.^3);
plot(x,y,"ro",denklemx, denklemy,"b")




