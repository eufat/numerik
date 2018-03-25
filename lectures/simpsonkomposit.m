
a = 0;
b = 2;

n = 10;

h = (b-a)/ n;

w(1) = h/3;
for i = 2:2:n
    w(i) = 4*h/3;
end;
for i = 3:2:n-1
    w(i) = 2*h/3;
end;
w(n+1) = h/3;

Int = 0.0;
for i = 0:n
    x(i+1) = a + i*h;
    Int = Int + f(x(i+1))*w(i+1);
end;

Int