clear all
close
clc

% Demo integrasi trapezoid

% Tentukan batas integrasi
a = 0;
b = 2;

% Tentukan jumlah kuadratur
n = 2;

% Tentukan Lebar Kuadratur
h = (b - a)/n;

% Tentukan Pemberat (w) Integrasi
w(1) = h/3;
w(2) = 4*h/3;
w(3) = h/3;

% Hitung hasil Integrasi
Int = 0.0;
for i = 0:n
    x(i+1) = a + i*h
    Int = Int + f(x(i+1))*w(i+1);
end;