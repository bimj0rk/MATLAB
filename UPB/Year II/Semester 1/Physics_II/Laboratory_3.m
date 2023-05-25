N = 0 :10;
occurence = [38 105 199 217 157 141 81 42 21 6 3];
Nbar = sum(occurence.*N)/sum(occurence);
P = Nbar.^N./factorial(N).*exp(-Nbar);
occurencePoisson = P .* sum(occurence); 
y = [occurence' occurencePoisson'];
bar(N, y);
xlabel('N');
ylabel('Occurence');
legend('Experimental results', 'Poisson');

x = 0:25;
y = poisspdf(x, 10);
bar(x, y);
xlabel('N');
ylabel('Occurence');
title('Poisson distribution for N = 25');