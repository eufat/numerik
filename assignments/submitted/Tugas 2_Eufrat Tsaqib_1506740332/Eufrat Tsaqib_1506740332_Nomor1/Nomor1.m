clear all
close
clc

syms v(h); r=0.3; L=3;
a=(pi*r^2)/2;
b=(r^2)*asin(h/r);
c=h*sqrt((r^2)-(h^2));
v(h)=L*(a-b-c);
PV(h)=v(h)-0.35;

dPV(h)=diff(PV(h), h);

tolerance = 1e-20;
hlama=0.1;

for i = 1:10000
    hbaru = hlama - PV(hlama)/dPV(hlama);
    hbaruN=double(hbaru)
    abserr = abs(hlama - hbaruN);
    relerr = abs((hlama - hbaruN) / hbaruN);

    if abserr < tolerance & relerr < tolerance
        break;
    end

    hlama = hbaruN;
end

kedalaman=0.3-hbaruN