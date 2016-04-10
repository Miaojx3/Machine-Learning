function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %
syms t_theta0 t_theta1 t_theta2 t_theta3;
t_theta = [t_theta0, t_theta1, t_theta2, t_theta3]';
cost = (sum((y - X * t_theta).^2))/ (2*m);

dif0 = subs(diff(cost, t_theta0), {t_theta0, t_theta1, t_theta2, t_theta3}, {theta(1), theta(2),theta(3), theta(4)});
dif1 = subs(diff(cost, t_theta1), {t_theta0, t_theta1, t_theta2, t_theta3}, {theta(1), theta(2),theta(3), theta(4)});
dif2 = subs(diff(cost, t_theta2), {t_theta0, t_theta1, t_theta2, t_theta3}, {theta(1), theta(2),theta(3), theta(4)});
dif3 = subs(diff(cost, t_theta3), {t_theta0, t_theta1, t_theta2, t_theta3}, {theta(1), theta(2),theta(3), theta(4)});

theta(1) = theta(1) - alpha * dif0;
theta(2) = theta(2) - alpha * dif1;
theta(3) = theta(3) - alpha * dif2;
theta(4) = theta(4) - alpha * dif3;


    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
