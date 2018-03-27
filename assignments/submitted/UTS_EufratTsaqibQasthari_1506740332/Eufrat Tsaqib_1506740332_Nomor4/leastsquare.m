%%file leastsquare.m
function r = leastsquare(x,y, N);
    x2=x*x';
    xiyi=x*y';

    sumx=sum(x);
    sumy=sum(y);
    sumxiyi=sum(xiyi);
    sumx2=sum(x2);
    sumx22=sumx*sumx';

    num=N*sumxiyi-sumx*sumy;
    den=N*sumx2-sumx22;

    r=num/den;
end;