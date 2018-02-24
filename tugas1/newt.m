x_prev = 0.5;
tolerance = 1e-10;
E_rel = 1;


while E_rel > tolerance
    if deriv_func(x_prev) == 0
        x_prev = x_prev + 0.001
    end
    
    x_new = x_prev - (func(x_prev)/deriv_func(x_prev));
    E_rel = abs((x_prev - x_new)/x_new);
    x_prev = x_new;
    
    disp(x_new);
end

x_new
    