function [ent] = le_arquivo_entrada( nome_entrada )
%Metodo usado para ler o arquivo que contem os dados de entrada (os quais
%podem ser dados de teste ou treinamento). Alem disso, os dados sao
%normalizados para que fiquem no intervalo [0, 1]. 
    arquivo = fopen(nome_entrada, 'r');
    formatSpec = '%f\n'; 
    ent = fscanf(arquivo, formatSpec);
    for i=1:length(ent)
        b = ent(i);
        ent(i) = (b - min(ent))/(max(ent) - min(ent)); 
    end         
end
