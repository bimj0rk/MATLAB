clear all
clc
clf # delete child graphics objects
disp('Gauss-Siedel method')
disp('===================')
disp('Solve the system of linear equations:')
disp('11x1-9x2=99')
disp('11x1+13x2=286')
disp('using the Gauss-Siedel method, with the maximum error of 0.01.')


x1=-5:30; 
x2_1=-99/9+11/9*x1; 
x2_2=286/13-11/13*x1; 
subplot(2,1,1); 
plot(x1,x2_1,'r',x1,x2_2,'g'); 
grid; hold on
subplot(2,1,2); 
plot(x1,x2_1,'r',x1,x2_2,'g'); 
grid; hold on
disp('Solving the initial system of equations.')
disp('Start iteration!')
disp('Press a key and look at the first subwindow from Figure 1.')
x1=0; x2=0; 
subplot(2,1,1); plot(x1,x2,'co') 
pause
N=0;
epsi=1;
	while abs(epsi)>0.01
		x1old=x1;
        x2old=x2;
		N=N+1
		x1=99/11+9/11*x2;
		x2=286/13-11/13*x1;
		subplot(2,1,1)
		plot(x1,x2,'o')
		epsi1=abs(x1-x1old)/x1;
    epsi2=abs(x2-x2old)/x2;
   	epsi=max(epsi1,epsi2);
    pause
	end
[x1 x2]

disp('Pivot equations 1 and 2:')
disp('11x1+13x2=286')
disp('11x1-9x2=99')
disp('then solve again the sytem of equations.')
disp('Start iteration!')
disp('Press a key and look at the second subwindow from Figure 1.')
x1=0; x2=0;
subplot(2,1,2); plot(x1,x2,'c*')
pause 
N=0;
epsi=1;
while abs(epsi)>0.01
	x1old=x1;
  x2old=x2;
	N=N+1
  if N>5
    break
  end
	x1=286/11-13/11*x2;
	x2=-99/9+11/9*x1;
	subplot(2,1,2)
	plot(x1,x2,'*')
	epsi1=abs(x1-x1old)/x1;
  epsi2=abs(x2-x2old)/x2;
	epsi=max(epsi1,epsi2); 
  pause
end
disp('The method does not converge!')