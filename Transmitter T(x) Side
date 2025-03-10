### **Transmitter.m (MIMO-OFDM Tx Code)**
```matlab
clc;
clear;
close all;

% Parameters
N = 64;    % Number of subcarriers
M = 2;     % Modulation Order (BPSK)
Nt = 2;    % Number of Transmit Antennas
Nr = 2;    % Number of Receive Antennas
SNR = 0:5:30;

% Generate Random Binary Data
data = randi([0 1], N, Nt);

% BPSK Modulation
modData = 2*data-1;

% Perform IFFT (OFDM Modulation)
tx_signal = ifft(modData, N);

% Add Cyclic Prefix
cyclicPrefix = tx_signal(end-15:end, :);
tx_signal_cp = [cyclicPrefix; tx_signal];

% Pass Through Channel
H = (randn(Nr, Nt) + 1i*randn(Nr, Nt))/sqrt(2); % Rayleigh Channel
noise = (randn(N, Nr) + 1i*randn(N, Nr))/sqrt(2);
rx_signal = H * tx_signal_cp + noise;

% Transmit Signal Output
disp('Transmission Completed.');
save('tx_signal.mat', 'tx_signal_cp', 'H', 'rx_signal');
```
