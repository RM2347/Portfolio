function [y] = calcy(x)
%calculates the function y from the vector input x
%   Detailed explanation goes here
y = (0.6*x.^3.*exp(-0.47*x))+1.5*x.^2.*exp(-0.6*x)
end

