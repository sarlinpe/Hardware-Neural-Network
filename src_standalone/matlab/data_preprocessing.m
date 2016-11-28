clear all;

% Digits dataset

load('digits_coursera.mat');
%X = round(X,3);
nb_ex = size(X,1);
min_ext = repmat(min(X),nb_ex,1);
max_ext = repmat(max(X),nb_ex,1);
null = (min(X) == 0) & (max(X) == 0);
X_scaled = (X - min_ext);
X_scaled(:,~null) = X_scaled(:,~null) ./ (max_ext(:,~null) - min_ext(:,~null));
X_int = floor(255*X_scaled);

% Check
sel = randperm(nb_ex);
disp = sel(1:100);
displayData(X_int(disp, :));

csvwrite('data_preprocessed/digits_f_S.csv',X_int(sel(1:500), :));
csvwrite('data_preprocessed/digits_f_M.csv',X_int(sel(1:1000), :));
csvwrite('data_preprocessed/digits_f_L.csv',X_int(sel(1:3000), :));

csvwrite('data_preprocessed/digits_l_S.csv',y(sel(1:500), :));
csvwrite('data_preprocessed/digits_l_M.csv',y(sel(1:1000), :));
csvwrite('data_preprocessed/digits_l_L.csv',y(sel(1:3000), :));