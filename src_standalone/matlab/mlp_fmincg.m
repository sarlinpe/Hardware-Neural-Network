clear all, close all;
dataset = 'digits';
set_ratio = 0.7;

addpath(genpath('fmincg_implementation/'));

if strcmp(dataset,'digits')
    input_layer_size  = 400;  % 20x20 Input Images of Digits
    hidden_layer_size = 25;   % 25 hidden units
    num_labels = 10;          % 10 labels, from 1 to 10
    load('digits_mnist.mat');
elseif strcmp(dataset,'wine')
    input_layer_size  = 13;   % 13 features
    hidden_layer_size = 10;    % 5 hidden units
    num_labels = 3;          % 3 labels fro 3 wine types
    A = csvread('wine_data.csv');
    X = A(:,2:end);
    y = A(:,1);
end

% Randomly permutate
m = size(X, 1); % number of training examples
p = randperm(m);
X = X(p,:);
y = y(p);

% Separate training and validation sets
m_train = ceil(set_ratio*m);
X_train = X(1:m_train,:);
X_val = X(m_train+1:end,:);
y_train = y(1:m_train);
y_val = y(m_train+1:end);

% if strcmp(dataset,'digits')
%     % Randomly select 100 data points to display
%     sel = randperm(size(X, 1));
%     sel = sel(1:100);
%     displayData(X(sel, :));
% end

% Initialize weights
initial_Theta1 = randInitializeWeights(input_layer_size, hidden_layer_size);
initial_Theta2 = randInitializeWeights(hidden_layer_size, num_labels);
% Unroll parameters
initial_nn_params = [initial_Theta1(:) ; initial_Theta2(:)];

%Train using dataset
options = optimset('MaxIter', 400);
lambda = 0;
costFunction = @(p) nnCostFunction(p, ...
                                   input_layer_size, ...
                                   hidden_layer_size, ...
                                   num_labels, X_train, y_train, lambda);
[nn_params, cost] = fmincg(costFunction, initial_nn_params, options);

% Roll parameters back
Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
                 hidden_layer_size, (input_layer_size + 1));

Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), ...
                 num_labels, (hidden_layer_size + 1));
   
% % Visualize hidden layer weights
% if strcmp(dataset,'digits')
%     displayData(Theta1(:, 2:end));
% end

% Predict for dataset
h_train = feedforward(Theta1, Theta2, X_train);
[~, pred_train] = max(h_train, [], 2);
h_val = feedforward(Theta1, Theta2, X_val);
[~, pred_val] = max(h_val, [], 2);
fprintf('\nTraining Set Accuracy: %f\n', mean(double(pred_train == y_train)) * 100);
fprintf('\nValidation Set Accuracy: %f\n', mean(double(pred_val == y_val)) * 100);