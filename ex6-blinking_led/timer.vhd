library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity timer is
  generic (NB_BITS : natural := 26);
  port(
    reset_n     : in  std_logic;
    clk         : in  std_logic;
    max_reached : out std_logic);
end timer;

architecture rtl of timer is
  signal counter_r : unsigned(NB_BITS-1 downto 0);
begin
  counter_p : process(reset_n, clk)
  begin
    if reset_n = '0' then
      counter_r <= to_unsigned(0, NB_BITS);
    elsif rising_edge(clk) then
      counter_r <= counter_r + 1;
    end if;
  end process;

  max_reached <= '1' when counter_r = 2**NB_BITS-1 else '0';
  
end rtl;
