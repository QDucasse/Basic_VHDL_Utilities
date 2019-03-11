-----------------------------------------------------------------
-- This file was generated automatically by vhdl_tb Ruby utility
-- date : (d/m/y) 11/03/2019 10:13
-- Author : Jean-Christophe Le Lann - 2014
-----------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ual_tb is
end entity;

architecture bhv of ual_tb is

  constant HALF_PERIOD : time := 5 ns;

  signal clk     : std_logic := '0';
  signal reset_n : std_logic := '0';
  signal sreset  : std_logic := '0';
  signal running : boolean   := true;

  procedure wait_cycles(n : natural) is
   begin
     for i in 1 to n loop
       wait until rising_edge(clk);
     end loop;
   end procedure;

  signal a   : unsigned(3 downto 0) := "0011";
  signal b   : unsigned(3 downto 0) := "0010";
  signal op  : std_logic_vector(2 downto 0);
  signal res : unsigned(3 downto 0);

begin
  -------------------------------------------------------------------
  -- clock and reset
  -------------------------------------------------------------------
  reset_n <= '0','1' after 666 ns;
  clk <= not(clk) after HALF_PERIOD when running else clk;

  --------------------------------------------------------------------
  -- Design Under Test
  --------------------------------------------------------------------
  dut : entity work.ual(rtl)
        
        port map (
          a   => a  ,
          b   => b  ,
          op  => op ,
          res => res
        );

  --------------------------------------------------------------------
  -- sequential stimuli
  --------------------------------------------------------------------
  stim : process
   begin
     report "running testbench for ual(rtl)";
     report "waiting for asynchronous reset";
     wait until reset_n='1';
     wait_cycles(100);
     report "applying stimuli...";
	 op <= "000";
     wait_cycles(100);
	 op <= "001";
     wait_cycles(100);
	 op <= "010";
     wait_cycles(100);
	 op <= "011";
     wait_cycles(100);
	 op <= "100";
     wait_cycles(100);
	 op <= "101";
     wait_cycles(100);
	 op <= "111";
	 wait_cycles(100);
     report "end of simulation";
     running <=false;
     wait;
   end process;

end bhv;
