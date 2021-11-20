%{
Gabriel Alves Silva
https://github.com/gabrielcte/Aero_Math/blob/main/Attitude_Determination_Triad.m
TRIAD é um algoritmo de determinação de atitude simples e rápida.
Essa usa dois vetores em dois sistemas de coordenadas diferentes.
Os vetores devem ser diferentes.
ver:
https://github.com/gabrielcte/Aero-Math/blob/main/teste_triad
%}

function [Rbi] = Attitude_Determination_Triad(VB, VI) 

    t1b = VB(1,:)';
    t1i = VI(1,:)';  
    t2b = cross(VB(1,:)',VB(2,:)')/norm(cross(VB(1,:)',VB(2,:)'));
    t2i = cross(VI(1,:)',VI(2,:)')/norm(cross(VI(1,:)',VI(2,:)'));  
    t3b = cross(t1b,t2b)/norm(cross(t1b,t2b));
    t3i = cross(t1i,t2i)/norm(cross(t1i,t2i));    
    Ab = [t1b t2b t3b];
    Ai = [t1i t2i t3i];
    Rbi= Ab*Ai';

    
end
