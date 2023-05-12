% QUESTION 3.1
function [cdf] = fn_cdf(u, s, x, dx)
    u = input("");
    s = input("");
    dx = input("");
    x = input("");

    for i = 1:length(x)
        pd(i) = (1 / (s * sqrt(2 * pi))) * e^(-0.5 * ((x(i) - u) / s)^2)
        pdf(i) = pd(i) * dx
    endfor

    fn_cdf(1) = pdf(1);

    for j = 2:length(x)
        fn_cdf(j) = pdf(j) + fn_cdf(j - 1)
    endfor
    sum(fn_cdf)
endfunction

