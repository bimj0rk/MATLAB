% Initialization for BB_DT_RRC_filters_EyeP_2020.slx scheme

clear all;
clc

L = 1000; % the data sequence length (in number of data symbols);

T = 1e-3; % the data symbol interval (seconds);
vs = 1/T; % the signaling speed (Bauds);

G = 4; % the root RC filter group delay (in no. of symbols; DO NOT CHANGE THIS VALUE!);

R = 0.6; % the roll-off factor (alfa = the bandwidth excess factor for Raised-Cosine filters)

N = 20; % the filter up-sampling factor (DO NOT CHANGE THIS VALUE!);


%---- the channel model; a low pass filter with additive white Gaussian
%noise (AWGN); 

% The cut-off frequency (f1) of the channel LPF limitting the bandwidth (the LPF transition band is between f1 and f2)
f1 = 0.7 * vs; 
f2 = 1.1 * f1;

SNRdB = 10; % the channel Signal-to-Noise Ratio (in decibells);
