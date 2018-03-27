function J=jacobian(x); 
J=[3 x(3)*sin(x(2)*x(3)) x(2)*sin(x(2)*x(3))
    8*x(1) (-1250*x(2))+2 0
    x(2)*(-1)*exp(-x(1)*x(2)) x(1)*(-1)*exp(-x(1)*x(2)) 20]
end