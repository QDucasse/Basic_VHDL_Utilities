-- generated : Sun Mar 10 15:45:35 2019
-- design    : ual.vhd
-- author    : Q.Ducasse
-- ============================================================
library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;

entity ual is
  port(
    a, b : in  unsigned(3 downto 0);	
    op   : in  std_logic_vector(2 downto 0);						
    res  : out unsigned(3 downto 0)	
    );
end entity;

architecture rtl of ual is
begin
  
  ual_proc : process(a, b, op)
  begin
    res <= (others =>'0'); --all bits to '0'
    case op is
      when "000" =>		--+
        res <= resize(a + b,4);
      when "001" =>		---
        res <= resize(a - b,4);
      when "010" =>		--*
        res <= resize(a * b,4);
      when "011" =>		--and
        res <= a and b;
      when "100" =>		--or										
        res <= a or b;
      when "101" =>		--xor
        res <= a xor b;
      when "111" =>		--not
        res <= not(a);
      when others =>	--all other operations have no effect
        null;
    end case;
  end process;

end rtl;
