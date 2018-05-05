--Declare libraries here
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
--Define entity here
entity seven_seg_splitter is
 port (
	 mouse_col				:		in std_logic_vector(9 downto 0);
	 digit1					:		out std_logic_vector(3 downto 0);
	 digit2					:		out std_logic_vector(3 downto 0)
 );
end entity;
Architecture beh of seven_seg_splitter is
begin
	digit1 <= mouse_col(3 downto 0);
	digit2 <= mouse_col(7 downto 4);
end architecture;
