function [akar]=bisection(a, b)
    toleransi = 1e-15;
    kesrel = 1;

    c = 0.5 * (a + b);

    for i=1:1000000
        if fungsi(a) * fungsi(c) < 0
            b = c;
        else
            a = c;
        end

        akar = 0.5 * (a + b);
        kesrel = abs((c - akar)/akar);

        if kesrel < toleransi
            break
        end

        c = akar;
    end