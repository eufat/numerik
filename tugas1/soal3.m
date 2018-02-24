
e1 = 1;
e2 = 80;
step_theta = 5;
delta_theta = 0.1;
min_theta = 0;
max_theta = 70;

for theta = min_theta:step_theta:max_theta
    C = creflection(theta, e1, e2);
    disp(C);
end

C_vect = [];
theta_vect = [];

for theta = min_theta:delta_theta:max_theta
    C_vect = [C_vect, creflection(theta, e1, e2)];
    theta_vect = [theta_vect, theta];
end

plot(theta_vect, C_vect);


