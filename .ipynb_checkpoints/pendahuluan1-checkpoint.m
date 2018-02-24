clear all
close
clc

tmin = 0.0;
tmax = 10.0;
Nt = 101;
vo = 1;
a = 5;

dt = (tmax - tmin) / (Nt - 1);
for i = 1:Nt
    t(i) = tmin + (i - 1) * dt;
    s(i) = vo * t(i) + 0.5 * a * t(i)^2;
end

plot(t,s)
grid;
xlabel('Waktu (t)');
ylabel('Jarak Tempuh (s)');
title('Grafik s vs t');
