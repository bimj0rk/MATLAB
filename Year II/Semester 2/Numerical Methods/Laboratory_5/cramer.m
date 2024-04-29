
function [x,err]=cramer(A,b)
[n,m]=size(A);
err =0;
if n ~= m 
  disp('error: matrix A is not squared!'); 
  err = 1;
end
if rank(A) ~= m 
  disp('error: determinant of matrix A is zero');
  err = 2;
end
if err == 0 
  x = ones(n,1); 
  a_det = det(A); 
    for i = 1:n
      C = A; 
      C(:,i) = b; 
      x(i,1) = det(C)/a_det; 
    end
end