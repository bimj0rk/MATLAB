function eulerModified(f, a, b, y0, h)
n = (b - a)/h + 1;
i = 0;
xi = a;
yi = y0;
fprintf('\nEuler modified method \n=====================\ni  x         y \n')
fprintf('%i  %f  %f \n', i, xi, yi);
for i = 1:n - 1
  xi12 = xi + h/2;
  yi12 = yi + f(xi, yi) * h/2;
  xi1 = xi + h; 
  yi1 = yi + f(xi12, yi12)*h;
  yi = yi1;
  xi = xi1;
  fprintf('%i  %f  %f \n', i, xi1, yi1);
end