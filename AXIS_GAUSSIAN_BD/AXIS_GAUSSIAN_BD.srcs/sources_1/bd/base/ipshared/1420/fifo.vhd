library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.math_real.all;

entity fifo is
  generic(depth         : natural := 16);
     Port(s_axi_aclk    : in std_logic;
          s_axi_aresetn : in std_logic;
          s_axis_tdata  : in std_logic_vector(31 downto 0);
          s_axis_tvalid : in std_logic;
          s_axis_tready : out std_logic;
          s_axis_tlast  : in std_logic;
          m_axis_tvalid : out std_logic;
          m_axis_tready : in std_logic;
          m_axis_tlast  : out std_logic;
          m_axis_tdata  : out std_logic_vector(31 downto 0));
end fifo;

architecture Behavioral of fifo is

-- RAM type and control signals
type ram_type is array (0 to depth-1) of std_logic_vector(s_axis_tdata'range);
signal ram   : ram_type;
type tlast_type is array (0 to depth-1) of std_logic;
signal tlast : tlast_type;

-- Head/tail/counters  -- (Pointers and counter)
subtype index_type is natural range ram_type'range;
signal head                : index_type;
signal tail                : index_type;
signal count               : index_type;
signal count_p1            : index_type;

signal read_while_write_p1 : std_logic;

signal in_ready            : std_logic;
signal out_valid           : std_logic;

-- Head/Tail increment logic
function next_index(index        : index_type; 
                    ready, valid : std_logic) return index_type is
begin
    if((ready = '1') and (valid = '1')) then
        if(index = index_type'high) then
            return index_type'low;
        else
            return index + 1;
        end if;
    end if;
    return index;
end function;

-- Index update procedure
procedure update_index(signal clk, rst     : in std_logic; 
                       signal index        : inout index_type;
                       signal ready, valid : in std_logic) is
begin
    if rising_edge(clk) then
        if(rst = '0') then
            index <= index_type'low;
        else
            index <= next_index(index, ready, valid);
        end if;
    end if;
end procedure;

begin

s_axis_tready <= in_ready;
m_axis_tvalid <= out_valid;

HEAD_PROC : update_index(s_axi_aclk, s_axi_aresetn, head, in_ready, s_axis_tvalid);   -- Update head index on write
TAIL_PROC : update_index(s_axi_aclk, s_axi_aresetn, tail, m_axis_tready, out_valid);  -- Update tail index on read

process(s_axi_aclk)
begin
    if rising_edge(s_axi_aclk) then
		ram(head)   <= s_axis_tdata;
        tlast(head) <= s_axis_tlast;
    end if;
end process;

process(s_axi_aclk)
begin
    if rising_edge(s_axi_aclk) then
        m_axis_tdata <= ram(next_index(tail, m_axis_tready, out_valid));
        m_axis_tlast <= tlast(next_index(tail, m_axis_tready, out_valid));
    end if;
end process;

process(head, tail)
begin
    if(head < tail) then
        count <= head - tail + depth;
    else
        count <= head - tail;
    end if;
end process;

-- Delayed count
process(s_axi_aclk)
begin
    if rising_edge(s_axi_aclk) then
        if(s_axi_aresetn = '0') then
            count_p1 <= 0;
        else
            count_p1 <= count;
        end if;
    end if;
end process;

-- Ready signal generation
process(count)
begin
    if(count < depth - 1) then
        in_ready <= '1';
    else
        in_ready <= '0';
    end if;
end process;

-- Read/write overlap detection
process(s_axi_aclk)
begin
    if rising_edge(s_axi_aclk) then
        if(s_axi_aresetn = '0') then
            read_while_write_p1 <= '0';
        else
            read_while_write_p1 <= '0';
            if((in_ready = '1') and (s_axis_tvalid = '1') and (m_axis_tready = '1') and (out_valid = '1')) then
                read_while_write_p1 <= '1';
            end if;
        end if;
    end if;
end process;

-- Valid signal logic
process(count, count_p1, read_while_write_p1)
begin
out_valid <= '1';
    if((count = 0) or (count_p1 = 0)) then  -- If the RAM is empty or was empty in the prev cycle 
        out_valid <= '0';
    end if;
    if((count = 1) and (read_while_write_p1 = '1')) then  -- If simultaneous read and write when almost empty
        out_valid <= '0';
    end if;
end process;
end Behavioral;
