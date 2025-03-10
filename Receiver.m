### **Receiver.m (MIMO-OFDM Rx Code)**
```matlab
clc;
clear;
close all;

% Load Received Signal
load('tx_signal.mat');

% Remove Cyclic Prefix
rx_signal = rx_signal(17:end, :);

% Perform FFT (OFDM Demodulation)
rx_data = fft(rx_signal, N);

% Channel Equalization
H_inv = pinv(H); % Pseudo Inverse of Channel Matrix
rx_data = H_inv * rx_data;

% Demodulation
received_bits = real(rx_data) > 0;

% Calculate BER
original_bits = randi([0 1], N, Nt);
errors = sum(sum(original_bits ~= received_bits));
BER = errors/(N*Nt);

% Display Results
disp(['Bit Error Rate: ', num2str(BER)]);
```
