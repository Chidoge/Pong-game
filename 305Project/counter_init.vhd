library ieee;
use  IEEE.STD_LOGIC_1164.all;
use  IEEE.STD_LOGIC_ARITH.all;
use  IEEE.STD_LOGIC_UNSIGNED.all;
use ieee.numeric_std.all;

entity counter_init is
port (
	clk : in std_logic;
	state : in std_logic_vector(1 downto 0);
	Load : out std_logic;
	Enable : out std_logic;
	Init_time : out integer
	);
end entity counter_init;

architecture behaviour of counter_init is

signal temp_load : std_logic := '0';
begin

with state select
Enable <= '1' when "01",
			 '1' when "10",
			 '0' when OTHERS;
			 
With state SELECT
Init_time <= 120 when "01",
			  20 when "10",
			  0 when OTHERS;

process(clk) 
variable load_bool: std_logic := '1';
begin
	if (state = "01") then
		if (clk'event and clk = '1') then
			if (load_bool = '1') then
				temp_load <= NOT temp_load;
				load_bool := '0';
			end if;
		end if;
	end if;
	
end process;

Load <= temp_load;

end architecture behaviour;
