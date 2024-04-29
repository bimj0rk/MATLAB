function heun(f, a, b, y0, h, eps)
n = (b - a)/h + 1;
i = 0;
xi = a;
yi = y0;
fprintf('\nHeun method \n===========\ni  x         y \n')
fprintf('%i  %f  %f \n', i, xi, yi);
for i = 1:n - 1
  xi1 = xi + h;
  yi10 = yi + f(xi, yi)*h;
  yi1k1 = yi10;
    for k = 1:10
      yi1k = yi + (f(xi, yi) + f(xi1, yi1k1))/2*h;
      err = abs((yi1k - yi1k1)/yi1k);
      if err < eps
        break;
      end
      yi1k1 = yi1k;
    end
  yi = yi1k;
  xi = xi1;
  fprintf('%i  %f  %f \n', i, xi1, yi1k);
end