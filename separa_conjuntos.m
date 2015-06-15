function [X_treinamento, X_teste, Y_treinamento, Y_teste] = separa_conjuntos (X, Y, lag, corte)
%Esta função utiliza o valor de corte apresentado na função "monta_matrizes"
%para dividir as matrizes X (entrada) e Y (saída esperada) em submatrizes
%correspondentes de treinamento e teste. Sendo c o valor de corte, essa
%função armazena os c primeiros elementos de X e Y em X_treinamento e
%Y_treinamento, respectivamente; os demais elementos de X e Y serão
%armazenados em X_teste e Y_teste, respectivamente. 
    X_treinamento(1:corte,1:(lag+1)) = X(1:corte,1:(lag+1)); 
    X_teste(1:(length(X)-corte),1:(lag+1)) = X((corte+1):length(X),1:(lag+1)); 
    Y_treinamento(1:corte,1) = Y(1:corte,1); 
    Y_teste(1:(length(Y)-corte),1) = Y((corte+1):length(Y),1); 
end
