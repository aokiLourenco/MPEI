function prob = ex5(p, n, x, N)

lancamentos = rand(n, N) > p;

sucessos = sum(lancamentos) == x;

prob = sum(sucessos) / N;

end