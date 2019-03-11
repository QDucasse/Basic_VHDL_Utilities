#!/bin/bash

ghdl -a ual.vhd
echo 'VHDL compiled, Binary generated!'
echo '================================'

ghdl -a ual_tb.vhd
echo 'Testbench compiled, Binary generated!'
echo '================================'

ghdl -e ual_tb
echo 'Elaboration completed!'
echo '================================'

ghdl -r ual_tb --wave=ual.ghw
echo 'Waveform generated!'
echo '================================'

open -a gtkwave ual.ghw
