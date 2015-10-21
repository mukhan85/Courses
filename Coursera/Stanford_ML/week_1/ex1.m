clear ; close all; clc

% Complete warmUpExercise.m 
fprintf('Running warmUpExercise ... \n');
fprintf('5x5 Identity Matrix: \n');
warmUpExercise()

%---------------------------------
fprintf('Plotting Data ...\n')
data = load('ex1data1.txt');
populationOriginal = data(:, 1);
profitOriginal = data(:, 2);
trainingSize = length(profitOriginal);
fprintf('Number of samples: %d\n', trainingSize);

% Plot Data
% plotData(populationOriginal, profitOriginal);

%---------------------------------
fprintf('Running Gradient Descent ...\n')

populationOriginal = [ones(trainingSize, 1), data(:,1)]; % Add a column of ones to x

theta = zeros(2, 1);

% compute and display initial cost
cost = computeCost(populationOriginal, profitOriginal, theta);
fprintf('Cost: %f\n', cost);
%---------------------------------

% run gradient descent
theta = gradientDescent(populationOriginal, profitOriginal, theta, alpha, iterations);

% print theta to screen
fprintf('Theta found by gradient descent: ');
fprintf('%f %f \n', theta(1), theta(2));

% Plot the linear fit
hold on; % keep previous plot visible
plot(populationOriginal(:,2), populationOriginal*theta, '-')
legend('Training data', 'Linear regression')
hold off % don't overlay any more plots on this figure

% Predict values for population sizes of 35,000 and 70,000
predict1 = [1, 3.5] *theta;
fprintf('For population = 35,000, we predict a profit of %f\n', predict1*10000);

predict2 = [1, 7] * theta;
fprintf('For population = 70,000, we predict a profit of %f\n', predict2*10000);

