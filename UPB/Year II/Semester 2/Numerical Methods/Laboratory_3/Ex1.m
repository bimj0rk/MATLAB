f =@ (x) cos(x) - x^3;
a = input("Enter the lower value of the interval: "); %0
b = input("Enter the upper value of the interval: "); %1
tol = input("Enter the tolerance: "); %0.001

y1 = f(a);
y2 = f(b);
i = 0;
x = (a + b)/2;

if y1 * y2 < 0
    disp('Inter a b x0');
    while(abs(f(x)) > tol)
        i = i + 1;
        x = (b + a)/2;
        y3 = f(x);
        fprintf("%f \t %f \t %f \t %f \n", i - 1, a, b, x);
        if y1 * y3 > 0
            a = x;
            y1 = y3;
        else
            b = x;
        end
    end
    fprintf("Root is x = %f", x);
else
    warning('The limits are inappropriate! Enter other limits');
end