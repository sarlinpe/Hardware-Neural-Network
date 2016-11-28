function g = sigmoid(z, scaling)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

if ~exist('scaling', 'var')
    scaling = 1;
end

g = 1.0 ./ (1.0 + exp(-z/scaling));
end
