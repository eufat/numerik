function J = jacobian(x);
    J = [ 3*x(1)^2  4*x(2) -4
          2*x(1) 6*x(2) -1
          -1/(x(1)^2) -2 x(3) ];
end