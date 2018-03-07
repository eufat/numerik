function X = elgauss(A,B)
      
dim = size(B);
n = dim(2);
B = zeros(n);

for i = 1:n
    B(i,i) = 1;
end

X = [];
 
% Remove x1 from P2, P3 and P4
dim = size(A);
m = dim(1);

for k = 1:m-1
    for i=k+1:m
        lambda = A(i,k) / A(k,k);
        for j = k:4
            A(i,j) = A(i,j) - lambda * A(k,j);
        end
        
        for r = 1:n
            B(i,r) = B(i,r) - lambda * B(k,r);
        end
    end
    % Check diagonal element, if it is 0, change with element beneath it
    s = 2;
    while A(k+1, k+1) == 0
        for p = 1:m
            temp = A(k+1, p);
            A(k+1, p) = A(k+s, p);
            A(k+s, p) = temp;
        end
        
        for q = 1:m
            temp = B(q+1);
            B(q+1) = B(q+s);
            B(q+s) = temp;
        end
        s = s + 1;
    end 
end

% Reverse substitution
for r = 1:n
    X(m,r) = B(m,r) / A(m,m);
    for i=m-1:-1:1
        sum = 0;
        for j = i+1:m
            sum = sum + (A(i,j) * X(j));
        end
        X(i) = (B(i) - sum) / A(i,i);
    end
end