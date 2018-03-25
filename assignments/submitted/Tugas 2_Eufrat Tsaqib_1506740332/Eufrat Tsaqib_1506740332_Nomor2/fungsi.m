function [f]=fungsi(x)
    r=225;
    c=0.6*10^(-6);
    l=0.5;
    z=75;
    a=1/(r^2);
    b=((x*c)-1/(x*l))^(2)
    f=(a+b)^(0.5)-(1/z)
end