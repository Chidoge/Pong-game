--Import libraries
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity State_controller is
port (
	clk		:	in std_logic;
	end_game :	in std_logic;
	Switch	:	in std_logic;
	PB0		:	in std_logic;
	PB1		:	in	std_logic;
	reset		:	out std_logic;
	state_vector	:	out std_logic_vector(1 downto 0)
	);
end entity State_controller;

architecture behaviour of State_controller is 
type game_state is (menu,game,training,game_over);
signal CS,NS : game_state := menu;
signal state_sig : std_logic_vector(1 downto 0) := "00";
signal reset_sig : std_logic := '1';

begin

synchronous_process : process(clk)
begin
	if (clk'event and clk='1') then
		CS <= NS;
	end if; 
end process synchronous_process;

next_state_logic : process(CS,PB1,Switch)
begin
	case CS is
		when menu =>
			if (PB1 = '0') then
				if (Switch = '1') then
					NS <= game;
				else 
					NS <= training;
				end if;
			else
				NS <= CS;
			end if;
		when game =>
			if (end_game = '1') then
				NS <= game_over;
			else 
				NS <= CS;
			end if;
		when training =>
			if (end_game = '1') then
				NS <= game_over;
			else 
				NS <= CS;
			end if;
		when game_over =>
			if (PB0 = '0') then
				NS<= menu;
			else 
				NS<= CS;
			end if;
	end case;
		
end process next_state_logic;

output_logic : process(CS) 
begin
	case CS is 
		when menu =>
			state_sig <= "00";
			reset_sig <= '1';
		when game =>
			state_sig <= "01";
			reset_sig <= '0';
		when training =>
			state_sig <= "10";
			reset_sig <= '0';
		when game_over =>
			state_sig <= "11";
			reset_sig <= '1';
	end case;
end process output_logic;


state_vector <= state_sig;
reset <= reset_sig;




end architecture behaviour;