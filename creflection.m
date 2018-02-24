function C = creflection(theta, e1, e2);
    C = ((e2/e1)*cos(theta)-sqrt((e2/e1)-(sin(theta)^2))) / ((e2/e1)*cos(theta)+sqrt((e2/e1)-(sin(theta)^2)));
end