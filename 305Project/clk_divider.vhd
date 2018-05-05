library ieee;
use ieee.std_logic_1164.all;

entity clk_divider is
generic ( max : integer := 2);
port (
	clk : in std_logic;
	clk_out_hz: out std_logic
	);
end entity clk_divider;

architecture behaviour of clk_divider is 
	signal clk_out_hz_count : integer := 0;
	signal clk_out_hz_temp : std_logic := '0';
begin
	
process(clk)
	begin
	-- input is 50 Mhz
		if (rising_edge(clk)) then
		
			if (clk_out_hz_count >= max) then
				clk_out_hz_count <= 0;
				clk_out_hz_temp <= NOT clk_out_hz_temp;
			else
				clk_out_hz_count <= clk_out_hz_count + 1;
			end if;

		end if;
	end process;
	
	clk_out_hz <= clk_out_hz_temp;
	
end behaviour;
