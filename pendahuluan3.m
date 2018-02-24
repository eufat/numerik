clear all
close
clc

t = 0:.01:2;

A1 = 1.0;
f1 = 5.0;
theta1 = 0.0;
y1 = A1 * sin(2*pi*f1*t + theta1);

A2 = 1.0;
f2 = 2.0;
theta2 = 0.0;
y2 = A2 * sin(2*pi*f2*t + theta2);

y3 = y1 + y2;

figure;

subplot(3,1,1);
plot(t,y1);
grid;
xlabel('Waktu (s)');
ylabel('Simpangan (m)');
title('Gelombang f = 5 Hz');

subplot(3,1,2);
plot(t,y2);
grid;
xlabel('Waktu (s)');
ylabel('Simpangan (m)');
title('Gelombang f = 3 Hz, beda fase = pi/4');

subplot(3,1,3);
plot(t,y3);
grid;
xlabel('Waktu (s)');
ylabel('Simpangan (m)');
title('Superposisi Gelombang f = 5 Hz dan f = 3 Hz');


