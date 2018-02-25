% Initialize vector
T = [];
V = [];

% Set vectors
for t = -5:0.1:50
    T = [T, t];
    Vtemp = piecew(t);
    V = [V, Vtemp]; 
end

plot(T, V);
title('Voltage (V) vs Time (t)');