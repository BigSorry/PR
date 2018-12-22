function yy = FIR3(xx,b)
% FIR3  Input-output relation with three coefficients.
%       FIR3(xx,b) returns a vector whose values are computed
%       as yy(n) = b(1) * xx(n) + b(2) * xx(n-1) + b(3) * xx(n-2)
%
%       Note that b(1) contains the filter coefficient b_0, etc.
%       The values of yy(1) and yy(2) need to be computed separately,
%       since xx(0) and xx(-1) do not exist. We assume that these
%       values are zero (zero-padding).
%
for (n=3:1:length(xx))
    yy(n)=b(1) * xx(n) + b(2) * xx(n-1) + b(3) * xx(n-2);
end