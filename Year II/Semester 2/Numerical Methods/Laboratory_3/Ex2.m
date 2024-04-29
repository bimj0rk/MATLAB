display('Solving the equation cos(x) - x^3 = 0 using the false position method')

f =@ (x) cos(x) - x^3;

i = 1;

while(i)
    a = input('Enter the lower value of the interval: '); %0
    b = input('Enter the upper value of the interval: '); %1
    if f(a) * f(b) < 0
        i = 0;
        tol = input('Enter the tolerance: '); %0.001
    else
        warning('The limits are inapropriate! Enter other limits');
    end
end

if f(a) < 0
   an = a;
   bn = b;
else
    an = b;
    bn = a;
end

disp('Iter a b x');
x = a;
i = 0;
while(abs(f(x)) > tol)
    i = i + 1;
    x = ((an * f(bn) - bn * f(an))/(f(bn) - f(an)));
    if f(x) < 0
        an = x;
    else
        bn = x;
    end
end

fprintf("The root is x = %f", x);
