Exercise 1:
Register with asynchronous reset.

Exercise 2:
Register of a given size with asynchronous reset.

Exercise 3:
Counter increasing while enabled and having the MSB of the value as an output.
The objective of the benchmark is to show that the MSB is changing periodically between 0 and 1. 
The benchmark uses a 4-bits counter to accelerate testing times. 
We will want to use a 26-bits counter to have the MSB change every second.

Exercise 4:
UAL allowing basic operations between two integers. Supporte operations are +, -, *, and, or, not, xor.
The benchmark uses 2 and 3 as inputs and tests every operation.

Exercise 5:
128-address RAM. Each address is 8-bits wide. 
The benchmark writes in each address every 10 cycles.

Exercise 6:
VHDL utilities used in the blinking led: timer and the global architecture. The timer reuses the previous counter and allows through the MSB to control the period of the led. The tcl and xdc files have not been changed because of the lack of concrete use of the FPGA.

