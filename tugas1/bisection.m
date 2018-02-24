clear all
close
clc

a = -4; % batas kiri
b = 0; % batas kanan
y_vect = [];
x_vect = [];

c = (a+b) / 2; % nilai tengah sebagai tebakan awal

tolerance = 1e-10; 
Erel = 1;

while Erel > tolerance
    
    if func(a) * func(c) < 0
        b = c;
    else 
        a = c;
    end

    root = 0.5 * (a+b);
    Erel = abs((c-root) / root);
    
    c = root;
end

disp('done');
root

