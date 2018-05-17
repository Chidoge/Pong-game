	-- Bouncing Ball Video 
--
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;
LIBRARY lpm;
USE lpm.lpm_components.ALL;

PACKAGE de0core IS

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

   PORT(
			signal reset						:	in std_logic;
			signal vert_sync					:	in	std_logic;
			signal PB2							:	in std_logic;
			signal SW0							:	in std_logic;
			signal Clock						:	in std_logic;
			signal Platform_X					:	in std_logic_vector(10 downto 0);
			signal Platform_Y					:	in std_logic_vector(9 downto 0);
			signal Platform_Width			:	in std_logic_vector(9 downto 0);
			signal pixel_row					:	in std_logic_vector(9 downto 0);
			signal pixel_column				:	in std_logic_vector(10 downto 0);
			signal Mouse_X						:	in std_logic_vector(9 downto 0);
			signal Ball_On						: out std_logic;
			signal Ball_Color					: out std_logic;
			signal Ball_Color2				: out std_logic;
			signal score						: out integer
			
		  );		
END ball;

architecture behavior of ball is

-- Ball attributes  
SIGNAL Size	  									: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(8,10);
SIGNAL Ball_X_pos								: std_logic_vector(10 DOWNTO 0);
SIGNAL Ball_Y_pos				 				: std_logic_vector(9 DOWNTO 0);
signal Ball_On_Sig							: std_logic;

-- Signal for score
signal score_count : integer := 0;

BEGIN           

score <= score_count;

Ball_On <= Ball_On_Sig;



--Turn ball on depending on pixels being drawn.
Display_Ball: Process (Ball_X_pos, Ball_Y_pos, pixel_column, pixel_row, Size)
BEGIN
			-- Set Ball_on ='1' to display ball

 IF (("00" & Ball_X_pos <= pixel_column + Size) AND
 			-- compare positive numbers only
 	(Ball_X_pos + Size >= "00" & pixel_column)) AND
 	(('0' & Ball_Y_pos <= pixel_row + Size) AND
 	(Ball_Y_pos + Size >= '0' & pixel_row )) THEN
 		Ball_On_Sig <= '1';
 	ELSE
 		Ball_On_Sig <= '0';
END IF;
	
END process Display_Ball;


Change_color : process(SW0, PB2)
begin
	if (SW0 = '1' and Ball_On_Sig = '1')	then
		Ball_Color <= '1';
	else
		Ball_Color <= '0';
	end if;
	
	if (PB2 = '1' and Ball_On_Sig = '1') then
		Ball_Color2 <= '1';
	else
		Ball_Color2 <= '0';
	end if;
end process;






Move_Ball: process
variable Ball_Y_motion 		: std_logic_vector(9 DOWNTO 0);
variable Ball_X_motion 		: std_logic_vector(9 DOWNTO 0);
variable reset_ball			: std_logic := '0';
BEGIN
			-- Move ball once every vertical sync
	WAIT UNTIL vert_sync'event and vert_sync = '1';
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
			
			-- If ball is caught, 460 is top of platform.
			IF ('0' & Ball_Y_Pos) >= CONV_STD_LOGIC_VECTOR(460,11) - Size THEN
				IF ("00" & Ball_X_POS) >= (Platform_X - Size) AND ("00" & Ball_X_POS) <= (Platform_X + Platform_Width) THEN
					-- Make sure the ball is heading down to the platform
					IF (Ball_Y_motion > CONV_STD_LOGIC_VECTOR(0,10)) THEN
						reset_ball := '1';
					END IF;
				END IF;
			END If;	
			
			-- Compute next ball Y position
			if (reset = '1') then
				Ball_X_pos <= "00000000000";
				Ball_Y_pos <= "0000000000";
				score_count <= 0;
			elsif (reset_ball = '0') then
				Ball_Y_pos <= Ball_Y_pos + Ball_Y_motion;
				Ball_X_pos <= Ball_X_Pos + Ball_X_motion;
			else 
				Ball_Y_pos <= "0000000000";
				score_count <= score_count + 1;
				reset_ball := '0';
			end if;
END process Move_Ball;

END behavior;

