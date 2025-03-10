### **Results.m (Plot BER vs SNR)**
```matlab
clc;
clear;
close all;

% Example SNR and BER data
SNR = 0:5:30;
BER = [0.2 0.15 0.1 0.05 0.02 0.01 0.005];

% Plot
plot(SNR, BER, '-o');
grid on;
xlabel('SNR (dB)');
ylabel('Bit Error Rate (BER)');
title('BER vs SNR for MIMO-OFDM System');
saveas(gcf, 'Results/BER_vs_SNR.png');
```
