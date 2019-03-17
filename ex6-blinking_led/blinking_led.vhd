library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity blinking_led is
  generic(NB_BITS : natural := 26);
  port(
    btn_d   : in  std_logic;
    clk100mhz : in  std_logic;
    led       : out std_logic
    );
end blinking_led;

architecture rtl of blinking_led is
  signal max_reached : std_logic;
  signal toggle_bit  : std_logic;
  signal reset_n : std_logic;
begin

  reset_n <= not(btn_d);

  timer_e : entity work.timer
    generic map(NB_BITS => NB_BITS)
    port map(
      reset_n     => reset_n,
      clk         => clk100mhz,
      max_reached => max_reached
      );

  toggle_led : process(reset_n, clk100mhz)
  begin
    if reset_n = '0' then
      toggle_bit <= '0';
    elsif rising_edge(clk100mhz) then
      if max_reached = '1' then
        toggle_bit <= not(toggle_bit);
      end if;
    end if;
  end process;

  led <= toggle_bit;

end rtl;
