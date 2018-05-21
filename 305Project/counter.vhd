library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter is
generic (max : integer := 120);
port (
	Load	: in bit;
	Enable : in bit;
	Reset : in bit;
	Init_time : in integer;
	clk : in bit;
	Q_Out: 	out integer
	);
end entity counter;

architecture behaviour of counter is
signal Reset2 : std_logic := '0';
begin


process(Enable,clk,Load,Reset2)
variable v_output : integer := max;
begin
	if (clk'event and clk = '1') then
		if (Enable = '1') then
			if (v_output = 0) then
				v_output := max;
			else 
				v_output := v_output - 1;
			end if;
		end if;
	end if;
	Q_out <= v_output;
	
	
end process;


end architecture behaviour;
