#!/bin/bash

ghdl -a ram.vhd
echo 'VHDL compiled, Binary generated!'
echo '================================'

ghdl -a ram_tb.vhd
echo 'Testbench compiled, Binary generated!'
echo '================================'

ghdl -e ram_tb
echo 'Elaboration completed!'
echo '================================'

ghdl -r ram_tb --wave=ram.ghw
echo 'Waveform generated!'
echo '================================'

open -a gtkwave ram.ghw 
