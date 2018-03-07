function f = funtest(x);
    f = [ 3*x(1) - cos(x(2)*x(3)) - 0.5
         x(1) - 625*x(2)^2 - 0.25
         exp(-x(1)*x(2)) + 20*x(3) + ((10*pi)-3)/3 ];
end