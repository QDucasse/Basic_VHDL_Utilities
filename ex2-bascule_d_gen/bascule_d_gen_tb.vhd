-----------------------------------------------------------------
-- This file was generated automatically by vhdl_tb Ruby utility
-- date : (d/m/y) 11/03/2019 09:42
-- Author : Jean-Christophe Le Lann - 2014
-----------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bascule_d_gen_tb is
end entity;

architecture bhv of bascule_d_gen_tb is

  constant HALF_PERIOD : time := 5 ns;
  constant NB_BITS : natural := 8;
  signal sreset  : std_logic := '0';
  signal running : boolean   := true;
  
  signal reset_n : std_logic := '0';
  signal clk     : std_logic := '0';

  procedure wait_cycles(n : natural) is
   begin
     for i in 1 to n loop
       wait until rising_edge(clk);
     end loop;
   end procedure;

   signal input   : std_logic_vector(NB_BITS - 1 downto 0) := (others => '1');
   signal output  : std_logic_vector(NB_BITS - 1 downto 0) := (others => '0');

begin
  -------------------------------------------------------------------
  -- clock and reset
  -------------------------------------------------------------------
  reset_n <= '0','1' after 666 ns;
  clk <= not(clk) after HALF_PERIOD when running else clk;

  --------------------------------------------------------------------
  -- Design Under Test
  --------------------------------------------------------------------
  dut : entity work.bascule_d_gen(using_rising_edge)
        port map (
          reset_n => reset_n,
          clk     => clk    ,
          input   => input  ,
          output  => output 
        );

  --------------------------------------------------------------------
  -- sequential stimuli
  --------------------------------------------------------------------
  stim : process
   begin
     report "running testbench for bascule_d_gen(using_rising_edge)";
     report "waiting for asynchronous reset";
     wait until reset_n='1';
     wait_cycles(100);
     report "end of simulation";
     running <=false;
     wait;
   end process;

end bhv;
