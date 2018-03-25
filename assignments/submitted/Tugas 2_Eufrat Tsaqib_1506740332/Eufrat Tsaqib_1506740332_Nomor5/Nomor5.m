
clear all
close
clc

T=[-40 0 40 80 120 160]
P=[6900 8100 9300 10500 11700 12900]

m=1000;
mr=28;
v=10;

x=(m/mr)*1/v;
x=x*T
N=6

x2=x*x'
xiyi=x*P'

sumx=sum(x)
sumy=sum(P)
sumxiyi=sum(xiyi)
sumx2=sum(x2)
sumx22=sumx*sumx'

num=N*sumxiyi-sumx*sumy
den=N*sumx2-sumx22

r=num/den %hasil