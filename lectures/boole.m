a = 0;
b = 2;

n = 4;
h = (b-a)/n;

w(1) = 14*h/45;
w(2) = 64*h/45;
w(3) = 24*h/45;
w(4) = 64*h/45;
w(5) = 14*h/45;

Int = 0.0;
for i = 0:n
    x(i+1)=a+i*h;
    Int=Int+f(x(i+1))*w(i+1);
end

Int
