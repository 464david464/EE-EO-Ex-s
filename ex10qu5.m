N=5e17; %=Na=Nd [cm^-3]
e=1.6e-19; % Charge of electron [C]
T=295; % Temperature [K]
ni=2.4e13; % Intrinsic carrier concentration in Ge [cm^-3]
k=1.38e-23; % Boltzmann constant [J/K]
kT=k*T; % Thermal energy [J]
epsilon=15.8; % Relative permittivity of Ge
epsilon_0=8.85e-14; % Vacuum permittivity [F/cm]

Va=0; % Applied voltage [V]
Vb=kT/(2*e) * log(N/ni); % Built-in voltage [V]

Vt=abs(Vb-Va); % total voltage [V]

d1 = 2*sqrt(epsilon*epsilon_0*Vt/(e*N)) % Depletion width [cm]
E_max = 2*Vt/d1 % Maximum electric field [V/cm]

%% Reverse Bias

%Case1
Va=-1; % Applied voltage [V]
Vt=abs(-Vb+Va); % total voltage [V]
d2 = 2*sqrt(epsilon*epsilon_0*Vt/(e*N)) % Depletion width [cm]
E_max = 2*Vt/d2 % Maximum electric field [V/cm]

%Case2
Va=-5; % Applied voltage [V]
Vt=abs(-Vb+Va); % total voltage [V]
d3= 2*sqrt(epsilon*epsilon_0*Vt/(e*N)) % Depletion width [cm]
E_max = 2*Vt/d3 % Maximum electric field [V/cm]