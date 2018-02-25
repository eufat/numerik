% Initialize constant
e1 = 1;
e2 = 80;
step_theta = 5;
delta_theta = 0.1;
min_theta = 0;
max_theta = 70;

% Displaying every step theta
for theta = deg2rad(min_theta):deg2rad(step_theta):deg2rad(max_theta)
    C = creflection(theta, e1, e2);
    disp(C);
end

C_vect = [];
theta_vect = [];

% Plotting every delta theta
for theta = deg2rad(min_theta):deg2rad(delta_theta):deg2rad(max_theta)
    C_vect = [C_vect, creflection(theta, e1, e2)];
    theta_vect = [theta_vect, theta];
end

plot(theta_vect, C_vect);