function simpson38simple(f, a, b)
n = 4;
h = (b - a)/(n - 1);
for i = 1:n
    x(i) = a + (i - 1)*h;
end

I = 3*h/8*(f(x(1)) + 3*f(x(2)) + 3*f(x(3)) + f(x(4)));

disp('Simpson 3/8 simple rule');
fprintf('I = %f \n', I);