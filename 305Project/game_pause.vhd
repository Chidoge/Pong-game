
library IEEE;
use  IEEE.STD_LOGIC_1164.all;
use  IEEE.STD_LOGIC_ARITH.all;
use  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY game_pause IS
	PORT(	
			PB2	: in std_logic;
			pause : out std_logic
			
			);
END game_pause;

ARCHITECTURE behaviour OF game_pause IS


BEGIN

process(PB2)
variable v_pause : std_logic := '0';
begin
	if (PB2'event and PB2 = '0') then
		v_pause := NOT v_pause;
	end if;
	pause <= v_pause;
end process;


	

END architecture behaviour;
