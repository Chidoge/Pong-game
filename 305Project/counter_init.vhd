library ieee;
use  IEEE.STD_LOGIC_1164.all;
use  IEEE.STD_LOGIC_ARITH.all;
use  IEEE.STD_LOGIC_UNSIGNED.all;
use ieee.numeric_std.all;

entity counter_init is
port (
	clk : in std_logic;
	state : in std_logic_vector(1 downto 0);
	Enable : out std_logic

	);
end entity counter_init;

architecture behaviour of counter_init is
begin

with state select
Enable <= '1' when "01",
			 '1' when "10",
			 '0' when OTHERS;
			 
end architecture behaviour;
