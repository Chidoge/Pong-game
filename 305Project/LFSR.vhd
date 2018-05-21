library ieee; 
use ieee.std_logic_1164.all;

entity LFSR is 
generic (seed : std_logic_vector := "0000000000");
    port (
      clk             : in  std_logic;
      enable          : in  std_logic;
      rand_out          : out std_logic_vector (9 downto 0));
end LFSR;

architecture rtl of LFSR is  
signal rand_lfsr           : std_logic_vector (9 downto 0) := seed;
begin  
    rand_out  <= rand_lfsr(9 downto 0);
    process (clk) 
    begin 
        if rising_edge(clk) then 
            if (enable = '1') then
                rand_lfsr(9) <= rand_lfsr(0);
                rand_lfsr(8) <= rand_lfsr(9) xor rand_lfsr(0);
                rand_lfsr(7) <= rand_lfsr(8);
                rand_lfsr(6) <= rand_lfsr(7);
                rand_lfsr(5) <= rand_lfsr(6) xor rand_lfsr(0);
                rand_lfsr(4) <= rand_lfsr(5);
                rand_lfsr(3) <= rand_lfsr(4) xor rand_lfsr(0);
                rand_lfsr(2) <= rand_lfsr(3);
                rand_lfsr(1) <= rand_lfsr(2);
                rand_lfsr(0) <= rand_lfsr(1);
            end if; 
        end if; 
    end process;
end architecture rtl;