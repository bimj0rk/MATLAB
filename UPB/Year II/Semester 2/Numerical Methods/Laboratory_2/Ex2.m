x = 0:0.1:1;
m = length(x);
f = -0.1 * x.^4 - 0.15 * x.^3 - 0.5 * x.^2 - 0.25 * x + 1.2;

dfdx = -0.25;
dfdx2 = -1;
dfdx3 = -0.9;
dfdx4 = -2.4;

f0 = f(1) * ones(size(x));
f1 = f0 + dfdx * (x - 0).^1;
f2 = f1 + dfdx2/(1 * 2) * (x - 0).^2;
f3 = f2 + dfdx3/(1 * 2 * 3) * (x - 0).^3;
f4 = f3 + dfdx4/(1 * 2 * 3 * 4) * (x - 0).^4;

plot(x, f, 'ro', x, f0, 'y', x, f1, 'b', x, f2, 'm', x, f3, 'c', x, f4, 'g')
axis([0,1,0,2])
grid
title('Taylor approximation of function f')
legend('function f', 'zero approx', '1st approx', '2nd approx', '3rd approx', '4th approx', 'location', 'southwest')
abs_err = f(m) - [f0(m), f1(m), f2(m), f3(m), f4(m)]