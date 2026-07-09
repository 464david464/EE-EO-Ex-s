e=1.6e-19; % Charge of electron [C]
T=300; % Temperature [K]
k=1.38e-23; % Boltzmann constant [J/K]
kT=k*T; % Thermal energy [eV]

R_diff=1; % Oham
Va=1e-3; % Volt
%R_diff=KT/(e*i_0) *exp(-eV_0/(KT)); % Oham

i_0=(kT/(e*R_diff))*exp(-e*Va/(kT)) % [A] when V_a=1mV : R_diff=1 Oham


%% clculate i when Va=5mV
Va=5e-3; % Volt
i=i_0*(exp(e*Va/(kT))-1) % [A] when V_a=5mV : R_diff=1 Oham
