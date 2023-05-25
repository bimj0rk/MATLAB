function simpson13composed(f, a, b)
n = 5;
h = (b - a)/(2 * n);
for i = 1:2*n - 1
    x(i) = a + (i - 1)*h;
end

sEven = f(x(2)) + f(x(4)) + f(x(6)) + f(x(8)) + f(x(10));
sOdd = f(x(3)) + f(x(5)) + f(x(7)) + f(x(9));

I = h/3*f(x(1)) + 4*sEven + 2*sOdd + f(x(11));

disp('Simpson 1/3 composed rule');
printf('I = %f \n', I);

