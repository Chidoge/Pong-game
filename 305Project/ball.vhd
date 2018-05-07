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
			pixel_row							: OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
			pixel_column						: OUT STD_LOGIC_VECTOR(10 DOWNTO 0)
			);
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
			signal X : in std_logic_vector(10 downto 0);
			SIGNAL Platform_X : out std_logic_vector(10 downto 0);
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
		  SIGNAL Ball_X						: IN std_logic_vector(9 DOWNTO 0);
        SIGNAL Red,Green,Blue 			: OUT std_logic;
        SIGNAL Horiz_sync,Vert_sync		: OUT std_logic
		  );		
END ball;

architecture behavior of ball is

			-- Video Display Signals   
SIGNAL Red_Data, Green_Data, Blue_Data, vert_sync_int,
		reset, Ball_on, Ball_Color, Ball_Color2, Direction			: std_logic;
SIGNAL Size	  									: std_logic_vector(9 DOWNTO 0);  

SIGNAL Ball_Y_pos				 				: std_logic_vector(9 DOWNTO 0);
SIGNAL Ball_X_pos								: std_logic_vector(10 DOWNTO 0);
SIGNAL pixel_row								: std_logic_vector(9 DOWNTO 0);
SIGNAL pixel_column							: std_logic_vector(10 downto 0);

SIGNAL char_adr : std_logic_vector(5 downto 0);
SIGNAL rom_mux_output : std_logic;

--signals for platform
signal Platform_Y,Platform_Height,Platform_Width : std_logic_vector(9 downto 0);
signal X,Platform_X : std_logic_vector(10 downto 0);
signal Platform_On : std_logic;

-- signals for mouse
signal mouse_row, mouse_column : std_logic_vector(9 downto 0);

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

		
Size <= CONV_STD_LOGIC_VECTOR(8,10);


X <= '0' & Ball_X;


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
 IF (("00" & Ball_X_pos <= pixel_column + Size) AND
 			-- compare positive numbers only
 	(Ball_X_pos + Size >= "00" & pixel_column)) AND
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
			char_adr <= CONV_STD_LOGIC_VECTOR(19,6);
		-- C
		elsif (pixel_column >= CONV_STD_LOGIC_VECTOR(17,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(32,10)) then
			char_adr <= CONV_STD_LOGIC_VECTOR(3,6);
		-- O
		elsif (pixel_column >= CONV_STD_LOGIC_VECTOR(33,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(48,10)) then
			char_adr <= CONV_STD_LOGIC_VECTOR(15,6);
		-- R
		elsif (pixel_column >= CONV_STD_LOGIC_VECTOR(49,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(64,10)) then
			char_adr <= CONV_STD_LOGIC_VECTOR(18,6);
		-- E
		elsif (pixel_column >= CONV_STD_LOGIC_VECTOR(65,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(80,10)) then
			char_adr <= CONV_STD_LOGIC_VECTOR(5,6);
		else 
			char_adr <= CONV_STD_LOGIC_VECTOR(32,6);
		end if;
	else 
			char_adr <= CONV_STD_LOGIC_VECTOR(32,6);
	end if;
end process Draw_Score_Text;


Move_Ball: process
variable Ball_Y_motion 						: std_logic_vector(9 DOWNTO 0);
variable Ball_X_motion 						: std_logic_vector(9 DOWNTO 0);
variable reset_ball							: std_logic := '0';
BEGIN
			-- Move ball once every vertical sync
	WAIT UNTIL vert_sync_int'event and vert_sync_int = '1';
			-- Bounce off top or bottom of screen
			IF ('0' & Ball_Y_pos) >= CONV_STD_LOGIC_VECTOR(480,11) - Size THEN 
				Ball_Y_motion := - CONV_STD_LOGIC_VECTOR(4,10);
			ELSIF Ball_Y_pos <= Size THEN
				Ball_Y_motion := CONV_STD_LOGIC_VECTOR(4,10);
			END IF;
			
			
			IF ("00" & Ball_X_Pos) >= CONV_STD_LOGIC_VECTOR(640,11) - Size THEN 
				Ball_X_motion := - CONV_STD_LOGIC_VECTOR(4,10);
			ELSIF Ball_X_Pos <= Size THEN
				Ball_X_motion := CONV_STD_LOGIC_VECTOR(4,10);
			END IF;	
			
			IF ('0' & Ball_Y_Pos) >= CONV_STD_LOGIC_VECTOR(440,11) - Size THEN
				IF ("00" & Ball_X_POS) >= (Platform_X - Size) AND ("00" & Ball_X_POS) <= (Platform_X + Platform_Width)
				THEN
					reset_ball := '1';
				END IF;
			END If;	
			
			-- Compute next ball Y position
			if (reset_ball = '0') then
				Ball_Y_pos <= Ball_Y_pos + Ball_Y_motion;
				Ball_X_pos <= Ball_X_Pos + Ball_X_motion;
			else 
				Ball_Y_pos <= "0000000000";
				reset_ball := '0';
			end if;
END process Move_Ball;

END behavior;

