% soal 1
T = [];
Y = [];

for t = 0:0.1:50
    T = [T, t];
    Ytemp = piecew(t);
    Y = [Y, Ytemp]; 
end

plot(T, Y);
title('Height (m) vs Time (s)');