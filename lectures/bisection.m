
function akar = bisection(a, b);

toleransi = 1e-10;
itermax = 5000;
kesrel = 1;

c = 0.5 * (a + b);

while kesrel > toleransi
    if fungsi(a) * fungsi(c) < 0
        b = c;
    else
        a = c;
    end
    
    akar = 0.5 * (a + b);
    kesrel = abs((c - akar)/akar);
    
    c = akar;
end