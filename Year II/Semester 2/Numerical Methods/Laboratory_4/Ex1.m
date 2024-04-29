f =@ (x) cos(x) - x^2;
fd =@ (x) -sin(x) - 3*x^2;

xi = input("Enter the initial value: "); %1, 10, 100, 100, 100
tol = input("Enter the tolerance: "); %0.001
maxit = input("Enter the max number of allowable iterations: "); %10, 10, 100, 10, 20)

it = 1;

while it <= maxit
    xr = xi - f(xi)/fd(xi);
    fprintf("Iter: %i \t xi = %f \t xr = %f \n", it, xi, xr);
    if abs(f(xr)) < tol
        fprintf("Root is %f \n", xr);
        break
    else
        it = it + 1;
        xi = xr;
    end
end

if it > maxit
    fprintf("Unable to find the root with the tolerance %f in %i iterations.", tol, it - 1);
end