x = [0.57 0.53 0.5 0.47 0.44];
y1 = [2.9 2.7 2.5 2.4 2.3];
plot(x, y1);
xlabel('Diameter');
ylabel = ('Accelerating voltage');
title = ('Accelerating voltage vs. Diameter');

hold on
y2 = [5 4.8 4.5 4.1 4];
plot(x, y2);
hold off

hold on
y3 = 5.098*x;
plot(x1, y3);
hold off

hold on
y4 = 8.922*x;
plot(x2, y4);
hold off
