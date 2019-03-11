-- generated : Sun Mar 10 11:58:20 2019
-- design    : counter.vhd
-- author    : Q.Ducasse
-- ============================================================
library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;

entity counter is
	generic (NB_BITS : natural := 8); --8-bits register
  port (
  	reset_n   : in  std_logic;	--async reset
	clk		  : in  std_logic;
	cnt_up	  : in  std_logic;
	cnt_down  : in  std_logic
  ) ;
end entity ; -- counter

architecture rtl of counter is
	signal value : signed(NB_BITS-1 downto 0);
begin

	counter_proc : process(reset_n, clk) --need to use processes to describe registers
	begin		 		  				 --only async reset and clock are necessary

		if reset_n = '0' then				--active low
			value <= to_signed(0,NB_BITS);  --all value bits to '0'
		elsif rising_edge(clk) then			--or : clk ' event and clk = '1'
			if cnt_up = '1' then
				value <= value + 1;
			elsif cnt_down = '1' then
				value <= value - 1;
			end if;
		end if;
	end process;

	--the value cannot be directly redirected to the output because we cannot read an output again 
	--and the counter needs to make it go back in the circuit

end rtl ; -- arch