clear all
clc

A = [ 3 8 5 ; 6 4 7];
% matriks transpos
AT = A';

% penjumlahan matriks
B = [ 2 3 1 ; 2 2 1 ];
C = A + B;

dim = size(A);
n = dim(1);
m = dim(2);

%for i = 1:n
%    for j = 1:m
%        C(i,j) = A(i,j) + B(,m);
%    end;
%end;



