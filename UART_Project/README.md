# UART Transmitter (Verilog)

## Description
Designed a UART (Universal Asynchronous Receiver Transmitter) module for serial communication.

## Features
- Start bit (0)
- 8-bit data transmission
- Stop bit (1)
- Serial output (TX)
- Transmission complete signal (Done)

## Tools Used
- Xilinx Vivado
- Verilog HDL

## Files
- uart_tx.v (Design)
- uart_tx_tb.v (Testbench)

## Working
Data is framed into start, data, and stop bits and transmitted serially over clock cycles.

## Result
Successfully simulated UART transmission and verified output waveform.
