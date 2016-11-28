function [ a_i ] = sigmoid_int( z_i, T, scaling)
%SINGMOID_INT Summary of this function goes here
%   Detailed explanation goes here

a_i = T.activation_out;

cst_A = scaling(1);
cst_B = scaling(2);
temp1 = fi(0,0,16,0);
temp2 = fi(0,0,32,0);

if z_i >= cst_A
    a_i(:) = cst_B;
elseif z_i < -cst_A
    a_i(:) = -cst_B;
elseif z_i < 0
    temp1(:) = bitsrl(z_i+cst_A,8);
    temp2(:) = temp1^2;
    a_i(:) = bitsrl(temp2,21)-cst_B;
else
    temp1(:) = bitsrl(cst_A-z_i,8);
    temp2(:) = temp1^2;
    a_i(:) = cst_B-bitsrl(temp2,21);
end


end

