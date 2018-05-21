--Declare libraries here
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
--Define entity here
entity seven_seg is
 port (
	 bcd				:		in std_logic_vector(1 downto 0);
	 ledsegment				:		out std_logic_vector(6 downto 0)
 );
end entity;
Architecture beh of seven_seg is

begin
process(bcd)
	begin
			case bcd is
            when "00"=> ledsegment <="1000000";  -- '0'
            when "01"=> ledsegment <="1111001";  -- '1'
            when "10"=> ledsegment <="0100100";  -- '2'
            when "11"=> ledsegment <="0110000";  -- '3'
				when others => ledsegment <="0000000";
			end case;
	end process;
end architecture;
