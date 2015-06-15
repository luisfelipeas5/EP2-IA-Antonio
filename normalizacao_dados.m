function [Xn, Yn] = normalizacao_dados(X, Y, lag)
%Usa o método min-max para normalizar os dados de entrada, de modo que
%todos se situem no intervalo [0,1], intervalo em que se encontram os dados
%de entrada e saida na Fuzzy Toolbox do Matlab. 
    Xn = zeros(length(X),(1+lag));
    for j=1:(1+lag)
        Xn(:,j) = (X(:,j)-ones(length(X),1)*min(X(:,j)))./(ones(length(X),1)*(max(X(:,j))-min(X(:,j)))); 
    end
    Yn = (Y-ones(length(Y),1)*min(Y))./(ones(length(Y),1)*(max(Y)-min(Y)));
end 
