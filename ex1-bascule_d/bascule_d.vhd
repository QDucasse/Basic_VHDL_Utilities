-- generated : Sun Mar 10 11:38:33 2019
-- design    : bascule_d.vhd
-- author    : Q.Ducasse
-- ============================================================
library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;

entity bascule_d is
  port (
	clk		: in  std_logic;
	input	: in  std_logic;
	output  : out std_logic
  ) ;
end entity ; -- bascule_d

architecture using_rising_edge of bascule_d is

begin

	basc_proc : process(clk)   --need to use processes to describe registers
	begin		 			   --only clock is necessary
		
		if rising_edge(clk) then	--or : clk ' event and clk = '1'
			output <=input;
		end if;
	
	end process;
	
end using_rising_edge ; -- arch