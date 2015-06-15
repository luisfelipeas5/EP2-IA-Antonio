function [] = principal (treinamento, teste) 
%O método principal() utiliza scripts fuzzy gerados pela Fuzzy Toolbox, os
%quais são salvos ("um por vez") na variável fismat. Ao todo, serão
%criados 4 scripts '.fis', um para cada par de arquivos "seriex_trein.txt"
%e "seriex_test". O lag, nesse caso, é considerado o número de entradas
%no modelo fuzzy decrementado de 1. A partir das séries temporais de teste
%e treinamento, as matrizes X e Y são criadas, normalizadas e separadas. 
%Então, para cada par matriz X de treinamento e modelo fuzzy, um vetor de
%saídas é gerado. Tal vetor é subtraído do vetor de saídas esperadas e,
%então, um vetor de erros é gerado. Os quadrados de todos os termos do vetor
%de erros são somados e o total é dividido pelo número de termos do vetor. 
%O erro quadrado médio é impresso na tela a fim de ver se a meta de 5% de
%erro foi atingida. Caso necessário, é necessário refazer o script fuzzy.  
    fismat = readfis('fuzzy1'); 
    lag = length(fismat.input)-1; 
    [X,Y,c] = monta_matrizes(treinamento, teste, lag); 
    [Xn, Yn] = normalizacao_dados(X,Y,lag); 
    [X_trein, ~, Y_trein, ~] = separa_conjuntos(Xn, Yn, lag, c); 
    saida = evalfis(X_trein, fismat); 
    erro = Y_trein - saida; 
    et = 0; 
    for i = 1:length(erro)
        et = et + (erro(i,1)^2); 
    end
    eqm = et/length(erro); 
    fprintf('O erro quadrado medio eh %1.4f.\n',eqm); 
end
