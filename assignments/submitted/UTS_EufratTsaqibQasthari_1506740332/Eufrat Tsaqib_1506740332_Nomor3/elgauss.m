function x = elgauss(A,b)

%sistem persamaan linier menggunakan eliminasi gauss

dim = size(A);
n = dim(1);
dim = size(b);
m = dim(2);

%proses triangularisasi 
for k=1:n-1
    for i=k+1:n
        lambda = A(i,k) / A(k,k);
        for j=k:n
            A(i,j) = A(i,j) - lambda*A(k,j)
        end;
        
        for r=1:m
            b(i,r) = b(i,r) - lambda*b(k,r);
        end;
    end;
        
    %cek elemen diagonal A
    %bila elemen diagonal A=0, tukar
    %baris tersdebut dengan baris berikutnya
    s=2;
    while A(k+1,k+1) == 0
        for p =1:n
            temp = A(k+1,p)
            A(k+1,p) = A(k+s,p);
            A(k+s,p) = temp;
        end;
        
        for q = 1:m
            temp = b(k+1,q)
            b(k+1,q) = b(k+2,q);
            b(k+1,q) = temp;
        end;
    s=s+1;
    
    end; 
end; 

%substitusi mundur
for r = 1:m
    x(n,r) = b(n,r) / A(n,n);

    for i=n-1:-1:1;
        sum = 0;
        for j=i+1:n; 
            sum= sum+ A(i,j)*x(j,r);
        end;
        x(i,r) = (b(i,r)-sum) / A(i,i);

    end;
end;