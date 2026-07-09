e=1.6e-19; % [C]
Eg=0.66*e; % Energy Gap in [J] for Germanium in 300K
ni_rt=2.4e13; % Charge Carriers density in [cm^-3]
k=1.38e-23; % "Boltzmann's constant [J/K]"
Tr=300; % Room Temperature in Kelvin

A = (ni_rt^2) / exp(-Eg/(k*Tr));



T=[-60, 20, 60]+273.15; % Temperature vector in Kelvin

Nd=1e16;
Na=Nd;

for i=1: length(T)

ni = sqrt(A) * exp(-Eg/(2*k*T(i)));
Temperature_In_Celsius=T(i)-273.15 % display temperature in Celsius
Vb=(k*T(i)/e) * log(Nd*Na / (ni^2)) %[V] Built-in voltage
end
