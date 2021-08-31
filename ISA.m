%{
Gabriel Alves Silva
https://github.com/gabrielcte/Aero-Math.git

Temperatura (T) em Kelvin, Velocidade do som (a) m/s, Pressão (P) em Pascal,
Densidade do ar (rho) Kg/m^3, altitude maxima 20 km, tropopausa 11 km
ISA inicial altitude = 0, T = 15°C - Kelvin , 
obdece a seguinte função T = To - 6.5 * h[m]/1000
Altitude da aeronave (h)
%}
  
function [vetor_atmosfera] = ISA(h)

    y = 1.401; % Constante universal dos gases perfeitos para o ar
    R = 287.04; % Constante universal dos gases perfeitos [m^2/K sec^2]
    Po = 101325; % Pressão inicial [N/m^2] 1013.25 hPa
    To = 15 + 273.15; % Temperatura Inicial em Kelvin
    g = 9.80665; % Gravidade m/sec^2 
    ao = 340.294; % Velocidade do som para a atmosfera inicial m/sec^2

    if(h>=0 && h<= 11000)
        T = To - 6.5 * h/1000;
        P = Po*(1-0.0065*h/To)^(5.2561);
    end

    if (h>11000 && h<=20000)  %tropopausa
        T =  216.6500;
        P =  22632 * exp(1)^(-(g/(R*T))*(h-11000));
    end
    
    if (h> 20000)
         disp('Programa funcional somente entre 0 á 20000 m !')
    end
    
    rho = (P/(R*T));
    a = sqrt(y*R*T);
    vetor_atmosfera = [T,P,rho,a];
end
