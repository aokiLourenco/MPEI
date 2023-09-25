function prob = ex5(p, l, c, N)
    sucessos = 0;

    for i = 1:N
        resultados = rand(1, l) < p;

        caras_obtidas = sum(resultados);

        if caras_obtidas == c
            sucessos = sucessos +1;
        end
    end

    prob = sucessos / N;
end