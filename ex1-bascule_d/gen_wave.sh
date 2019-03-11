#!/bin/bash

ghdl -a bascule_d.vhd
echo 'VHDL compiled, Binary generated!'
echo '================================'

ghdl -a bascule_d_tb.vhd
echo 'Testbench compiled, Binary generated!'
echo '================================'

ghdl -e bascule_d_tb
echo 'Elaboration completed!'
echo '================================'

ghdl -r bascule_d_tb --wave=bascule_d.ghw
echo 'Waveform generated!'
echo '================================'

open -a gtkwave bascule_d.ghw 
