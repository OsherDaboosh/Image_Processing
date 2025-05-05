-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Mon May  5 13:58:23 2025
-- Host        : Osher running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/osher/Vivado_Projects/AXIS_GAUSSIAN_BD/AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ip/base_axis_gaussian_0_0/base_axis_gaussian_0_0_stub.vhdl
-- Design      : base_axis_gaussian_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity base_axis_gaussian_0_0 is
  Port ( 
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end base_axis_gaussian_0_0;

architecture stub of base_axis_gaussian_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_aclk,s_axi_aresetn,s_axis_tdata[31:0],s_axis_tvalid,s_axis_tlast,s_axis_tready,m_axis_tvalid,m_axis_tready,m_axis_tlast,m_axis_tdata[7:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "axis_gaussian,Vivado 2020.1";
begin
end;
