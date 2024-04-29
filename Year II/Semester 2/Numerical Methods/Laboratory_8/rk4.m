function rk4(f, a, b, y0, h)
n = (b - a)/h + 1;
i = 0;
x = a;
y = y0;
fprintf('\nRK4 method \n==========\ni  x         y \n')
fprintf('%i  %f  %f \n', i, x, y);
for i = 1:n - 1
  k1 = h*f(x, y);
  k2 = h*f(x + h/2.0, y + k1/2.0);
  k3 = h*f(x + h/2.0, y + k2/2.0);
  k4 = h*f(x + h, y + k3);
  x = x + h;
  y = y + (k1 + 2.0*(k2 + k3) + k4)/6.0;
  fprintf('%i  %f  %f \n', i, x, y);
end