function [ h, a_2 ] = feedforward_int( Theta1, Theta2, X, NN, T, scaling )
%FEEDFORWARD_INT Summary of this function goes here
%   Detailed explanation goes here

m = size(X,1);
a_2 = cast(zeros(m,NN.hidden_layer_size),'like',T.activation_out);
h = cast(zeros(m,NN.num_labels),'like',T.activation_out);

% -> Propagate first layer
z_2 = cast(X*Theta1(:,2:end)','like',T.activation_in);
z_2(:) = z_2 + repmat(Theta1(:,1)',m,1); % Add bias
for examples = 1:m
    for units = 1:NN.hidden_layer_size
        a_2(examples,units) = sigmoid_int(z_2(examples,units),T, scaling);
    end
end

% -> Propagate second layer
z_3 = cast(a_2*Theta2(:,2:end)','like',T.activation_in);
z_3(:) = z_3 + repmat(Theta2(:,1)',m,1); % Add bias
for examples = 1:m
    for units = 1:NN.num_labels
        h(examples,units) = sigmoid_int(z_3(examples,units),T,scaling);
    end
end

end

