function C = kalimatriks(A,B);

dim = size(A);
n = dim(1);
m = dim(2);

dim = size(B);
p = dim(2);

if n != p
for i = 1:n
    for j = 1:p
        C(i,j) = 0;
        for k = 1:m
            C(i,j) = C(i,j) + A(i,k)*B(k,j);
        end;
    end;
end;

