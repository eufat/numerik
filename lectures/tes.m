tolerance = 1e-10;
xlama = [ 1 ; 2 ; 1 ];
xbaru = xlama - (inv(jacobian(xlama)) * fun(xlama));

for i = 1:10000
    if det(jacobian(xlama )) == 0
        xlama = xlama 1e-6
    end
    
    abserr = abs(xlama - xbaru);
    relerr = abs((xlama - xbaru) / xbaru);

    if abserr < tolerance & relerr < tolerance
        break;
    end

    xlama = xbaru;
end