library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.math_real.all;

entity line_buffer is
  generic(width     : integer := 640);
     Port(clk       : in  std_logic;
          resetn    : in  std_logic;
          in_data   : in  std_logic_vector(7 downto 0);
          in_tvalid : in  std_logic;
          in_tready : in  std_logic;
          out_data  : out std_logic_vector(23 downto 0));
end line_buffer;

architecture Behavioral of line_buffer is

type buffer_type is array (0 to width+1) of std_logic_vector(7 downto 0);
signal lB : buffer_type := (others=>(others=>'0'));

signal wrPtr : unsigned(positive(ceil(log2(real(width)))) downto 0) := (others=>'0');
signal rdPtr : unsigned(9 downto 0) := (others=>'0');

begin

process(clk)
begin
    if rising_edge(clk) then
        if(resetn = '0') then
            wrPtr <= (others=>'0');
        elsif(in_tvalid = '1') then
            lB(to_integer(wrPtr)) <= in_data;
            if(wrPtr = width-1) then
                wrPtr <= (others=>'0');
            else
                wrPtr <= wrPtr + 1;
            end if;
        end if;
    end if;
end process;

process(clk)
begin
    if rising_edge(clk) then
        if(resetn = '0') then
            rdPtr <= (others=>'0');
        elsif(in_tready = '1') then
            if(rdPtr = width-1) then
                rdPtr <= (others=>'0');
            else
                rdPtr <= rdPtr + 1;
            end if;
        end if;
    end if;
end process;

out_data <= (lB(to_integer(rdPtr))(7 downto 0)&lB(to_integer(rdPtr+1))(7 downto 0)&lB(to_integer(rdPtr+2))(7 downto 0));

end Behavioral;
