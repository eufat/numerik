
a = 0;
b = 2;

n = 1000000;

h = (b-a)/ n;

w(1) = 0.5*h;
for i = 2:n
    w(i) = h;
end
w(n+1) = 0.5*h;
Int = 0.0;

for i = 0:n
    x(i+1) = a + i*h;
    Int = Int + f(x(i+1))*w(i+1);
end;

Int