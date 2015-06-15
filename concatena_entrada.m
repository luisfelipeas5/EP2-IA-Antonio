function [entrada] = concatena_entrada (treinamento, teste) 
%Concatena as series temporais de treinamento e teste em um unico vetor
%denominado 'entrada'. 
    entrada = zeros((length(treinamento)+length(teste)),1); 
    entrada(1:length(treinamento),:) = treinamento(1:length(treinamento),:); 
    entrada((length(treinamento)+1):(length(treinamento)+length(teste)),:) = teste(1:length(teste),:); 
end
