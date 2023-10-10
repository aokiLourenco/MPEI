p = 0.3;
n = 5;
N = 10000;
sucessos = 0;

for i = 1:N
    amostra = rand(1, n) < p;
    if sum(amostra) <= 2
        sucessos = sucessos + 1;
    end
end

prob = sucessos / N;