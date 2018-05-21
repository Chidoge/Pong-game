library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter is
port (
	Enable : in bit;
	Reset : in bit;
	state : in std_logic_vector(1 downto 0);
	clk : in bit;
	Q_Out: 	out integer range 0 to 120
	);
end entity counter;

architecture behaviour of counter is
signal previous_state : std_logic_vector(1 downto 0);
begin

process(clk)
begin
	if (clk'event and clk = '1') then
		previous_state <= state;
	end if;
end process;


process(Enable,clk)
variable v_output : integer range 0 to 120;
begin

		if (previous_state = "00" and state = "00") then
			v_output := 0;
		elsif (previous_state = "00" and state = "01") then
			v_output := 120;
		elsif (previous_state = "00" and state = "10") then
			v_output := 20;
	elsif (clk'event and clk = '1') then
		if (Enable = '1') then
			if (v_output = 0) then
				v_output := 0;
			else 
				v_output := v_output - 1;
			end if;
		end if;
	end if;
	Q_out <= v_output;
	
	
end process;


end architecture behaviour;
