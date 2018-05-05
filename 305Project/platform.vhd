-- Bouncing Ball Video 
--
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

LIBRARY work;

ENTITY platform IS
--Generic(ADDR_WIDTH: integer := 12; DATA_WIDTH: integer := 1);

   PORT(
			signal X : in std_logic_vector(9 downto 0);
			SIGNAL Platform_X : out std_logic_vector(9 downto 0);
			SIGNAL Platform_Y : out std_logic_vector(9 downto 0);
			SIGNAL Platform_Width : out std_logic_vector(9 downto 0);
			SIGNAL Platform_Height : out std_logic_vector(9 downto 0)
	);
END platform;

architecture behavior of platform is
begin
	
	Platform_X <= X;
	Platform_Width <= CONV_STD_LOGIC_VECTOR(100,10);
	Platform_Y <= CONV_STD_LOGIC_VECTOR(440,10);
	Platform_Height <= CONV_STD_LOGIC_VECTOR(20,10);

END behavior;

