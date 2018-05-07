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
			signal mouse_cursor_column 	:	in std_logic_vector(9 downto 0);
			signal pixel_row					:	in	std_logic_vector(9 downto 0);
			signal pixel_column				:	in std_logic_vector(10 downto 0);
			signal Platform_X_out			:	out std_logic_vector(10 downto 0);
			signal Platform_Y_out			:	out std_logic_vector(9 downto 0);
			signal Platform_Width_out		:	out std_logic_vector(9 downto 0);
			signal Platform_On				:	out std_logic
	);
END platform;

architecture behavior of platform is
signal Platform_X 		:	std_logic_vector(10 downto 0);
signal Platform_Y 		:	std_logic_vector(9 downto 0) := CONV_STD_LOGIC_VECTOR(460,10);
signal Platform_Width 	:	std_logic_vector(9 downto 0) := CONV_STD_LOGIC_VECTOR(100,10);
signal Platform_Height	:	std_logic_vector(9 downto 0) := CONV_STD_LOGIC_VECTOR(20,10);
begin
	
	--Assign new X coordinate to the platform.
	-- Update the position of the platform, can't move too far off the screen.
	Platform_X <=  '0' & mouse_cursor_column when ('0' & mouse_cursor_column  <= CONV_STD_LOGIC_VECTOR(640,11) - Platform_Width) else ('0' & CONV_STD_LOGIC_VECTOR(640,10) - Platform_Width);
	
	Platform_X_out <= Platform_X;
	Platform_Y_out <= CONV_STD_LOGIC_VECTOR(460,10);
	Platform_Width_out <= CONV_STD_LOGIC_VECTOR(100,10);
	


-- Draws platform if on screen.
Draw_Platform : process(pixel_row,pixel_column)
begin
	if (pixel_row >= Platform_Y AND pixel_row <= Platform_Y + Platform_Height) then
		if ((pixel_column >= Platform_X AND pixel_column <= Platform_X + Platform_Width)) then 
			Platform_On <= '1';
		else 
			Platform_On <= '0';
		end if;
	else 
		Platform_On <= '0';
	end if;
end process Draw_Platform;	


END behavior;

