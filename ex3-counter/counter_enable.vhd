-- generated : Sun Mar 10 12:13:48 2019
-- design    : counter_enable.vhd
-- author    : Q.Ducasse
-- ============================================================
library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;

entity counter_enable is
  port (
  	reset_n   : in  std_logic;	
	clk		  : in  std_logic;
	enable	  : in  std_logic;  
	msb       : out std_logic   
  ) ;
end entity ; -- counter_enable

architecture rtl of counter_enable is
	signal value : signed(3 downto 0);
begin

	process(reset_n, clk) --need to use processes to describe registers
	begin		 		  --only async reset and clock are necessary
		if reset_n = '0' then	
			value <= to_signed(0,4);  
		elsif rising_edge(clk) then			
			if enable = '1' then
				value <= value + 1;
			end if;
		end if;
	end process;
	
	MSB <= value(3); 

end rtl ; -- arch