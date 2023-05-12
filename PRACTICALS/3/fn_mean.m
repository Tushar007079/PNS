% QUESTION 3.2
function [mean] = fn_mean
    u = input("");
    s = input("");
    dx = input("");
    x = input("");

    for i = 1:length(x)
        pd(i) = (1 / (s * sqrt(2 * pi))) * e^(-0.5 * ((x(i) - u) / s)^2)
        pdf(i) = pd(i) * dx
    endfor

    M = sum(x .* pdf)
endfunction
