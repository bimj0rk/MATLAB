m = 68.1;
c = 12.5;
g = 9.81;
tf = 30;

ta = 0:0.5:tf;
va = m * g/c * (1 - exp(-c/m * ta));
plot(ta, va, 'r')
hold on;
grid on
disp('Press any key')
pause

h = 4;
tn = 0:h:tf;
l = length(tn);

vn(1) = 0;
for i = 1:(l-1),
    vn(i+1) = vn(i) + (g - c/m * vn(i)) * h;
end
plot(tn, vn, 'Go', tn, vn, 'g')
disp('Press any key')
pause

h = 1;
tn = 0:h:tf;
l = length(tn);
vn(1) = 0;
for i = 1:(l-1),
    vn(i+1) = vn(i) + (g - c/m * vn(i)) * h;
end
plot(tn, vn, 'yo', tn, vn, 'y')
hold off