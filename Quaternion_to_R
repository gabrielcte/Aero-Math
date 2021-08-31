%{
Gabriel Alves Silva
https://github.com/gabrielcte/Aero-Math/blob/main/Quaternion_to_R
Função que retorna a matriz de cossenos diretores (Rbi) a partir do vetor de quaternions (Q)
correspondentes.
%}

function [Rbi]=Quaternion_to_R(q)

    I = [1, 0, 0 ;0, 1, 0; 0, 0, 1]; %Matriz Identidade
    Q = [q(1); q(2); q(3)];
    qx = [0,-q(3),q(2);q(3),0,-q(1);-q(2),q(1),0];
    Rbi = ((q(4)^2)-Q'*Q)*I + 2*Q*Q' - 2*q(4)*qx;
    
end
