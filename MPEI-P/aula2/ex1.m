%% 1 a)
p = 0.5;
n = 2;
N = 10000;
sucessos = 0;

for i = 1:N
    rapazes = rand(1, n) < p;
    if sum(rapazes) >= 1
        sucessos = sucessos + 1;
    end
end

prob = sucessos / N;
%% 1 b) 
