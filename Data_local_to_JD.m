%{
Gabriel Alves Silva
https://github.com/gabrielcte/Aero_Math/blob/main/Data_local_to_JD.m
Data Juliana, determina contagem de dias do dia 1º de Janeiro de 2000, até
a data de estudo.
Data local = anos (I), meses (J), dias (D), hora de acordo o tempo universal (UT), minutos (m),
segundos (s), fuso (f).
JD0 Data Juliana 
JDM0 Data Juliana Modificada
Fração do contabilização das horas segundos e minutos na fração do dia
JDMfrac Data Juliana contabilizando a fração do dia
%}

function [vetor_data_juliana] = Data_local_to_JD(I,J,D,UT,m,s,f)
    
    data_local = [I,J,D,UT,m,s];
    data_local_num = datenum(I,J,D,UT,m,s);
    sum_UTC = datenum(0000,00,00,-f,00,00);  %Calculo para compensar o fuso
    data_UTC=datevec(data_local_num + sum_UTC);

    I  = data_UTC(1);
    J  = data_UTC(2);
    D  = data_UTC(3);
    UT = data_UTC(4);
    m  = data_UTC(5);
    s  = data_UTC(6);

    %%Data Juliana UTC
    JD_UTC = D - 32075 + fix(1461 * (I+4800+fix((J-14)/12))/4) + fix(367*(J-2-fix((J-14)/12)*12)/12) - fix(3*(fix((I+4900+fix((J-14)/12))/100))/4);
    
    JD0 = JD_UTC-0.5;
    JDM0 = JD0-2400000.5;
    frac = [data_UTC(4) + data_UTC(5)*(1/60)+data_UTC(6)*(1/3600)]*(1/24);
    JDMfrac = JDM0 + frac;
    vetor_data_juliana = [JD0,JDM0,frac,JDMfrac];
end
