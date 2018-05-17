--Import libraries
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity State_controller is
port (
	clk	:	in std_logic;
	Switch	:	in std_logic;
	PB1		:	in	std_logic;
	
	state_vector	:	out std_logic_vector(1 downto 0)
	);
end entity State_controller;

architecture behaviour of State_controller is 
type game_state is (menu,game,training);
signal CS,NS : game_state := menu;

begin

synchronous_process : process(clk)
begin
	if (clk'event and clk='1') then
		CS <= NS;
		state_vector <= "01";
	end if; 
end process synchronous_process;

next_state_logic : process(CS,NS,PB1,Switch)

begin
end process next_state_logic;



end architecture behaviour;