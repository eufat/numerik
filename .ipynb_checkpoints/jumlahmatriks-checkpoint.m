function C = jumlahmatriks(A,B);

dim = size(A);
n = dim(1);
m = dim(2); 

for i = 1:n
    for j = 1:m
        C(i,j) = A(i,j) + B(,m);
    end;
end;