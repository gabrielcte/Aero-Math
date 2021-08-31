clear all
close all
clc

%{
Gabriel Alves Silva
https://github.com/gabrielcte/Aero-Math/edit/main/teste_triad

O algoritmo de determinação de atitude TRIAD é baseada em dois vetores dados em dois sistemas de coordenadas diferentes,
podendo só receber dois vetores por vez e considera que uma medida é mais precisa que a outra.
O vetor medido no sistema de coordenas de corpo do veículo espacial é nomeado (1b, 2b),
e aqueles referentes ao sistema de coordenadas inercial são (1i, 2i).
%}


v1b = [0.8273 0.5541 -0.0920];
v2b = [-0.82585 0.5522 -0.0955];
v1i = [-0.1517 -0.9669 -0.2050];
v2i = [-0.8393 0.4494 -0.3044];

VB = [v1b; v2b];
VI = [v1i; v2i];

Attitude_Determination_Triad(VB, VI) 
