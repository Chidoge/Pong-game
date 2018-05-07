--Declare libraries here
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
--Define entity here
entity seven_seg is
 port (
	 bcd				:		in std_logic_vector(3 downto 0);
	 ledsegment				:		out std_logic_vector(6 downto 0)
 );
end entity;
Architecture beh of seven_seg is

begin
process(bcd)
	begin
			case bcd is
            when "0000"=> ledsegment <="1000000";  -- '0'
            when "0001"=> ledsegment <="1111001";  -- '1'
            when "0010"=> ledsegment <="0100100";  -- '2'
            when "0011"=> ledsegment <="0110000";  -- '3'
            when "0100"=> ledsegment <="0011001";  -- '4' 
            when "0101"=> ledsegment <="0010010";  -- '5'
            when "0110"=> ledsegment <="0000010";  -- '6'
            when "0111"=> ledsegment <="1111000";  -- '7'
            when "1000"=> ledsegment <="0000000";  -- '8'
            when "1001"=> ledsegment <="0011000";  -- '9'
				when "1010"=> ledsegment <="0001000";	-- '10,A'
				when "1011"=> ledsegment <="0000011";	-- '11,B'
				when "1100"=> ledsegment <="1000110";	-- '12,C'
				when "1101"=> ledsegment <="0100001";	-- '13,D'
				when "1110"=> ledsegment <="0000110";	-- '14,E'
				when "1111"=> ledsegment <="0001110";	-- '15,F'
				when others => ledsegment <="0000000";
			end case;
	end process;
end architecture;
