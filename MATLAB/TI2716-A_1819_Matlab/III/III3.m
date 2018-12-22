function [yy] = III3(x, f)
    yy(1) = 0;
    for n = 2:length(x)
        yy(n) = f * yy(n-1) + 5 * x(n) - 2 * x(n-1);
    end
end