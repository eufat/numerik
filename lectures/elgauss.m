function X = elgauss(A,B)

dim = size(A);
n = dim(1);
dim = size(B);
m = dim(2);
 
% Remove x1 from P2, P3 and P4

for k = 1:n-1
    for i=k+1:n
        lambda = A(i,k) / A(k,k);
        for j = k:4
            A(i,j) = A(i,j) - lambda * A(k,j);
        end
        
        for r = 1:m
            B(i,r) = B(i,r) - lambda * B(k,r);
        end
    end
    % Check diagonal element, if it is 0, change with element beneath it
    s = 2;
    while A(k+1, k+1) == 0
        for p = 1:n
            temp = A(k+1, p);
            A(k+1, p) = A(k+s, p);
            A(k+s, p) = temp;
        end
        
        for q = 1:m
            temp = b(k+1,q);
            b(k+1,q) = b(k+s,q);
            b(k+s,q) = temp;
        end
        s = s + 1;
    end 
end

% Reverse substitution
for r = 1:m
    X(n,r) = B(n,r) / A(n,n);
    for i=n-1:-1:1
        sum = 0;
        for j = i+1:n
            sum = sum + (A(i,j) * X(j));
        end
        X(i) = (B(i) - sum) / A(i,i);
    end
end