## MIMO-OFDM System Simulation Based on MATLAB

This repository contains a MATLAB implementation of a MIMO-OFDM (Multiple-Input Multiple-Output Orthogonal Frequency Division Multiplexing) system.

## 🚀 Project Overview
The project simulates a MIMO-OFDM communication system to analyze Bit Error Rate (BER) under different configurations of antennas and carriers. The simulation covers:
- **Transmitter Side Processing**
- **Channel Model with Multipath Fading**
- **Receiver Side Processing**
- **Bit Error Rate (BER) Analysis**

## 📜 Importance of MIMO-OFDM in Modern Communication
### ✅ Why MIMO-OFDM?
MIMO-OFDM is a breakthrough technology in modern wireless communication that combines two powerful concepts:
1. **MIMO (Multiple-Input Multiple-Output)**: Increases the capacity of a wireless communication system by using multiple antennas at both the transmitter and receiver ends, allowing multiple data streams to be transmitted simultaneously.
2. **OFDM (Orthogonal Frequency Division Multiplexing)**: Converts the frequency-selective fading channel into several flat-fading sub-channels, reducing inter-symbol interference and improving spectral efficiency.

This combination is the foundation of next-generation wireless technologies such as:
- **5G Mobile Networks**
- **Wi-Fi 6 and Wi-Fi 7**
- **Satellite Communication Systems**
- **Public Safety and Military Communications**
- **Smart Grids and Industrial IoT**

## 📡 Transmitter Working Principle
The transmitter in a MIMO-OFDM system performs the following steps:

1. **Data Input**: Binary data (0s and 1s) are fed to the transmitter.
2. **Modulation**: The input data is modulated using techniques like **BPSK (Binary Phase Shift Keying)** or **QPSK (Quadrature Phase Shift Keying)**.
3. **OFDM Mapping**: The modulated data is split into multiple parallel data streams and assigned to orthogonal subcarriers.
4. **IFFT (Inverse Fast Fourier Transform)**: Converts the frequency domain data into the time domain to prepare it for transmission.
5. **Cyclic Prefix Addition**: Adds a cyclic prefix to reduce inter-symbol interference.
6. **MIMO Processing**: The data is distributed across multiple antennas using spatial diversity or multiplexing.
7. **Transmission**: The signal is transmitted over the wireless channel.

### Advantages of Transmitter in MIMO-OFDM
- **Higher Data Rates**: MIMO increases the number of parallel data streams, boosting throughput.
- **Reduced Interference**: OFDM minimizes inter-symbol interference in multipath environments.
- **Improved Link Reliability**: MIMO systems enhance signal strength and robustness.

## 🎧 Receiver Working Principle
The receiver in a MIMO-OFDM system reverses the transmitter process:

1. **Signal Reception**: Receives multiple signals from different antennas.
2. **Cyclic Prefix Removal**: Removes the cyclic prefix to eliminate inter-symbol interference.
3. **FFT (Fast Fourier Transform)**: Converts the time-domain signal back to the frequency domain.
4. **Channel Equalization**: Uses algorithms like Zero Forcing (ZF) or Minimum Mean Square Error (MMSE) to mitigate channel impairments.
5. **Demodulation**: Converts the signal back to binary data.
6. **Bit Error Rate Calculation**: Compares the received bits with the transmitted bits to calculate BER.

### Advantages of Receiver in MIMO-OFDM
- **Efficient Data Recovery**: Can extract multiple data streams simultaneously.
- **Improved Signal Quality**: Enhances the received signal using equalization techniques.
- **Lower Bit Error Rate**: Reduces errors due to multipath fading.

## 📊 Impact on Society
The implementation of MIMO-OFDM has significantly transformed wireless communication systems by:

1. **Providing Higher Internet Speeds**: It supports Gigabit internet speeds in modern mobile networks.
2. **Connecting Remote Areas**: Facilitates seamless communication in rural and remote areas.
3. **Enhancing IoT (Internet of Things)**: Powers smart homes, smart cities, and industrial automation.
4. **Reliable Communication in Emergencies**: Used in military and public safety communication networks.
5. **Support for Future 6G Networks**: Lays the foundation for future ultra-fast, high-capacity networks.

## 📊 Results
The simulation results include:
- **Impact of MIMO Configurations (2x2, 2x4, 4x4) on BER**
- **Effect of Carrier Count (16, 32, 64, 128) on BER**
- **Graphical Representation of BER vs SNR**

The results clearly demonstrate that increasing the number of antennas and reducing the carrier count minimizes the Bit Error Rate (BER) and improves communication performance.

## 📂 Folder Structure
```
MIMO-OFDM-Simulation
│
├── README.md          <-- Project Description
├── LICENSE            <-- License File
├── Transmitter.m      <-- Transmitter Side Code
├── Receiver.m         <-- Receiver Side Code
├── Results.m          <-- Code to Generate Plots
├── Results
│   ├── BER_vs_SNR.png <-- BER Graphs
│   ├── 2x2_MIMO.png   <-- 2x2 MIMO Results
│   ├── 4x4_MIMO.png   <-- 4x4 MIMO Results
```

## 💻 MATLAB Files
1. **Transmitter.m**
```matlab
% Transmitter Side Code
clc; clear; close all;
N = 64; % Number of Subcarriers
M = 2;  % Modulation Order (BPSK)
...
% OFDM + MIMO Processing
```

2. **Receiver.m**
```matlab
% Receiver Side Code
clc; clear; close all;
...
% Perform FFT, Equalization, and Demodulation
```

3. **Results.m**
```matlab
% Code to Plot Results
...
plot(SNR, BER);
```

## 📜 License
This project is licensed under the [MIT License](LICENSE).

## 📫 Contact
For any queries or collaboration, feel free to contact us.

---
✅ **Contributors**: 
- Sharath (2021BEC0002)
- Shivam Kumar (2021BEC0028)
- Yash Mawalkar (2021BEC0038)
