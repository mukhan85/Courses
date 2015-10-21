function J = computeCost(population, profit, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in 'population'
%   and 'profit'

% Initialize some useful values
trainingSetSize = length(profit); % number of training examples

% You need to return the following variables correctly 


% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
% J(theta_0, theta_1) = (1/2*m) sum[(theta_0 + theta_1 * x(i) - y(i))^2];
factor = double(1)/double(2*trainingSetSize);

hypothesis = population * theta;
error = hypothesis - profit;

for i = 1:trainingSetSize
    error(i, 1) = error(i, 1).^2;
end

J = factor * sum(error, 1);

end
