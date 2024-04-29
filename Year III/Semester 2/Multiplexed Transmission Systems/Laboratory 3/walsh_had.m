function [had, cod] = walsh_had(a, x)
% a= lungimea indicelui
% x=indicele in binar 
len_walsh = 2 .^ a;  %lungimea codului Walsh 
walsh_code = 0;
i = 2;
while (i <= len_walsh)
    walsh_code = [walsh_code, walsh_code ; walsh_code, not(walsh_code)];
    i = i.*2;
end
had = walsh_code;

c(a)=x(1)
for i=1:(a-1)
    c(a-i)=xor(x(i),x(i+1));
end
ind=0;

for i=2:a
    ind=ind+c(i)*2^(i-1); ind
end
   
cod=had((ind+1),:)

