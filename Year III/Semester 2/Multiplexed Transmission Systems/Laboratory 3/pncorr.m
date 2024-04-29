function [corr] = pncorr (a,b)
%a,b vectori, cu aceeasi lungime L
L = length(a);
mat = zeros(L,L);
temp = b;
for i = 1 : L
    corr(i) = sum(a .* temp)/L;
    temp(2 : L) = b(1 : (L - 1));
    temp(1) = b(L);
    b = temp;
end