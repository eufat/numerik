clear all
close
clc

tolerance = 1e-10;
xlama = [ 1 ; 2 ; 1 ]


for i = 1:5000
    if det(jacobian(xlama )) == 0
        xlama = xlama + 1e-6;
    end
    
    xbaru = xlama - inv(jacobian(xlama))*func(xlama);
    
    abserr = abs(xlama - xbaru);
    relerr = abs((xlama - xbaru) / xbaru);

    if abserr < tolerance & relerr < tolerance
        break;
    end

    xlama = xbaru;
end


x=[xbaru(1) xbaru(2) xbaru(3)]






