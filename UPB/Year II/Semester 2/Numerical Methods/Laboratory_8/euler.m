function euler(f, a, b, y0, h)
n = (b - a)/h + 1;
i = 0;
xi = a;
yi = y0;
fprintf('\nEuler method \n============\ni  x         y \n')
fprintf('%i  %f  %f \n', i, xi, yi);
for i = 1:n - 1
  xi1 = xi + h; 
  yi1 = yi + f(xi, yi)*h;
  yi = yi1;
  xi = xi1;
  fprintf('%i  %f  %f \n', i, xi1, yi1);
end