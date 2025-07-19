close all; 
clear; 
clc; 
%% Download ma_functions here: https://github.com/estudiosma/matlab
addpath('ma_functions'); 
%% 
file_name = 'test.txt'; 
data = readmatrix(file_name); 
fs = 50; % Hz 
t = (0:length(data)-1)/fs; 
%% 
% fprintf("Time: %0.2f horas\n", length(data)/(fs*60*60)); 
fprintf("Time: %0.2f seg\n", length(data)/(fs)); 
data_d = ma_detrend(data, 1); 
ma_fft_plot(data_d, fs); 
figure; 
plot(t,data_d); 
xlabel("Time (s)") 
legend("AccX", "AcxY", "AccZ")