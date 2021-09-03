%{
Gabriel Alves Silva
https://github.com/gabrielcte/
Apresentação da potencia disponivel para um motor elétrico
A corrente costuma ser a corrente de discarga padrão da bateria usada, ou 
gerada em um sistema-hibrido
%}

function grafico_potencia_disponivel(corrente,tensao,eficiencia_motor,eficiencia_propeler)

    %Potencia eletrica oferecida pela bateria
    potencia_eletrica = corrente*tensao;
    %Potencia aproveitada pelo motor
    potencia_mecanica = potencia_eletrica*eficiencia_motor;

    % Potencia que a Helice consegue utilizar
    potencia_disponivel = eficiencia_propeler*potencia_mecanica;
    potencia_disponivel = potencia_disponivel*ones(1,40);
    
 
    plot (potencia_disponivel,'b:')
   end
