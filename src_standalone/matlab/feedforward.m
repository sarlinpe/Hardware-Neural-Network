function [h, a_1, a_2] = feedforward(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);

sigmoid = @(z) 1.0 ./ (1.0 + exp(-z));

a_1 = [ones(m, 1) X];
a_2 = [ones(m, 1) sigmoid(a_1*Theta1')];
h = sigmoid(a_2*Theta2');

% =========================================================================


end
