clear all; close all;
addpath(genpath('integer_implementation/'));
dataset = 'wine';
set_ratio = 0.8;
gradient_reduction = -2;
num_iterations = 20;
single_ended = false;

% Setup logging for overfows and undeflows
%P = fipref;
%P.LoggingMode = 'on';
%P.NumericTypeDisplay = 'none';
%P.FimathDisplay = 'none';

% Words lengths in bits
WEIGHTS_LENGTH      = 12;
PROD_LENGTH         = 24;
ACTIVATION_IN       = 32; % Keep headroom for up to 500 input units
ACTIVATION_OUT      = 12;
DELTAS              = 13;

% Integer types
T.weights_data      = fi([],1,WEIGHTS_LENGTH,0);
T.prod              = fi([],1,PROD_LENGTH,0);
T.activation_in     = fi([],1,ACTIVATION_IN,0);
T.activation_out    = fi(0,1,ACTIVATION_OUT,0);
T.deltas            = fi([],1,DELTAS,0);

% Sigmoid scaling parameters
cst_A = cast(hex2dec('01000000'),'like',T.activation_in);
cst_B = cast(hex2dec('7ff'),'like',T.activation_out);
scaling = [cst_A, cst_B];

% Format data

if strcmp(dataset,'digits')
    X = csvread('data_preprocessed/digits_f_S.csv');
    X = cast((X-2^7)*2^(WEIGHTS_LENGTH-1-7),'like',T.weights_data);
    y = csvread('data_preprocessed/digits_l_S.csv');
    NN.input_layer_size  = 400;     % 20x20 Input Images of Digits
    NN.hidden_layer_size = 25;      % 25 hidden units
    NN.classes = 10;                % 10 labels, from 1 to 10
elseif strcmp(dataset,'wine')
    A = csvread('wine_data.csv');
    X = cast((A(:,2:end)-2^7)*2^(WEIGHTS_LENGTH-1-7),'like',T.weights_data);
    y = A(:,1);
    NN.input_layer_size    = 13;   % 13 features
    NN.hidden_layer_size   = 20;   % 20 hidden units
    NN.classes             = 3;    % 3 wine types
end

if single_ended
    NN.num_labels = 1;
else
    NN.num_labels = NN.classes;
end

% Shuffle data set
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
min_max = int64([intmin(T.weights_data), intmax(T.weights_data)]);
Theta1 = cast(randi(min_max,NN.hidden_layer_size,NN.input_layer_size + 1),'like',T.weights_data);
Theta2 = cast(randi(min_max,NN.num_labels,NN.hidden_layer_size + 1),'like',T.weights_data);

% Expected outputs
y_logic = zeros(m_train, NN.num_labels);
if single_ended == true
    y_logic = (y_train - 1)/(NN.classes - 1);
    step = round(2*intmax(T.activation_out)/NN.classes);
else
    y_logic(sub2ind(size(y_logic),1:m_train,y_train')) = 1;
end
y_logic = cast((2*y_logic-1)*intmax(T.activation_out),'like',T.activation_out);

% Start training
cost = zeros(num_iterations,1);
for iter = 1:num_iterations
    % ---- Feedforward ----
    [ h, a_2 ] = feedforward_int( Theta1, Theta2, X_train, NN, T, scaling );
    
    % ---- Gradient descent ----
    
    % -> Output layer error
    delta_3 = cast(h - y_logic,'like',T.deltas);
    
    % -> Hidden layer error
    sums = cast(delta_3 * Theta2(:,2:end),'like',fi([],1,28,0)); % Keep headroom for 15 labels
    derivative = cast(cst_B^2 - a_2.^2,'like',fi([],0,22,0)); % unsigned
    delta_2 = cast(bitsra(sums.*derivative,37),'like',T.deltas);
    
    % -> Weights derivative
    Delta_2 = cast(zeros(NN.num_labels,NN.hidden_layer_size+1),'like',fi([],1,32,0));
    Delta_1 = cast(zeros(NN.hidden_layer_size,NN.input_layer_size+1),'like',fi([],1,32,0));
    for examples = 1:m_train
        % Do not forget bias
        Delta_2(:) = Delta_2 + delta_3(examples,:)'*[1 a_2(examples,:)];
        Delta_1(:) = Delta_1 + delta_2(examples,:)'*[1 X_train(examples,:)];
    end
    
    % -> Actualize weights
    Theta1(:) = Theta1 - bitsra(Delta_1,20+gradient_reduction); % ajust to speed-up/slow-down descent
    Theta2(:) = Theta2 - bitsra(Delta_2,20+gradient_reduction);
    
    % -> Evaluate cost
    cost(iter) = cast(bitsrl(sum(sum(bitsrl(delta_3.^2,12))),8),'like',fi([],0,16,0));
    fprintf('Iteration\t%d\t|\tCost: %0.4f\n', iter, double(cost(iter)));
end

% Predict for training set
h_train = feedforward_int( Theta1, Theta2, X_train, NN, T, scaling);
h_train = setfimath(h_train, fimath('OverflowAction', 'wrap'));
if single_ended
    pred_train = cast(zeros(m_train,1),'like',T.activation_out);
    for i = 1:NN.classes
        pred_train = pred_train + (h_train > (intmax(T.activation_out)-step))*(1+NN.classes-i);
        h_train(:) = h_train + step;
    end
else
    [~, pred_train] = max(h_train, [], 2);
end
fprintf('\nTraining Set Accuracy: %0.2f %%\n', mean(double(pred_train == y_train)) * 100);
plot(1:num_iterations,cost);

% Predict for validation set
h_val = feedforward_int( Theta1, Theta2, X_val, NN, T, scaling);
h_val = setfimath(h_val, fimath('OverflowAction', 'wrap'));
if single_ended
    pred_val = cast(zeros(m-m_train,1),'like',T.activation_out);
    for i = 1:NN.classes
        pred_val = pred_val + (h_val > (intmax(T.activation_out)-step))*(1+NN.classes-i);
        h_val(:) = h_val + step;
    end
else
    [~, pred_val] = max(h_val, [], 2);
end
fprintf('Validation Set Accuracy: %0.2f %%\n', mean(double(pred_val == y_val)) * 100);
plot(1:num_iterations,cost);