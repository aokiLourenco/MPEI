l= 15;
p= 0.5;
c= 6;
N= 1e5;

lancamentos= rand(l, N) > p;
sucessos= sum(lancamentos) >= c;
prob= sum(sucessos)/l;

fprintf('A probabilidade é : ')
fprintf('%d ', prob)
fprintf('\n')

