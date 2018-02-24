A = [3 4 5; 6 8 9]
B = [1 2 3; 4 5 6]

for i=1:2
   for j=1:3
       C(i,j) = A(i,j) + B(i,j);
   end
end

C
