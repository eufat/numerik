function J=jacobian(x); 
J=[6 2*x(3)*sin(x(2)*x(3)) 2*x(2)*sin(x(2)*x(3))
    x(1)/(x(1)^2+sin(x(3))+53/50)^(1/2) 9 cos(x(3))/(2*(x(1)^2+sin(x(3)) + 53/50)^(1/2))
    -3*x(2)*exp(-x(1)*x(2)) -3*x(1)*exp(-x(1)*x(2)) 60]
end