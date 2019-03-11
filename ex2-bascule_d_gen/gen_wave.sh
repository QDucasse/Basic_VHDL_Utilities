#!/bin/bash

ghdl -a bascule_d_gen.vhd
echo 'VHDL compiled, Binary generated!'
echo '================================'

ghdl -a bascule_d_gen_tb.vhd
echo 'Testbench compiled, Binary generated!'
echo '================================'

ghdl -e bascule_d_gen_tb
echo 'Elaboration completed!'
echo '================================'

ghdl -r bascule_d_gen_tb --wave=bascule_d_gen.ghw
echo 'Waveform generated!'
echo '================================'

open -a gtkwave bascule_d_gen.ghw 
