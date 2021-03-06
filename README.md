# Basic VHDL Utilities

## Exercise 1:
Register with asynchronous reset. Transfers input to output after rising edge from the clock.

## Exercise 2:
Register of a given size with asynchronous reset. Transfers input to output after rising edge from the clock. The only difference with the first register is that it can transfer data of a given size, an 8-bits array here.

## Exercise 3:
Counter increasing while enabled and having the MSB of the value as an output. The objective of the benchmark is to show that the MSB is changing periodically between 0 and 1. The benchmark uses a 4-bits counter to accelerate testing times. We will want to use a 27-bits counter to have the MSB change every second.

## Exercise 4:
UAL allowing basic operations between two integers. Supported operations are +, -, *, and, or, not, xor. The benchmark uses 2 and 3 as inputs and tests every operation.

## Exercise 5:
128-address RAM. Each address is 8-bits wide. The benchmark writes in each address every 10 cycles and reads it right after by writing it in dataout.

