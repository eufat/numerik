% soal 4
X = [0.10 0.17 0.27 0.35 0.39 0.42 0.43 0.44];
F = [10 20 30 40 50 60 70 80];

plot(X, F);

% least square hanya berlaku di rentang 0.1<=x<=0.35
N = 4;
x1 = X(1:N);
y1 = F(1:N);

K1 = leastsquare(x1, y1, N)

% least square pada semua rentang
N = length(X);
x2 = X(1:N);
y2 = F(1:N);

K2 = leastsquare(x2, y2, N)