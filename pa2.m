n = 10;
freq = zeros(1,n+1);
p = ((9+2+8+9)/36);
for i = 1:1000000
    U = rand(1, n);
    toss = (U < p);
    heads = nnz(toss);
    freq(1,heads+1) = freq(1,heads+1)+1;
end
bar([0:n],freq/1000000);
xlabel('number of heads in 10 coin tosses') 
ylabel('outcome frequency in a million experiments')

% The probability in this case is about 0.7778 which means we can expect
% left skews with little to no small values. As displayed in the t

