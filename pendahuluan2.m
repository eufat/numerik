clear all
close
clc

uts = 60;
uas = 85;
tugas = 40;
gui = 30;

nilai = uts * 0.3 + uas * 0.3 + tugas * 0.2 + gui * 0.2
if nilai >= 85
    disp('A');
elseif nilai >= 80 & nilai < 85
    disp('A-');
elseif nilai >= 75 & nilai < 80
    disp('B+');
elseif nilai >= 70 & nilai < 75
    disp('B');
elseif nilai >= 65 & nilai < 70
    disp('B-');
elseif nilai >= 55 & nilai < 65
    disp('C+');
elseif nilai >= 50 & nilai < 55
    disp('C');
elseif nilai >= 0 & nilai < 50
    disp('D');
end