function simpson13simple(f, a, b)
n = 3;
h = (b - a)/(n - 1);

for i = 1:n
    x(i) = a + (i - 1)*h;
end

I = h/3*(f(x(1)) + 4*f(x(2)) + f(x(3)));
disp('Simpson 1/3 simple rule');
fprintf('I = %f \n', I);