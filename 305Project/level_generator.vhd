--Import libraries
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity level_generator is
port (
	score				: in integer range 0 to 300;
	time_remaining	: in integer range 0 to 120;
	state				: in std_logic_vector(1 downto 0 );
	level				: out integer range 0 to 3;
	game_ended		: out std_logic
	
	);
end entity level_generator;

architecture behaviour of level_generator is 

begin

level_gen : process(score,time_remaining)
begin
	case state is
		when "00" =>
			game_ended <= '0';
			level <= 1;
		when "01" =>
			if (time_remaining > 0 ) then
				if (score >= 30) then
					level <= 3;
				elsif (score >=15) then
					level <= 2;
				else
					level <= 1;
				end if;
				game_ended <= '0';
			else 
				game_ended <= '1';
			end if;
		when "10" =>
			if (time_remaining > 0) then
				if (score >= 20) then
					game_ended <= '1';
				else
					game_ended <= '0';
				end if;
			else	
				game_ended <= '1';
			end if;
			level <= 1;
		when "11" =>
			level <= 0;
			game_ended <= '1';
		end case;
		
end process level_gen;






end architecture behaviour;