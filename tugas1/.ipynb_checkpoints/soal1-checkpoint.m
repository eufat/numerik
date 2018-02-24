
%Initialize vector
It_cap_vect = [];
It_ind_vect = [];
Vt_cap_vect = [];
Vt_ind_vect = [];
t_cap_vect = [];
t_ind_vect = [];

%Initialize constant
min_t = 0;
delta_t = 0.0001;
max_t = 0.1;
freq = 60;
omega = 2 * pi * freq;
V = 150;
C = 8 * 0.000001;
L = 25 * 0.001;

%Calculate for capacitor circuit
for t = min_t:delta_t:max_t
    Vt = acvoltage(V, omega, t);
    It = capcurrent(V, freq, C);
    Vt_cap_vect = [Vt_cap_vect, Vt];
    It_cap_vect = [It_cap_vect, It];
    t_cap_vect = [t_cap_vect, t];
end

%Calculate for inductor circuit
for t = min_t:delta_t:max_t
    Vt = acvoltage(V, omega, t);
    It = indcurrent(V, freq, L);
    Vt_ind_vect = [Vt_ind_vect, Vt];
    It_ind_vect = [It_ind_vect, It];
    t_ind_vect = [t_ind_vect, t];
end

figure
subplot(4,1,1)                 
plot(t_cap_vect, Vt_cap_vect);
title('Voltage (V) vs Time (t) on Capacitor');

subplot(4,1,2)                      
plot(t_cap_vect, It_cap_vect);
title('Current (I) vs Time (t) on Capacitor');

subplot(4,1,3)                  
plot(t_ind_vect, Vt_ind_vect);
title('Voltage (V) vs Time (t) on Inductor');

subplot(4,1,4)                    
plot(t_ind_vect, It_ind_vect);
title('Current (I) vs Time (t) on Inductor');



