x = 1:0.05:2;
n = length(x);
m = 1;
f1 = x.^m;
fa1 = f1(1) + m * 1^(m - 1) * (x - 1);
figure(1)

plot(x, f1, 'r', x, fa1, 'ro')
xlabel('x')
ylabel('f(x)')
grid
text(1.8, 1.5, 'm = 1')

m = 2;
f2 = x.^m;
fa2 = f2(1) + m * 1^(m - 1) * (x - 1);
plot(x, f2, 'g', x, fa2, 'go');
text(1.9, 3.5, 'm = 2')

m=3;
f3 = x.^m;
fa3 = f3(1) + m * 1^(m-1) * (x-1);
plot(x, f3, 'b', x, fa3, 'bo');
text(1.8, 5.5, 'm = 3')

m = 4;
f4 = x.^m;  
fa4 = f4(1) + m * 1^(m-1) * (x-1);
plot(x, f4, 'c', x, fa4, 'co');
text(1.7, 7.5, 'm = 4')

plot(x, f4, 'c', x, fa4, 'co');
text(1.7, 7.5, 'm = 4')
abs_err = [f1(n) - fa1(n), f2(n) - fa2(n), f3(n) - fa3(n), f4(n) - fa4(n)]

h = 1:-0.1:0;
R = 6 * h.^2 + 4 * h.^3 + h.^4;
figure(2)
plot(h, R, '*')
xlabel('h')
ylabel('absolute error')