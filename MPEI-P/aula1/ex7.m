p_defeito = 0.3;
n_pecas = 5;
k_sucessos = 3;

prob = nchoosek(n_pecas, k_sucessos) * (p_defeito)^k_sucessos * (1 - p_defeito)^(n_pecas-k_sucessos);