function [voltage] = Nernst(valence,temperature,InConc,OutConc)
%Will find the Nerst of an ion in mV
%   Will also plot voltage vs temperature
%   Temperature is in Celcius
%   Concentration in milliMoles
%   Valence is number of valence electrons (taking place in rxn)
R = 8.31;
T = temperature + 273.15;
F = 96500;
X = (R*T)/(valence * F);
voltage = 1000 * X * log(OutConc/InConc);

Kelvin = linspace(273,313,201);
V_K = 1000 * log(OutConc/InConc) * R * Kelvin/(valence * F);
plot(Kelvin,V_K)
title('Nernst Effect')
xlabel('Temperature')
ylabel('Voltage')


end

