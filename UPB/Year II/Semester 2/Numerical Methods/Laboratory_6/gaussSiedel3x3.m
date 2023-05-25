function f = gauss_siedel_3x3(A,b,er_adm)
disp('Relaxation method for Gauss-Siedel algorithm')
disp('============================================')
[n,m]=size(A); 
err =0;
  for i=1:n
    if A(i,i) == 0
      printf('Error: Matrix A has an element equal to zero ')
      printf('at line %i, column %i ! \n', i, i) 
      disp('Pivot the equations and start again')
      err = 1;
    end
  end
if err==0 
    disp('== Solving the system without relaxation ==')
    X=[0;0;0];		
    epsilon=1;	
    N=0;          
    while epsilon > er_adm,
       X_old=X;
       X(1)=(b(1)-A(1,2)*X(2)-A(1,3)*X(3))/A(1,1); 
       X(2)=(b(2)-A(2,1)*X(1)-A(2,3)*X(3))/A(2,2);
       X(3)=(b(3)-A(3,1)*X(1)-A(3,2)*X(2))/A(3,3);
       epsilon=max((X-X_old)./X); 
       N=N+1;
    end
    printf('Number of iteration = %i \n',N)
    printf('The solution of the sistem is: \n x1= %f \n x2= %f \n x3= %f \n', 
           X(1), X(2), X(3)
    printf('Relative error = %f \n',epsilon)
    disp('=== Solving the system with relaxation ==')
    lambda=0.9; 
    printf('lambda = %f \n', lambda)
    X=[0;0;0];
    epsilon=1;
    N=0;
    while epsilon > er_adm,
       X_old=X;
       X(1)=(b(1)-A(1,2)*X(2)-A(1,3)*X(3))/A(1,1); 
   		    X(1)=lambda*X(1)+(1-lambda)*X_old(1);
       X(2)=(b(2)-A(2,1)*X(1)-A(2,3)*X(3))/A(2,2); 
   		    X(2)=lambda*X(2)+(1-lambda)*X_old(2);
       X(3)=(b(3)-A(3,1)*X(1)-A(3,2)*X(2))/A(3,3); 
   		    X(3)=lambda*X(3)+(1-lambda)*X_old(3); 
       epsilon=max((X-X_old)./X);
       N=N+1;
    end
    printf('Number of iteration = %i \n',N)
    printf('The solution of the sistem is: \n x1= %f \n x2= %f \n x3= %f \n', 
           X(1), X(2), X(3))
    printf('Relative error = %f \n',epsilon)
end