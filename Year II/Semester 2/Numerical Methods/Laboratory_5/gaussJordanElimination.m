function [x,err]=gauss_jordan_elim(A,b) 
[n,m]=size(A); 
err =0; 
x=zeros(n,1); 
if n ~= m 
    disp('error: matrix A is not squared!'); 
    err = 1;
end
if length(b) ~= n 
    disp('error: wrong size of b'); 
    err = 2;
else
    if size(b,2) ~= 1 
        b=b';
    end
    if size(b,2) ~= 1
        disp('error: b is not a column vector!'); 
        err = 3;
    end
end
if err == 0 
    Aa=[A,b]; 
    for i=1:n 
        [Aa(i:n,i:n+1),err]=gauss_pivot(Aa(i:n,i:n+1));
        if err == 0
            Aa(1:n,i:n+1)=gauss_jordan_step(Aa(1:n,i:n+1),i);
        end
    end
    x=Aa(:,n+1);
end
A=0;

function A1=gauss_jordan_step(A,i) 
[n,m]=size(A); 
A1=A; 
s=A1(i,1);
A1(i,:) = A(i,:)/s;
k=[[1:i-1],[i+1:n]];
for j=k
    s=A1(j,1);
    A1(j,:)=A1(j,:)-A1(i,:)*s;
end

function [A1,err]=gauss_pivot(A) 
[n,m]=size(A); 
A1=A; 
err = 0;
if A1(1,1) == 0
    check = logical(1);
    i = 1;
    while check
        i = i + 1;
        if i > n  
            disp('error: matrix is singular'); 
            err = 1;
            check = logical(0);
        else
            if A(i,1) ~= 0 & check
                check = logical(0);
                b=A1(i,:);      
                A1(i,:)=A1(1,:);
                A1(1,:)=b;
            end
        end
    end
end