% QUESTION 3.3
function [varience] = fn_varience(u, s, dx, x)
    u = input("");
    s = input("");
    dx = input("");
    x = input("");

    for i = 1:length(x)
        pd(i) = (1 / (s * sqrt(2 * pi))) * e^(-0.5 * ((x(i) - u) / s)^2)
        pdf(i) = pd(i) * dx
    endfor

    fn_varience = sum((x.^2) .* pdf) - sum(x .* pdf)^2
endfunction
