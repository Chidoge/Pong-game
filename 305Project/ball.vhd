	-- Bouncing Ball Video 
--
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;
LIBRARY lpm;
USE lpm.lpm_components.ALL;

PACKAGE de0core IS
	COMPONENT vga_sync
 		PORT(clock_25Mhz, red, green, blue	: IN	STD_LOGIC;
				
         	red_out, green_out, blue_out	: OUT 	STD_LOGIC;
			horiz_sync_out, vert_sync_out	: OUT 	STD_LOGIC;
			pixel_row, pixel_column			: OUT STD_LOGIC_VECTOR(9 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT char_rom IS
	PORT(
		--address			: 	IN STD_LOGIC_VECTOR (8 DOWNTO 0)
		character_address	:	IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		font_row, font_col	:	IN STD_LOGIC_VECTOR (2 DOWNTO 0);
		clock				: 	IN STD_LOGIC ;
		--q					: 	OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		rom_mux_output		:	OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT platform IS
	 PORT(
			signal X : in std_logic_vector(9 downto 0);
			SIGNAL Platform_X : out std_logic_vector(9 downto 0);
			SIGNAL Platform_Y : out std_logic_vector(9 downto 0);
			SIGNAL Platform_Width : out std_logic_vector(9 downto 0);
			SIGNAL Platform_Height : out std_logic_vector(9 downto 0)
	);
END COMPONENT;

COMPONENT MOUSE IS
   PORT( 
		  clock_25Mhz, reset				: IN std_logic; 
		  mouse_data, mouse_clk		: INOUT std_logic;
        left_button, right_button   : OUT std_logic;
		  mouse_cursor_row				: OUT std_logic_vector(9 DOWNTO 0); 
		  mouse_cursor_column			: OUT std_logic_vector(9 DOWNTO 0));       	
END COMPONENT;
	
END de0core;

			-- Bouncing Ball Video 
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_SIGNED.all;
LIBRARY work;
USE work.de0core.all;

ENTITY ball IS
Generic(ADDR_WIDTH: integer := 12; DATA_WIDTH: integer := 1);

   PORT(SIGNAL PB1, PB2, SW0, Clock 			: IN std_logic;
        SIGNAL Red,Green,Blue 			: OUT std_logic;
        SIGNAL Horiz_sync,Vert_sync		: OUT std_logic;
		  SIGNAL mouse_col 					: OUT std_logic_vector(9 downto 0);
		  signal mouse_data_out				: OUT std_logic;
		  signal mouse_clk_out				: OUT std_logic
		  );		
END ball;

architecture behavior of ball is

			-- Video Display Signals   
SIGNAL Red_Data, Green_Data, Blue_Data, vert_sync_int,
		reset, Ball_on, Ball_Color, Ball_Color2, Direction			: std_logic;
SIGNAL Size	  									: std_logic_vector(9 DOWNTO 0);  
SIGNAL Ball_Y_motion 						: std_logic_vector(9 DOWNTO 0);
signal Ball_X_motion 						: std_logic_vector(9 DOWNTO 0);
SIGNAL Ball_Y_pos, Ball_X_pos				: std_logic_vector(9 DOWNTO 0);
SIGNAL pixel_row, pixel_column				: std_logic_vector(9 DOWNTO 0);

SIGNAL char_adr : std_logic_vector(5 downto 0);
SIGNAL rom_mux_output : std_logic;

--signals for platform
signal X,Platform_X,Platform_Y,Platform_Height,Platform_Width : std_logic_vector(9 downto 0);
signal Platform_On : std_logic;

-- signals for mouse
signal mouse_row, mouse_column : std_logic_vector(9 downto 0);
signal mouse_reset,mouse_clock_sig,mouse_data_sig,left_button_sig,right_button_sig : std_logic;


BEGIN           
   SYNC: vga_sync
 		PORT MAP(clock_25Mhz => clock, 
				red => red_data, green => green_data, blue => blue_data,	
    	     	red_out => red, green_out => green, blue_out => blue,
			 	horiz_sync_out => horiz_sync, vert_sync_out => vert_sync_int,
			 	pixel_row => pixel_row, pixel_column => pixel_column);
				
				
	CHAR: char_rom PORT MAP (char_adr, pixel_row(3 DOWNTO 1), pixel_column(3 DOWNTO 1), clock, rom_mux_output);

	P_form : platform
		PORT MAP(X,Platform_X,Platform_Y,Platform_Width,Platform_Height);
	
	New_mouse : Mouse 
		PORT MAP (clock,mouse_reset,mouse_data_sig,mouse_clock_sig,left_button_sig,right_button_sig,mouse_row,mouse_column);
		
		
Size <= CONV_STD_LOGIC_VECTOR(8,10);

mouse_data_out <= mouse_data_sig;
mouse_clk_out <= mouse_clock_sig;


X <= mouse_column;--CONV_STD_LOGIC_VECTOR(500,10);

mouse_col <= mouse_column;

		-- need internal copy of vert_sync to read
vert_sync <= vert_sync_int;


		-- Colors for pixel data on video signal
Red_Data <= NOT Ball_on;-- '1' when ((rom_mux_output OR Platform_On OR Ball_On) = '0') else (Platform_On OR Ball_On);

		-- Turn off Green and Blue when displaying ball
Green_Data <=	NOT (rom_mux_output OR Ball_Color);-- '1' when ((rom_mux_output OR Platform_On OR Ball_On) = '0') else rom_mux_output; --OR w/e;
Blue_Data <= NOT (Platform_On OR Ball_Color2);--'1' when ((rom_mux_output OR Platform_On OR Ball_On) = '0') else rom_mux_output; -- OR w/e;


RGB_Display: Process (Ball_X_pos, Ball_Y_pos, pixel_column, pixel_row, Size)
BEGIN
			-- Set Ball_on ='1' to display ball
 IF (('0' & Ball_X_pos <= pixel_column + Size) AND
 			-- compare positive numbers only
 	(Ball_X_pos + Size >= '0' & pixel_column)) OR
 	(('0' & Ball_Y_pos <= pixel_row + Size) AND
 	(Ball_Y_pos + Size >= '0' & pixel_row )) THEN
 		Ball_on <= '1';
 	ELSE
 		Ball_on <= '0';
END IF;
	
END process RGB_Display;

--Init_mouse : process(PB1)
--begin
--	if (PB1 = '1')	then
--		mouse_reset <= '0';
--		x <= mouse_column;
--		mouse_col <= mouse_column;
--	else 
--		mouse_reset <= '1';
--		x <= "0001111111";
--		mouse_col <= "0001111111";
--	end if;
--end process;

Change_color : process(SW0, PB2)
begin
	if (SW0 = '1' and Ball_on = '1')	then
		Ball_Color <= '1';
	else
		Ball_Color <= '0';
	end if;
	
	if (PB2 = '1' and Ball_on = '1') then
		Ball_Color2 <= '1';
	else
		Ball_Color2 <= '0';
	end if;
end process;


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
		

Draw_Score_Text : process(pixel_row,pixel_column)
BEGIN
	-- PRINT "SCORE"
	if (pixel_row>=CONV_STD_LOGIC_VECTOR(0,10) AND pixel_row <= CONV_STD_LOGIC_VECTOR(15,10)) then
		-- S
		if (pixel_column >= CONV_STD_LOGIC_VECTOR(1,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(16,10)) then
			char_adr <= "010011";
		-- C
		elsif (pixel_column >= CONV_STD_LOGIC_VECTOR(17,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(32,10)) then
			char_adr <= "000011";
		-- O
		elsif (pixel_column >= CONV_STD_LOGIC_VECTOR(33,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(48,10)) then
			char_adr <= "001111";
		-- R
		elsif (pixel_column >= CONV_STD_LOGIC_VECTOR(49,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(64,10)) then
			char_adr <= "010010";
		-- E
		elsif (pixel_column >= CONV_STD_LOGIC_VECTOR(65,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(80,10)) then
			char_adr <= "000101";
		elsif (pixel_column >= CONV_STD_LOGIC_VECTOR(449,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(464,10)) then
			char_adr <= "000101";
		elsif (pixel_column >= CONV_STD_LOGIC_VECTOR(465,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(480,10)) then
			char_adr <= "000101";
		elsif (pixel_column >= CONV_STD_LOGIC_VECTOR(481,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(496,10)) then
			char_adr <= "000101";
		elsif (pixel_column >= 497) then --Can't use the second condition or it doesn't work
			char_adr <= "000101";
		elsif (pixel_column >= CONV_STD_LOGIC_VECTOR(513,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(528,10)) then
			char_adr <= "000101";
		elsif (pixel_column >= CONV_STD_LOGIC_VECTOR(529,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(544,10)) then
			char_adr <= "000101";
		elsif (pixel_column >= CONV_STD_LOGIC_VECTOR(545,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(560,10)) then
			char_adr <= "000101";
		elsif (pixel_column >= CONV_STD_LOGIC_VECTOR(561,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(576,10)) then
			char_adr <= "000101";
		elsif (pixel_column >= CONV_STD_LOGIC_VECTOR(577,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(592,10)) then
			char_adr <= "000101";
		elsif (pixel_column >= CONV_STD_LOGIC_VECTOR(593,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(608,10)) then
			char_adr <= "000101";
		elsif (pixel_column >= CONV_STD_LOGIC_VECTOR(609,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(624,10)) then
			char_adr <= "000101";
		else 
			char_adr <= CONV_STD_LOGIC_VECTOR(32,6);
		end if;
	else 
			char_adr <= CONV_STD_LOGIC_VECTOR(32,6);
	end if;
end process Draw_Score_Text;


Move_Ball: process
BEGIN
			-- Move ball once every vertical sync
	WAIT UNTIL vert_sync_int'event and vert_sync_int = '1';
			-- Bounce off top or bottom of screen
			IF ('0' & Ball_Y_pos) >= CONV_STD_LOGIC_VECTOR(480,10) - Size THEN 
				Ball_Y_motion <= - CONV_STD_LOGIC_VECTOR(1,10);
			ELSIF Ball_Y_pos <= Size THEN
				Ball_Y_motion <= CONV_STD_LOGIC_VECTOR(1,10);
			END IF;
			
			
			IF ('0' & Ball_X_Pos) >= CONV_STD_LOGIC_VECTOR(640,10) - Size THEN 
				Ball_X_motion <= - CONV_STD_LOGIC_VECTOR(1,10);
			ELSIF Ball_X_Pos <= Size THEN
				Ball_X_motion <= CONV_STD_LOGIC_VECTOR(1,10);
			END IF;	
			
			-- Compute next ball Y position
				Ball_Y_pos <= Ball_Y_pos + Ball_Y_motion;
				Ball_X_pos <= Ball_X_Pos + Ball_X_motion;
END process Move_Ball;

END behavior;

