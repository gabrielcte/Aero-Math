clc 
clear all

altitude = 500; %m
peso_aeronave = 32; %kg
Semi_envergadura = 1.605191; %m
area_da_asa =1.6 ;%m^2
corda_media = area_da_asa/(2*Semi_envergadura);  %m
razao_de_aspecto = (2*Semi_envergadura) / corda_media;
corrente = 12; %A
tensao = 48; %V
eficiencia_motor = 0.9;; 
eficiencia_propeler = 0.65;

figure
hold on
grafico_potencia_necessaria(peso_aeronave,razao_de_aspecto,area_da_asa,altitude)
grafico_potencia_disponivel(corrente,tensao,eficiencia_motor,eficiencia_propeler)
title('Potência Disponivel e Necessária')
xlabel('Velocidade do escoamento livre V, m/s')
ylabel('Potência em W')
grid on
axis square
legend({'Potencia necessaria','Velocidade ótima','Potencia disponivel'},'Location','southeast')
