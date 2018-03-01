Q = 3e-6; 
q = -1e-6; 
eps0 = 8.85e-12; 
ra = 5; 
rb = 10; 
rc = 15;
n = 26;

rmin = 0;
rmax = 26;

dr = (rmax - rmin) / (n - 1);

for i = 1:n 
    r(i) = rmin + (i-1) * dr;
    if r(i) <= ra 
        E(i) = (Q * r(i)) / (4 * pi * eps0 * (ra^3)); 
    elseif ra < r(i) & r(i) <= rb 
        E(i) = Q / (4 * pi * eps0 * (r(i)^2)); 
    elseif rb < r(i) & r(i) <= rc 
        E(i) = 0; 
    elseif r(i) >= rc 
        E(i) = (Q + q) / (4 * pi * eps0 * (r(i)^2)); 
    end; 
end; 

plot(r / 100, E * 1000) 
xlabel('Jarak (m)'); 
ylabel('Medan Listrik (N/C)'); 
title('Grafik r vs E');