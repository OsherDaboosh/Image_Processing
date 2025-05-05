library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.math_real.all;

entity sobel is
    Port(clk        : in  std_logic;
         in_data    : in  std_logic_vector(71 downto 0); 
         in_tvalid  : in  std_logic;
         out_tvalid : out std_logic;
         out_data   : out std_logic_vector(31 downto 0);
         threshold  : in  std_logic_vector(11 downto 0));
end sobel;

architecture Behavioral of sobel is

constant WHITE_PIXEL : std_logic_vector(31 downto 0) := x"FFFFFFFF";
constant BLACK_PIXEL : std_logic_vector(31 downto 0) := x"00000000";

type kernel_type is array (0 to 8) of signed(7 downto 0);
type mul_type is array (0 to 8) of signed(16 downto 0); 

constant Gx : kernel_type := ("11111111", "00000000", "00000001",
                              "11111110", "00000000", "00000010",
                              "11111111", "00000000", "00000001");

constant Gy : kernel_type := ("11111111", "11111110", "11111111",
                              "00000000", "00000000", "00000000",
                              "00000001", "00000010", "00000001");

signal mulData1     : mul_type := (others=>(others=>'0'));
signal mulData2     : mul_type := (others=>(others=>'0'));

signal gx_sum       : signed(16 downto 0) := (others=>'0');
signal gy_sum       : signed(16 downto 0) := (others=>'0');

signal sumData      : unsigned(24 downto 0) := (others=>'0');
signal thrSquare    : unsigned(24 downto 0) := (others=>'0');  -- log2(4095*4095)

signal mulDataValid : std_logic := '0';
signal squareValid  : std_logic := '0';
signal sumDataValid : std_logic := '0';
signal sumValid     : std_logic := '0';

begin

thrSquare <= resize(unsigned(threshold)*unsigned(threshold), thrSquare'length);

process(clk)
variable pixelSigned : signed(8 downto 0);
begin
    if rising_edge(clk) then
        for i in 0 to 8 loop
            pixelSigned := signed('0' & in_data(i*8+7 downto i*8));
            mulData1(i) <= ((Gx(i)) * pixelSigned);
            mulData2(i) <= ((Gy(i)) * pixelSigned);
        end loop;
        mulDataValid <= in_tvalid;
    end if;
end process;

process(clk, mulData1, mulData2, mulDataValid)
variable gx_sum_v : signed(16 downto 0) := (others=>'0');
variable gy_sum_v : signed(16 downto 0) := (others=>'0');
begin
    if rising_edge(clk) then
        gx_sum_v := (others=>'0');
        gy_sum_v := (others=>'0');
        for i in 0 to 8 loop
            gx_sum_v := gx_sum_v + mulData1(i);
            gy_sum_v := gy_sum_v + mulData2(i);
        end loop;
        gx_sum   <= gx_sum_v;
        gy_sum   <= gy_sum_v;
        sumValid <= mulDataValid;
    end if;
end process;

process(clk)
variable gx, gy : unsigned(16 downto 0);
begin
    if rising_edge(clk) then
        gx           := unsigned(abs(gx_sum));
        gy           := unsigned(abs(gy_sum));
        sumData      <= resize(gx*gx + gy*gy, 25);
        sumDataValid <= sumValid;
    end if;
end process;

process(clk)
begin
    if rising_edge(clk) then
        if(sumData > thrSquare) then
            out_data <= WHITE_PIXEL;
        else
            out_data <= BLACK_PIXEL;
        end if;
    end if;
end process;

out_tvalid <= sumDataValid;

end Behavioral;
