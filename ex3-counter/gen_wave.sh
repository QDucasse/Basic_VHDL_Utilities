#!/bin/bash

ghdl -a counter_enable.vhd
echo 'VHDL compiled, Binary generated!'
echo '================================'

ghdl -a counter_enable_tb.vhd
echo 'Testbench compiled, Binary generated!'
echo '================================'

ghdl -e counter_enable_tb
echo 'Elaboration completed!'
echo '================================'

ghdl -r counter_enable_tb --wave=counter_enable.ghw
echo 'Waveform generated!'
echo '================================'

open -a gtkwave counter_enable.ghw 
