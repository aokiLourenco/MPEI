p = 0.5;
k = 6;
n = 20;

% Cálculo analítico para probabilidade em séries de experiencias de
% Bernoulli
prob = nchoosek(n, k) * p^k * (1-p)^(n-k);