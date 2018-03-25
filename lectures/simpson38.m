a = 0;
b = 2;

n = 3;
h = (b-a)/n;

w(1) = 3*h/8;
w(2) = 9*h/8;
w(3) = 9*h/8;
w(4) = 3*h/8;

Int = 0.0;
for i = 0:n
    x(i+1)=a+i*h;
    Int=Int+f(x(i+1))*w(i+1);
end

Int
