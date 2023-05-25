x = [7.402 6.876 5.491 5.187];
y = [1.435 1.383 0.946 0.791];
plot(x, y);
xlabel = ('Frequency');
ylabel = ('Mean stopping voltage');
title = ('Mean stopping voltage vs. Frequency');

hold on
y2 = (0.295*x) - 0.702;
plot(x, y2);
hold off