## Real-Time Audio Noise Cancellation Using STM32F446RE
Overview

This project implements a real-time audio noise cancellation system using the STM32F446RE (ARM Cortex-M4 @ 180 MHz). 
The system captures analog audio from a microphone, performs voice-band filtering (300 Hz – 3.4 kHz) using an 11-tap FIR filter (CMSIS-DSP), and outputs the cleaned signal through a DAC interface at 44.1 kHz sampling rate.
The design demonstrates low-latency embedded DSP, deterministic interrupt scheduling, and analog–digital hardware integration.

## System Architecture

# Signal Flow:
MAX9814 Microphone → Signal Conditioning → STM32 ADC (PA0) → FIR Filter → DAC (PA4) → TRRS → USB Sound Card → Speaker

# Key Hardware Components
STM32F446RE
->ARM Cortex-M4 with FPU
->180 MHz
->12-bit ADC & DAC
->512 KB Flash, 128 KB RAM

MAX9814 Electret Microphone Amplifier
->Built-in AGC
->20 Hz – 20 kHz frequency range
->40/50/60 dB selectable gain
->~90 dB SNR

Analog Signal Conditioning:
->10 µF coupling capacitors (DC blocking)
->10kΩ–10kΩ voltage divider (1.65V biasing)
->1kΩ output protection resistor

# Real-Time Processing Design
Sampling & Timing
->Sampling Rate: 44.1 kHz
->Timer 2 interrupt period: 22.7 µs
->Per-sample processing (BLOCK_SIZE = 1)
->Deterministic ISR-based pipeline

All DSP execution occurs inside the timer interrupt to guarantee timing consistency.

# DSP Implementation
FIR Bandpass Filter
->11-tap FIR filter
->Voice-band isolation: 300 Hz – 3.4 kHz
->Implemented using CMSIS-DSP (arm_fir_f32)
->Linear-phase symmetric coefficients
->Floating-point processing using Cortex-M4 FPU

Processing Steps per Sample
->Triggered by TIM2 interrupt
->ADC sampling (12-bit, 0–4095)
->Convert to float voltage (0–3.3V)
->FIR bandpass filtering
->Output clamping (0–3.3V)
->Convert to 12-bit DAC value
->Write to DAC

If user button (PC13) is not pressed:
->Output mid-scale DAC value (1.65V) to generate silence

# Hardware Design & Integration
->Designed complete hardware block diagram
->Implemented analog front-end biasing (1.65V mid-scale)
->Ensured safe ADC input range (0–3.3V)
->Verified signal amplitude and DC offsets
->Integrated TRRS module and USB sound card for validation
->Ensured proper analog–digital isolation and signal protection

# Validation & Results
Input Audio Observations
->Wide spectral energy (100 Hz – 10 kHz)
->Low-frequency hum present
->High-frequency hiss above 5 kHz
->Voice not clearly isolated

Output Audio Observations
->Energy concentrated within 300 Hz – 3.4 kHz
->Significant high-frequency noise removal
->Reduced low-frequency hum
->Improved speech intelligibility
->Cleaner silent regions

Spectrogram and waveform comparison confirmed effective voice-band isolation.

# Key Engineering Highlights
->Real-time interrupt-driven DSP at 44.1 kHz
->Deterministic embedded firmware architecture
->Analog front-end biasing and signal conditioning
->CMSIS-DSP optimized FIR filtering
->Hardware–software co-design approach

# Future Improvements
->Adaptive Noise Cancellation (LMS / RLS)
->IIR filter optimization for reduced computational load
->DMA-based ADC/DAC for improved throughput
->External codec integration (I2S-based audio interface)
->EMI shielding and PCB layout refinement

## My Contribution (Sai Surya Sashank)
->Hardware selection and integration (STM32F446RE, MAX9814, TRRS, USB sound card)
->Designed and prototyped complete signal conditioning circuit
->Implemented voltage biasing, DC blocking, and output protection
->Verified signal levels and ensured safe analog-to-digital interfacing
->Validated stable operation between analog and digital domains

## Skills Demonstrated
Embedded C, ARM Cortex-M4, Real-Time Interrupt Systems, ADC/DAC Interfacing, Analog Signal Conditioning, CMSIS-DSP, FIR Filter Design, Audio DSP, Hardware–Software Co-Design.
