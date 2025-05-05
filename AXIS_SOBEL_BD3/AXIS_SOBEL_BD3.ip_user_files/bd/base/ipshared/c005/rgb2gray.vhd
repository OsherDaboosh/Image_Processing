library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.math_real.all;

entity rgb2gray is
    Port(clk        : in  std_logic;
         in_data    : in  std_logic_vector(31 downto 0);
         in_tvalid  : in  std_logic;
         out_tvalid : out std_logic;
         out_data   : out std_logic_vector(7 downto 0));
end rgb2gray;

architecture Behavioral of rgb2gray is

signal grayPixel : unsigned(7 downto 0) := (others=>'0');
signal grayValid : std_logic := '0';

begin

process(clk)
variable r, g, b  : unsigned(7 downto 0);
variable gray_sum : unsigned(15 downto 0);
begin
    if rising_edge(clk) then
        if(in_tvalid = '1') then
            r         := unsigned(in_data(23 downto 16));
            g         := unsigned(in_data(15 downto 8));
            b         := unsigned(in_data(7 downto 0));
            gray_sum  := (r * 77 + g * 150 + b * 29);
            grayPixel <= gray_sum(15 downto 8);
            grayValid <= '1';
        else
            grayValid <= '0';
        end if;
    end if;
end process;

out_data   <= std_logic_vector(grayPixel);
out_tvalid <= grayValid;

end Behavioral;
