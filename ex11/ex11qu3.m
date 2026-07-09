%============from question 2=========================
N=1e19; %=Na=Nd [cm^-3]
e=1.6e-19; % Charge of electron [C]
Eg=1.11*e; % Energy Gap in [J] for Silicon in 300K
T=273+60; % Temperature [K]
ni_rt=1.2e10;; % Intrinsic carrier concentration at room temperature in Si [cm^-3]
k=1.38e-23; % Boltzmann constant [J/K]
kT=k*T; % Thermal energy [J]
A=(ni_rt^2) * exp(Eg/(k*300)); % [cm^-6]

ni=sqrt(A) * exp(-Eg/(2*k*T)); % [cm^-3]  
Vb=2*kT/(e) * log(N/ni); % [V]
% ====================================================
%% +++++++++++ new Voltage ++++++++++++++++++++++++++
V=10*Vb *1e3; % [mV] New voltage for three Thermocouples
DV_Over_DT=V/T % [mV/K] Voltage change per temperature change