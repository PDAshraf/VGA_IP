-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "05/02/2021 01:46:56"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	VGA_IP IS
    PORT (
	clk : IN std_logic;
	reset_n : IN std_logic;
	addr : IN std_logic_vector(16 DOWNTO 0);
	cs_n : IN std_logic;
	read_n : IN std_logic;
	write_n : IN std_logic;
	din : IN std_logic_vector(31 DOWNTO 0);
	dout : OUT std_logic_vector(31 DOWNTO 0);
	clock_25 : IN std_logic;
	vga_r : OUT std_logic_vector(3 DOWNTO 0);
	vga_g : OUT std_logic_vector(3 DOWNTO 0);
	vga_b : OUT std_logic_vector(3 DOWNTO 0);
	vga_hs : OUT std_logic;
	vga_vs : OUT std_logic
	);
END VGA_IP;

-- Design Ports Information
-- read_n	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[3]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[4]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[5]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[6]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[7]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[8]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[9]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[10]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[11]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[12]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[13]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[14]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[15]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[16]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[17]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[18]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[19]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[20]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[21]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[22]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[23]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[24]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[25]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[26]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[27]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[28]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[29]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[30]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[31]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[0]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[2]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[3]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[4]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[6]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[7]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[8]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[9]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[10]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[11]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[12]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[13]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[14]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[15]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[16]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[17]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[18]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[19]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[20]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[21]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[22]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[23]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[24]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[25]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[26]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[27]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[28]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[29]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[30]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[31]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_r[0]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_r[1]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_r[2]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_r[3]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_g[0]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_g[1]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_g[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_g[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_b[0]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_b[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_b[2]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_b[3]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_hs	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_vs	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_25	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[14]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[15]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[13]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[16]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[0]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[1]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[2]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[3]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[4]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[5]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[6]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[7]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[8]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[9]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[10]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[11]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[12]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cs_n	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_n	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[0]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[1]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[2]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF VGA_IP IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_addr : std_logic_vector(16 DOWNTO 0);
SIGNAL ww_cs_n : std_logic;
SIGNAL ww_read_n : std_logic;
SIGNAL ww_write_n : std_logic;
SIGNAL ww_din : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_dout : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_clock_25 : std_logic;
SIGNAL ww_vga_r : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_vga_g : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_vga_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_vga_hs : std_logic;
SIGNAL ww_vga_vs : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \reset_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_25~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \read_n~input_o\ : std_logic;
SIGNAL \din[3]~input_o\ : std_logic;
SIGNAL \din[4]~input_o\ : std_logic;
SIGNAL \din[5]~input_o\ : std_logic;
SIGNAL \din[6]~input_o\ : std_logic;
SIGNAL \din[7]~input_o\ : std_logic;
SIGNAL \din[8]~input_o\ : std_logic;
SIGNAL \din[9]~input_o\ : std_logic;
SIGNAL \din[10]~input_o\ : std_logic;
SIGNAL \din[11]~input_o\ : std_logic;
SIGNAL \din[12]~input_o\ : std_logic;
SIGNAL \din[13]~input_o\ : std_logic;
SIGNAL \din[14]~input_o\ : std_logic;
SIGNAL \din[15]~input_o\ : std_logic;
SIGNAL \din[16]~input_o\ : std_logic;
SIGNAL \din[17]~input_o\ : std_logic;
SIGNAL \din[18]~input_o\ : std_logic;
SIGNAL \din[19]~input_o\ : std_logic;
SIGNAL \din[20]~input_o\ : std_logic;
SIGNAL \din[21]~input_o\ : std_logic;
SIGNAL \din[22]~input_o\ : std_logic;
SIGNAL \din[23]~input_o\ : std_logic;
SIGNAL \din[24]~input_o\ : std_logic;
SIGNAL \din[25]~input_o\ : std_logic;
SIGNAL \din[26]~input_o\ : std_logic;
SIGNAL \din[27]~input_o\ : std_logic;
SIGNAL \din[28]~input_o\ : std_logic;
SIGNAL \din[29]~input_o\ : std_logic;
SIGNAL \din[30]~input_o\ : std_logic;
SIGNAL \din[31]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \dout[0]~output_o\ : std_logic;
SIGNAL \dout[1]~output_o\ : std_logic;
SIGNAL \dout[2]~output_o\ : std_logic;
SIGNAL \dout[3]~output_o\ : std_logic;
SIGNAL \dout[4]~output_o\ : std_logic;
SIGNAL \dout[5]~output_o\ : std_logic;
SIGNAL \dout[6]~output_o\ : std_logic;
SIGNAL \dout[7]~output_o\ : std_logic;
SIGNAL \dout[8]~output_o\ : std_logic;
SIGNAL \dout[9]~output_o\ : std_logic;
SIGNAL \dout[10]~output_o\ : std_logic;
SIGNAL \dout[11]~output_o\ : std_logic;
SIGNAL \dout[12]~output_o\ : std_logic;
SIGNAL \dout[13]~output_o\ : std_logic;
SIGNAL \dout[14]~output_o\ : std_logic;
SIGNAL \dout[15]~output_o\ : std_logic;
SIGNAL \dout[16]~output_o\ : std_logic;
SIGNAL \dout[17]~output_o\ : std_logic;
SIGNAL \dout[18]~output_o\ : std_logic;
SIGNAL \dout[19]~output_o\ : std_logic;
SIGNAL \dout[20]~output_o\ : std_logic;
SIGNAL \dout[21]~output_o\ : std_logic;
SIGNAL \dout[22]~output_o\ : std_logic;
SIGNAL \dout[23]~output_o\ : std_logic;
SIGNAL \dout[24]~output_o\ : std_logic;
SIGNAL \dout[25]~output_o\ : std_logic;
SIGNAL \dout[26]~output_o\ : std_logic;
SIGNAL \dout[27]~output_o\ : std_logic;
SIGNAL \dout[28]~output_o\ : std_logic;
SIGNAL \dout[29]~output_o\ : std_logic;
SIGNAL \dout[30]~output_o\ : std_logic;
SIGNAL \dout[31]~output_o\ : std_logic;
SIGNAL \vga_r[0]~output_o\ : std_logic;
SIGNAL \vga_r[1]~output_o\ : std_logic;
SIGNAL \vga_r[2]~output_o\ : std_logic;
SIGNAL \vga_r[3]~output_o\ : std_logic;
SIGNAL \vga_g[0]~output_o\ : std_logic;
SIGNAL \vga_g[1]~output_o\ : std_logic;
SIGNAL \vga_g[2]~output_o\ : std_logic;
SIGNAL \vga_g[3]~output_o\ : std_logic;
SIGNAL \vga_b[0]~output_o\ : std_logic;
SIGNAL \vga_b[1]~output_o\ : std_logic;
SIGNAL \vga_b[2]~output_o\ : std_logic;
SIGNAL \vga_b[3]~output_o\ : std_logic;
SIGNAL \vga_hs~output_o\ : std_logic;
SIGNAL \vga_vs~output_o\ : std_logic;
SIGNAL \addr[14]~input_o\ : std_logic;
SIGNAL \addr[15]~input_o\ : std_logic;
SIGNAL \addr[13]~input_o\ : std_logic;
SIGNAL \addr[16]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \write_n~input_o\ : std_logic;
SIGNAL \cs_n~input_o\ : std_logic;
SIGNAL \bus_register_write_process~0_combout\ : std_logic;
SIGNAL \s_we~feeder_combout\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \s_we~q\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode549w[3]~0_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode549w[3]~1_combout\ : std_logic;
SIGNAL \clock_25~input_o\ : std_logic;
SIGNAL \clock_25~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst_controller|x_counter[0]~10_combout\ : std_logic;
SIGNAL \reset_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst_controller|x_counter[7]~25\ : std_logic;
SIGNAL \inst_controller|x_counter[8]~26_combout\ : std_logic;
SIGNAL \inst_controller|x_counter[8]~27\ : std_logic;
SIGNAL \inst_controller|x_counter[9]~28_combout\ : std_logic;
SIGNAL \inst_controller|LessThan0~0_combout\ : std_logic;
SIGNAL \inst_controller|LessThan0~1_combout\ : std_logic;
SIGNAL \inst_controller|LessThan0~2_combout\ : std_logic;
SIGNAL \inst_controller|x_counter[0]~11\ : std_logic;
SIGNAL \inst_controller|x_counter[1]~12_combout\ : std_logic;
SIGNAL \inst_controller|x_counter[1]~13\ : std_logic;
SIGNAL \inst_controller|x_counter[2]~14_combout\ : std_logic;
SIGNAL \inst_controller|x_counter[2]~15\ : std_logic;
SIGNAL \inst_controller|x_counter[3]~16_combout\ : std_logic;
SIGNAL \inst_controller|x_counter[3]~17\ : std_logic;
SIGNAL \inst_controller|x_counter[4]~18_combout\ : std_logic;
SIGNAL \inst_controller|x_counter[4]~19\ : std_logic;
SIGNAL \inst_controller|x_counter[5]~20_combout\ : std_logic;
SIGNAL \inst_controller|x_counter[5]~21\ : std_logic;
SIGNAL \inst_controller|x_counter[6]~22_combout\ : std_logic;
SIGNAL \inst_controller|x_counter[6]~23\ : std_logic;
SIGNAL \inst_controller|x_counter[7]~24_combout\ : std_logic;
SIGNAL \inst_controller|Add1~0_combout\ : std_logic;
SIGNAL \inst_controller|Equal0~0_combout\ : std_logic;
SIGNAL \inst_controller|Equal0~1_combout\ : std_logic;
SIGNAL \inst_controller|Equal0~2_combout\ : std_logic;
SIGNAL \inst_controller|Add1~1\ : std_logic;
SIGNAL \inst_controller|Add1~2_combout\ : std_logic;
SIGNAL \inst_controller|y_counter~1_combout\ : std_logic;
SIGNAL \inst_controller|Add1~3\ : std_logic;
SIGNAL \inst_controller|Add1~4_combout\ : std_logic;
SIGNAL \inst_controller|y_counter~3_combout\ : std_logic;
SIGNAL \inst_controller|Add1~5\ : std_logic;
SIGNAL \inst_controller|Add1~6_combout\ : std_logic;
SIGNAL \inst_controller|y_counter~2_combout\ : std_logic;
SIGNAL \inst_controller|Add1~7\ : std_logic;
SIGNAL \inst_controller|Add1~8_combout\ : std_logic;
SIGNAL \inst_controller|Add1~9\ : std_logic;
SIGNAL \inst_controller|Add1~10_combout\ : std_logic;
SIGNAL \inst_controller|Add1~11\ : std_logic;
SIGNAL \inst_controller|Add1~12_combout\ : std_logic;
SIGNAL \inst_controller|Add1~13\ : std_logic;
SIGNAL \inst_controller|Add1~14_combout\ : std_logic;
SIGNAL \inst_controller|Add1~15\ : std_logic;
SIGNAL \inst_controller|Add1~16_combout\ : std_logic;
SIGNAL \inst_controller|Equal1~1_combout\ : std_logic;
SIGNAL \inst_controller|Equal1~0_combout\ : std_logic;
SIGNAL \inst_controller|Equal1~2_combout\ : std_logic;
SIGNAL \inst_controller|Add1~17\ : std_logic;
SIGNAL \inst_controller|Add1~18_combout\ : std_logic;
SIGNAL \inst_controller|y_counter~0_combout\ : std_logic;
SIGNAL \inst_controller|ADDRESS~0_combout\ : std_logic;
SIGNAL \inst_controller|LessThan11~1_combout\ : std_logic;
SIGNAL \inst_controller|Add2~1\ : std_logic;
SIGNAL \inst_controller|Add2~3\ : std_logic;
SIGNAL \inst_controller|Add2~5\ : std_logic;
SIGNAL \inst_controller|Add2~7\ : std_logic;
SIGNAL \inst_controller|Add2~9\ : std_logic;
SIGNAL \inst_controller|Add2~11\ : std_logic;
SIGNAL \inst_controller|Add2~12_combout\ : std_logic;
SIGNAL \inst_controller|Add2~10_combout\ : std_logic;
SIGNAL \inst_controller|Add2~8_combout\ : std_logic;
SIGNAL \inst_controller|Add2~6_combout\ : std_logic;
SIGNAL \inst_controller|Add2~4_combout\ : std_logic;
SIGNAL \inst_controller|Add2~2_combout\ : std_logic;
SIGNAL \inst_controller|Add2~0_combout\ : std_logic;
SIGNAL \inst_controller|Add3~19\ : std_logic;
SIGNAL \inst_controller|Add3~21\ : std_logic;
SIGNAL \inst_controller|Add3~23\ : std_logic;
SIGNAL \inst_controller|Add3~25\ : std_logic;
SIGNAL \inst_controller|Add3~27\ : std_logic;
SIGNAL \inst_controller|Add3~29\ : std_logic;
SIGNAL \inst_controller|Add3~31\ : std_logic;
SIGNAL \inst_controller|Add3~33\ : std_logic;
SIGNAL \inst_controller|Add3~34_combout\ : std_logic;
SIGNAL \inst_controller|Add3~50_combout\ : std_logic;
SIGNAL \inst_controller|Add2~13\ : std_logic;
SIGNAL \inst_controller|Add2~14_combout\ : std_logic;
SIGNAL \inst_controller|Add3~35\ : std_logic;
SIGNAL \inst_controller|Add3~36_combout\ : std_logic;
SIGNAL \inst_controller|Add3~42_combout\ : std_logic;
SIGNAL \inst_controller|Add2~15\ : std_logic;
SIGNAL \inst_controller|Add2~16_combout\ : std_logic;
SIGNAL \inst_controller|Add3~37\ : std_logic;
SIGNAL \inst_controller|Add3~38_combout\ : std_logic;
SIGNAL \inst_controller|Add3~32_combout\ : std_logic;
SIGNAL \inst_controller|Add3~43_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode731w[3]~0_combout\ : std_logic;
SIGNAL \din[0]~input_o\ : std_logic;
SIGNAL \addr[0]~input_o\ : std_logic;
SIGNAL \addr[1]~input_o\ : std_logic;
SIGNAL \addr[2]~input_o\ : std_logic;
SIGNAL \addr[3]~input_o\ : std_logic;
SIGNAL \addr[4]~input_o\ : std_logic;
SIGNAL \addr[5]~input_o\ : std_logic;
SIGNAL \addr[6]~input_o\ : std_logic;
SIGNAL \addr[7]~input_o\ : std_logic;
SIGNAL \addr[8]~input_o\ : std_logic;
SIGNAL \addr[9]~input_o\ : std_logic;
SIGNAL \addr[10]~input_o\ : std_logic;
SIGNAL \addr[11]~input_o\ : std_logic;
SIGNAL \addr[12]~input_o\ : std_logic;
SIGNAL \inst_controller|ADDRESS[0]~1_combout\ : std_logic;
SIGNAL \inst_controller|ADDRESS[1]~2_combout\ : std_logic;
SIGNAL \inst_controller|ADDRESS[2]~3_combout\ : std_logic;
SIGNAL \inst_controller|ADDRESS[3]~4_combout\ : std_logic;
SIGNAL \inst_controller|ADDRESS[4]~5_combout\ : std_logic;
SIGNAL \inst_controller|ADDRESS[5]~6_combout\ : std_logic;
SIGNAL \inst_controller|Add3~18_combout\ : std_logic;
SIGNAL \inst_controller|Add3~40_combout\ : std_logic;
SIGNAL \inst_controller|Add3~20_combout\ : std_logic;
SIGNAL \inst_controller|Add3~41_combout\ : std_logic;
SIGNAL \inst_controller|Add3~22_combout\ : std_logic;
SIGNAL \inst_controller|Add3~45_combout\ : std_logic;
SIGNAL \inst_controller|Add3~24_combout\ : std_logic;
SIGNAL \inst_controller|Add3~46_combout\ : std_logic;
SIGNAL \inst_controller|Add3~26_combout\ : std_logic;
SIGNAL \inst_controller|Add3~47_combout\ : std_logic;
SIGNAL \inst_controller|Add3~28_combout\ : std_logic;
SIGNAL \inst_controller|Add3~48_combout\ : std_logic;
SIGNAL \inst_controller|Add3~30_combout\ : std_logic;
SIGNAL \inst_controller|Add3~49_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a21~portbdataout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode529w[3]~0_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode711w[3]~0_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \inst_controller|Add3~44_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~2_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~4_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode489w[3]~4_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode568w[3]~0_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode741w[3]~2_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a24~portbdataout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode579w[3]~0_combout\ : std_logic;
SIGNAL \din[1]~input_o\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a27~portbdataout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~1_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~0_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode539w[3]~0_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode539w[3]~1_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode721w[3]~0_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a18~portbdataout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode519w[3]~0_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~0_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~2_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode489w[3]~5_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode509w[3]~0_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode691w[3]~0_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~1_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~3_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~3_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode472w[3]~4_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode654w[3]~0_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode654w[3]~1_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode499w[3]~0_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~5_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~6_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~5_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~3_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a22~portbdataout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a16~portbdataout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~4_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a19~portbdataout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~0_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a25~portbdataout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~1_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~2_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~6_combout\ : std_logic;
SIGNAL \din[2]~input_o\ : std_logic;
SIGNAL \i_data_reg[2]~feeder_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~9_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~7_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a17~portbdataout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a23~portbdataout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~8_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a20~portbdataout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~4_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a29~portbdataout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a26~portbdataout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~5_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~6_combout\ : std_logic;
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~10_combout\ : std_logic;
SIGNAL \inst_controller|LessThan11~0_combout\ : std_logic;
SIGNAL \inst_controller|VGA_B[0]~0_combout\ : std_logic;
SIGNAL \inst_controller|VGA_B[0]~1_combout\ : std_logic;
SIGNAL \inst_controller|LessThan9~0_combout\ : std_logic;
SIGNAL \inst_controller|VGA_B[0]~2_combout\ : std_logic;
SIGNAL \inst_controller|VGA_HS~1_combout\ : std_logic;
SIGNAL \inst_controller|VGA_HS~2_combout\ : std_logic;
SIGNAL \inst_controller|VGA_HS~0_combout\ : std_logic;
SIGNAL \inst_controller|VGA_HS~3_combout\ : std_logic;
SIGNAL \inst_controller|VGA_VS~0_combout\ : std_logic;
SIGNAL \inst_controller|VGA_VS~1_combout\ : std_logic;
SIGNAL \inst_controller|x_counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\ : std_logic_vector(3 DOWNTO 0);
SIGNAL i_data_reg : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_controller|y_counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst_controller|VGA_R\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode701w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_controller|VGA_G\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_controller|VGA_B\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode752w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode741w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode671w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode681w\ : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset_n <= reset_n;
ww_addr <= addr;
ww_cs_n <= cs_n;
ww_read_n <= read_n;
ww_write_n <= write_n;
ww_din <= din;
dout <= ww_dout;
ww_clock_25 <= clock_25;
vga_r <= ww_vga_r;
vga_g <= ww_vga_g;
vga_b <= ww_vga_b;
vga_hs <= ww_vga_hs;
vga_vs <= ww_vga_vs;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= i_data_reg(0);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\addr[12]~input_o\ & \addr[11]~input_o\ & \addr[10]~input_o\ & \addr[9]~input_o\ & \addr[8]~input_o\ & \addr[7]~input_o\ & \addr[6]~input_o\ & \addr[5]~input_o\ & \addr[4]~input_o\ & 
\addr[3]~input_o\ & \addr[2]~input_o\ & \addr[1]~input_o\ & \addr[0]~input_o\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\ <= (\inst_controller|Add3~49_combout\ & \inst_controller|Add3~48_combout\ & \inst_controller|Add3~47_combout\ & \inst_controller|Add3~46_combout\ & \inst_controller|Add3~45_combout\ & 
\inst_controller|Add3~41_combout\ & \inst_controller|Add3~40_combout\ & \inst_controller|ADDRESS[5]~6_combout\ & \inst_controller|ADDRESS[4]~5_combout\ & \inst_controller|ADDRESS[3]~4_combout\ & \inst_controller|ADDRESS[2]~3_combout\ & 
\inst_controller|ADDRESS[1]~2_combout\ & \inst_controller|ADDRESS[0]~1_combout\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a18~portbdataout\ <= \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(0);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= i_data_reg(0);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\addr[12]~input_o\ & \addr[11]~input_o\ & \addr[10]~input_o\ & \addr[9]~input_o\ & \addr[8]~input_o\ & \addr[7]~input_o\ & \addr[6]~input_o\ & \addr[5]~input_o\ & \addr[4]~input_o\ & 
\addr[3]~input_o\ & \addr[2]~input_o\ & \addr[1]~input_o\ & \addr[0]~input_o\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\inst_controller|Add3~49_combout\ & \inst_controller|Add3~48_combout\ & \inst_controller|Add3~47_combout\ & \inst_controller|Add3~46_combout\ & \inst_controller|Add3~45_combout\ & 
\inst_controller|Add3~41_combout\ & \inst_controller|Add3~40_combout\ & \inst_controller|ADDRESS[5]~6_combout\ & \inst_controller|ADDRESS[4]~5_combout\ & \inst_controller|ADDRESS[3]~4_combout\ & \inst_controller|ADDRESS[2]~3_combout\ & 
\inst_controller|ADDRESS[1]~2_combout\ & \inst_controller|ADDRESS[0]~1_combout\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a12~portbdataout\ <= \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\ <= (i_data_reg(1) & i_data_reg(0));

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\addr[11]~input_o\ & \addr[10]~input_o\ & \addr[9]~input_o\ & \addr[8]~input_o\ & \addr[7]~input_o\ & \addr[6]~input_o\ & \addr[5]~input_o\ & \addr[4]~input_o\ & \addr[3]~input_o\ & 
\addr[2]~input_o\ & \addr[1]~input_o\ & \addr[0]~input_o\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\ <= (\inst_controller|Add3~48_combout\ & \inst_controller|Add3~47_combout\ & \inst_controller|Add3~46_combout\ & \inst_controller|Add3~45_combout\ & \inst_controller|Add3~41_combout\ & 
\inst_controller|Add3~40_combout\ & \inst_controller|ADDRESS[5]~6_combout\ & \inst_controller|ADDRESS[4]~5_combout\ & \inst_controller|ADDRESS[3]~4_combout\ & \inst_controller|ADDRESS[2]~3_combout\ & \inst_controller|ADDRESS[1]~2_combout\ & 
\inst_controller|ADDRESS[0]~1_combout\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a27~portbdataout\ <= \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\(0);
\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a28\ <= \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\(1);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= i_data_reg(0);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\addr[12]~input_o\ & \addr[11]~input_o\ & \addr[10]~input_o\ & \addr[9]~input_o\ & \addr[8]~input_o\ & \addr[7]~input_o\ & \addr[6]~input_o\ & \addr[5]~input_o\ & \addr[4]~input_o\ & 
\addr[3]~input_o\ & \addr[2]~input_o\ & \addr[1]~input_o\ & \addr[0]~input_o\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\ <= (\inst_controller|Add3~49_combout\ & \inst_controller|Add3~48_combout\ & \inst_controller|Add3~47_combout\ & \inst_controller|Add3~46_combout\ & \inst_controller|Add3~45_combout\ & 
\inst_controller|Add3~41_combout\ & \inst_controller|Add3~40_combout\ & \inst_controller|ADDRESS[5]~6_combout\ & \inst_controller|ADDRESS[4]~5_combout\ & \inst_controller|ADDRESS[3]~4_combout\ & \inst_controller|ADDRESS[2]~3_combout\ & 
\inst_controller|ADDRESS[1]~2_combout\ & \inst_controller|ADDRESS[0]~1_combout\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a24~portbdataout\ <= \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\(0);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= i_data_reg(0);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\addr[12]~input_o\ & \addr[11]~input_o\ & \addr[10]~input_o\ & \addr[9]~input_o\ & \addr[8]~input_o\ & \addr[7]~input_o\ & \addr[6]~input_o\ & \addr[5]~input_o\ & \addr[4]~input_o\ & 
\addr[3]~input_o\ & \addr[2]~input_o\ & \addr[1]~input_o\ & \addr[0]~input_o\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\inst_controller|Add3~49_combout\ & \inst_controller|Add3~48_combout\ & \inst_controller|Add3~47_combout\ & \inst_controller|Add3~46_combout\ & \inst_controller|Add3~45_combout\ & 
\inst_controller|Add3~41_combout\ & \inst_controller|Add3~40_combout\ & \inst_controller|ADDRESS[5]~6_combout\ & \inst_controller|ADDRESS[4]~5_combout\ & \inst_controller|ADDRESS[3]~4_combout\ & \inst_controller|ADDRESS[2]~3_combout\ & 
\inst_controller|ADDRESS[1]~2_combout\ & \inst_controller|ADDRESS[0]~1_combout\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a9~portbdataout\ <= \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= i_data_reg(0);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\addr[12]~input_o\ & \addr[11]~input_o\ & \addr[10]~input_o\ & \addr[9]~input_o\ & \addr[8]~input_o\ & \addr[7]~input_o\ & \addr[6]~input_o\ & \addr[5]~input_o\ & \addr[4]~input_o\ & 
\addr[3]~input_o\ & \addr[2]~input_o\ & \addr[1]~input_o\ & \addr[0]~input_o\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\inst_controller|Add3~49_combout\ & \inst_controller|Add3~48_combout\ & \inst_controller|Add3~47_combout\ & \inst_controller|Add3~46_combout\ & \inst_controller|Add3~45_combout\ & 
\inst_controller|Add3~41_combout\ & \inst_controller|Add3~40_combout\ & \inst_controller|ADDRESS[5]~6_combout\ & \inst_controller|ADDRESS[4]~5_combout\ & \inst_controller|ADDRESS[3]~4_combout\ & \inst_controller|ADDRESS[2]~3_combout\ & 
\inst_controller|ADDRESS[1]~2_combout\ & \inst_controller|ADDRESS[0]~1_combout\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a3~portbdataout\ <= \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= i_data_reg(0);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\addr[12]~input_o\ & \addr[11]~input_o\ & \addr[10]~input_o\ & \addr[9]~input_o\ & \addr[8]~input_o\ & \addr[7]~input_o\ & \addr[6]~input_o\ & \addr[5]~input_o\ & \addr[4]~input_o\ & 
\addr[3]~input_o\ & \addr[2]~input_o\ & \addr[1]~input_o\ & \addr[0]~input_o\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\ <= (\inst_controller|Add3~49_combout\ & \inst_controller|Add3~48_combout\ & \inst_controller|Add3~47_combout\ & \inst_controller|Add3~46_combout\ & \inst_controller|Add3~45_combout\ & 
\inst_controller|Add3~41_combout\ & \inst_controller|Add3~40_combout\ & \inst_controller|ADDRESS[5]~6_combout\ & \inst_controller|ADDRESS[4]~5_combout\ & \inst_controller|ADDRESS[3]~4_combout\ & \inst_controller|ADDRESS[2]~3_combout\ & 
\inst_controller|ADDRESS[1]~2_combout\ & \inst_controller|ADDRESS[0]~1_combout\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a21~portbdataout\ <= \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\(0);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= i_data_reg(0);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\addr[12]~input_o\ & \addr[11]~input_o\ & \addr[10]~input_o\ & \addr[9]~input_o\ & \addr[8]~input_o\ & \addr[7]~input_o\ & \addr[6]~input_o\ & \addr[5]~input_o\ & \addr[4]~input_o\ & 
\addr[3]~input_o\ & \addr[2]~input_o\ & \addr[1]~input_o\ & \addr[0]~input_o\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\inst_controller|Add3~49_combout\ & \inst_controller|Add3~48_combout\ & \inst_controller|Add3~47_combout\ & \inst_controller|Add3~46_combout\ & \inst_controller|Add3~45_combout\ & 
\inst_controller|Add3~41_combout\ & \inst_controller|Add3~40_combout\ & \inst_controller|ADDRESS[5]~6_combout\ & \inst_controller|ADDRESS[4]~5_combout\ & \inst_controller|ADDRESS[3]~4_combout\ & \inst_controller|ADDRESS[2]~3_combout\ & 
\inst_controller|ADDRESS[1]~2_combout\ & \inst_controller|ADDRESS[0]~1_combout\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a15~portbdataout\ <= \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= i_data_reg(0);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\addr[12]~input_o\ & \addr[11]~input_o\ & \addr[10]~input_o\ & \addr[9]~input_o\ & \addr[8]~input_o\ & \addr[7]~input_o\ & \addr[6]~input_o\ & \addr[5]~input_o\ & \addr[4]~input_o\ & 
\addr[3]~input_o\ & \addr[2]~input_o\ & \addr[1]~input_o\ & \addr[0]~input_o\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\inst_controller|Add3~49_combout\ & \inst_controller|Add3~48_combout\ & \inst_controller|Add3~47_combout\ & \inst_controller|Add3~46_combout\ & \inst_controller|Add3~45_combout\ & 
\inst_controller|Add3~41_combout\ & \inst_controller|Add3~40_combout\ & \inst_controller|ADDRESS[5]~6_combout\ & \inst_controller|ADDRESS[4]~5_combout\ & \inst_controller|ADDRESS[3]~4_combout\ & \inst_controller|ADDRESS[2]~3_combout\ & 
\inst_controller|ADDRESS[1]~2_combout\ & \inst_controller|ADDRESS[0]~1_combout\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\ <= \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= i_data_reg(0);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\addr[12]~input_o\ & \addr[11]~input_o\ & \addr[10]~input_o\ & \addr[9]~input_o\ & \addr[8]~input_o\ & \addr[7]~input_o\ & \addr[6]~input_o\ & \addr[5]~input_o\ & \addr[4]~input_o\ & 
\addr[3]~input_o\ & \addr[2]~input_o\ & \addr[1]~input_o\ & \addr[0]~input_o\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\inst_controller|Add3~49_combout\ & \inst_controller|Add3~48_combout\ & \inst_controller|Add3~47_combout\ & \inst_controller|Add3~46_combout\ & \inst_controller|Add3~45_combout\ & 
\inst_controller|Add3~41_combout\ & \inst_controller|Add3~40_combout\ & \inst_controller|ADDRESS[5]~6_combout\ & \inst_controller|ADDRESS[4]~5_combout\ & \inst_controller|ADDRESS[3]~4_combout\ & \inst_controller|ADDRESS[2]~3_combout\ & 
\inst_controller|ADDRESS[1]~2_combout\ & \inst_controller|ADDRESS[0]~1_combout\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= i_data_reg(1);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\addr[12]~input_o\ & \addr[11]~input_o\ & \addr[10]~input_o\ & \addr[9]~input_o\ & \addr[8]~input_o\ & \addr[7]~input_o\ & \addr[6]~input_o\ & \addr[5]~input_o\ & \addr[4]~input_o\ & 
\addr[3]~input_o\ & \addr[2]~input_o\ & \addr[1]~input_o\ & \addr[0]~input_o\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\ <= (\inst_controller|Add3~49_combout\ & \inst_controller|Add3~48_combout\ & \inst_controller|Add3~47_combout\ & \inst_controller|Add3~46_combout\ & \inst_controller|Add3~45_combout\ & 
\inst_controller|Add3~41_combout\ & \inst_controller|Add3~40_combout\ & \inst_controller|ADDRESS[5]~6_combout\ & \inst_controller|ADDRESS[4]~5_combout\ & \inst_controller|ADDRESS[3]~4_combout\ & \inst_controller|ADDRESS[2]~3_combout\ & 
\inst_controller|ADDRESS[1]~2_combout\ & \inst_controller|ADDRESS[0]~1_combout\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a19~portbdataout\ <= \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\(0);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= i_data_reg(1);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\addr[12]~input_o\ & \addr[11]~input_o\ & \addr[10]~input_o\ & \addr[9]~input_o\ & \addr[8]~input_o\ & \addr[7]~input_o\ & \addr[6]~input_o\ & \addr[5]~input_o\ & \addr[4]~input_o\ & 
\addr[3]~input_o\ & \addr[2]~input_o\ & \addr[1]~input_o\ & \addr[0]~input_o\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\inst_controller|Add3~49_combout\ & \inst_controller|Add3~48_combout\ & \inst_controller|Add3~47_combout\ & \inst_controller|Add3~46_combout\ & \inst_controller|Add3~45_combout\ & 
\inst_controller|Add3~41_combout\ & \inst_controller|Add3~40_combout\ & \inst_controller|ADDRESS[5]~6_combout\ & \inst_controller|ADDRESS[4]~5_combout\ & \inst_controller|ADDRESS[3]~4_combout\ & \inst_controller|ADDRESS[2]~3_combout\ & 
\inst_controller|ADDRESS[1]~2_combout\ & \inst_controller|ADDRESS[0]~1_combout\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a13~portbdataout\ <= \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= i_data_reg(1);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\addr[12]~input_o\ & \addr[11]~input_o\ & \addr[10]~input_o\ & \addr[9]~input_o\ & \addr[8]~input_o\ & \addr[7]~input_o\ & \addr[6]~input_o\ & \addr[5]~input_o\ & \addr[4]~input_o\ & 
\addr[3]~input_o\ & \addr[2]~input_o\ & \addr[1]~input_o\ & \addr[0]~input_o\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\ <= (\inst_controller|Add3~49_combout\ & \inst_controller|Add3~48_combout\ & \inst_controller|Add3~47_combout\ & \inst_controller|Add3~46_combout\ & \inst_controller|Add3~45_combout\ & 
\inst_controller|Add3~41_combout\ & \inst_controller|Add3~40_combout\ & \inst_controller|ADDRESS[5]~6_combout\ & \inst_controller|ADDRESS[4]~5_combout\ & \inst_controller|ADDRESS[3]~4_combout\ & \inst_controller|ADDRESS[2]~3_combout\ & 
\inst_controller|ADDRESS[1]~2_combout\ & \inst_controller|ADDRESS[0]~1_combout\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a25~portbdataout\ <= \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\(0);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= i_data_reg(1);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\addr[12]~input_o\ & \addr[11]~input_o\ & \addr[10]~input_o\ & \addr[9]~input_o\ & \addr[8]~input_o\ & \addr[7]~input_o\ & \addr[6]~input_o\ & \addr[5]~input_o\ & \addr[4]~input_o\ & 
\addr[3]~input_o\ & \addr[2]~input_o\ & \addr[1]~input_o\ & \addr[0]~input_o\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\inst_controller|Add3~49_combout\ & \inst_controller|Add3~48_combout\ & \inst_controller|Add3~47_combout\ & \inst_controller|Add3~46_combout\ & \inst_controller|Add3~45_combout\ & 
\inst_controller|Add3~41_combout\ & \inst_controller|Add3~40_combout\ & \inst_controller|ADDRESS[5]~6_combout\ & \inst_controller|ADDRESS[4]~5_combout\ & \inst_controller|ADDRESS[3]~4_combout\ & \inst_controller|ADDRESS[2]~3_combout\ & 
\inst_controller|ADDRESS[1]~2_combout\ & \inst_controller|ADDRESS[0]~1_combout\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a10~portbdataout\ <= \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= i_data_reg(1);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\addr[12]~input_o\ & \addr[11]~input_o\ & \addr[10]~input_o\ & \addr[9]~input_o\ & \addr[8]~input_o\ & \addr[7]~input_o\ & \addr[6]~input_o\ & \addr[5]~input_o\ & \addr[4]~input_o\ & 
\addr[3]~input_o\ & \addr[2]~input_o\ & \addr[1]~input_o\ & \addr[0]~input_o\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\inst_controller|Add3~49_combout\ & \inst_controller|Add3~48_combout\ & \inst_controller|Add3~47_combout\ & \inst_controller|Add3~46_combout\ & \inst_controller|Add3~45_combout\ & 
\inst_controller|Add3~41_combout\ & \inst_controller|Add3~40_combout\ & \inst_controller|ADDRESS[5]~6_combout\ & \inst_controller|ADDRESS[4]~5_combout\ & \inst_controller|ADDRESS[3]~4_combout\ & \inst_controller|ADDRESS[2]~3_combout\ & 
\inst_controller|ADDRESS[1]~2_combout\ & \inst_controller|ADDRESS[0]~1_combout\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= i_data_reg(1);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\addr[12]~input_o\ & \addr[11]~input_o\ & \addr[10]~input_o\ & \addr[9]~input_o\ & \addr[8]~input_o\ & \addr[7]~input_o\ & \addr[6]~input_o\ & \addr[5]~input_o\ & \addr[4]~input_o\ & 
\addr[3]~input_o\ & \addr[2]~input_o\ & \addr[1]~input_o\ & \addr[0]~input_o\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\ <= (\inst_controller|Add3~49_combout\ & \inst_controller|Add3~48_combout\ & \inst_controller|Add3~47_combout\ & \inst_controller|Add3~46_combout\ & \inst_controller|Add3~45_combout\ & 
\inst_controller|Add3~41_combout\ & \inst_controller|Add3~40_combout\ & \inst_controller|ADDRESS[5]~6_combout\ & \inst_controller|ADDRESS[4]~5_combout\ & \inst_controller|ADDRESS[3]~4_combout\ & \inst_controller|ADDRESS[2]~3_combout\ & 
\inst_controller|ADDRESS[1]~2_combout\ & \inst_controller|ADDRESS[0]~1_combout\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a22~portbdataout\ <= \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\(0);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= i_data_reg(1);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\addr[12]~input_o\ & \addr[11]~input_o\ & \addr[10]~input_o\ & \addr[9]~input_o\ & \addr[8]~input_o\ & \addr[7]~input_o\ & \addr[6]~input_o\ & \addr[5]~input_o\ & \addr[4]~input_o\ & 
\addr[3]~input_o\ & \addr[2]~input_o\ & \addr[1]~input_o\ & \addr[0]~input_o\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\ <= (\inst_controller|Add3~49_combout\ & \inst_controller|Add3~48_combout\ & \inst_controller|Add3~47_combout\ & \inst_controller|Add3~46_combout\ & \inst_controller|Add3~45_combout\ & 
\inst_controller|Add3~41_combout\ & \inst_controller|Add3~40_combout\ & \inst_controller|ADDRESS[5]~6_combout\ & \inst_controller|ADDRESS[4]~5_combout\ & \inst_controller|ADDRESS[3]~4_combout\ & \inst_controller|ADDRESS[2]~3_combout\ & 
\inst_controller|ADDRESS[1]~2_combout\ & \inst_controller|ADDRESS[0]~1_combout\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a16~portbdataout\ <= \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\(0);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= i_data_reg(1);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\addr[12]~input_o\ & \addr[11]~input_o\ & \addr[10]~input_o\ & \addr[9]~input_o\ & \addr[8]~input_o\ & \addr[7]~input_o\ & \addr[6]~input_o\ & \addr[5]~input_o\ & \addr[4]~input_o\ & 
\addr[3]~input_o\ & \addr[2]~input_o\ & \addr[1]~input_o\ & \addr[0]~input_o\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\inst_controller|Add3~49_combout\ & \inst_controller|Add3~48_combout\ & \inst_controller|Add3~47_combout\ & \inst_controller|Add3~46_combout\ & \inst_controller|Add3~45_combout\ & 
\inst_controller|Add3~41_combout\ & \inst_controller|Add3~40_combout\ & \inst_controller|ADDRESS[5]~6_combout\ & \inst_controller|ADDRESS[4]~5_combout\ & \inst_controller|ADDRESS[3]~4_combout\ & \inst_controller|ADDRESS[2]~3_combout\ & 
\inst_controller|ADDRESS[1]~2_combout\ & \inst_controller|ADDRESS[0]~1_combout\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a7~portbdataout\ <= \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= i_data_reg(1);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\addr[12]~input_o\ & \addr[11]~input_o\ & \addr[10]~input_o\ & \addr[9]~input_o\ & \addr[8]~input_o\ & \addr[7]~input_o\ & \addr[6]~input_o\ & \addr[5]~input_o\ & \addr[4]~input_o\ & 
\addr[3]~input_o\ & \addr[2]~input_o\ & \addr[1]~input_o\ & \addr[0]~input_o\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\inst_controller|Add3~49_combout\ & \inst_controller|Add3~48_combout\ & \inst_controller|Add3~47_combout\ & \inst_controller|Add3~46_combout\ & \inst_controller|Add3~45_combout\ & 
\inst_controller|Add3~41_combout\ & \inst_controller|Add3~40_combout\ & \inst_controller|ADDRESS[5]~6_combout\ & \inst_controller|ADDRESS[4]~5_combout\ & \inst_controller|ADDRESS[3]~4_combout\ & \inst_controller|ADDRESS[2]~3_combout\ & 
\inst_controller|ADDRESS[1]~2_combout\ & \inst_controller|ADDRESS[0]~1_combout\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\ <= \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= i_data_reg(2);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\addr[12]~input_o\ & \addr[11]~input_o\ & \addr[10]~input_o\ & \addr[9]~input_o\ & \addr[8]~input_o\ & \addr[7]~input_o\ & \addr[6]~input_o\ & \addr[5]~input_o\ & \addr[4]~input_o\ & 
\addr[3]~input_o\ & \addr[2]~input_o\ & \addr[1]~input_o\ & \addr[0]~input_o\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\ <= (\inst_controller|Add3~49_combout\ & \inst_controller|Add3~48_combout\ & \inst_controller|Add3~47_combout\ & \inst_controller|Add3~46_combout\ & \inst_controller|Add3~45_combout\ & 
\inst_controller|Add3~41_combout\ & \inst_controller|Add3~40_combout\ & \inst_controller|ADDRESS[5]~6_combout\ & \inst_controller|ADDRESS[4]~5_combout\ & \inst_controller|ADDRESS[3]~4_combout\ & \inst_controller|ADDRESS[2]~3_combout\ & 
\inst_controller|ADDRESS[1]~2_combout\ & \inst_controller|ADDRESS[0]~1_combout\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a20~portbdataout\ <= \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(0);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= i_data_reg(2);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\addr[12]~input_o\ & \addr[11]~input_o\ & \addr[10]~input_o\ & \addr[9]~input_o\ & \addr[8]~input_o\ & \addr[7]~input_o\ & \addr[6]~input_o\ & \addr[5]~input_o\ & \addr[4]~input_o\ & 
\addr[3]~input_o\ & \addr[2]~input_o\ & \addr[1]~input_o\ & \addr[0]~input_o\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\inst_controller|Add3~49_combout\ & \inst_controller|Add3~48_combout\ & \inst_controller|Add3~47_combout\ & \inst_controller|Add3~46_combout\ & \inst_controller|Add3~45_combout\ & 
\inst_controller|Add3~41_combout\ & \inst_controller|Add3~40_combout\ & \inst_controller|ADDRESS[5]~6_combout\ & \inst_controller|ADDRESS[4]~5_combout\ & \inst_controller|ADDRESS[3]~4_combout\ & \inst_controller|ADDRESS[2]~3_combout\ & 
\inst_controller|ADDRESS[1]~2_combout\ & \inst_controller|ADDRESS[0]~1_combout\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a14~portbdataout\ <= \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\ <= (gnd & i_data_reg(2));

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\addr[11]~input_o\ & \addr[10]~input_o\ & \addr[9]~input_o\ & \addr[8]~input_o\ & \addr[7]~input_o\ & \addr[6]~input_o\ & \addr[5]~input_o\ & \addr[4]~input_o\ & \addr[3]~input_o\ & 
\addr[2]~input_o\ & \addr[1]~input_o\ & \addr[0]~input_o\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\ <= (\inst_controller|Add3~48_combout\ & \inst_controller|Add3~47_combout\ & \inst_controller|Add3~46_combout\ & \inst_controller|Add3~45_combout\ & \inst_controller|Add3~41_combout\ & 
\inst_controller|Add3~40_combout\ & \inst_controller|ADDRESS[5]~6_combout\ & \inst_controller|ADDRESS[4]~5_combout\ & \inst_controller|ADDRESS[3]~4_combout\ & \inst_controller|ADDRESS[2]~3_combout\ & \inst_controller|ADDRESS[1]~2_combout\ & 
\inst_controller|ADDRESS[0]~1_combout\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a29~portbdataout\ <= \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\(0);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= i_data_reg(2);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\addr[12]~input_o\ & \addr[11]~input_o\ & \addr[10]~input_o\ & \addr[9]~input_o\ & \addr[8]~input_o\ & \addr[7]~input_o\ & \addr[6]~input_o\ & \addr[5]~input_o\ & \addr[4]~input_o\ & 
\addr[3]~input_o\ & \addr[2]~input_o\ & \addr[1]~input_o\ & \addr[0]~input_o\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\ <= (\inst_controller|Add3~49_combout\ & \inst_controller|Add3~48_combout\ & \inst_controller|Add3~47_combout\ & \inst_controller|Add3~46_combout\ & \inst_controller|Add3~45_combout\ & 
\inst_controller|Add3~41_combout\ & \inst_controller|Add3~40_combout\ & \inst_controller|ADDRESS[5]~6_combout\ & \inst_controller|ADDRESS[4]~5_combout\ & \inst_controller|ADDRESS[3]~4_combout\ & \inst_controller|ADDRESS[2]~3_combout\ & 
\inst_controller|ADDRESS[1]~2_combout\ & \inst_controller|ADDRESS[0]~1_combout\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a26~portbdataout\ <= \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\(0);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= i_data_reg(2);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\addr[12]~input_o\ & \addr[11]~input_o\ & \addr[10]~input_o\ & \addr[9]~input_o\ & \addr[8]~input_o\ & \addr[7]~input_o\ & \addr[6]~input_o\ & \addr[5]~input_o\ & \addr[4]~input_o\ & 
\addr[3]~input_o\ & \addr[2]~input_o\ & \addr[1]~input_o\ & \addr[0]~input_o\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\inst_controller|Add3~49_combout\ & \inst_controller|Add3~48_combout\ & \inst_controller|Add3~47_combout\ & \inst_controller|Add3~46_combout\ & \inst_controller|Add3~45_combout\ & 
\inst_controller|Add3~41_combout\ & \inst_controller|Add3~40_combout\ & \inst_controller|ADDRESS[5]~6_combout\ & \inst_controller|ADDRESS[4]~5_combout\ & \inst_controller|ADDRESS[3]~4_combout\ & \inst_controller|ADDRESS[2]~3_combout\ & 
\inst_controller|ADDRESS[1]~2_combout\ & \inst_controller|ADDRESS[0]~1_combout\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a11~portbdataout\ <= \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= i_data_reg(2);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\addr[12]~input_o\ & \addr[11]~input_o\ & \addr[10]~input_o\ & \addr[9]~input_o\ & \addr[8]~input_o\ & \addr[7]~input_o\ & \addr[6]~input_o\ & \addr[5]~input_o\ & \addr[4]~input_o\ & 
\addr[3]~input_o\ & \addr[2]~input_o\ & \addr[1]~input_o\ & \addr[0]~input_o\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\inst_controller|Add3~49_combout\ & \inst_controller|Add3~48_combout\ & \inst_controller|Add3~47_combout\ & \inst_controller|Add3~46_combout\ & \inst_controller|Add3~45_combout\ & 
\inst_controller|Add3~41_combout\ & \inst_controller|Add3~40_combout\ & \inst_controller|ADDRESS[5]~6_combout\ & \inst_controller|ADDRESS[4]~5_combout\ & \inst_controller|ADDRESS[3]~4_combout\ & \inst_controller|ADDRESS[2]~3_combout\ & 
\inst_controller|ADDRESS[1]~2_combout\ & \inst_controller|ADDRESS[0]~1_combout\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a5~portbdataout\ <= \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= i_data_reg(2);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\addr[12]~input_o\ & \addr[11]~input_o\ & \addr[10]~input_o\ & \addr[9]~input_o\ & \addr[8]~input_o\ & \addr[7]~input_o\ & \addr[6]~input_o\ & \addr[5]~input_o\ & \addr[4]~input_o\ & 
\addr[3]~input_o\ & \addr[2]~input_o\ & \addr[1]~input_o\ & \addr[0]~input_o\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\ <= (\inst_controller|Add3~49_combout\ & \inst_controller|Add3~48_combout\ & \inst_controller|Add3~47_combout\ & \inst_controller|Add3~46_combout\ & \inst_controller|Add3~45_combout\ & 
\inst_controller|Add3~41_combout\ & \inst_controller|Add3~40_combout\ & \inst_controller|ADDRESS[5]~6_combout\ & \inst_controller|ADDRESS[4]~5_combout\ & \inst_controller|ADDRESS[3]~4_combout\ & \inst_controller|ADDRESS[2]~3_combout\ & 
\inst_controller|ADDRESS[1]~2_combout\ & \inst_controller|ADDRESS[0]~1_combout\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a23~portbdataout\ <= \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\(0);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= i_data_reg(2);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\addr[12]~input_o\ & \addr[11]~input_o\ & \addr[10]~input_o\ & \addr[9]~input_o\ & \addr[8]~input_o\ & \addr[7]~input_o\ & \addr[6]~input_o\ & \addr[5]~input_o\ & \addr[4]~input_o\ & 
\addr[3]~input_o\ & \addr[2]~input_o\ & \addr[1]~input_o\ & \addr[0]~input_o\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\ <= (\inst_controller|Add3~49_combout\ & \inst_controller|Add3~48_combout\ & \inst_controller|Add3~47_combout\ & \inst_controller|Add3~46_combout\ & \inst_controller|Add3~45_combout\ & 
\inst_controller|Add3~41_combout\ & \inst_controller|Add3~40_combout\ & \inst_controller|ADDRESS[5]~6_combout\ & \inst_controller|ADDRESS[4]~5_combout\ & \inst_controller|ADDRESS[3]~4_combout\ & \inst_controller|ADDRESS[2]~3_combout\ & 
\inst_controller|ADDRESS[1]~2_combout\ & \inst_controller|ADDRESS[0]~1_combout\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a17~portbdataout\ <= \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\(0);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= i_data_reg(2);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\addr[12]~input_o\ & \addr[11]~input_o\ & \addr[10]~input_o\ & \addr[9]~input_o\ & \addr[8]~input_o\ & \addr[7]~input_o\ & \addr[6]~input_o\ & \addr[5]~input_o\ & \addr[4]~input_o\ & 
\addr[3]~input_o\ & \addr[2]~input_o\ & \addr[1]~input_o\ & \addr[0]~input_o\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\inst_controller|Add3~49_combout\ & \inst_controller|Add3~48_combout\ & \inst_controller|Add3~47_combout\ & \inst_controller|Add3~46_combout\ & \inst_controller|Add3~45_combout\ & 
\inst_controller|Add3~41_combout\ & \inst_controller|Add3~40_combout\ & \inst_controller|ADDRESS[5]~6_combout\ & \inst_controller|ADDRESS[4]~5_combout\ & \inst_controller|ADDRESS[3]~4_combout\ & \inst_controller|ADDRESS[2]~3_combout\ & 
\inst_controller|ADDRESS[1]~2_combout\ & \inst_controller|ADDRESS[0]~1_combout\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ <= \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= i_data_reg(2);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\addr[12]~input_o\ & \addr[11]~input_o\ & \addr[10]~input_o\ & \addr[9]~input_o\ & \addr[8]~input_o\ & \addr[7]~input_o\ & \addr[6]~input_o\ & \addr[5]~input_o\ & \addr[4]~input_o\ & 
\addr[3]~input_o\ & \addr[2]~input_o\ & \addr[1]~input_o\ & \addr[0]~input_o\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\inst_controller|Add3~49_combout\ & \inst_controller|Add3~48_combout\ & \inst_controller|Add3~47_combout\ & \inst_controller|Add3~46_combout\ & \inst_controller|Add3~45_combout\ & 
\inst_controller|Add3~41_combout\ & \inst_controller|Add3~40_combout\ & \inst_controller|ADDRESS[5]~6_combout\ & \inst_controller|ADDRESS[4]~5_combout\ & \inst_controller|ADDRESS[3]~4_combout\ & \inst_controller|ADDRESS[2]~3_combout\ & 
\inst_controller|ADDRESS[1]~2_combout\ & \inst_controller|ADDRESS[0]~1_combout\);

\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\ <= \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\reset_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_n~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\clock_25~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_25~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X54_Y0_N23
\dout[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~6_combout\,
	devoe => ww_devoe,
	o => \dout[0]~output_o\);

-- Location: IOOBUF_X54_Y0_N30
\dout[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~6_combout\,
	devoe => ww_devoe,
	o => \dout[1]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\dout[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~10_combout\,
	devoe => ww_devoe,
	o => \dout[2]~output_o\);

-- Location: IOOBUF_X78_Y30_N9
\dout[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dout[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\dout[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dout[4]~output_o\);

-- Location: IOOBUF_X78_Y16_N2
\dout[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dout[5]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\dout[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dout[6]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\dout[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dout[7]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\dout[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dout[8]~output_o\);

-- Location: IOOBUF_X78_Y31_N2
\dout[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dout[9]~output_o\);

-- Location: IOOBUF_X0_Y29_N9
\dout[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dout[10]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\dout[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dout[11]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\dout[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dout[12]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\dout[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dout[13]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\dout[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dout[14]~output_o\);

-- Location: IOOBUF_X34_Y39_N9
\dout[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dout[15]~output_o\);

-- Location: IOOBUF_X78_Y31_N23
\dout[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dout[16]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\dout[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dout[17]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\dout[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dout[18]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\dout[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dout[19]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\dout[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dout[20]~output_o\);

-- Location: IOOBUF_X58_Y0_N2
\dout[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dout[21]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\dout[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dout[22]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\dout[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dout[23]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\dout[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dout[24]~output_o\);

-- Location: IOOBUF_X71_Y54_N30
\dout[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dout[25]~output_o\);

-- Location: IOOBUF_X36_Y39_N23
\dout[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dout[26]~output_o\);

-- Location: IOOBUF_X78_Y20_N2
\dout[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dout[27]~output_o\);

-- Location: IOOBUF_X78_Y44_N16
\dout[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dout[28]~output_o\);

-- Location: IOOBUF_X40_Y0_N9
\dout[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dout[29]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\dout[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dout[30]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\dout[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dout[31]~output_o\);

-- Location: IOOBUF_X46_Y0_N2
\vga_r[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_controller|VGA_R\(0),
	devoe => ww_devoe,
	o => \vga_r[0]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\vga_r[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_controller|VGA_R\(0),
	devoe => ww_devoe,
	o => \vga_r[1]~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\vga_r[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_controller|VGA_R\(0),
	devoe => ww_devoe,
	o => \vga_r[2]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\vga_r[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_controller|VGA_R\(0),
	devoe => ww_devoe,
	o => \vga_r[3]~output_o\);

-- Location: IOOBUF_X51_Y0_N9
\vga_g[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_controller|VGA_G\(0),
	devoe => ww_devoe,
	o => \vga_g[0]~output_o\);

-- Location: IOOBUF_X51_Y0_N30
\vga_g[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_controller|VGA_G\(0),
	devoe => ww_devoe,
	o => \vga_g[1]~output_o\);

-- Location: IOOBUF_X51_Y0_N23
\vga_g[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_controller|VGA_G\(0),
	devoe => ww_devoe,
	o => \vga_g[2]~output_o\);

-- Location: IOOBUF_X51_Y0_N2
\vga_g[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_controller|VGA_G\(0),
	devoe => ww_devoe,
	o => \vga_g[3]~output_o\);

-- Location: IOOBUF_X58_Y0_N23
\vga_b[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_controller|VGA_B\(0),
	devoe => ww_devoe,
	o => \vga_b[0]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\vga_b[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_controller|VGA_B\(0),
	devoe => ww_devoe,
	o => \vga_b[1]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\vga_b[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_controller|VGA_B\(0),
	devoe => ww_devoe,
	o => \vga_b[2]~output_o\);

-- Location: IOOBUF_X58_Y0_N30
\vga_b[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_controller|VGA_B\(0),
	devoe => ww_devoe,
	o => \vga_b[3]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\vga_hs~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_controller|VGA_HS~3_combout\,
	devoe => ww_devoe,
	o => \vga_hs~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\vga_vs~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_controller|VGA_VS~1_combout\,
	devoe => ww_devoe,
	o => \vga_vs~output_o\);

-- Location: IOIBUF_X54_Y0_N1
\addr[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(14),
	o => \addr[14]~input_o\);

-- Location: IOIBUF_X58_Y0_N15
\addr[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(15),
	o => \addr[15]~input_o\);

-- Location: IOIBUF_X54_Y0_N15
\addr[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(13),
	o => \addr[13]~input_o\);

-- Location: IOIBUF_X54_Y0_N8
\addr[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(16),
	o => \addr[16]~input_o\);

-- Location: IOIBUF_X0_Y18_N22
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X49_Y0_N15
\write_n~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_n,
	o => \write_n~input_o\);

-- Location: IOIBUF_X49_Y0_N29
\cs_n~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cs_n,
	o => \cs_n~input_o\);

-- Location: LCCOMB_X49_Y4_N12
\bus_register_write_process~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_register_write_process~0_combout\ = (!\write_n~input_o\ & !\cs_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \write_n~input_o\,
	datad => \cs_n~input_o\,
	combout => \bus_register_write_process~0_combout\);

-- Location: LCCOMB_X54_Y8_N0
\s_we~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_we~feeder_combout\ = \bus_register_write_process~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bus_register_write_process~0_combout\,
	combout => \s_we~feeder_combout\);

-- Location: IOIBUF_X0_Y23_N15
\reset_n~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: FF_X54_Y8_N1
s_we : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_we~feeder_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_we~q\);

-- Location: LCCOMB_X54_Y8_N2
\inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode549w[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode549w[3]~0_combout\ = (\addr[13]~input_o\ & (!\addr[16]~input_o\ & \s_we~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr[13]~input_o\,
	datac => \addr[16]~input_o\,
	datad => \s_we~q\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode549w[3]~0_combout\);

-- Location: LCCOMB_X54_Y8_N18
\inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode549w[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode549w[3]~1_combout\ = (\addr[14]~input_o\ & (\addr[15]~input_o\ & \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode549w[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[14]~input_o\,
	datac => \addr[15]~input_o\,
	datad => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode549w[3]~0_combout\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode549w[3]~1_combout\);

-- Location: IOIBUF_X0_Y18_N15
\clock_25~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_25,
	o => \clock_25~input_o\);

-- Location: CLKCTRL_G3
\clock_25~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_25~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_25~inputclkctrl_outclk\);

-- Location: LCCOMB_X57_Y9_N0
\inst_controller|x_counter[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|x_counter[0]~10_combout\ = \inst_controller|x_counter\(0) $ (VCC)
-- \inst_controller|x_counter[0]~11\ = CARRY(\inst_controller|x_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_controller|x_counter\(0),
	datad => VCC,
	combout => \inst_controller|x_counter[0]~10_combout\,
	cout => \inst_controller|x_counter[0]~11\);

-- Location: CLKCTRL_G2
\reset_n~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset_n~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset_n~inputclkctrl_outclk\);

-- Location: LCCOMB_X57_Y9_N14
\inst_controller|x_counter[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|x_counter[7]~24_combout\ = (\inst_controller|x_counter\(7) & (!\inst_controller|x_counter[6]~23\)) # (!\inst_controller|x_counter\(7) & ((\inst_controller|x_counter[6]~23\) # (GND)))
-- \inst_controller|x_counter[7]~25\ = CARRY((!\inst_controller|x_counter[6]~23\) # (!\inst_controller|x_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_controller|x_counter\(7),
	datad => VCC,
	cin => \inst_controller|x_counter[6]~23\,
	combout => \inst_controller|x_counter[7]~24_combout\,
	cout => \inst_controller|x_counter[7]~25\);

-- Location: LCCOMB_X57_Y9_N16
\inst_controller|x_counter[8]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|x_counter[8]~26_combout\ = (\inst_controller|x_counter\(8) & (\inst_controller|x_counter[7]~25\ $ (GND))) # (!\inst_controller|x_counter\(8) & (!\inst_controller|x_counter[7]~25\ & VCC))
-- \inst_controller|x_counter[8]~27\ = CARRY((\inst_controller|x_counter\(8) & !\inst_controller|x_counter[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_controller|x_counter\(8),
	datad => VCC,
	cin => \inst_controller|x_counter[7]~25\,
	combout => \inst_controller|x_counter[8]~26_combout\,
	cout => \inst_controller|x_counter[8]~27\);

-- Location: FF_X57_Y9_N17
\inst_controller|x_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~inputclkctrl_outclk\,
	d => \inst_controller|x_counter[8]~26_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \inst_controller|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_controller|x_counter\(8));

-- Location: LCCOMB_X57_Y9_N18
\inst_controller|x_counter[9]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|x_counter[9]~28_combout\ = \inst_controller|x_counter\(9) $ (\inst_controller|x_counter[8]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|x_counter\(9),
	cin => \inst_controller|x_counter[8]~27\,
	combout => \inst_controller|x_counter[9]~28_combout\);

-- Location: FF_X57_Y9_N19
\inst_controller|x_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~inputclkctrl_outclk\,
	d => \inst_controller|x_counter[9]~28_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \inst_controller|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_controller|x_counter\(9));

-- Location: LCCOMB_X56_Y9_N6
\inst_controller|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|LessThan0~0_combout\ = (((!\inst_controller|x_counter\(1)) # (!\inst_controller|x_counter\(0))) # (!\inst_controller|x_counter\(2))) # (!\inst_controller|x_counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|x_counter\(3),
	datab => \inst_controller|x_counter\(2),
	datac => \inst_controller|x_counter\(0),
	datad => \inst_controller|x_counter\(1),
	combout => \inst_controller|LessThan0~0_combout\);

-- Location: LCCOMB_X57_Y9_N22
\inst_controller|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|LessThan0~1_combout\ = (\inst_controller|x_counter\(6)) # ((\inst_controller|x_counter\(5)) # ((!\inst_controller|LessThan0~0_combout\ & \inst_controller|x_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|x_counter\(6),
	datab => \inst_controller|LessThan0~0_combout\,
	datac => \inst_controller|x_counter\(4),
	datad => \inst_controller|x_counter\(5),
	combout => \inst_controller|LessThan0~1_combout\);

-- Location: LCCOMB_X57_Y9_N24
\inst_controller|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|LessThan0~2_combout\ = (\inst_controller|x_counter\(9) & (\inst_controller|x_counter\(8) & ((\inst_controller|x_counter\(7)) # (\inst_controller|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|x_counter\(9),
	datab => \inst_controller|x_counter\(7),
	datac => \inst_controller|LessThan0~1_combout\,
	datad => \inst_controller|x_counter\(8),
	combout => \inst_controller|LessThan0~2_combout\);

-- Location: FF_X57_Y9_N1
\inst_controller|x_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~inputclkctrl_outclk\,
	d => \inst_controller|x_counter[0]~10_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \inst_controller|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_controller|x_counter\(0));

-- Location: LCCOMB_X57_Y9_N2
\inst_controller|x_counter[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|x_counter[1]~12_combout\ = (\inst_controller|x_counter\(1) & (!\inst_controller|x_counter[0]~11\)) # (!\inst_controller|x_counter\(1) & ((\inst_controller|x_counter[0]~11\) # (GND)))
-- \inst_controller|x_counter[1]~13\ = CARRY((!\inst_controller|x_counter[0]~11\) # (!\inst_controller|x_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_controller|x_counter\(1),
	datad => VCC,
	cin => \inst_controller|x_counter[0]~11\,
	combout => \inst_controller|x_counter[1]~12_combout\,
	cout => \inst_controller|x_counter[1]~13\);

-- Location: FF_X57_Y9_N3
\inst_controller|x_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~inputclkctrl_outclk\,
	d => \inst_controller|x_counter[1]~12_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \inst_controller|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_controller|x_counter\(1));

-- Location: LCCOMB_X57_Y9_N4
\inst_controller|x_counter[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|x_counter[2]~14_combout\ = (\inst_controller|x_counter\(2) & (\inst_controller|x_counter[1]~13\ $ (GND))) # (!\inst_controller|x_counter\(2) & (!\inst_controller|x_counter[1]~13\ & VCC))
-- \inst_controller|x_counter[2]~15\ = CARRY((\inst_controller|x_counter\(2) & !\inst_controller|x_counter[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_controller|x_counter\(2),
	datad => VCC,
	cin => \inst_controller|x_counter[1]~13\,
	combout => \inst_controller|x_counter[2]~14_combout\,
	cout => \inst_controller|x_counter[2]~15\);

-- Location: FF_X57_Y9_N5
\inst_controller|x_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~inputclkctrl_outclk\,
	d => \inst_controller|x_counter[2]~14_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \inst_controller|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_controller|x_counter\(2));

-- Location: LCCOMB_X57_Y9_N6
\inst_controller|x_counter[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|x_counter[3]~16_combout\ = (\inst_controller|x_counter\(3) & (!\inst_controller|x_counter[2]~15\)) # (!\inst_controller|x_counter\(3) & ((\inst_controller|x_counter[2]~15\) # (GND)))
-- \inst_controller|x_counter[3]~17\ = CARRY((!\inst_controller|x_counter[2]~15\) # (!\inst_controller|x_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|x_counter\(3),
	datad => VCC,
	cin => \inst_controller|x_counter[2]~15\,
	combout => \inst_controller|x_counter[3]~16_combout\,
	cout => \inst_controller|x_counter[3]~17\);

-- Location: FF_X57_Y9_N7
\inst_controller|x_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~inputclkctrl_outclk\,
	d => \inst_controller|x_counter[3]~16_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \inst_controller|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_controller|x_counter\(3));

-- Location: LCCOMB_X57_Y9_N8
\inst_controller|x_counter[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|x_counter[4]~18_combout\ = (\inst_controller|x_counter\(4) & (\inst_controller|x_counter[3]~17\ $ (GND))) # (!\inst_controller|x_counter\(4) & (!\inst_controller|x_counter[3]~17\ & VCC))
-- \inst_controller|x_counter[4]~19\ = CARRY((\inst_controller|x_counter\(4) & !\inst_controller|x_counter[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_controller|x_counter\(4),
	datad => VCC,
	cin => \inst_controller|x_counter[3]~17\,
	combout => \inst_controller|x_counter[4]~18_combout\,
	cout => \inst_controller|x_counter[4]~19\);

-- Location: FF_X57_Y9_N9
\inst_controller|x_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~inputclkctrl_outclk\,
	d => \inst_controller|x_counter[4]~18_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \inst_controller|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_controller|x_counter\(4));

-- Location: LCCOMB_X57_Y9_N10
\inst_controller|x_counter[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|x_counter[5]~20_combout\ = (\inst_controller|x_counter\(5) & (!\inst_controller|x_counter[4]~19\)) # (!\inst_controller|x_counter\(5) & ((\inst_controller|x_counter[4]~19\) # (GND)))
-- \inst_controller|x_counter[5]~21\ = CARRY((!\inst_controller|x_counter[4]~19\) # (!\inst_controller|x_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|x_counter\(5),
	datad => VCC,
	cin => \inst_controller|x_counter[4]~19\,
	combout => \inst_controller|x_counter[5]~20_combout\,
	cout => \inst_controller|x_counter[5]~21\);

-- Location: FF_X57_Y9_N11
\inst_controller|x_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~inputclkctrl_outclk\,
	d => \inst_controller|x_counter[5]~20_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \inst_controller|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_controller|x_counter\(5));

-- Location: LCCOMB_X57_Y9_N12
\inst_controller|x_counter[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|x_counter[6]~22_combout\ = (\inst_controller|x_counter\(6) & (\inst_controller|x_counter[5]~21\ $ (GND))) # (!\inst_controller|x_counter\(6) & (!\inst_controller|x_counter[5]~21\ & VCC))
-- \inst_controller|x_counter[6]~23\ = CARRY((\inst_controller|x_counter\(6) & !\inst_controller|x_counter[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|x_counter\(6),
	datad => VCC,
	cin => \inst_controller|x_counter[5]~21\,
	combout => \inst_controller|x_counter[6]~22_combout\,
	cout => \inst_controller|x_counter[6]~23\);

-- Location: FF_X57_Y9_N13
\inst_controller|x_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~inputclkctrl_outclk\,
	d => \inst_controller|x_counter[6]~22_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \inst_controller|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_controller|x_counter\(6));

-- Location: FF_X57_Y9_N15
\inst_controller|x_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~inputclkctrl_outclk\,
	d => \inst_controller|x_counter[7]~24_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \inst_controller|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_controller|x_counter\(7));

-- Location: LCCOMB_X54_Y10_N12
\inst_controller|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Add1~0_combout\ = \inst_controller|y_counter\(0) $ (VCC)
-- \inst_controller|Add1~1\ = CARRY(\inst_controller|y_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|y_counter\(0),
	datad => VCC,
	combout => \inst_controller|Add1~0_combout\,
	cout => \inst_controller|Add1~1\);

-- Location: LCCOMB_X56_Y9_N28
\inst_controller|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Equal0~0_combout\ = (!\inst_controller|x_counter\(3) & (!\inst_controller|x_counter\(5) & (!\inst_controller|x_counter\(4) & !\inst_controller|x_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|x_counter\(3),
	datab => \inst_controller|x_counter\(5),
	datac => \inst_controller|x_counter\(4),
	datad => \inst_controller|x_counter\(2),
	combout => \inst_controller|Equal0~0_combout\);

-- Location: LCCOMB_X57_Y9_N26
\inst_controller|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Equal0~1_combout\ = (\inst_controller|x_counter\(9) & (!\inst_controller|x_counter\(8) & (\inst_controller|x_counter\(7) & \inst_controller|x_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|x_counter\(9),
	datab => \inst_controller|x_counter\(8),
	datac => \inst_controller|x_counter\(7),
	datad => \inst_controller|x_counter\(6),
	combout => \inst_controller|Equal0~1_combout\);

-- Location: LCCOMB_X56_Y9_N0
\inst_controller|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Equal0~2_combout\ = (\inst_controller|x_counter\(1) & (\inst_controller|Equal0~0_combout\ & (\inst_controller|x_counter\(0) & \inst_controller|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|x_counter\(1),
	datab => \inst_controller|Equal0~0_combout\,
	datac => \inst_controller|x_counter\(0),
	datad => \inst_controller|Equal0~1_combout\,
	combout => \inst_controller|Equal0~2_combout\);

-- Location: FF_X54_Y10_N13
\inst_controller|y_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~inputclkctrl_outclk\,
	d => \inst_controller|Add1~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \inst_controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_controller|y_counter\(0));

-- Location: LCCOMB_X54_Y10_N14
\inst_controller|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Add1~2_combout\ = (\inst_controller|y_counter\(1) & (!\inst_controller|Add1~1\)) # (!\inst_controller|y_counter\(1) & ((\inst_controller|Add1~1\) # (GND)))
-- \inst_controller|Add1~3\ = CARRY((!\inst_controller|Add1~1\) # (!\inst_controller|y_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_controller|y_counter\(1),
	datad => VCC,
	cin => \inst_controller|Add1~1\,
	combout => \inst_controller|Add1~2_combout\,
	cout => \inst_controller|Add1~3\);

-- Location: LCCOMB_X55_Y10_N2
\inst_controller|y_counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|y_counter~1_combout\ = (!\inst_controller|Equal1~2_combout\ & \inst_controller|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|Equal1~2_combout\,
	datad => \inst_controller|Add1~2_combout\,
	combout => \inst_controller|y_counter~1_combout\);

-- Location: FF_X55_Y10_N9
\inst_controller|y_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~inputclkctrl_outclk\,
	asdata => \inst_controller|y_counter~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst_controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_controller|y_counter\(1));

-- Location: LCCOMB_X54_Y10_N16
\inst_controller|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Add1~4_combout\ = (\inst_controller|y_counter\(2) & (\inst_controller|Add1~3\ $ (GND))) # (!\inst_controller|y_counter\(2) & (!\inst_controller|Add1~3\ & VCC))
-- \inst_controller|Add1~5\ = CARRY((\inst_controller|y_counter\(2) & !\inst_controller|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_controller|y_counter\(2),
	datad => VCC,
	cin => \inst_controller|Add1~3\,
	combout => \inst_controller|Add1~4_combout\,
	cout => \inst_controller|Add1~5\);

-- Location: LCCOMB_X55_Y10_N0
\inst_controller|y_counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|y_counter~3_combout\ = (\inst_controller|Add1~4_combout\ & !\inst_controller|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_controller|Add1~4_combout\,
	datad => \inst_controller|Equal1~2_combout\,
	combout => \inst_controller|y_counter~3_combout\);

-- Location: FF_X55_Y10_N1
\inst_controller|y_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~inputclkctrl_outclk\,
	d => \inst_controller|y_counter~3_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \inst_controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_controller|y_counter\(2));

-- Location: LCCOMB_X54_Y10_N18
\inst_controller|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Add1~6_combout\ = (\inst_controller|y_counter\(3) & (!\inst_controller|Add1~5\)) # (!\inst_controller|y_counter\(3) & ((\inst_controller|Add1~5\) # (GND)))
-- \inst_controller|Add1~7\ = CARRY((!\inst_controller|Add1~5\) # (!\inst_controller|y_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_controller|y_counter\(3),
	datad => VCC,
	cin => \inst_controller|Add1~5\,
	combout => \inst_controller|Add1~6_combout\,
	cout => \inst_controller|Add1~7\);

-- Location: LCCOMB_X55_Y10_N22
\inst_controller|y_counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|y_counter~2_combout\ = (!\inst_controller|Equal1~2_combout\ & \inst_controller|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|Equal1~2_combout\,
	datad => \inst_controller|Add1~6_combout\,
	combout => \inst_controller|y_counter~2_combout\);

-- Location: FF_X55_Y10_N23
\inst_controller|y_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~inputclkctrl_outclk\,
	d => \inst_controller|y_counter~2_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \inst_controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_controller|y_counter\(3));

-- Location: LCCOMB_X54_Y10_N20
\inst_controller|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Add1~8_combout\ = (\inst_controller|y_counter\(4) & (\inst_controller|Add1~7\ $ (GND))) # (!\inst_controller|y_counter\(4) & (!\inst_controller|Add1~7\ & VCC))
-- \inst_controller|Add1~9\ = CARRY((\inst_controller|y_counter\(4) & !\inst_controller|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|y_counter\(4),
	datad => VCC,
	cin => \inst_controller|Add1~7\,
	combout => \inst_controller|Add1~8_combout\,
	cout => \inst_controller|Add1~9\);

-- Location: FF_X55_Y10_N31
\inst_controller|y_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~inputclkctrl_outclk\,
	asdata => \inst_controller|Add1~8_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst_controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_controller|y_counter\(4));

-- Location: LCCOMB_X54_Y10_N22
\inst_controller|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Add1~10_combout\ = (\inst_controller|y_counter\(5) & (!\inst_controller|Add1~9\)) # (!\inst_controller|y_counter\(5) & ((\inst_controller|Add1~9\) # (GND)))
-- \inst_controller|Add1~11\ = CARRY((!\inst_controller|Add1~9\) # (!\inst_controller|y_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_controller|y_counter\(5),
	datad => VCC,
	cin => \inst_controller|Add1~9\,
	combout => \inst_controller|Add1~10_combout\,
	cout => \inst_controller|Add1~11\);

-- Location: FF_X55_Y10_N29
\inst_controller|y_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~inputclkctrl_outclk\,
	asdata => \inst_controller|Add1~10_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst_controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_controller|y_counter\(5));

-- Location: LCCOMB_X54_Y10_N24
\inst_controller|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Add1~12_combout\ = (\inst_controller|y_counter\(6) & (\inst_controller|Add1~11\ $ (GND))) # (!\inst_controller|y_counter\(6) & (!\inst_controller|Add1~11\ & VCC))
-- \inst_controller|Add1~13\ = CARRY((\inst_controller|y_counter\(6) & !\inst_controller|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|y_counter\(6),
	datad => VCC,
	cin => \inst_controller|Add1~11\,
	combout => \inst_controller|Add1~12_combout\,
	cout => \inst_controller|Add1~13\);

-- Location: FF_X55_Y10_N3
\inst_controller|y_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~inputclkctrl_outclk\,
	asdata => \inst_controller|Add1~12_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst_controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_controller|y_counter\(6));

-- Location: LCCOMB_X54_Y10_N26
\inst_controller|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Add1~14_combout\ = (\inst_controller|y_counter\(7) & (!\inst_controller|Add1~13\)) # (!\inst_controller|y_counter\(7) & ((\inst_controller|Add1~13\) # (GND)))
-- \inst_controller|Add1~15\ = CARRY((!\inst_controller|Add1~13\) # (!\inst_controller|y_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_controller|y_counter\(7),
	datad => VCC,
	cin => \inst_controller|Add1~13\,
	combout => \inst_controller|Add1~14_combout\,
	cout => \inst_controller|Add1~15\);

-- Location: FF_X55_Y10_N17
\inst_controller|y_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~inputclkctrl_outclk\,
	asdata => \inst_controller|Add1~14_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst_controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_controller|y_counter\(7));

-- Location: LCCOMB_X54_Y10_N28
\inst_controller|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Add1~16_combout\ = (\inst_controller|y_counter\(8) & (\inst_controller|Add1~15\ $ (GND))) # (!\inst_controller|y_counter\(8) & (!\inst_controller|Add1~15\ & VCC))
-- \inst_controller|Add1~17\ = CARRY((\inst_controller|y_counter\(8) & !\inst_controller|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_controller|y_counter\(8),
	datad => VCC,
	cin => \inst_controller|Add1~15\,
	combout => \inst_controller|Add1~16_combout\,
	cout => \inst_controller|Add1~17\);

-- Location: FF_X55_Y10_N5
\inst_controller|y_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~inputclkctrl_outclk\,
	asdata => \inst_controller|Add1~16_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst_controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_controller|y_counter\(8));

-- Location: LCCOMB_X54_Y10_N10
\inst_controller|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Equal1~1_combout\ = (\inst_controller|y_counter\(9) & (!\inst_controller|y_counter\(7) & (!\inst_controller|y_counter\(8) & !\inst_controller|y_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|y_counter\(9),
	datab => \inst_controller|y_counter\(7),
	datac => \inst_controller|y_counter\(8),
	datad => \inst_controller|y_counter\(6),
	combout => \inst_controller|Equal1~1_combout\);

-- Location: LCCOMB_X54_Y10_N4
\inst_controller|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Equal1~0_combout\ = (!\inst_controller|y_counter\(4) & (\inst_controller|y_counter\(3) & (\inst_controller|y_counter\(2) & \inst_controller|y_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|y_counter\(4),
	datab => \inst_controller|y_counter\(3),
	datac => \inst_controller|y_counter\(2),
	datad => \inst_controller|y_counter\(0),
	combout => \inst_controller|Equal1~0_combout\);

-- Location: LCCOMB_X54_Y10_N8
\inst_controller|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Equal1~2_combout\ = (\inst_controller|Equal1~1_combout\ & (\inst_controller|Equal1~0_combout\ & (!\inst_controller|y_counter\(1) & !\inst_controller|y_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|Equal1~1_combout\,
	datab => \inst_controller|Equal1~0_combout\,
	datac => \inst_controller|y_counter\(1),
	datad => \inst_controller|y_counter\(5),
	combout => \inst_controller|Equal1~2_combout\);

-- Location: LCCOMB_X54_Y10_N30
\inst_controller|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Add1~18_combout\ = \inst_controller|y_counter\(9) $ (\inst_controller|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|y_counter\(9),
	cin => \inst_controller|Add1~17\,
	combout => \inst_controller|Add1~18_combout\);

-- Location: LCCOMB_X55_Y10_N24
\inst_controller|y_counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|y_counter~0_combout\ = (!\inst_controller|Equal1~2_combout\ & \inst_controller|Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|Equal1~2_combout\,
	datad => \inst_controller|Add1~18_combout\,
	combout => \inst_controller|y_counter~0_combout\);

-- Location: FF_X55_Y10_N25
\inst_controller|y_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~inputclkctrl_outclk\,
	d => \inst_controller|y_counter~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \inst_controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_controller|y_counter\(9));

-- Location: LCCOMB_X57_Y10_N20
\inst_controller|ADDRESS~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|ADDRESS~0_combout\ = (!\inst_controller|y_counter\(9) & (((!\inst_controller|x_counter\(7) & !\inst_controller|x_counter\(8))) # (!\inst_controller|x_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|x_counter\(7),
	datab => \inst_controller|y_counter\(9),
	datac => \inst_controller|x_counter\(8),
	datad => \inst_controller|x_counter\(9),
	combout => \inst_controller|ADDRESS~0_combout\);

-- Location: LCCOMB_X55_Y10_N28
\inst_controller|LessThan11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|LessThan11~1_combout\ = (\inst_controller|y_counter\(6) & (\inst_controller|y_counter\(8) & (\inst_controller|y_counter\(5) & \inst_controller|y_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|y_counter\(6),
	datab => \inst_controller|y_counter\(8),
	datac => \inst_controller|y_counter\(5),
	datad => \inst_controller|y_counter\(7),
	combout => \inst_controller|LessThan11~1_combout\);

-- Location: LCCOMB_X55_Y10_N4
\inst_controller|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Add2~0_combout\ = (\inst_controller|y_counter\(3) & (\inst_controller|y_counter\(1) $ (VCC))) # (!\inst_controller|y_counter\(3) & (\inst_controller|y_counter\(1) & VCC))
-- \inst_controller|Add2~1\ = CARRY((\inst_controller|y_counter\(3) & \inst_controller|y_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|y_counter\(3),
	datab => \inst_controller|y_counter\(1),
	datad => VCC,
	combout => \inst_controller|Add2~0_combout\,
	cout => \inst_controller|Add2~1\);

-- Location: LCCOMB_X55_Y10_N6
\inst_controller|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Add2~2_combout\ = (\inst_controller|y_counter\(4) & ((\inst_controller|y_counter\(2) & (\inst_controller|Add2~1\ & VCC)) # (!\inst_controller|y_counter\(2) & (!\inst_controller|Add2~1\)))) # (!\inst_controller|y_counter\(4) & 
-- ((\inst_controller|y_counter\(2) & (!\inst_controller|Add2~1\)) # (!\inst_controller|y_counter\(2) & ((\inst_controller|Add2~1\) # (GND)))))
-- \inst_controller|Add2~3\ = CARRY((\inst_controller|y_counter\(4) & (!\inst_controller|y_counter\(2) & !\inst_controller|Add2~1\)) # (!\inst_controller|y_counter\(4) & ((!\inst_controller|Add2~1\) # (!\inst_controller|y_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|y_counter\(4),
	datab => \inst_controller|y_counter\(2),
	datad => VCC,
	cin => \inst_controller|Add2~1\,
	combout => \inst_controller|Add2~2_combout\,
	cout => \inst_controller|Add2~3\);

-- Location: LCCOMB_X55_Y10_N8
\inst_controller|Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Add2~4_combout\ = ((\inst_controller|y_counter\(3) $ (\inst_controller|y_counter\(5) $ (!\inst_controller|Add2~3\)))) # (GND)
-- \inst_controller|Add2~5\ = CARRY((\inst_controller|y_counter\(3) & ((\inst_controller|y_counter\(5)) # (!\inst_controller|Add2~3\))) # (!\inst_controller|y_counter\(3) & (\inst_controller|y_counter\(5) & !\inst_controller|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|y_counter\(3),
	datab => \inst_controller|y_counter\(5),
	datad => VCC,
	cin => \inst_controller|Add2~3\,
	combout => \inst_controller|Add2~4_combout\,
	cout => \inst_controller|Add2~5\);

-- Location: LCCOMB_X55_Y10_N10
\inst_controller|Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Add2~6_combout\ = (\inst_controller|y_counter\(4) & ((\inst_controller|y_counter\(6) & (\inst_controller|Add2~5\ & VCC)) # (!\inst_controller|y_counter\(6) & (!\inst_controller|Add2~5\)))) # (!\inst_controller|y_counter\(4) & 
-- ((\inst_controller|y_counter\(6) & (!\inst_controller|Add2~5\)) # (!\inst_controller|y_counter\(6) & ((\inst_controller|Add2~5\) # (GND)))))
-- \inst_controller|Add2~7\ = CARRY((\inst_controller|y_counter\(4) & (!\inst_controller|y_counter\(6) & !\inst_controller|Add2~5\)) # (!\inst_controller|y_counter\(4) & ((!\inst_controller|Add2~5\) # (!\inst_controller|y_counter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|y_counter\(4),
	datab => \inst_controller|y_counter\(6),
	datad => VCC,
	cin => \inst_controller|Add2~5\,
	combout => \inst_controller|Add2~6_combout\,
	cout => \inst_controller|Add2~7\);

-- Location: LCCOMB_X55_Y10_N12
\inst_controller|Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Add2~8_combout\ = ((\inst_controller|y_counter\(5) $ (\inst_controller|y_counter\(7) $ (!\inst_controller|Add2~7\)))) # (GND)
-- \inst_controller|Add2~9\ = CARRY((\inst_controller|y_counter\(5) & ((\inst_controller|y_counter\(7)) # (!\inst_controller|Add2~7\))) # (!\inst_controller|y_counter\(5) & (\inst_controller|y_counter\(7) & !\inst_controller|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|y_counter\(5),
	datab => \inst_controller|y_counter\(7),
	datad => VCC,
	cin => \inst_controller|Add2~7\,
	combout => \inst_controller|Add2~8_combout\,
	cout => \inst_controller|Add2~9\);

-- Location: LCCOMB_X55_Y10_N14
\inst_controller|Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Add2~10_combout\ = (\inst_controller|y_counter\(6) & ((\inst_controller|y_counter\(8) & (\inst_controller|Add2~9\ & VCC)) # (!\inst_controller|y_counter\(8) & (!\inst_controller|Add2~9\)))) # (!\inst_controller|y_counter\(6) & 
-- ((\inst_controller|y_counter\(8) & (!\inst_controller|Add2~9\)) # (!\inst_controller|y_counter\(8) & ((\inst_controller|Add2~9\) # (GND)))))
-- \inst_controller|Add2~11\ = CARRY((\inst_controller|y_counter\(6) & (!\inst_controller|y_counter\(8) & !\inst_controller|Add2~9\)) # (!\inst_controller|y_counter\(6) & ((!\inst_controller|Add2~9\) # (!\inst_controller|y_counter\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|y_counter\(6),
	datab => \inst_controller|y_counter\(8),
	datad => VCC,
	cin => \inst_controller|Add2~9\,
	combout => \inst_controller|Add2~10_combout\,
	cout => \inst_controller|Add2~11\);

-- Location: LCCOMB_X55_Y10_N16
\inst_controller|Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Add2~12_combout\ = ((\inst_controller|y_counter\(9) $ (\inst_controller|y_counter\(7) $ (!\inst_controller|Add2~11\)))) # (GND)
-- \inst_controller|Add2~13\ = CARRY((\inst_controller|y_counter\(9) & ((\inst_controller|y_counter\(7)) # (!\inst_controller|Add2~11\))) # (!\inst_controller|y_counter\(9) & (\inst_controller|y_counter\(7) & !\inst_controller|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|y_counter\(9),
	datab => \inst_controller|y_counter\(7),
	datad => VCC,
	cin => \inst_controller|Add2~11\,
	combout => \inst_controller|Add2~12_combout\,
	cout => \inst_controller|Add2~13\);

-- Location: LCCOMB_X56_Y10_N6
\inst_controller|Add3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Add3~18_combout\ = (\inst_controller|x_counter\(7) & (\inst_controller|y_counter\(1) $ (VCC))) # (!\inst_controller|x_counter\(7) & (\inst_controller|y_counter\(1) & VCC))
-- \inst_controller|Add3~19\ = CARRY((\inst_controller|x_counter\(7) & \inst_controller|y_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|x_counter\(7),
	datab => \inst_controller|y_counter\(1),
	datad => VCC,
	combout => \inst_controller|Add3~18_combout\,
	cout => \inst_controller|Add3~19\);

-- Location: LCCOMB_X56_Y10_N8
\inst_controller|Add3~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Add3~20_combout\ = (\inst_controller|y_counter\(2) & ((\inst_controller|x_counter\(8) & (\inst_controller|Add3~19\ & VCC)) # (!\inst_controller|x_counter\(8) & (!\inst_controller|Add3~19\)))) # (!\inst_controller|y_counter\(2) & 
-- ((\inst_controller|x_counter\(8) & (!\inst_controller|Add3~19\)) # (!\inst_controller|x_counter\(8) & ((\inst_controller|Add3~19\) # (GND)))))
-- \inst_controller|Add3~21\ = CARRY((\inst_controller|y_counter\(2) & (!\inst_controller|x_counter\(8) & !\inst_controller|Add3~19\)) # (!\inst_controller|y_counter\(2) & ((!\inst_controller|Add3~19\) # (!\inst_controller|x_counter\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|y_counter\(2),
	datab => \inst_controller|x_counter\(8),
	datad => VCC,
	cin => \inst_controller|Add3~19\,
	combout => \inst_controller|Add3~20_combout\,
	cout => \inst_controller|Add3~21\);

-- Location: LCCOMB_X56_Y10_N10
\inst_controller|Add3~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Add3~22_combout\ = ((\inst_controller|x_counter\(9) $ (\inst_controller|Add2~0_combout\ $ (!\inst_controller|Add3~21\)))) # (GND)
-- \inst_controller|Add3~23\ = CARRY((\inst_controller|x_counter\(9) & ((\inst_controller|Add2~0_combout\) # (!\inst_controller|Add3~21\))) # (!\inst_controller|x_counter\(9) & (\inst_controller|Add2~0_combout\ & !\inst_controller|Add3~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|x_counter\(9),
	datab => \inst_controller|Add2~0_combout\,
	datad => VCC,
	cin => \inst_controller|Add3~21\,
	combout => \inst_controller|Add3~22_combout\,
	cout => \inst_controller|Add3~23\);

-- Location: LCCOMB_X56_Y10_N12
\inst_controller|Add3~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Add3~24_combout\ = (\inst_controller|Add2~2_combout\ & (!\inst_controller|Add3~23\)) # (!\inst_controller|Add2~2_combout\ & ((\inst_controller|Add3~23\) # (GND)))
-- \inst_controller|Add3~25\ = CARRY((!\inst_controller|Add3~23\) # (!\inst_controller|Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_controller|Add2~2_combout\,
	datad => VCC,
	cin => \inst_controller|Add3~23\,
	combout => \inst_controller|Add3~24_combout\,
	cout => \inst_controller|Add3~25\);

-- Location: LCCOMB_X56_Y10_N14
\inst_controller|Add3~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Add3~26_combout\ = (\inst_controller|Add2~4_combout\ & (\inst_controller|Add3~25\ $ (GND))) # (!\inst_controller|Add2~4_combout\ & (!\inst_controller|Add3~25\ & VCC))
-- \inst_controller|Add3~27\ = CARRY((\inst_controller|Add2~4_combout\ & !\inst_controller|Add3~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|Add2~4_combout\,
	datad => VCC,
	cin => \inst_controller|Add3~25\,
	combout => \inst_controller|Add3~26_combout\,
	cout => \inst_controller|Add3~27\);

-- Location: LCCOMB_X56_Y10_N16
\inst_controller|Add3~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Add3~28_combout\ = (\inst_controller|Add2~6_combout\ & (!\inst_controller|Add3~27\)) # (!\inst_controller|Add2~6_combout\ & ((\inst_controller|Add3~27\) # (GND)))
-- \inst_controller|Add3~29\ = CARRY((!\inst_controller|Add3~27\) # (!\inst_controller|Add2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|Add2~6_combout\,
	datad => VCC,
	cin => \inst_controller|Add3~27\,
	combout => \inst_controller|Add3~28_combout\,
	cout => \inst_controller|Add3~29\);

-- Location: LCCOMB_X56_Y10_N18
\inst_controller|Add3~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Add3~30_combout\ = (\inst_controller|Add2~8_combout\ & (\inst_controller|Add3~29\ $ (GND))) # (!\inst_controller|Add2~8_combout\ & (!\inst_controller|Add3~29\ & VCC))
-- \inst_controller|Add3~31\ = CARRY((\inst_controller|Add2~8_combout\ & !\inst_controller|Add3~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|Add2~8_combout\,
	datad => VCC,
	cin => \inst_controller|Add3~29\,
	combout => \inst_controller|Add3~30_combout\,
	cout => \inst_controller|Add3~31\);

-- Location: LCCOMB_X56_Y10_N20
\inst_controller|Add3~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Add3~32_combout\ = (\inst_controller|Add2~10_combout\ & (!\inst_controller|Add3~31\)) # (!\inst_controller|Add2~10_combout\ & ((\inst_controller|Add3~31\) # (GND)))
-- \inst_controller|Add3~33\ = CARRY((!\inst_controller|Add3~31\) # (!\inst_controller|Add2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|Add2~10_combout\,
	datad => VCC,
	cin => \inst_controller|Add3~31\,
	combout => \inst_controller|Add3~32_combout\,
	cout => \inst_controller|Add3~33\);

-- Location: LCCOMB_X56_Y10_N22
\inst_controller|Add3~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Add3~34_combout\ = (\inst_controller|Add2~12_combout\ & (\inst_controller|Add3~33\ $ (GND))) # (!\inst_controller|Add2~12_combout\ & (!\inst_controller|Add3~33\ & VCC))
-- \inst_controller|Add3~35\ = CARRY((\inst_controller|Add2~12_combout\ & !\inst_controller|Add3~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|Add2~12_combout\,
	datad => VCC,
	cin => \inst_controller|Add3~33\,
	combout => \inst_controller|Add3~34_combout\,
	cout => \inst_controller|Add3~35\);

-- Location: LCCOMB_X57_Y10_N22
\inst_controller|Add3~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Add3~50_combout\ = (\inst_controller|ADDRESS~0_combout\ & (!\inst_controller|LessThan11~1_combout\ & \inst_controller|Add3~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|ADDRESS~0_combout\,
	datac => \inst_controller|LessThan11~1_combout\,
	datad => \inst_controller|Add3~34_combout\,
	combout => \inst_controller|Add3~50_combout\);

-- Location: LCCOMB_X55_Y10_N18
\inst_controller|Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Add2~14_combout\ = (\inst_controller|y_counter\(8) & (!\inst_controller|Add2~13\)) # (!\inst_controller|y_counter\(8) & ((\inst_controller|Add2~13\) # (GND)))
-- \inst_controller|Add2~15\ = CARRY((!\inst_controller|Add2~13\) # (!\inst_controller|y_counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_controller|y_counter\(8),
	datad => VCC,
	cin => \inst_controller|Add2~13\,
	combout => \inst_controller|Add2~14_combout\,
	cout => \inst_controller|Add2~15\);

-- Location: LCCOMB_X56_Y10_N24
\inst_controller|Add3~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Add3~36_combout\ = (\inst_controller|Add2~14_combout\ & (!\inst_controller|Add3~35\)) # (!\inst_controller|Add2~14_combout\ & ((\inst_controller|Add3~35\) # (GND)))
-- \inst_controller|Add3~37\ = CARRY((!\inst_controller|Add3~35\) # (!\inst_controller|Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_controller|Add2~14_combout\,
	datad => VCC,
	cin => \inst_controller|Add3~35\,
	combout => \inst_controller|Add3~36_combout\,
	cout => \inst_controller|Add3~37\);

-- Location: LCCOMB_X56_Y10_N28
\inst_controller|Add3~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Add3~42_combout\ = (!\inst_controller|LessThan11~1_combout\ & (\inst_controller|ADDRESS~0_combout\ & \inst_controller|Add3~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_controller|LessThan11~1_combout\,
	datac => \inst_controller|ADDRESS~0_combout\,
	datad => \inst_controller|Add3~36_combout\,
	combout => \inst_controller|Add3~42_combout\);

-- Location: LCCOMB_X55_Y10_N20
\inst_controller|Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Add2~16_combout\ = \inst_controller|Add2~15\ $ (!\inst_controller|y_counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst_controller|y_counter\(9),
	cin => \inst_controller|Add2~15\,
	combout => \inst_controller|Add2~16_combout\);

-- Location: LCCOMB_X56_Y10_N26
\inst_controller|Add3~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Add3~38_combout\ = \inst_controller|Add3~37\ $ (!\inst_controller|Add2~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst_controller|Add2~16_combout\,
	cin => \inst_controller|Add3~37\,
	combout => \inst_controller|Add3~38_combout\);

-- Location: LCCOMB_X57_Y10_N28
\inst_controller|Add3~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Add3~43_combout\ = (\inst_controller|ADDRESS~0_combout\ & (!\inst_controller|LessThan11~1_combout\ & \inst_controller|Add3~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|ADDRESS~0_combout\,
	datac => \inst_controller|LessThan11~1_combout\,
	datad => \inst_controller|Add3~32_combout\,
	combout => \inst_controller|Add3~43_combout\);

-- Location: LCCOMB_X57_Y10_N0
\inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode731w[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode731w[3]~0_combout\ = (\inst_controller|Add3~50_combout\ & (\inst_controller|Add3~42_combout\ & (!\inst_controller|Add3~38_combout\ & \inst_controller|Add3~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|Add3~50_combout\,
	datab => \inst_controller|Add3~42_combout\,
	datac => \inst_controller|Add3~38_combout\,
	datad => \inst_controller|Add3~43_combout\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode731w[3]~0_combout\);

-- Location: IOIBUF_X58_Y0_N8
\din[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(0),
	o => \din[0]~input_o\);

-- Location: FF_X54_Y4_N17
\i_data_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \din[0]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \bus_register_write_process~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_data_reg(0));

-- Location: IOIBUF_X69_Y0_N22
\addr[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(0),
	o => \addr[0]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\addr[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(1),
	o => \addr[1]~input_o\);

-- Location: IOIBUF_X40_Y0_N15
\addr[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(2),
	o => \addr[2]~input_o\);

-- Location: IOIBUF_X69_Y0_N8
\addr[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(3),
	o => \addr[3]~input_o\);

-- Location: IOIBUF_X34_Y0_N15
\addr[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(4),
	o => \addr[4]~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\addr[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(5),
	o => \addr[5]~input_o\);

-- Location: IOIBUF_X34_Y0_N22
\addr[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(6),
	o => \addr[6]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\addr[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(7),
	o => \addr[7]~input_o\);

-- Location: IOIBUF_X36_Y0_N8
\addr[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(8),
	o => \addr[8]~input_o\);

-- Location: IOIBUF_X38_Y0_N22
\addr[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(9),
	o => \addr[9]~input_o\);

-- Location: IOIBUF_X38_Y0_N29
\addr[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(10),
	o => \addr[10]~input_o\);

-- Location: IOIBUF_X69_Y0_N1
\addr[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(11),
	o => \addr[11]~input_o\);

-- Location: IOIBUF_X69_Y0_N15
\addr[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(12),
	o => \addr[12]~input_o\);

-- Location: LCCOMB_X56_Y9_N24
\inst_controller|ADDRESS[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|ADDRESS[0]~1_combout\ = (\inst_controller|x_counter\(1) & (\inst_controller|ADDRESS~0_combout\ & !\inst_controller|LessThan11~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|x_counter\(1),
	datab => \inst_controller|ADDRESS~0_combout\,
	datad => \inst_controller|LessThan11~1_combout\,
	combout => \inst_controller|ADDRESS[0]~1_combout\);

-- Location: LCCOMB_X56_Y9_N14
\inst_controller|ADDRESS[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|ADDRESS[1]~2_combout\ = (\inst_controller|x_counter\(2) & (\inst_controller|ADDRESS~0_combout\ & !\inst_controller|LessThan11~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|x_counter\(2),
	datab => \inst_controller|ADDRESS~0_combout\,
	datad => \inst_controller|LessThan11~1_combout\,
	combout => \inst_controller|ADDRESS[1]~2_combout\);

-- Location: LCCOMB_X56_Y9_N12
\inst_controller|ADDRESS[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|ADDRESS[2]~3_combout\ = (\inst_controller|x_counter\(3) & (\inst_controller|ADDRESS~0_combout\ & !\inst_controller|LessThan11~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|x_counter\(3),
	datab => \inst_controller|ADDRESS~0_combout\,
	datad => \inst_controller|LessThan11~1_combout\,
	combout => \inst_controller|ADDRESS[2]~3_combout\);

-- Location: LCCOMB_X56_Y9_N26
\inst_controller|ADDRESS[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|ADDRESS[3]~4_combout\ = (\inst_controller|x_counter\(4) & (\inst_controller|ADDRESS~0_combout\ & !\inst_controller|LessThan11~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_controller|x_counter\(4),
	datac => \inst_controller|ADDRESS~0_combout\,
	datad => \inst_controller|LessThan11~1_combout\,
	combout => \inst_controller|ADDRESS[3]~4_combout\);

-- Location: LCCOMB_X56_Y9_N8
\inst_controller|ADDRESS[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|ADDRESS[4]~5_combout\ = (\inst_controller|x_counter\(5) & (\inst_controller|ADDRESS~0_combout\ & !\inst_controller|LessThan11~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_controller|x_counter\(5),
	datac => \inst_controller|ADDRESS~0_combout\,
	datad => \inst_controller|LessThan11~1_combout\,
	combout => \inst_controller|ADDRESS[4]~5_combout\);

-- Location: LCCOMB_X56_Y9_N10
\inst_controller|ADDRESS[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|ADDRESS[5]~6_combout\ = (\inst_controller|x_counter\(6) & (\inst_controller|ADDRESS~0_combout\ & !\inst_controller|LessThan11~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_controller|x_counter\(6),
	datac => \inst_controller|ADDRESS~0_combout\,
	datad => \inst_controller|LessThan11~1_combout\,
	combout => \inst_controller|ADDRESS[5]~6_combout\);

-- Location: LCCOMB_X56_Y9_N4
\inst_controller|Add3~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Add3~40_combout\ = (\inst_controller|ADDRESS~0_combout\ & (\inst_controller|Add3~18_combout\ & !\inst_controller|LessThan11~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_controller|ADDRESS~0_combout\,
	datac => \inst_controller|Add3~18_combout\,
	datad => \inst_controller|LessThan11~1_combout\,
	combout => \inst_controller|Add3~40_combout\);

-- Location: LCCOMB_X57_Y10_N6
\inst_controller|Add3~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Add3~41_combout\ = (\inst_controller|ADDRESS~0_combout\ & (!\inst_controller|LessThan11~1_combout\ & \inst_controller|Add3~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|ADDRESS~0_combout\,
	datac => \inst_controller|LessThan11~1_combout\,
	datad => \inst_controller|Add3~20_combout\,
	combout => \inst_controller|Add3~41_combout\);

-- Location: LCCOMB_X57_Y10_N4
\inst_controller|Add3~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Add3~45_combout\ = (\inst_controller|ADDRESS~0_combout\ & (!\inst_controller|LessThan11~1_combout\ & \inst_controller|Add3~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|ADDRESS~0_combout\,
	datac => \inst_controller|LessThan11~1_combout\,
	datad => \inst_controller|Add3~22_combout\,
	combout => \inst_controller|Add3~45_combout\);

-- Location: LCCOMB_X54_Y10_N6
\inst_controller|Add3~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Add3~46_combout\ = (\inst_controller|Add3~24_combout\ & (!\inst_controller|LessThan11~1_combout\ & \inst_controller|ADDRESS~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|Add3~24_combout\,
	datac => \inst_controller|LessThan11~1_combout\,
	datad => \inst_controller|ADDRESS~0_combout\,
	combout => \inst_controller|Add3~46_combout\);

-- Location: LCCOMB_X54_Y10_N0
\inst_controller|Add3~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Add3~47_combout\ = (\inst_controller|ADDRESS~0_combout\ & (!\inst_controller|LessThan11~1_combout\ & \inst_controller|Add3~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_controller|ADDRESS~0_combout\,
	datac => \inst_controller|LessThan11~1_combout\,
	datad => \inst_controller|Add3~26_combout\,
	combout => \inst_controller|Add3~47_combout\);

-- Location: LCCOMB_X54_Y10_N2
\inst_controller|Add3~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Add3~48_combout\ = (\inst_controller|ADDRESS~0_combout\ & (!\inst_controller|LessThan11~1_combout\ & \inst_controller|Add3~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_controller|ADDRESS~0_combout\,
	datac => \inst_controller|LessThan11~1_combout\,
	datad => \inst_controller|Add3~28_combout\,
	combout => \inst_controller|Add3~48_combout\);

-- Location: LCCOMB_X57_Y10_N2
\inst_controller|Add3~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Add3~49_combout\ = (\inst_controller|ADDRESS~0_combout\ & (!\inst_controller|LessThan11~1_combout\ & \inst_controller|Add3~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|ADDRESS~0_combout\,
	datac => \inst_controller|LessThan11~1_combout\,
	datad => \inst_controller|Add3~30_combout\,
	combout => \inst_controller|Add3~49_combout\);

-- Location: M9K_X73_Y8_N0
\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a21\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DP_RAM:inst_DPRAM|altsyncram:ram_rtl_0|altsyncram_ckc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode549w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clock_25~inputclkctrl_outclk\,
	ena0 => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode549w[3]~1_combout\,
	ena1 => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode731w[3]~0_combout\,
	portadatain => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\,
	portaaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\,
	portbaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X54_Y8_N24
\inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode529w[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode529w[3]~0_combout\ = (!\addr[14]~input_o\ & (\addr[15]~input_o\ & \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode549w[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[14]~input_o\,
	datac => \addr[15]~input_o\,
	datad => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode549w[3]~0_combout\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode529w[3]~0_combout\);

-- Location: LCCOMB_X57_Y10_N26
\inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode711w[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode711w[3]~0_combout\ = (!\inst_controller|Add3~38_combout\ & (\inst_controller|Add3~42_combout\ & (!\inst_controller|Add3~50_combout\ & \inst_controller|Add3~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|Add3~38_combout\,
	datab => \inst_controller|Add3~42_combout\,
	datac => \inst_controller|Add3~50_combout\,
	datad => \inst_controller|Add3~43_combout\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode711w[3]~0_combout\);

-- Location: M9K_X73_Y11_N0
\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a15\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DP_RAM:inst_DPRAM|altsyncram:ram_rtl_0|altsyncram_ckc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode529w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clock_25~inputclkctrl_outclk\,
	ena0 => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode529w[3]~0_combout\,
	ena1 => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode711w[3]~0_combout\,
	portadatain => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

-- Location: FF_X57_Y10_N23
\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~inputclkctrl_outclk\,
	d => \inst_controller|Add3~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(1));

-- Location: LCCOMB_X55_Y9_N24
\inst_controller|Add3~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|Add3~44_combout\ = (\inst_controller|ADDRESS~0_combout\ & (!\inst_controller|LessThan11~1_combout\ & \inst_controller|Add3~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|ADDRESS~0_combout\,
	datac => \inst_controller|LessThan11~1_combout\,
	datad => \inst_controller|Add3~38_combout\,
	combout => \inst_controller|Add3~44_combout\);

-- Location: FF_X55_Y9_N25
\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~inputclkctrl_outclk\,
	d => \inst_controller|Add3~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(3));

-- Location: FF_X57_Y10_N29
\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~inputclkctrl_outclk\,
	d => \inst_controller|Add3~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(0));

-- Location: FF_X56_Y10_N29
\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~inputclkctrl_outclk\,
	d => \inst_controller|Add3~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(2));

-- Location: LCCOMB_X54_Y9_N14
\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~2_combout\ = (!\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(3) & (\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(0) & \inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(3),
	datac => \inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(0),
	datad => \inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(2),
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~2_combout\);

-- Location: LCCOMB_X54_Y7_N22
\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~4_combout\ = (\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~2_combout\ & ((\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(1) & 
-- (\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a21~portbdataout\)) # (!\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a15~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a21~portbdataout\,
	datab => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a15~portbdataout\,
	datac => \inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(1),
	datad => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~2_combout\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~4_combout\);

-- Location: LCCOMB_X54_Y8_N4
\inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode489w[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode489w[3]~4_combout\ = (!\addr[15]~input_o\ & !\addr[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \addr[15]~input_o\,
	datad => \addr[14]~input_o\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode489w[3]~4_combout\);

-- Location: LCCOMB_X54_Y8_N20
\inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode568w[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode568w[3]~0_combout\ = (\inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode489w[3]~4_combout\ & (!\addr[13]~input_o\ & (\addr[16]~input_o\ & \s_we~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode489w[3]~4_combout\,
	datab => \addr[13]~input_o\,
	datac => \addr[16]~input_o\,
	datad => \s_we~q\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode568w[3]~0_combout\);

-- Location: LCCOMB_X56_Y10_N2
\inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode741w[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode741w[3]~2_combout\ = (!\inst_controller|LessThan11~1_combout\ & (\inst_controller|ADDRESS~0_combout\ & !\inst_controller|Add3~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_controller|LessThan11~1_combout\,
	datac => \inst_controller|ADDRESS~0_combout\,
	datad => \inst_controller|Add3~32_combout\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode741w[3]~2_combout\);

-- Location: LCCOMB_X56_Y10_N4
\inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode741w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode741w\(3) = (\inst_controller|Add3~38_combout\ & (!\inst_controller|Add3~42_combout\ & (\inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode741w[3]~2_combout\ & 
-- !\inst_controller|Add3~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|Add3~38_combout\,
	datab => \inst_controller|Add3~42_combout\,
	datac => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode741w[3]~2_combout\,
	datad => \inst_controller|Add3~50_combout\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode741w\(3));

-- Location: M9K_X33_Y9_N0
\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a24\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DP_RAM:inst_DPRAM|altsyncram:ram_rtl_0|altsyncram_ckc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode568w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clock_25~inputclkctrl_outclk\,
	ena0 => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode568w[3]~0_combout\,
	ena1 => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode741w\(3),
	portadatain => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\,
	portbaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X54_Y8_N26
\inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode579w[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode579w[3]~0_combout\ = (\inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode489w[3]~4_combout\ & (\addr[13]~input_o\ & (\addr[16]~input_o\ & \s_we~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode489w[3]~4_combout\,
	datab => \addr[13]~input_o\,
	datac => \addr[16]~input_o\,
	datad => \s_we~q\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode579w[3]~0_combout\);

-- Location: LCCOMB_X57_Y10_N18
\inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode752w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode752w\(3) = (\inst_controller|Add3~38_combout\ & (!\inst_controller|Add3~42_combout\ & (!\inst_controller|Add3~50_combout\ & \inst_controller|Add3~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|Add3~38_combout\,
	datab => \inst_controller|Add3~42_combout\,
	datac => \inst_controller|Add3~50_combout\,
	datad => \inst_controller|Add3~43_combout\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode752w\(3));

-- Location: IOIBUF_X56_Y0_N29
\din[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(1),
	o => \din[1]~input_o\);

-- Location: FF_X54_Y4_N19
\i_data_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \din[1]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \bus_register_write_process~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_data_reg(1));

-- Location: M9K_X53_Y13_N0
\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a27\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DP_RAM:inst_DPRAM|altsyncram:ram_rtl_0|altsyncram_ckc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode579w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clock_25~inputclkctrl_outclk\,
	ena0 => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode579w[3]~0_combout\,
	ena1 => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode752w\(3),
	portadatain => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\,
	portbaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X54_Y9_N8
\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~1_combout\ = (\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a27~portbdataout\))) # 
-- (!\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(0) & (\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a24~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a24~portbdataout\,
	datac => \inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(0),
	datad => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a27~portbdataout\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~1_combout\);

-- Location: LCCOMB_X54_Y9_N16
\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~0_combout\ = (!\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(3) & (!\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(0) & \inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(3),
	datac => \inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(0),
	datad => \inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(2),
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~0_combout\);

-- Location: LCCOMB_X54_Y8_N6
\inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode539w[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode539w[3]~0_combout\ = (!\addr[13]~input_o\ & (!\addr[16]~input_o\ & \s_we~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr[13]~input_o\,
	datac => \addr[16]~input_o\,
	datad => \s_we~q\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode539w[3]~0_combout\);

-- Location: LCCOMB_X54_Y8_N28
\inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode539w[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode539w[3]~1_combout\ = (\addr[14]~input_o\ & (\addr[15]~input_o\ & \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode539w[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[14]~input_o\,
	datac => \addr[15]~input_o\,
	datad => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode539w[3]~0_combout\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode539w[3]~1_combout\);

-- Location: LCCOMB_X56_Y10_N30
\inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode721w[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode721w[3]~0_combout\ = (!\inst_controller|Add3~38_combout\ & (\inst_controller|Add3~42_combout\ & (\inst_controller|Add3~34_combout\ & 
-- \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode741w[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|Add3~38_combout\,
	datab => \inst_controller|Add3~42_combout\,
	datac => \inst_controller|Add3~34_combout\,
	datad => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode741w[3]~2_combout\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode721w[3]~0_combout\);

-- Location: M9K_X73_Y5_N0
\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a18\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DP_RAM:inst_DPRAM|altsyncram:ram_rtl_0|altsyncram_ckc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode539w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clock_25~inputclkctrl_outclk\,
	ena0 => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode539w[3]~1_combout\,
	ena1 => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode721w[3]~0_combout\,
	portadatain => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\,
	portbaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X54_Y8_N14
\inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode519w[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode519w[3]~0_combout\ = (!\addr[14]~input_o\ & (\addr[15]~input_o\ & \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode539w[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[14]~input_o\,
	datac => \addr[15]~input_o\,
	datad => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode539w[3]~0_combout\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode519w[3]~0_combout\);

-- Location: LCCOMB_X57_Y10_N16
\inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode701w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode701w\(3) = (!\inst_controller|Add3~34_combout\ & (\inst_controller|Add3~36_combout\ & (!\inst_controller|Add3~38_combout\ & 
-- \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode741w[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|Add3~34_combout\,
	datab => \inst_controller|Add3~36_combout\,
	datac => \inst_controller|Add3~38_combout\,
	datad => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode741w[3]~2_combout\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode701w\(3));

-- Location: M9K_X53_Y17_N0
\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a12\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DP_RAM:inst_DPRAM|altsyncram:ram_rtl_0|altsyncram_ckc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode519w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clock_25~inputclkctrl_outclk\,
	ena0 => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode519w[3]~0_combout\,
	ena1 => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode701w\(3),
	portadatain => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X54_Y9_N18
\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~0_combout\ = (\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~0_combout\ & ((\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(1) & 
-- (\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a18~portbdataout\)) # (!\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a12~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~0_combout\,
	datac => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a18~portbdataout\,
	datad => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a12~portbdataout\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~0_combout\);

-- Location: LCCOMB_X54_Y9_N30
\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~2_combout\ = (\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~0_combout\) # ((!\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(2) & 
-- (\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(3) & \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(2),
	datab => \inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(3),
	datac => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~1_combout\,
	datad => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~0_combout\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~2_combout\);

-- Location: LCCOMB_X54_Y8_N8
\inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode489w[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode489w[3]~5_combout\ = (!\addr[14]~input_o\ & (!\addr[15]~input_o\ & \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode549w[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[14]~input_o\,
	datac => \addr[15]~input_o\,
	datad => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode549w[3]~0_combout\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode489w[3]~5_combout\);

-- Location: LCCOMB_X57_Y10_N14
\inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode671w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode671w\(3) = (!\inst_controller|Add3~38_combout\ & (!\inst_controller|Add3~42_combout\ & (!\inst_controller|Add3~50_combout\ & \inst_controller|Add3~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|Add3~38_combout\,
	datab => \inst_controller|Add3~42_combout\,
	datac => \inst_controller|Add3~50_combout\,
	datad => \inst_controller|Add3~43_combout\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode671w\(3));

-- Location: M9K_X53_Y4_N0
\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a3\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DP_RAM:inst_DPRAM|altsyncram:ram_rtl_0|altsyncram_ckc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode489w[3]~5_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clock_25~inputclkctrl_outclk\,
	ena0 => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode489w[3]~5_combout\,
	ena1 => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode671w\(3),
	portadatain => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X54_Y8_N12
\inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode509w[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode509w[3]~0_combout\ = (\addr[14]~input_o\ & (!\addr[15]~input_o\ & \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode549w[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[14]~input_o\,
	datac => \addr[15]~input_o\,
	datad => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode549w[3]~0_combout\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode509w[3]~0_combout\);

-- Location: LCCOMB_X57_Y10_N24
\inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode691w[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode691w[3]~0_combout\ = (\inst_controller|Add3~50_combout\ & (!\inst_controller|Add3~42_combout\ & (!\inst_controller|Add3~38_combout\ & \inst_controller|Add3~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|Add3~50_combout\,
	datab => \inst_controller|Add3~42_combout\,
	datac => \inst_controller|Add3~38_combout\,
	datad => \inst_controller|Add3~43_combout\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode691w[3]~0_combout\);

-- Location: M9K_X53_Y7_N0
\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a9\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DP_RAM:inst_DPRAM|altsyncram:ram_rtl_0|altsyncram_ckc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode509w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clock_25~inputclkctrl_outclk\,
	ena0 => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode509w[3]~0_combout\,
	ena1 => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode691w[3]~0_combout\,
	portadatain => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X54_Y9_N20
\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~1_combout\ = (!\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(3) & (\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(0) & !\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(3),
	datac => \inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(0),
	datad => \inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(2),
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~1_combout\);

-- Location: LCCOMB_X54_Y7_N8
\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~3_combout\ = (\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~1_combout\ & ((\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(1) & 
-- ((\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a9~portbdataout\))) # (!\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(1) & (\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a3~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a3~portbdataout\,
	datac => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a9~portbdataout\,
	datad => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~1_combout\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~3_combout\);

-- Location: LCCOMB_X54_Y9_N0
\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~3_combout\ = (!\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(3) & (!\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(0) & !\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(3),
	datac => \inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(0),
	datad => \inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(2),
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~3_combout\);

-- Location: LCCOMB_X54_Y8_N22
\inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode472w[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode472w[3]~4_combout\ = (!\addr[14]~input_o\ & (!\addr[15]~input_o\ & \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode539w[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[14]~input_o\,
	datac => \addr[15]~input_o\,
	datad => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode539w[3]~0_combout\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode472w[3]~4_combout\);

-- Location: LCCOMB_X57_Y10_N12
\inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode654w[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode654w[3]~0_combout\ = (\inst_controller|Add3~32_combout\) # ((\inst_controller|Add3~34_combout\) # ((\inst_controller|Add3~38_combout\) # (\inst_controller|Add3~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|Add3~32_combout\,
	datab => \inst_controller|Add3~34_combout\,
	datac => \inst_controller|Add3~38_combout\,
	datad => \inst_controller|Add3~36_combout\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode654w[3]~0_combout\);

-- Location: LCCOMB_X57_Y10_N10
\inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode654w[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode654w[3]~1_combout\ = ((\inst_controller|LessThan11~1_combout\) # (!\inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode654w[3]~0_combout\)) # (!\inst_controller|ADDRESS~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|ADDRESS~0_combout\,
	datac => \inst_controller|LessThan11~1_combout\,
	datad => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode654w[3]~0_combout\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode654w[3]~1_combout\);

-- Location: M9K_X73_Y10_N0
\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DP_RAM:inst_DPRAM|altsyncram:ram_rtl_0|altsyncram_ckc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode472w[3]~4_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clock_25~inputclkctrl_outclk\,
	ena0 => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode472w[3]~4_combout\,
	ena1 => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode654w[3]~1_combout\,
	portadatain => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X54_Y8_N10
\inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode499w[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode499w[3]~0_combout\ = (\addr[14]~input_o\ & (!\addr[15]~input_o\ & \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode539w[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[14]~input_o\,
	datac => \addr[15]~input_o\,
	datad => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode539w[3]~0_combout\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode499w[3]~0_combout\);

-- Location: LCCOMB_X56_Y10_N0
\inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode681w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode681w\(3) = (!\inst_controller|Add3~38_combout\ & (\inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode741w[3]~2_combout\ & (\inst_controller|Add3~34_combout\ & 
-- !\inst_controller|Add3~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|Add3~38_combout\,
	datab => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode741w[3]~2_combout\,
	datac => \inst_controller|Add3~34_combout\,
	datad => \inst_controller|Add3~42_combout\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode681w\(3));

-- Location: M9K_X73_Y12_N0
\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a6\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DP_RAM:inst_DPRAM|altsyncram:ram_rtl_0|altsyncram_ckc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode499w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clock_25~inputclkctrl_outclk\,
	ena0 => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode499w[3]~0_combout\,
	ena1 => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode681w\(3),
	portadatain => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X54_Y9_N10
\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~5_combout\ = (\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~3_combout\ & ((\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(1) & 
-- ((\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\))) # (!\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(1) & (\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~3_combout\,
	datac => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~5_combout\);

-- Location: LCCOMB_X54_Y7_N20
\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~6_combout\ = (\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~4_combout\) # ((\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~2_combout\) # 
-- ((\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~3_combout\) # (\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~4_combout\,
	datab => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~2_combout\,
	datac => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~3_combout\,
	datad => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~5_combout\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~6_combout\);

-- Location: M9K_X53_Y16_N0
\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a7\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DP_RAM:inst_DPRAM|altsyncram:ram_rtl_0|altsyncram_ckc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode499w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clock_25~inputclkctrl_outclk\,
	ena0 => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode499w[3]~0_combout\,
	ena1 => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode681w\(3),
	portadatain => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

-- Location: M9K_X73_Y6_N0
\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a1\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DP_RAM:inst_DPRAM|altsyncram:ram_rtl_0|altsyncram_ckc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode472w[3]~4_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clock_25~inputclkctrl_outclk\,
	ena0 => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode472w[3]~4_combout\,
	ena1 => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode654w[3]~1_combout\,
	portadatain => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X54_Y9_N22
\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~5_combout\ = (\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~3_combout\ & ((\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(1) & 
-- (\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a7~portbdataout\)) # (!\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a7~portbdataout\,
	datab => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~3_combout\,
	datac => \inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(1),
	datad => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~5_combout\);

-- Location: M9K_X53_Y2_N0
\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a4\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DP_RAM:inst_DPRAM|altsyncram:ram_rtl_0|altsyncram_ckc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode489w[3]~5_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clock_25~inputclkctrl_outclk\,
	ena0 => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode489w[3]~5_combout\,
	ena1 => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode671w\(3),
	portadatain => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: M9K_X73_Y7_N0
\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a10\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DP_RAM:inst_DPRAM|altsyncram:ram_rtl_0|altsyncram_ckc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode509w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clock_25~inputclkctrl_outclk\,
	ena0 => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode509w[3]~0_combout\,
	ena1 => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode691w[3]~0_combout\,
	portadatain => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X54_Y7_N18
\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~3_combout\ = (\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~1_combout\ & ((\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(1) & 
-- ((\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a10~portbdataout\))) # (!\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(1) & (\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a4~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~1_combout\,
	datac => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	datad => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a10~portbdataout\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~3_combout\);

-- Location: M9K_X53_Y9_N0
\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a22\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DP_RAM:inst_DPRAM|altsyncram:ram_rtl_0|altsyncram_ckc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode549w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clock_25~inputclkctrl_outclk\,
	ena0 => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode549w[3]~1_combout\,
	ena1 => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode731w[3]~0_combout\,
	portadatain => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\,
	portbaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\);

-- Location: M9K_X53_Y11_N0
\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a16\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DP_RAM:inst_DPRAM|altsyncram:ram_rtl_0|altsyncram_ckc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode529w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clock_25~inputclkctrl_outclk\,
	ena0 => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode529w[3]~0_combout\,
	ena1 => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode711w[3]~0_combout\,
	portadatain => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\,
	portbaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X54_Y7_N4
\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~4_combout\ = (\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~2_combout\ & ((\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(1) & 
-- (\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a22~portbdataout\)) # (!\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a16~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~2_combout\,
	datac => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a22~portbdataout\,
	datad => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a16~portbdataout\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~4_combout\);

-- Location: M9K_X53_Y15_N0
\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a13\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DP_RAM:inst_DPRAM|altsyncram:ram_rtl_0|altsyncram_ckc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode519w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clock_25~inputclkctrl_outclk\,
	ena0 => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode519w[3]~0_combout\,
	ena1 => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode701w\(3),
	portadatain => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

-- Location: M9K_X73_Y4_N0
\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a19\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DP_RAM:inst_DPRAM|altsyncram:ram_rtl_0|altsyncram_ckc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode539w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clock_25~inputclkctrl_outclk\,
	ena0 => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode539w[3]~1_combout\,
	ena1 => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode721w[3]~0_combout\,
	portadatain => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\,
	portaaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\,
	portbaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X54_Y9_N4
\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~0_combout\ = (\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~0_combout\ & ((\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(1) & 
-- ((\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a19~portbdataout\))) # (!\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(1) & (\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a13~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a13~portbdataout\,
	datab => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~0_combout\,
	datac => \inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(1),
	datad => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a19~portbdataout\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~0_combout\);

-- Location: M9K_X33_Y8_N0
\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a25\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DP_RAM:inst_DPRAM|altsyncram:ram_rtl_0|altsyncram_ckc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode568w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clock_25~inputclkctrl_outclk\,
	ena0 => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode568w[3]~0_combout\,
	ena1 => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode741w\(3),
	portadatain => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\,
	portaaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\,
	portbaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X54_Y9_N2
\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~1_combout\ = (\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(0) & (\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a28\)) # (!\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a25~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a28\,
	datac => \inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(0),
	datad => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a25~portbdataout\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~1_combout\);

-- Location: LCCOMB_X54_Y9_N24
\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~2_combout\ = (\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~0_combout\) # ((!\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(2) & 
-- (\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(3) & \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(2),
	datab => \inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(3),
	datac => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~0_combout\,
	datad => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~1_combout\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~2_combout\);

-- Location: LCCOMB_X54_Y7_N14
\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~6_combout\ = (\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~5_combout\) # ((\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~3_combout\) # 
-- ((\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~4_combout\) # (\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~5_combout\,
	datab => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~3_combout\,
	datac => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~4_combout\,
	datad => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~2_combout\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~6_combout\);

-- Location: IOIBUF_X51_Y0_N15
\din[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(2),
	o => \din[2]~input_o\);

-- Location: LCCOMB_X54_Y4_N20
\i_data_reg[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i_data_reg[2]~feeder_combout\ = \din[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[2]~input_o\,
	combout => \i_data_reg[2]~feeder_combout\);

-- Location: FF_X54_Y4_N21
\i_data_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i_data_reg[2]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \bus_register_write_process~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_data_reg(2));

-- Location: M9K_X73_Y9_N0
\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a8\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DP_RAM:inst_DPRAM|altsyncram:ram_rtl_0|altsyncram_ckc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode499w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clock_25~inputclkctrl_outclk\,
	ena0 => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode499w[3]~0_combout\,
	ena1 => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode681w\(3),
	portadatain => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

-- Location: M9K_X53_Y6_N0
\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a2\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DP_RAM:inst_DPRAM|altsyncram:ram_rtl_0|altsyncram_ckc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode472w[3]~4_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clock_25~inputclkctrl_outclk\,
	ena0 => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode472w[3]~4_combout\,
	ena1 => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode654w[3]~1_combout\,
	portadatain => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X54_Y9_N6
\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~9_combout\ = (\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~3_combout\ & ((\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(1) & 
-- (\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\)) # (!\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	datab => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~3_combout\,
	datac => \inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(1),
	datad => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~9_combout\);

-- Location: M9K_X53_Y3_N0
\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a11\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DP_RAM:inst_DPRAM|altsyncram:ram_rtl_0|altsyncram_ckc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode509w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clock_25~inputclkctrl_outclk\,
	ena0 => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode509w[3]~0_combout\,
	ena1 => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode691w[3]~0_combout\,
	portadatain => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

-- Location: M9K_X53_Y5_N0
\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a5\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DP_RAM:inst_DPRAM|altsyncram:ram_rtl_0|altsyncram_ckc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode489w[3]~5_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clock_25~inputclkctrl_outclk\,
	ena0 => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode489w[3]~5_combout\,
	ena1 => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode671w\(3),
	portadatain => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X54_Y7_N16
\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~7_combout\ = (\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~1_combout\ & ((\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(1) & 
-- (\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a11~portbdataout\)) # (!\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a5~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a11~portbdataout\,
	datab => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~1_combout\,
	datac => \inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(1),
	datad => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a5~portbdataout\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~7_combout\);

-- Location: M9K_X53_Y8_N0
\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a17\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DP_RAM:inst_DPRAM|altsyncram:ram_rtl_0|altsyncram_ckc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode529w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clock_25~inputclkctrl_outclk\,
	ena0 => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode529w[3]~0_combout\,
	ena1 => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode711w[3]~0_combout\,
	portadatain => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portaaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\,
	portbaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\);

-- Location: M9K_X53_Y12_N0
\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a23\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DP_RAM:inst_DPRAM|altsyncram:ram_rtl_0|altsyncram_ckc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode549w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clock_25~inputclkctrl_outclk\,
	ena0 => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode549w[3]~1_combout\,
	ena1 => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode731w[3]~0_combout\,
	portadatain => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\,
	portaaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\,
	portbaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X54_Y9_N28
\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~8_combout\ = (\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~2_combout\ & ((\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(1) & 
-- ((\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a23~portbdataout\))) # (!\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(1) & (\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a17~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a17~portbdataout\,
	datac => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~2_combout\,
	datad => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a23~portbdataout\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~8_combout\);

-- Location: M9K_X53_Y1_N0
\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a20\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DP_RAM:inst_DPRAM|altsyncram:ram_rtl_0|altsyncram_ckc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode539w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clock_25~inputclkctrl_outclk\,
	ena0 => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode539w[3]~1_combout\,
	ena1 => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode721w[3]~0_combout\,
	portadatain => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\,
	portbaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\);

-- Location: M9K_X53_Y14_N0
\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a14\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DP_RAM:inst_DPRAM|altsyncram:ram_rtl_0|altsyncram_ckc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode519w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clock_25~inputclkctrl_outclk\,
	ena0 => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode519w[3]~0_combout\,
	ena1 => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode701w\(3),
	portadatain => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X54_Y9_N12
\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~4_combout\ = (\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~0_combout\ & ((\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(1) & 
-- (\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a20~portbdataout\)) # (!\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a14~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a20~portbdataout\,
	datab => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~0_combout\,
	datac => \inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(1),
	datad => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a14~portbdataout\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~4_combout\);

-- Location: M9K_X53_Y10_N0
\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a29\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DP_RAM:inst_DPRAM|altsyncram:ram_rtl_0|altsyncram_ckc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode579w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clock_25~inputclkctrl_outclk\,
	ena0 => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode579w[3]~0_combout\,
	ena1 => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode752w\(3),
	portadatain => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\,
	portaaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\,
	portbaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\);

-- Location: M9K_X33_Y10_N0
\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a26\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DP_RAM:inst_DPRAM|altsyncram:ram_rtl_0|altsyncram_ckc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode568w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clock_25~inputclkctrl_outclk\,
	ena0 => \inst_DPRAM|ram_rtl_0|auto_generated|decode2|w_anode568w[3]~0_combout\,
	ena1 => \inst_DPRAM|ram_rtl_0|auto_generated|rden_decode_b|w_anode741w\(3),
	portadatain => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\,
	portbaddr => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X52_Y10_N16
\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~5_combout\ = (\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(0) & (\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a29~portbdataout\)) # (!\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(0) 
-- & ((\inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a26~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a29~portbdataout\,
	datac => \inst_DPRAM|ram_rtl_0|auto_generated|ram_block1a26~portbdataout\,
	datad => \inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(0),
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~5_combout\);

-- Location: LCCOMB_X54_Y9_N26
\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~6_combout\ = (\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~4_combout\) # ((\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(3) & 
-- (\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~5_combout\ & !\inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~4_combout\,
	datab => \inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(3),
	datac => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~5_combout\,
	datad => \inst_DPRAM|ram_rtl_0|auto_generated|address_reg_b\(2),
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~6_combout\);

-- Location: LCCOMB_X54_Y7_N26
\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~10_combout\ = (\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~9_combout\) # ((\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~7_combout\) # 
-- ((\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~8_combout\) # (\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~9_combout\,
	datab => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~7_combout\,
	datac => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~8_combout\,
	datad => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~6_combout\,
	combout => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~10_combout\);

-- Location: LCCOMB_X55_Y10_N30
\inst_controller|LessThan11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|LessThan11~0_combout\ = (\inst_controller|y_counter\(2)) # ((\inst_controller|y_counter\(3)) # ((\inst_controller|y_counter\(4)) # (\inst_controller|y_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|y_counter\(2),
	datab => \inst_controller|y_counter\(3),
	datac => \inst_controller|y_counter\(4),
	datad => \inst_controller|y_counter\(0),
	combout => \inst_controller|LessThan11~0_combout\);

-- Location: LCCOMB_X57_Y10_N8
\inst_controller|VGA_B[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|VGA_B[0]~0_combout\ = (!\inst_controller|y_counter\(9) & ((!\inst_controller|x_counter\(9)) # (!\inst_controller|x_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|x_counter\(8),
	datab => \inst_controller|y_counter\(9),
	datad => \inst_controller|x_counter\(9),
	combout => \inst_controller|VGA_B[0]~0_combout\);

-- Location: LCCOMB_X57_Y10_N30
\inst_controller|VGA_B[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|VGA_B[0]~1_combout\ = (\inst_controller|VGA_B[0]~0_combout\ & (((!\inst_controller|LessThan11~0_combout\ & !\inst_controller|y_counter\(1))) # (!\inst_controller|LessThan11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|LessThan11~0_combout\,
	datab => \inst_controller|y_counter\(1),
	datac => \inst_controller|LessThan11~1_combout\,
	datad => \inst_controller|VGA_B[0]~0_combout\,
	combout => \inst_controller|VGA_B[0]~1_combout\);

-- Location: LCCOMB_X56_Y9_N18
\inst_controller|LessThan9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|LessThan9~0_combout\ = (\inst_controller|x_counter\(1)) # ((\inst_controller|x_counter\(6)) # ((\inst_controller|x_counter\(0)) # (!\inst_controller|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|x_counter\(1),
	datab => \inst_controller|x_counter\(6),
	datac => \inst_controller|x_counter\(0),
	datad => \inst_controller|Equal0~0_combout\,
	combout => \inst_controller|LessThan9~0_combout\);

-- Location: LCCOMB_X57_Y9_N28
\inst_controller|VGA_B[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|VGA_B[0]~2_combout\ = (\inst_controller|VGA_B[0]~1_combout\ & (((!\inst_controller|LessThan9~0_combout\) # (!\inst_controller|x_counter\(7))) # (!\inst_controller|x_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|x_counter\(9),
	datab => \inst_controller|x_counter\(7),
	datac => \inst_controller|VGA_B[0]~1_combout\,
	datad => \inst_controller|LessThan9~0_combout\,
	combout => \inst_controller|VGA_B[0]~2_combout\);

-- Location: LCCOMB_X54_Y7_N12
\inst_controller|VGA_R[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|VGA_R\(0) = (\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~6_combout\ & \inst_controller|VGA_B[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result0w~6_combout\,
	datad => \inst_controller|VGA_B[0]~2_combout\,
	combout => \inst_controller|VGA_R\(0));

-- Location: LCCOMB_X54_Y7_N6
\inst_controller|VGA_G[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|VGA_G\(0) = (\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~6_combout\ & \inst_controller|VGA_B[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result1w~6_combout\,
	datad => \inst_controller|VGA_B[0]~2_combout\,
	combout => \inst_controller|VGA_G\(0));

-- Location: LCCOMB_X54_Y7_N28
\inst_controller|VGA_B[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|VGA_B\(0) = (\inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~10_combout\ & \inst_controller|VGA_B[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_DPRAM|ram_rtl_0|auto_generated|mux3|muxlut_result2w~10_combout\,
	datad => \inst_controller|VGA_B[0]~2_combout\,
	combout => \inst_controller|VGA_B\(0));

-- Location: LCCOMB_X56_Y9_N20
\inst_controller|VGA_HS~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|VGA_HS~1_combout\ = (\inst_controller|x_counter\(2) & (((\inst_controller|x_counter\(0)) # (\inst_controller|x_counter\(1))) # (!\inst_controller|x_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|x_counter\(2),
	datab => \inst_controller|x_counter\(5),
	datac => \inst_controller|x_counter\(0),
	datad => \inst_controller|x_counter\(1),
	combout => \inst_controller|VGA_HS~1_combout\);

-- Location: LCCOMB_X56_Y9_N22
\inst_controller|VGA_HS~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|VGA_HS~2_combout\ = (\inst_controller|x_counter\(4) & ((\inst_controller|VGA_HS~1_combout\) # (\inst_controller|x_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_controller|VGA_HS~1_combout\,
	datac => \inst_controller|x_counter\(4),
	datad => \inst_controller|x_counter\(3),
	combout => \inst_controller|VGA_HS~2_combout\);

-- Location: LCCOMB_X57_Y9_N30
\inst_controller|VGA_HS~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|VGA_HS~0_combout\ = (\inst_controller|x_counter\(9) & (!\inst_controller|x_counter\(8) & \inst_controller|x_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|x_counter\(9),
	datab => \inst_controller|x_counter\(8),
	datac => \inst_controller|x_counter\(7),
	combout => \inst_controller|VGA_HS~0_combout\);

-- Location: LCCOMB_X57_Y9_N20
\inst_controller|VGA_HS~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|VGA_HS~3_combout\ = ((\inst_controller|x_counter\(6) & (\inst_controller|VGA_HS~2_combout\ & \inst_controller|x_counter\(5))) # (!\inst_controller|x_counter\(6) & (!\inst_controller|VGA_HS~2_combout\ & !\inst_controller|x_counter\(5)))) # 
-- (!\inst_controller|VGA_HS~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|x_counter\(6),
	datab => \inst_controller|VGA_HS~2_combout\,
	datac => \inst_controller|VGA_HS~0_combout\,
	datad => \inst_controller|x_counter\(5),
	combout => \inst_controller|VGA_HS~3_combout\);

-- Location: LCCOMB_X55_Y10_N26
\inst_controller|VGA_VS~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|VGA_VS~0_combout\ = (((\inst_controller|y_counter\(4)) # (\inst_controller|y_counter\(9))) # (!\inst_controller|y_counter\(3))) # (!\inst_controller|y_counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controller|y_counter\(2),
	datab => \inst_controller|y_counter\(3),
	datac => \inst_controller|y_counter\(4),
	datad => \inst_controller|y_counter\(9),
	combout => \inst_controller|VGA_VS~0_combout\);

-- Location: LCCOMB_X55_Y9_N26
\inst_controller|VGA_VS~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_controller|VGA_VS~1_combout\ = ((\inst_controller|VGA_VS~0_combout\) # (!\inst_controller|y_counter\(1))) # (!\inst_controller|LessThan11~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_controller|LessThan11~1_combout\,
	datac => \inst_controller|VGA_VS~0_combout\,
	datad => \inst_controller|y_counter\(1),
	combout => \inst_controller|VGA_VS~1_combout\);

-- Location: IOIBUF_X78_Y41_N8
\read_n~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_read_n,
	o => \read_n~input_o\);

-- Location: IOIBUF_X0_Y16_N8
\din[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(3),
	o => \din[3]~input_o\);

-- Location: IOIBUF_X0_Y30_N8
\din[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(4),
	o => \din[4]~input_o\);

-- Location: IOIBUF_X0_Y30_N1
\din[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(5),
	o => \din[5]~input_o\);

-- Location: IOIBUF_X78_Y18_N1
\din[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(6),
	o => \din[6]~input_o\);

-- Location: IOIBUF_X0_Y37_N1
\din[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(7),
	o => \din[7]~input_o\);

-- Location: IOIBUF_X54_Y54_N1
\din[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(8),
	o => \din[8]~input_o\);

-- Location: IOIBUF_X78_Y35_N8
\din[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(9),
	o => \din[9]~input_o\);

-- Location: IOIBUF_X0_Y37_N15
\din[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(10),
	o => \din[10]~input_o\);

-- Location: IOIBUF_X26_Y0_N22
\din[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(11),
	o => \din[11]~input_o\);

-- Location: IOIBUF_X24_Y0_N29
\din[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(12),
	o => \din[12]~input_o\);

-- Location: IOIBUF_X0_Y12_N22
\din[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(13),
	o => \din[13]~input_o\);

-- Location: IOIBUF_X0_Y15_N8
\din[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(14),
	o => \din[14]~input_o\);

-- Location: IOIBUF_X31_Y39_N29
\din[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(15),
	o => \din[15]~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\din[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(16),
	o => \din[16]~input_o\);

-- Location: IOIBUF_X78_Y15_N1
\din[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(17),
	o => \din[17]~input_o\);

-- Location: IOIBUF_X34_Y0_N8
\din[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(18),
	o => \din[18]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\din[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(19),
	o => \din[19]~input_o\);

-- Location: IOIBUF_X46_Y54_N29
\din[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(20),
	o => \din[20]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\din[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(21),
	o => \din[21]~input_o\);

-- Location: IOIBUF_X58_Y54_N8
\din[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(22),
	o => \din[22]~input_o\);

-- Location: IOIBUF_X49_Y54_N29
\din[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(23),
	o => \din[23]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\din[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(24),
	o => \din[24]~input_o\);

-- Location: IOIBUF_X78_Y30_N1
\din[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(25),
	o => \din[25]~input_o\);

-- Location: IOIBUF_X60_Y0_N29
\din[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(26),
	o => \din[26]~input_o\);

-- Location: IOIBUF_X0_Y30_N22
\din[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(27),
	o => \din[27]~input_o\);

-- Location: IOIBUF_X78_Y3_N22
\din[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(28),
	o => \din[28]~input_o\);

-- Location: IOIBUF_X58_Y54_N15
\din[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(29),
	o => \din[29]~input_o\);

-- Location: IOIBUF_X66_Y54_N1
\din[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(30),
	o => \din[30]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\din[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(31),
	o => \din[31]~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_dout(0) <= \dout[0]~output_o\;

ww_dout(1) <= \dout[1]~output_o\;

ww_dout(2) <= \dout[2]~output_o\;

ww_dout(3) <= \dout[3]~output_o\;

ww_dout(4) <= \dout[4]~output_o\;

ww_dout(5) <= \dout[5]~output_o\;

ww_dout(6) <= \dout[6]~output_o\;

ww_dout(7) <= \dout[7]~output_o\;

ww_dout(8) <= \dout[8]~output_o\;

ww_dout(9) <= \dout[9]~output_o\;

ww_dout(10) <= \dout[10]~output_o\;

ww_dout(11) <= \dout[11]~output_o\;

ww_dout(12) <= \dout[12]~output_o\;

ww_dout(13) <= \dout[13]~output_o\;

ww_dout(14) <= \dout[14]~output_o\;

ww_dout(15) <= \dout[15]~output_o\;

ww_dout(16) <= \dout[16]~output_o\;

ww_dout(17) <= \dout[17]~output_o\;

ww_dout(18) <= \dout[18]~output_o\;

ww_dout(19) <= \dout[19]~output_o\;

ww_dout(20) <= \dout[20]~output_o\;

ww_dout(21) <= \dout[21]~output_o\;

ww_dout(22) <= \dout[22]~output_o\;

ww_dout(23) <= \dout[23]~output_o\;

ww_dout(24) <= \dout[24]~output_o\;

ww_dout(25) <= \dout[25]~output_o\;

ww_dout(26) <= \dout[26]~output_o\;

ww_dout(27) <= \dout[27]~output_o\;

ww_dout(28) <= \dout[28]~output_o\;

ww_dout(29) <= \dout[29]~output_o\;

ww_dout(30) <= \dout[30]~output_o\;

ww_dout(31) <= \dout[31]~output_o\;

ww_vga_r(0) <= \vga_r[0]~output_o\;

ww_vga_r(1) <= \vga_r[1]~output_o\;

ww_vga_r(2) <= \vga_r[2]~output_o\;

ww_vga_r(3) <= \vga_r[3]~output_o\;

ww_vga_g(0) <= \vga_g[0]~output_o\;

ww_vga_g(1) <= \vga_g[1]~output_o\;

ww_vga_g(2) <= \vga_g[2]~output_o\;

ww_vga_g(3) <= \vga_g[3]~output_o\;

ww_vga_b(0) <= \vga_b[0]~output_o\;

ww_vga_b(1) <= \vga_b[1]~output_o\;

ww_vga_b(2) <= \vga_b[2]~output_o\;

ww_vga_b(3) <= \vga_b[3]~output_o\;

ww_vga_hs <= \vga_hs~output_o\;

ww_vga_vs <= \vga_vs~output_o\;
END structure;


