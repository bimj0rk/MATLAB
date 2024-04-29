function [op_seq] = pnseq (a, b, c)
% a : numarul de bistabili; N=2^a-1 este lungimea secventei;
% b = polinomul generator incepand cu primul bit; 
%c = starea initiala

%e.g.numarul de bistabili este 4 ==> a = 4
%polinomul generator este  x4+x+1 [1 0  0 1 1]   ==> b = [1 0 0 1] (LSB nu
%se trece)
%starea initiala este  [1 0 0 0] ==> c = [1 0 0 0]
%
%
%
%                <   
%   -----------X____________________________________
%  |     ___    |    _____   ____        _____       |   
%  |>   |   |   |    |   |   |   |       |   |      ^|
%  -----|   |--------|   |---|   |-------|   |------------->o/p
%       -----       -----   -----       ----
%         x1 +         x2   + x3     +    x4
%stare initiala
%       1               0       0           1
%
%
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

x = a;
tap_ff = b;
int_stat = c;
for i = 1:1:length(int_stat)
    old_stat(i) = int_stat(i);
    gen_pol(i) = tap_ff(i);
end
len = (2 ^ x)-1;
gen_pol(i + 1)= 1;
gen_l = length(gen_pol);
old_l = length(old_stat);
for i1 = 1:1:len
    % generare feedback
    t = 1;
    for i2 = 1:old_l
        if gen_pol(i2) == 1
            stat_str(t) = old_stat(gen_l - i2);
            i2 = i2 + 1;
            t = t + 1;
        else
            i2 = i2 + 1;
        end
    end
    stat_l = length(stat_str);
    feed_ip = stat_str(1);
    for i3 = 1: stat_l - 1
        feed_ip = bitxor(feed_ip, stat_str(i3 + 1)); 
        feed_ipmag(i1) = feed_ip;
        i3 = i3 + 1;
    end
    % deplasare continut celule
    new_stat = feed_ip;
    for i4 = 1:1:old_l
        new_stat(i4+1) = old_stat(i4);
        old_stat(i4) = new_stat(i4);
    end
    op_seq(i1) = new_stat(old_l + 1);
end
%op_seq = secventa PN generata;