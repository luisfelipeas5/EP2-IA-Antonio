function [ent] = le_arquivo_entrada( nome_entrada )
%Metodo usado para ler o arquivo que contem os dados de entrada (os quais
%podem ser dados de teste ou treinamento). 
    arquivo = fopen(nome_entrada, 'r');
    formatSpec = '%f\n'; 
    ent = fscanf(arquivo, formatSpec);         
end
