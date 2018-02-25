function C = creflection(theta, e1, e2);
    C = (((e2/e1)*cos(theta))-(((e2/e1)-(sin(theta)^2))^0.5)) / (((e2/e1)*cos(theta))+(((e2/e1)-(sin(theta)^2))^0.5));
end