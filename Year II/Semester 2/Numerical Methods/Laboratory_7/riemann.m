function riemann (f, a, b, n)
h = (b - a)/n;
Ln = 0;
Mn = 0;
Rn = 0;
for i = 0:n - 1
    x = a + i*h;
    Ln = Ln + f(x)*h;
    Mn = Mn + f(x + h/2)*h;
    Rn = Rn + f(x + h)*h;
end
disp('Riemann method');
printf('Ln = %f \n Mn = %f \n Rn = %f \n', Ln, Mn, Rn);
