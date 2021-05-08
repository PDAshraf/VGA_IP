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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "04/26/2021 01:10:31"
                                                            
-- Vhdl Test Bench template for design  :  VGA_IP
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY VGA_IP_vhd_tst IS
END VGA_IP_vhd_tst;
ARCHITECTURE VGA_IP_arch OF VGA_IP_vhd_tst IS
-- constants
	CONSTANT sys_clk_period : TIME := 20 ns;
	CONSTANT vga_clk_period : TIME := 40 ns;
-- signals                                                   
	SIGNAL addr : STD_LOGIC_VECTOR(16 DOWNTO 0);
	SIGNAL clock_25 : STD_LOGIC;
	SIGNAL clock_50 : STD_LOGIC;
	SIGNAL cs_n : STD_LOGIC;
	SIGNAL din : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL dout : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL read_n : STD_LOGIC;
	SIGNAL reset_n : STD_LOGIC;
	SIGNAL vga_b : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL vga_g : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL vga_hs : STD_LOGIC;
	SIGNAL vga_r : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL vga_vs : STD_LOGIC;
	SIGNAL write_n : STD_LOGIC;
COMPONENT VGA_IP
	PORT (
	addr : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
	clock_25 : IN STD_LOGIC;
	clock_50 : IN STD_LOGIC;
	cs_n : IN STD_LOGIC;
	din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	dout : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	read_n : IN STD_LOGIC;
	reset_n : IN STD_LOGIC;
	vga_b : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	vga_g : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	vga_hs : BUFFER STD_LOGIC;
	vga_r : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	vga_vs : BUFFER STD_LOGIC;
	write_n : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : VGA_IP
	PORT MAP (
-- list connections between master ports and signals
	addr => addr,
	clock_25 => clock_25,
	clock_50 => clock_50,
	cs_n => cs_n,
	din => din,
	dout => dout,
	read_n => read_n,
	reset_n => reset_n,
	vga_b => vga_b,
	vga_g => vga_g,
	vga_hs => vga_hs,
	vga_r => vga_r,
	vga_vs => vga_vs,
	write_n => write_n
	);

	sys_clock:process
	begin
		clock_50 <='0';
		wait for sys_clk_period/2;
		clock_50 <='1';
		wait for sys_clk_period/2;
	end process;
	
	vga_clock:process
	begin
		clock_25 <='0';
		wait for vga_clk_period/2;
		clock_25 <='1';
		wait for vga_clk_period/2;
	end process;
	
	reset:process
	begin
		reset_n <='0';
		wait for 5* sys_clk_period;
		reset_n <='1';
		wait;
	end process;
	
	address:process
	begin
		din		
		cs_n 		<='0';
		write_n 	<='0';
		read_n 	<='1';
		wait for 250*sys_clk_period;
		
		addr 		<="00";
		cs_n 		<='0';
		write_n 	<='1';
		read_n 	<='0';
		wait for 50*sys_clk_period;
		
		addr 		<="01";
		cs_n 		<='0';
		write_n 	<='0';
		read_n 	<='1';
		wait for 100*sys_clk_period;
	end process;
	

	
	data:process
	begin
		din(31 downto 0) <=(others =>'0');
		wait for 100*sys_clk_period;
		
		din(31 downto 30) <="10";
		din (29 downto 0) <=(others =>'X');
		wait for 100*sys_clk_period;

		din(31 downto 30) <="00";
		din (29 downto 0) <=(others =>'X');
		wait for 100*sys_clk_period;
		
		din(31 downto 30) <="01";
		din (29 downto 0) <=(others =>'X');
		wait for 100*sys_clk_period;
		
	end process;
	
END VGA_IP_arch;
