f =@ (x) cos(x) - x^3;

x1 = input("Enter the first initial guess: ");
x2 = input("Enter the second initial guess: ");
tol = input("Enter the tolerance: ");
maxit = input("Enter the max number of iterations: ");

it = 2;
f1 = f(x1);
f2 = f(x2);
while it <= maxit
    xr = x2 - f2*(x2 - x1)/(f2 - f1);
    fprintf("Iter %i \t x1 = %f \t x2 = %f \t xr = %f \n", it, x1, x2, xr);
    if abs(f(xr)) < tol
        fprintf("Root is x: %f \n", xr);
        break
    else
        it = it + 1;
        x1 = x2;
        f1 = f2;
        x2 = xr;
        f2 = f(xr);
    end
end

if it > maxit
    fprintf("Unable to find the root with tolerance %f in %i iterations. \n", tol, it - 1);
end