clear all; close all;
dataset = 'wine';
set_ratio = 0.6;

if strcmp(dataset,'digits')
    input_layer_size  = 400;  % 20x20 Input Images of Digits
    hidden_layer_size = 25;   % 25 hidden units
    num_labels = 10;          % 10 labels, from 1 to 10
    load('digits_mnist.mat');
elseif strcmp(dataset,'wine')
    input_layer_size  = 13;   % 13 features
    hidden_layer_size = 20;    % 5 hidden units
    num_labels = 3;           % 3 labels fro 3 wine types
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

if strcmp(dataset,'digits')
    % Randomly select 100 data points to display
    sel = randperm(size(X, 1));
    sel = sel(1:100);
    displayData(X(sel, :));
end

% Initialize weights
initial_Theta1 = randInitializeWeights(input_layer_size, hidden_layer_size);
initial_Theta2 = randInitializeWeights(hidden_layer_size, num_labels);

Theta1 = reshape(initial_Theta1, hidden_layer_size, (input_layer_size + 1));
Theta2 = reshape(initial_Theta2, num_labels, (hidden_layer_size + 1));
   
%Train using dataset
learning_rate = 0.0001;
lambda = [(0:0.1:1.5) (2:0.25:20) (20:2:100)];
accuracy_train = zeros(length(lambda),1);
accuracy_val = zeros(length(lambda),1);

for j=1:length(lambda)
    for i=1:1000
        % Feedforward
        a_1 = [ones(m_train, 1) X_train];
        a_2 = [ones(m_train, 1) sigmoid(a_1*Theta1')];
        h = sigmoid(a_2*Theta2');
        
        % Expected outputs
        y_logic = zeros(m_train, num_labels);
        y_logic(sub2ind(size(y_logic),1:m_train,y_train')) = 1;
        
        % Gradient
        delta_3 = h - y_logic;
        delta_2 = delta_3 * Theta2(:,2:end) .* sigmoidGradient(a_1*Theta1');
        Delta_2 = delta_3'*a_2;
        Delta_1 = delta_2'*a_1;
        
        % Actualize
        Theta1 = Theta1 - learning_rate*( Delta_1 + lambda(j)*[zeros(hidden_layer_size,1) Theta1(:,2:end)] );
        Theta2 = Theta2 - learning_rate*( Delta_2 + lambda(j)*[zeros(num_labels,1) Theta2(:,2:end)] );
        
        cost = sum(sum(( -y_logic.*log(h) - (1-y_logic).*log(1-h) )/m_train));
        cost = cost + (sum(sum(Theta1(:,2:end).^2))+sum(sum(Theta2(:,2:end).^2)))*lambda(j)/2/m ;
    end
    
    % Predict for trainging and validation datasets
    pred_train = predict(Theta1, Theta2, X_train);
    accuracy_train(j) = mean(double(pred_train == y_train)) * 100;
    pred_val = predict(Theta1, Theta2, X_val);
    accuracy_val(j) = mean(double(pred_val == y_val)) * 100;
    fprintf('Lambda: %f, Training %f, Validation: %f\n', lambda(j), accuracy_train(j), accuracy_val(j));
end

% Learning curve
plot(lambda, accuracy_train, 'k', lambda, accuracy_val, 'r');