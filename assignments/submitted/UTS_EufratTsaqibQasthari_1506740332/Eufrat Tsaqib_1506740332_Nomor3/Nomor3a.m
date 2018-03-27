clear all
close
clc

V1=40
V2=360
V3=80

Vi=[280 80 0
    80 100 20
    0 20 90];
V=[V1;V2+V1;V3+V2]
I=elgauss(Vi, V)