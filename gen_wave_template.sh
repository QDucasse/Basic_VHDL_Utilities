#!/bin/bash

ghdl -a YOUR_FILE.vhd
echo 'VHDL compiled, Binary generated!'
echo '================================'

ghdl -a YOUR_FILE_TB.vhd
echo 'Testbench compiled, Binary generated!'
echo '================================'

ghdl -e YOUR_FILE_TB
echo 'Elaboration completed!'
echo '================================'

ghdl -r YOUR_FILE_TB --wave=YOUR_FILE.ghw
echo 'Waveform generated!'
echo '================================'

open -a gtkwave YOUR_FILE.ghw 
