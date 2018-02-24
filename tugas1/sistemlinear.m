clear all
close
clc

A = [ 1 1 0 3
      2 1 -1 1
      3 -1 -1 2
      -1 2 3 -1 ];
  
B = [ 4 ; 1; -3; 4 ];
 

% Remove x1 from P2, P3 and P4
lambda = A(2,1) / A(1,1);
A(2,1) = A(2,1) - lambda * A(1,1);
A(2,2) = A(2,2) - lambda * A(1,2);
A(2,3) = A(2,3) - lambda * A(1,3);
A(2,4) = A(2,4) - lambda * A(1,4);
B(2) = B(2) - lambda * B(1);

A
B