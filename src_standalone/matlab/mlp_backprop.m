clear all; close all;
dataset = 'wine';
set_ratio = 0.8;
learning_rate = 0.008;
iterations = 5000;
single_ended = true;

sigmoid = @(z) 1.0 ./ (1.0 + exp(-z));
sigmoidGradient = @(z) sigmoid(z).*(1 - sigmoid(z));

if strcmp(dataset,'digits')
    input_layer_size  = 400;  % 20x20 Input Images of Digits
    hidden_layer_size = 25;   % 25 hidden units
    classes = 10;             % 10 labels, from 1 to 10
    load('digits_mnist.mat');
elseif strcmp(dataset,'wine')
    input_layer_size  = 13;   % 13 features
    hidden_layer_size = 30;   % 5 hidden units
    classes = 3;              % 3 labels for 3 wine types
    A = csvread('wine_data.csv');
    X = A(:,2:end);
    y = A(:,1);
end

if single_ended
    num_labels = 1;
else
    num_labels = classes;
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

% Initialize weights
epsilon_init = 0.2;
Theta1 = rand(hidden_layer_size, (input_layer_size + 1)) * 2 * epsilon_init - epsilon_init;
Theta2 = rand(num_labels, (hidden_layer_size + 1)) * 2 * epsilon_init - epsilon_init;

% Expected outputs
y_logic = zeros(m_train, num_labels);
if single_ended == true
    y_logic = (y_train - 1)/(classes - 1);
else
    y_logic(sub2ind(size(y_logic),1:m_train,y_train')) = 1;
end

for i=1:iterations
    % Feedforward
    [h, a_1, a_2] = feedforward(Theta1, Theta2, X_train);
    
    % Gradient 
    delta_3 = h - y_logic;
    delta_2 = delta_3 * Theta2(:,2:end) .* a_2(m_train,2:end) .* (1-a_2(m_train,2:end)); %.* sigmoidGradient(a_1*Theta1');
    Delta_2 = delta_3'*a_2;
    Delta_1 = delta_2'*a_1;
    
    % Actualize
    Theta1 = Theta1 - learning_rate*Delta_1;
    Theta2 = Theta2 - learning_rate*Delta_2;
    
    if single_ended
        cost = sum(delta_3.^2);
    else
        cost = sum(sum(( -y_logic.*log(h) - (1-y_logic).*log(1-h) )/m_train));
    end
    fprintf('Iteration\t%d\t|\tCost: %0.4f\n', i, cost);
end

% Predict for training set
h_train = feedforward(Theta1, Theta2, X_train);
if single_ended
    pred_train = round(h_train*(classes - 1) + 1);
else
    [~, pred_train] = max(h_train, [], 2);
end
fprintf('\nTraining \tSet Accuracy: \t%f\n', mean(double(pred_train == y_train)) * 100);

% Predict for validation set
h_val = feedforward(Theta1, Theta2, X_val);
if single_ended
    pred_val = round(h_val*(classes - 1) + 1);
else
    [~, pred_val] = max(h_val, [], 2);
end
fprintf('Validation \tSet Accuracy: \t%f\n', mean(double(pred_val == y_val)) * 100);