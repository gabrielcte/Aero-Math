%{
Gabriel Alves Silva
https://github.com/gabrielcte/Aero-Math/edit/main/grafico_potencia_necessaria.m
Usando a polar de arrasto e o peso da aeronave é possivel
avaliar a potencia necesária para andar em determinada altitude e velocidade
%}

function grafico_potencia_necessaria(peso_aeronave,razao_de_aspecto,area_da_asa,altitude)

    atmosfera_padrao=ISA(altitude);
    rho = atmosfera_padrao(1,3);
    coeficiente_de_arrasto_minimo = 0.00375;
    coeficiente_de_sustentacao_relativo_ao_arrasto_minimo = 0.2878;
    eficiencia_de_Oswald = 0.775;
    coeficiente_de_proporcionalidade = (1/(pi*eficiencia_de_Oswald*razao_de_aspecto));

    velocidade_do_escoamento_nao_pertubado = linspace(0,40,100);

    coeficiente_de_sustentacao = ((2*peso_aeronave)/(rho*area_da_asa))*(1./velocidade_do_escoamento_nao_pertubado.^2);

    % Polar de arrasto para perfil arqueado (cumbered)

    coeficiente_de_arrasto = coeficiente_de_arrasto_minimo + coeficiente_de_proporcionalidade*(coeficiente_de_sustentacao-coeficiente_de_sustentacao_relativo_ao_arrasto_minimo).^2;

    potencia_necessaria = peso_aeronave./(coeficiente_de_sustentacao./coeficiente_de_arrasto).* velocidade_do_escoamento_nao_pertubado;

    potencia_necessaria_minima = min(potencia_necessaria);
    [x,y]= find(potencia_necessaria == potencia_necessaria_minima);
    velocidade_otima = velocidade_do_escoamento_nao_pertubado(x,y);




    plot (velocidade_do_escoamento_nao_pertubado,potencia_necessaria,'r-.')
    plot(velocidade_otima, potencia_necessaria_minima, 'rp', 'MarkerFaceColor','b')
end
