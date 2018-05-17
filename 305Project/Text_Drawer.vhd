
library IEEE;
use  IEEE.STD_LOGIC_1164.all;
use  IEEE.STD_LOGIC_ARITH.all;
use  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY Text_Drawer IS
	PORT(	
			signal state			:	in std_logic_vector(1 downto 0);
			signal Switch			:	in std_logic;
			signal pixel_row		:	in	 std_logic_vector(9 downto 0);
			signal pixel_column	:	in	 std_logic_vector(10 downto 0);
			signal score			:	in  integer;
			signal char_adr		:	out std_logic_vector(5 downto 0)
			);
END Text_Drawer;

ARCHITECTURE behaviour OF Text_Drawer IS


BEGIN

--Draws the player score.
Draw_Score_Text : process(pixel_row,pixel_column)
	variable digit1,digit2,digit3 : integer range 0 to 9 :=0;
	BEGIN
		if (score >= 100) then
			digit1 := score/100;
			digit2 := (score - (digit1 * 100))/10;
			digit3 := (score - (digit1 *100) - (digit2 * 10));
		elsif (score >= 10) then
			digit1 := 0;
			digit2 := score/10;
			digit3 := (score - (digit2 * 10));
		else 
			digit1 := 0;
			digit2 := 0;
			digit3 := score;
		end if;

		
		
		if (state = "00") then
			-- Menu - print pong
			if (pixel_row>=CONV_STD_LOGIC_VECTOR(48,10) AND pixel_row <= CONV_STD_LOGIC_VECTOR(63,10)) then
				if (pixel_column >= CONV_STD_LOGIC_VECTOR(288,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(303,10)) then
					--P 
					char_adr <= CONV_STD_LOGIC_VECTOR(16,6);
				elsif (pixel_column >= CONV_STD_LOGIC_VECTOR(304,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(319,10)) then
					--O
					char_adr <= CONV_STD_LOGIC_VECTOR(15,6);
				elsif (pixel_column >= CONV_STD_LOGIC_VECTOR(320,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(335,10)) then
					--N 
					char_adr <= CONV_STD_LOGIC_VECTOR(14,6);
				elsif (pixel_column >= CONV_STD_LOGIC_VECTOR(336,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(351,10)) then
					--G 
					char_adr <= CONV_STD_LOGIC_VECTOR(7,6);
				else 
					-- Nothing
					char_adr <= CONV_STD_LOGIC_VECTOR(32,6);
				end if;
				
				-- print game
			elsif (pixel_row>=CONV_STD_LOGIC_VECTOR(208,10) AND pixel_row <= CONV_STD_LOGIC_VECTOR(223,10)) then
					--Arrow
				if (pixel_column >= CONV_STD_LOGIC_VECTOR(256,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(271,10) AND Switch = '1') then
					char_adr <= CONV_STD_LOGIC_VECTOR(39,6);
					
					--G
				elsif (pixel_column >= CONV_STD_LOGIC_VECTOR(288,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(303,10)) then
					char_adr <= CONV_STD_LOGIC_VECTOR(7,6);
					--A
				elsif (pixel_column >= CONV_STD_LOGIC_VECTOR(304,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(319,10)) then
					char_adr <= CONV_STD_LOGIC_VECTOR(1,6);
					--M 
				elsif (pixel_column >= CONV_STD_LOGIC_VECTOR(320,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(335,10)) then
					char_adr <= CONV_STD_LOGIC_VECTOR(13,6);
					--E 
				elsif (pixel_column >= CONV_STD_LOGIC_VECTOR(336,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(351,10)) then
					char_adr <= CONV_STD_LOGIC_VECTOR(5,6);
					-- left arrow
				elsif (pixel_column >= CONV_STD_LOGIC_VECTOR(368,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(383,10) AND Switch = '1') then
					char_adr <= CONV_STD_LOGIC_VECTOR(31,6);
				else 
					-- Nothing
					char_adr <= CONV_STD_LOGIC_VECTOR(32,6);
				end if;
				-- training
			elsif (pixel_row>=CONV_STD_LOGIC_VECTOR(240,10) AND pixel_row <= CONV_STD_LOGIC_VECTOR(255,10)) then
				-- Arrow
				if (pixel_column >= CONV_STD_LOGIC_VECTOR(224,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(239,10) AND Switch = '0') then
					char_adr <= CONV_STD_LOGIC_VECTOR(39,6);
					--T 
				elsif (pixel_column >= CONV_STD_LOGIC_VECTOR(256,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(271,10)) then
					char_adr <= CONV_STD_LOGIC_VECTOR(20,6);
					--R
				elsif (pixel_column >= CONV_STD_LOGIC_VECTOR(272,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(287,10)) then
					char_adr <= CONV_STD_LOGIC_VECTOR(18,6);
					--A 
				elsif (pixel_column >= CONV_STD_LOGIC_VECTOR(288,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(303,10)) then
					char_adr <= CONV_STD_LOGIC_VECTOR(1,6);
					--I 
				elsif (pixel_column >= CONV_STD_LOGIC_VECTOR(304,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(319,10)) then
					char_adr <= CONV_STD_LOGIC_VECTOR(9,6);
					--N
				elsif (pixel_column >= CONV_STD_LOGIC_VECTOR(320,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(335,10)) then
					char_adr <= CONV_STD_LOGIC_VECTOR(14,6);
					-- I
				elsif (pixel_column >= CONV_STD_LOGIC_VECTOR(336,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(351,10)) then
					char_adr <= CONV_STD_LOGIC_VECTOR(9,6);
					-- N
				elsif (pixel_column >= CONV_STD_LOGIC_VECTOR(352,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(367,10)) then
					char_adr <= CONV_STD_LOGIC_VECTOR(14,6);
					-- G
				elsif (pixel_column >= CONV_STD_LOGIC_VECTOR(368,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(383,10)) then
					char_adr <= CONV_STD_LOGIC_VECTOR(7,6);
					-- Arrow
				elsif (pixel_column >= CONV_STD_LOGIC_VECTOR(400,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(415,10) AND Switch = '0') then
					char_adr <= CONV_STD_LOGIC_VECTOR(31,6);
				else 
					-- Nothing
					char_adr <= CONV_STD_LOGIC_VECTOR(32,6);
				end if;
			
				
			else
					char_adr <= CONV_STD_LOGIC_VECTOR(32,6);
			end if;

		elsif (state = "01") then
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
				-- : 
				elsif (pixel_column >= CONV_STD_LOGIC_VECTOR(81,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(96,10)) then
					char_adr <= CONV_STD_LOGIC_VECTOR(63,6);
					
				-- First digit of the score
				elsif (pixel_column >= CONV_STD_LOGIC_VECTOR(97,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(112,10)) then
						char_adr <= CONV_STD_LOGIC_VECTOR(digit1 + 48,6);
				-- Second digit of the score
				elsif (pixel_column >= CONV_STD_LOGIC_VECTOR(113,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(128,10)) then
						char_adr <= CONV_STD_LOGIC_VECTOR(digit2 + 48,6);
				-- Third digit of the score
				elsif (pixel_column >= CONV_STD_LOGIC_VECTOR(129,10) AND pixel_column <= CONV_STD_LOGIC_VECTOR(144,10)) then
						char_adr <= CONV_STD_LOGIC_VECTOR(digit3 + 48,6);
				else 
					char_adr <= CONV_STD_LOGIC_VECTOR(32,6);
				end if;
			else 
					char_adr <= CONV_STD_LOGIC_VECTOR(32,6);
			end if;
		end if;
end process Draw_Score_Text;

END architecture behaviour;
