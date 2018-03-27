% soal 2
miu0 = 0.13; % meter squared
ni = 6.21 * (10^3); % 1 / meter cubic
q = 1.6 * (10^-19); % c
T0 = 300; % Kelvin
T = 1000; % Kelvin
rho = 6 * (10^4); % V s m /C

miu = miu0 * (T/T0)^(-2.42);
n = 1 / (rho * q * miu);

% Penyederhanaan dari rumus di soal didapatkan
N = ((n^2) + (ni^2)) / n
