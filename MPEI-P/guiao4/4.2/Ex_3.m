ficheiro=fopen("wordlist-preao-20201103.txt");
palavras=textscan(ficheiro,"%s",'delimiter','\n');
palavras=palavras{1};
fclose(ficheiro);

n=8000;
k=3;
chaves=palavras(1:1000);

filtro=inicializarFiltro(n);

for i=1:length(chaves)
    filtro=adicionarElemento(filtro,chaves{i},k);
end

chaves2 = palavras(1001:11001);

falsos_positivos = 0;

for i = 1:length(chaves2)
    if pertenceConjunto(filtro, chaves2{i}, k)
        falsos_positivos = falsos_positivos + 1;
    end
end

percentagem_obs = falsos_positivos/length(chaves2)*100;

% Calcula a estimativa teórica
m = length(chaves);
probabilidade_falso_positivo = (1 - exp(-k * m / n))^k;
percentagem_estimativa = probabilidade_falso_positivo * 100;

fprintf("Percentagem de falsos positivos observada: %f%%\n", percentagem_obs);
fprintf("Percentagem de falsos positivos estimada: %f%%\n", percentagem_estimativa);