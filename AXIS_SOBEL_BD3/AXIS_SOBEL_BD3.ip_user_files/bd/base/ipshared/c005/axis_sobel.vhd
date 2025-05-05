library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.math_real.all;

entity axis_sobel is
  generic(width         : integer := 640;
          depth         : natural := 16);
     Port(s_axi_aclk    : in  std_logic;
          s_axi_aresetn : in  std_logic;
          s_axis_tdata  : in  std_logic_vector(31 downto 0);
          s_axis_tvalid : in  std_logic;
          s_axis_tlast  : in  std_logic;
          s_axis_tready : out std_logic;
          m_axis_tvalid : out std_logic;
          m_axis_tready : in  std_logic;
          m_axis_tlast  : out std_logic;
          m_axis_tdata  : out std_logic_vector(31 downto 0);
          threshold     : in  std_logic_vector(11 downto 0));
end axis_sobel;

architecture Behavioral of axis_sobel is

component fifo is
  generic(depth      : natural := 16);
     Port(clk        : in  std_logic;
          resetn     : in  std_logic;
          in_data    : in  std_logic_vector(31 downto 0);
          in_tvalid  : in  std_logic;
          in_tready  : out std_logic;
          in_tlast   : in  std_logic;
          out_tvalid : out std_logic;
          out_tready : in  std_logic;
          out_tlast  : out std_logic;
          out_data   : out std_logic_vector(31 downto 0));
end component;

component rgb2gray is
    Port(clk        : in  std_logic;
         in_data    : in  std_logic_vector(31 downto 0);
         in_tvalid  : in  std_logic;
         out_tvalid : out std_logic;
         out_data   : out std_logic_vector(7 downto 0));
end component;

component sobel_control is
  generic(width      : integer := 640);
     Port(clk        : in  std_logic;
          resetn     : in  std_logic;
          in_data    : in  std_logic_vector(7 downto 0);
          in_tvalid  : in  std_logic;
          out_tvalid : out std_logic;
          out_data   : out std_logic_vector(71 downto 0));
end component;

component sobel is
    Port(clk        : in  std_logic;
         in_data    : in  std_logic_vector(71 downto 0); 
         in_tvalid  : in  std_logic;
         out_tvalid : out std_logic;
         out_data   : out std_logic_vector(31 downto 0);
         threshold  : in  std_logic_vector(11 downto 0));
end component;

signal fifo_tvalid  : std_logic:= '0';
signal fifo_data    : std_logic_vector(31 downto 0) := (others=>'0');

signal gray_tvalid  : std_logic:= '0';
signal gray_data    : std_logic_vector(7 downto 0) := (others=>'0');

signal sobel_tvalid : std_logic := '0';
signal sobel_data   : std_logic_vector(71 downto 0) := (others=>'0');

begin

F: fifo generic map(depth      => depth)
           port map(clk        => s_axi_aclk,
                    resetn     => s_axi_aresetn,
                    in_data    => s_axis_tdata,
                    in_tvalid  => s_axis_tvalid,
                    in_tready  => s_axis_tready,
                    in_tlast   => s_axis_tlast,
                    out_tvalid => fifo_tvalid,
                    out_tready => m_axis_tready,
                    out_tlast  => m_axis_tlast,
                    out_data   => fifo_data);

G: rgb2gray port map(clk        => s_axi_aclk,
                     in_tvalid  => fifo_tvalid,
                     in_data    => fifo_data,
                     out_tvalid => gray_tvalid,
                     out_data   => gray_data);

S_C: sobel_control generic map(width      => width)
                      port map(clk        => s_axi_aclk,
                               resetn     => s_axi_aresetn,
                               in_data    => gray_data,
                               in_tvalid  => gray_tvalid,
                               out_tvalid => sobel_tvalid,
                               out_data   => sobel_data);

S: sobel port map(clk        => s_axi_aclk,
                  in_data    => sobel_data,
                  in_tvalid  => sobel_tvalid,
                  out_tvalid => m_axis_tvalid,
                  out_data   => m_axis_tdata,
                  threshold  => threshold);

end Behavioral;
