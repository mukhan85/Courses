% Machine Learning Online Class
%  Exercise 1: Linear regression with multiple variables

fprintf('Loading data ...\n');

% Load Data
data = load('ex1data2.txt');
X = data(:, 1:2);
y = data(:, 3);
m = length(y);

% Print out some data points
fprintf('First 4 examples from the dataset: \n');
fprintf(' x = [%.0f %.0f], y = %.0f \n', [X(1:4,:) y(1:4,:)]');


[X, mu, sigma] = featureNormalize(X);
