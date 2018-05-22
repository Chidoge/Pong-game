	-- Bouncing Ball Video 
--
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.NUMERIC_STD.ALL;
LIBRARY lpm;
USE lpm.lpm_components.ALL;

PACKAGE de0core IS

END de0core;

			-- Bouncing Ball Video 
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_SIGNED.all;
use IEEE.NUMERIC_STD.ALL;
LIBRARY work;
USE work.de0core.all;

ENTITY ball IS
Generic(ADDR_WIDTH: integer := 12; DATA_WIDTH: integer := 1);

   PORT(
			signal level						:	in integer range 0 to 3;
			signal pause						:	in std_logic;
			signal reset						:	in std_logic;
			signal vert_sync					:	in	std_logic;
			signal SW0							:	in std_logic;
			signal Clock						:	in std_logic;
			signal Platform_X					:	in std_logic_vector(10 downto 0);
			signal Platform_Y					:	in std_logic_vector(9 downto 0);
			signal Platform_Width			:	in std_logic_vector(9 downto 0);
			signal pixel_row					:	in std_logic_vector(9 downto 0);
			signal pixel_column				:	in std_logic_vector(10 downto 0);
			signal Mouse_X						:	in std_logic_vector(9 downto 0);
			signal rand_lfsr					:	in std_logic_vector(9 downto 0);
			signal Ball_On						: out std_logic;
			signal Ball_Color					: out std_logic;
			signal score						: out integer range 0 to 300
			
		  );		
END ball;

architecture behavior of ball is

-- Ball attributes  
SIGNAL Size	  									: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(8,10);

type ball_x_array is array(1 to 3) of std_logic_vector(10 downto 0);
type ball_y_array is array(1 to 3) of std_logic_vector(9 downto 0);
type ball_motion is array (1 to 3) of std_logic_vector(9 downto 0);
type ball_display_array is array(1 to 3) of std_logic;

-- Signal for score
signal Ball_X_pos_array : ball_x_array := ("00000000000","00000000000","00000000000");
signal Ball_Y_pos_array : ball_y_array := ("0000000000","0000000000","0000000000");
signal ball_on_array		: ball_display_array := ('0','0','0');
signal score_count : integer range 0 to 300 := 0;
signal Ball_speed : integer range 0 to 12 := 4;
BEGIN           


score <= score_count;



ball_speed_gen: process(level)
begin
	if (level = 1) then
		ball_speed <= 4;
	elsif (level = 2) then
		ball_speed <= 6;
	else
		ball_speed <= 8;
	end if;
end process;
	

--Turn ball on depending on pixels being drawn.
Display_Ball: Process (Ball_X_pos_array, Ball_Y_pos_array, pixel_column, pixel_row, Size)
BEGIN
Ball_On <='0';
	-- Set Ball_on ='1' to display ball
for i in 1 to 3 loop
	 IF (("00" & Ball_X_pos_array(i) <= pixel_column + Size) AND
				-- compare positive numbers only
		(Ball_X_pos_array(i) + Size >= "00" & pixel_column)) AND
		(('0' & Ball_Y_pos_array(i) <= pixel_row + Size) AND
		(Ball_Y_pos_array(i) + Size >= '0' & pixel_row )) THEN
			Ball_On_array(i) <= '1';
			Ball_On <= '1';
		ELSE
			Ball_On_array(i) <= '0';
	END IF;
end loop;
	
END process Display_Ball;


Change_color : process(SW0)
variable V_Ball_On : std_logic;
begin
	for i in 1 to 3 loop
		V_Ball_On := '0';
		if (Ball_On_array(i) = '1') then
			V_Ball_On := '1';
		end if;
	end loop;
	
	
	if (SW0 = '1' and V_ball_on = '1')	then
		Ball_Color <= '1';
	else
		Ball_Color <= '0';
	end if;
end process;






Move_Ball: process
variable Ball_Y_motion 		: ball_motion :=("0000000000","0000000000","0000000000");
variable Ball_X_motion 		: ball_motion :=("0000000000","0000000000","0000000000");
variable ball_reset_array : ball_display_array := ('0','0','0');
BEGIN
			-- Move ball once every vertical sync
	WAIT UNTIL vert_sync'event and vert_sync = '1';
			-- Bounce off top or bottom of screen
			-- If game not paused
			IF (pause = '0') then
				for i in 1 to 3 loop
					IF ('0' & Ball_Y_pos_array(i)) >= CONV_STD_LOGIC_VECTOR(480,11) - Size THEN 
						Ball_Y_motion(i) := - CONV_STD_LOGIC_VECTOR(Ball_speed,10);
					ELSIF Ball_Y_pos_array(i) <= Size THEN
						Ball_Y_motion(i) := CONV_STD_LOGIC_VECTOR(Ball_speed,10);
					END IF;
					
					
					IF ("00" & Ball_X_Pos_array(i)) >= CONV_STD_LOGIC_VECTOR(640,11) - Size THEN 
						Ball_X_motion(i) := - CONV_STD_LOGIC_VECTOR(Ball_speed,10);
					ELSIF Ball_X_Pos_array(i) <= Size THEN
						Ball_X_motion(i) := CONV_STD_LOGIC_VECTOR(Ball_speed,10);
					END IF;	
					
					-- If ball is caught, 460 is top of platform.
					IF ('0' & Ball_Y_Pos_array(i)) >= CONV_STD_LOGIC_VECTOR(460,11) - Size THEN
						IF ("00" & Ball_X_POS_array(i)) >= (Platform_X - Size) AND ("00" & Ball_X_POS_array(i)) <= (Platform_X + Platform_Width) THEN
							-- Make sure the ball is heading down to the platform
							IF (Ball_Y_motion(i) > CONV_STD_LOGIC_VECTOR(0,10)) THEN
								ball_reset_array(i) := '1';
							END IF;
						END IF;
					END If;	
					
					-- Compute next ball Y position
					if (reset = '1') then
						Ball_X_pos_array(i) <= "00000000000";
						Ball_Y_pos_array(i) <= "0000000000";
						score_count <= 0;
					elsif (ball_reset_array(i) = '0') then
						Ball_Y_pos_array(i) <= Ball_Y_pos_array(i) + Ball_Y_motion(i);
						Ball_X_pos_array(i) <= Ball_X_Pos_array(i) + Ball_X_motion(i);
					else 
						Ball_Y_pos_array(i) <= "0000000000";
						if ('0' & rand_lfsr >= "01001111111") then
							if (i = 1) then
								Ball_X_pos_array(i) <= "00" & rand_lfsr(9 downto 1);
							elsif (i = 2) then
								Ball_X_pos_array(i) <= "000" & rand_lfsr(9 downto 2);
							elsif (i = 3) then
								Ball_X_pos_array(i) <= "0000" & rand_lfsr(9 downto 3);
							end if;
						else
							if (i = 1) then
								Ball_X_pos_array(i) <= "00" & rand_lfsr(9 downto 2) & "0";
							elsif (i = 2) then
								Ball_X_pos_array(i) <= "0" & rand_lfsr(8 downto 1) & "00";
							elsif (i = 3) then
								Ball_X_pos_array(i) <= "00" & rand_lfsr(6 downto 3) & "00000";
							end if;
						end if;
						score_count <= score_count + 1;
						ball_reset_array(i) := '0';
					end if;
				end loop;
			end if;
END process Move_Ball;

END behavior;

