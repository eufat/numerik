function V = piecew(t);

if t >= 0 && t < 10
    V = 11 * (t^2) - (5*t);
elseif t >= 10 && t < 20
    V = 1100 - (5*t);
elseif t >= 20 && t <= 30
    V = (50*t) + (2*(t-20)^2);
elseif t > 30   
    V = 1520 * exp(-0.2 * (t-30));
else
    V = 0;
end