function [theta, J] = normal_equation(X, y)

m = size(X, 1);
t_X = ones(m, 1);
X = [t_X X];

theta = pinv(X) * y;

J = (sum((y - X * theta).^2))/ (2*m);

end
