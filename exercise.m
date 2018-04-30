%% Initialization
clear ; close all; clc

%% Load the data
fprintf('Loading data...\n\n');
data = load('data.mat');

%% Remove duplicate rows
data = unique(data, 'rows');

% Parse labels
y = data(:, end);

% Parse attributes and normalize them
x = normalization(data(:, 1:end - 1));