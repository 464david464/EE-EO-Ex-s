% Calculate required doping concentration for degenerate state
% Assuming Fermi level reaches the conduction band

% Basic physical constants
k = 8.617e-5; % Boltzmann constant [eV/K]
T = 300;      % Room temperature [K]
kT = k * T;   % Thermal energy [eV]

% Material data at 300K
% Note: Update ni values if your course uses different approximations

% 1. Germanium
Eg_Ge = 0.66;         % Band gap [eV]
ni_Ge = 2.4e13;       % Intrinsic carrier concentration [cm^-3]

% 2. Silicon
Eg_Si = 1.11;         % Band gap [eV]
ni_Si = 1.2e10;       % Intrinsic carrier concentration [cm^-3]

% 3. GaAs
Eg_GaAs = 1.52;       % Band gap [eV]
ni_GaAs = 2.2e6;      % Intrinsic carrier concentration [cm^-3]

% Calculation
% From equation: Ec - Efi = kT * ln(Nd/ni)
% Assuming Efi is in the middle of the gap: Ec - Efi = Eg / 2
% Isolating Nd: Nd = ni * exp(Eg / (2*kT))

Nd_Ge = ni_Ge * exp(Eg_Ge / (2 * kT));
Nd_Si = ni_Si * exp(Eg_Si / (2 * kT));
Nd_GaAs = ni_GaAs * exp(Eg_GaAs / (2 * kT));

% Print results
disp('--- Required Doping Concentration (Nd) ---');
fprintf('Germanium (Ge) : %e [cm^-3]\n', Nd_Ge);
printf('Silicon (Si)   : %e [cm^-3]\n', Nd_Si);
printf('GaAs           : %e [cm^-3]\n', Nd_GaAs);

% Note: The results represent the effective density of states (Nc) for each material