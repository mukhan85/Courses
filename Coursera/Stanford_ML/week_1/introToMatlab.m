clear ; close all; clc

matOne = ones(3,4);

for i = 1:3
    for j = 1:4
        fprintf('matOne[%d, %d] = %d\n', i, j, (matOne(i,j)).^2);
    end
end
