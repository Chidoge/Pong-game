
library IEEE;
use  IEEE.STD_LOGIC_1164.all;
use  IEEE.STD_LOGIC_ARITH.all;
use  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY Compute_RGB IS
	PORT(	
			state					: 	in std_logic_vector(1 downto 0);
			Ball_On				:	in std_logic;
			Ball_Color			:	in std_logic;
			Ball_Color2			:	in std_logic;
			Platform_On			:	in std_logic;
			rom_mux_output		:	in std_logic;
			Red_Value			:	out std_logic;
			Green_Value			:	out std_logic;
			Blue_Value			:	out std_logic
			
			);
END Compute_RGB;

ARCHITECTURE behaviour OF Compute_RGB IS


BEGIN

			-- Colors for pixel data on video signal
Red_Value <= NOT Ball_on when (state = "01" or state = "10") else '1';

		-- Turn off Green and Blue when displaying ball
Green_Value <=	NOT (rom_mux_output OR Ball_Color) when (state = "01" or state = "10") else NOT (rom_mux_output);
Blue_Value <= NOT (Platform_On OR Ball_Color2) when (state = "01" or state = "10") else '1';


END architecture behaviour;
