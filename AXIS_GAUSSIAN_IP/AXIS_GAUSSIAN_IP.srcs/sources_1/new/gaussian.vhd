library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.math_real.all;

entity gaussian is
    Port(clk        : in  std_logic;
         in_data    : in  std_logic_vector(71 downto 0);
         in_tvalid  : in  std_logic;
         out_tvalid : out std_logic;
         out_data   : out std_logic_vector(7 downto 0));
end gaussian;

architecture Behavioral of gaussian is

type kernel_type is array (8 downto 0) of unsigned(7 downto 0);
constant KERNEL     : kernel_type := (x"01", x"02", x"01",
                                      x"02", x"04", x"02",
                                      x"01", x"02", x"01");

type mul_type is array (8 downto 0) of unsigned(15 downto 0);  
signal mulData      : mul_type := (others=>(others=>'0'));

signal sumData      : unsigned(16 downto 0) := (others=>'0');

signal mulDataValid : std_logic := '0';
signal sumDataValid : std_logic := '0';

begin

process(clk)
variable inPixel : unsigned(7 downto 0);
begin
    if rising_edge(clk) then
        for i in 0 to 8 loop
            inPixel    := unsigned(in_data((i*8+7) downto i*8));
            mulData(i) <= KERNEL(i)*inPixel;
        end loop;
        mulDataValid <= in_tvalid;
    end if;
end process;

process(clk)
variable sum : unsigned(16 downto 0);
begin
    if rising_edge(clk) then
        sum := (others=>'0');
        for i in 0 to 8 loop
            sum := sum + mulData(i);
        end loop;
        sumData      <= shift_right(sum, 4);
        sumDataValid <= mulDataValid;
    end if;
end process;

out_data   <= std_logic_vector(resize((sumData), 8));
out_tvalid <= sumDataValid;

end Behavioral;
