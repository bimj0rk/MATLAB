[x11, t1] = impuls1(-30, 34, 0.001, -11);
[x12, t1] = impuls1(-30, 34, 0.001, -4);
[x13, t1] = impuls1(-30, 34, 0.001, 7);
[x14, t1] = impuls1(-30, 34, 0.001, 11);
[x15, t1] = impuls1(-30, 34, 0.001, 28);
x1 = 4*x11 + 2*x12 + 10*x13 + 11*x14 - 2*x15;
plot(t1, x1), xlabel('Time'), ylabel('x1'), grid

[x21, t2] = step1(-17, 15, 0.001, -10);
[x22, t2] = step1(-17, 15, 0.001, -5);
[x23, t2] = step1(-17, 15, 0.001, 4);
[x24, t2] = step1(-17, 15, 0.001, 8);
x2 = 2*x21 + 0*x22 - 3*x23 + 1*x24;
plot(t2, x2), xlabel('Time'), ylabel('x2'), grid

conv11 = conv(x1, x1);
tconv11 = 2*(-30):0.001:2*34;
plot(tconv11, conv11), xlabel('Time'), ylabel('x1*x1'); grid 

conv12 = conv(x1, x2);
tconv12 = -(30+17):0.001:(34+15);
plot(tconv12, conv12), xlabel('Time'), ylabel('x1*x2'); grid 