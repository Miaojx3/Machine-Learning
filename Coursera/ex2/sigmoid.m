function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

%exp的参数如果是标量，返回标量；
%如果是矩阵或者向量，就每个元素取exp，然后返回这个矩阵或者向量
g = 1 ./ (1 + exp(-z));



% =============================================================

end
