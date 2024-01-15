%% a)
disp('a)');
m = 300; % número de elementos
p = 0.03; % falsos posistivos

% calcula o tamanho adequado do filtro de Bloom
n = ceil((m * log(p)) / log(1 / (2 ^ log(2))));

disp(n);
% ---------------------------------------------
%% b) Inicializar o flitro de Bloom usando o tamanho calculado anterirormente. De seguida inclua no filtro 300 palavras diferentes
% geradas aleatoriamente com as caracteristicas definidas acima. Use a função de dispersão default providenciada pela função
% string2hash na implementação das funções do filtro de Bloom.
% Finalmente, determine por simulação a probabilidade de falsos positivos do filtro implementado, usando
% um conjunto de adequado de palavras.
disp('b)');

Bloom = BloomInit(n); % inicializa o filtro de Bloom
chars = 'a':'z'; % caracteres a usar na geração de palavras
cellStrings = cell(1, n); % inicializa o array de palavras

for i = 1:length(cellStrings)
    sizeA = rand() < 0.4;

    size = 0;

    if sizeA == 1
        size = 5;
    else
        size = 8;
    end

    word = '';

    for j = 1:size
        word = strcat(word, chars(randi(length(chars))));
    end
    cellStrings{i} = word;
end

chaves = cellStrings(1:300);

for i = 1:length(chaves)
    chave = char(chaves{i});
    code = mod(string2hash(chave), length(Bloom)) + 1;
    Bloom(code) = 1;
end

chaves = cellStrings(301:n);

falsosPositivos = 0;

for i = 1:length(chaves)
    chave = char(chaves{i});
    code = mod(string2hash(chave), length(Bloom)) + 1;
    resultado = Bloom(code);

    if resultado == 1
        falsosPositivos = falsosPositivos + 1;
    end
end

disp(falsosPositivos / length(chaves) * 100);
