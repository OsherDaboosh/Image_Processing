library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.math_real.all;

entity sobel_control is
  generic(width      : integer := 640);
     Port(clk        : in  std_logic;
          resetn     : in  std_logic;
          in_data    : in  std_logic_vector(7 downto 0);
          in_tvalid  : in  std_logic;
          out_tvalid : out std_logic;
          out_data   : out std_logic_vector(71 downto 0));
end sobel_control;

architecture Behavioral of sobel_control is

component line_buffer is
  generic(width     : integer := 640);
     Port(clk       : in  std_logic;
          resetn    : in  std_logic;
          in_data   : in  std_logic_vector(7 downto 0);
          in_tvalid : in  std_logic;
          in_tready : in  std_logic;
          out_data  : out std_logic_vector(23 downto 0));
end component;

type state_type is (IDLE, READ_BUFFER);
signal state               : state_type := IDLE;

signal pixelCounter        : integer range 0 to width := 0;
signal rdCounter           : integer range 0 to width := 0;

signal totalPixelCounter   : integer range 0 to width*3 := 0;

signal currentWrLineBuffer : integer range 0 to 3 := 0;
signal currentRdLineBuffer : integer range 0 to 3 := 0;

signal lineBuffDataValid   : unsigned(3 downto 0) := (others=>'0');
signal lineBuffReadData    : unsigned(3 downto 0) := (others=>'0');

signal rdLineBuffer        : std_logic := '0';

signal lb0data             : std_logic_vector(23 downto 0) := (others=>'0');
signal lb1data             : std_logic_vector(23 downto 0) := (others=>'0');
signal lb2data             : std_logic_vector(23 downto 0) := (others=>'0');
signal lb3data             : std_logic_vector(23 downto 0) := (others=>'0');

begin

lB_0: line_buffer generic map(width     => width)
                     port map(clk       => clk,
                              resetn    => resetn,
                              in_data   => in_data,
                              in_tvalid => lineBuffDataValid(0),
                              in_tready => lineBuffReadData(0),
                              out_data  => lb0data);

lB_1: line_buffer generic map(width     => width)
                     port map(clk       => clk,
                              resetn    => resetn,
                              in_data   => in_data,
                              in_tvalid => lineBuffDataValid(1),
                              in_tready => lineBuffReadData(1),
                              out_data  => lb1data);

lB_2: line_buffer generic map(width     => width)
                     port map(clk       => clk,
                              resetn    => resetn,
                              in_data   => in_data,
                              in_tvalid => lineBuffDataValid(2),
                              in_tready => lineBuffReadData(2),
                              out_data  => lb2data);

lB_3: line_buffer generic map(width     => width)
                     port map(clk       => clk,
                              resetn    => resetn,
                              in_data   => in_data,
                              in_tvalid => lineBuffDataValid(3),
                              in_tready => lineBuffReadData(3),
                              out_data  => lb3data);

out_tvalid <= rdLineBuffer;

process(clk)
begin
    if rising_edge(clk) then
        if(resetn = '0') then
            totalPixelCounter <= 0;
        else
            if(in_tvalid = '1' and rdLineBuffer = '0' and totalPixelCounter <= width*3) then
                totalPixelCounter <= totalPixelCounter + 1;
            elsif(in_tvalid = '0' and rdLineBuffer = '1' and totalPixelCounter > 0) then
                totalPixelCounter <= totalPixelCounter - 1;
            end if;
        end if;
    end if;
end process;

process(clk)
begin
    if rising_edge(clk) then
        if(resetn = '0') then
            state        <= IDLE;
            rdLineBuffer <= '0';
        else
            case (state) is
                when IDLE =>
                    if(totalPixelCounter >= width*3) then
                        rdLineBuffer <= '1';
                        state        <= READ_BUFFER;
                    end if;
                when READ_BUFFER =>
                    if(rdCounter = width-1) then
                        state        <= IDLE;
                        rdLineBuffer <= '0';
                    end if;
            end case;
        end if;
    end if;
end process;

process(clk)
begin
    if rising_edge(clk) then
        if(resetn = '0') then
            rdCounter <= 0;
        elsif(rdLineBuffer = '1') then
            if(rdCounter = width-1) then
                rdCounter <= 0;
            else
                rdCounter <= rdCounter + 1;
            end if;
        end if;
    end if;
end process;

process(clk)
begin
    if rising_edge(clk) then
        if(resetn = '0') then
            pixelCounter <= 0;
        elsif(in_tvalid = '1') then
            if(pixelCounter = width-1) then
                pixelCounter <= 0;
            else
                pixelCounter <= pixelCounter + 1;
            end if;
        end if;
    end if;
end process;

process(clk)
begin
    if rising_edge(clk) then
        if(resetn = '0') then
            currentWrLineBuffer <= 0;
        elsif(pixelCounter = width-1 and in_tvalid = '1') then
            if(currentWrLineBuffer = 3) then
                currentWrLineBuffer <= 0;
            else
                currentWrLineBuffer <= currentWrLineBuffer + 1;
            end if;
        end if;
    end if;
end process;

process(currentWrLineBuffer, in_tvalid)
variable lineBuffDataValid_v : unsigned(3 downto 0) := (others=>'0');
begin
    lineBuffDataValid_v := (others=>'0');
    lineBuffDataValid_v(currentWrLineBuffer) := in_tvalid;
    lineBuffDataValid <= lineBuffDataValid_v;
end process;

process(clk)
begin
    if rising_edge(clk) then
        if(resetn = '0') then
            currentRdLineBuffer <= 0;
        elsif(rdCounter = width-1 and rdLineBuffer = '1') then
            if(currentRdLineBuffer = 3) then
                currentRdLineBuffer <= 0;
            else
                currentRdLineBuffer <= currentRdLineBuffer + 1;
            end if;
        end if;
    end if;
end process;

process(currentRdLineBuffer, lb0data, lb1data, lb2data, lb3data)
begin
    case (currentRdLineBuffer) is
        when 0      => out_data <= (lb2data&lb1data&lb0data);
        when 1      => out_data <= (lb3data&lb2data&lb1data);
        when 2      => out_data <= (lb0data&lb3data&lb2data);
        when 3      => out_data <= (lb1data&lb0data&lb3data);
        when others => out_data <= (others=>'0');
    end case;
end process;

process(currentRdLineBuffer, rdLineBuffer)
begin
    case (currentRdLineBuffer) is
        when 0      => lineBuffReadData(0) <= rdLineBuffer;
                       lineBuffReadData(1) <= rdLineBuffer;
                       lineBuffReadData(2) <= rdLineBuffer;
                       lineBuffReadData(3) <= '0';

        when 1      => lineBuffReadData(0) <= '0';
                       lineBuffReadData(1) <= rdLineBuffer;
                       lineBuffReadData(2) <= rdLineBuffer;
                       lineBuffReadData(3) <= rdLineBuffer;

        when 2      => lineBuffReadData(0) <= rdLineBuffer;
                       lineBuffReadData(1) <= '0';
                       lineBuffReadData(2) <= rdLineBuffer;
                       lineBuffReadData(3) <= rdLineBuffer;

        when 3      => lineBuffReadData(0) <= rdLineBuffer;
                       lineBuffReadData(1) <= rdLineBuffer;
                       lineBuffReadData(2) <= '0';
                       lineBuffReadData(3) <= rdLineBuffer;

        when others => lineBuffReadData    <= (others=>'0');
    end case;
end process;
end Behavioral;
