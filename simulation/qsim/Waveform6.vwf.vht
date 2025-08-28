-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/30/2024 21:26:13"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          GateFSM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY GateFSM_vhd_vec_tst IS
END GateFSM_vhd_vec_tst;
ARCHITECTURE GateFSM_arch OF GateFSM_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clk : STD_LOGIC;
SIGNAL Control : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Reset_SM : STD_LOGIC;
SIGNAL Start : STD_LOGIC;
SIGNAL W : STD_LOGIC;
COMPONENT GateFSM
	PORT (
	Clk : IN STD_LOGIC;
	Control : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Reset_SM : IN STD_LOGIC;
	Start : IN STD_LOGIC;
	W : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : GateFSM
	PORT MAP (
-- list connections between master ports and signals
	Clk => Clk,
	Control => Control,
	Reset_SM => Reset_SM,
	Start => Start,
	W => W
	);

-- Clk
t_prcs_Clk: PROCESS
BEGIN
	Clk <= '0';
	WAIT FOR 10000 ps;
	Clk <= '1';
	WAIT FOR 10000 ps;
	Clk <= '0';
	WAIT FOR 20000 ps;
	Clk <= '1';
	WAIT FOR 10000 ps;
	Clk <= '0';
	WAIT FOR 20000 ps;
	Clk <= '1';
	WAIT FOR 10000 ps;
	Clk <= '0';
	WAIT FOR 20000 ps;
	Clk <= '1';
	WAIT FOR 10000 ps;
	Clk <= '0';
	WAIT FOR 20000 ps;
	Clk <= '1';
	WAIT FOR 10000 ps;
	Clk <= '0';
	WAIT FOR 20000 ps;
	Clk <= '1';
	WAIT FOR 10000 ps;
	Clk <= '0';
	WAIT FOR 20000 ps;
	Clk <= '1';
	WAIT FOR 10000 ps;
	Clk <= '0';
	WAIT FOR 20000 ps;
	Clk <= '1';
	WAIT FOR 10000 ps;
	Clk <= '0';
	WAIT FOR 20000 ps;
	Clk <= '1';
	WAIT FOR 10000 ps;
	Clk <= '0';
	WAIT FOR 20000 ps;
	Clk <= '1';
	WAIT FOR 10000 ps;
	Clk <= '0';
	WAIT FOR 20000 ps;
	Clk <= '1';
	WAIT FOR 9000 ps;
	Clk <= '0';
WAIT;
END PROCESS t_prcs_Clk;

-- Start
t_prcs_Start: PROCESS
BEGIN
	Start <= '1';
	WAIT FOR 10000 ps;
	Start <= '0';
	WAIT FOR 230000 ps;
	Start <= '1';
	WAIT FOR 10000 ps;
	Start <= '0';
WAIT;
END PROCESS t_prcs_Start;

-- W
t_prcs_W: PROCESS
BEGIN
	W <= '0';
	WAIT FOR 30000 ps;
	W <= '1';
	WAIT FOR 10000 ps;
	W <= '0';
	WAIT FOR 20000 ps;
	W <= '1';
	WAIT FOR 10000 ps;
	W <= '0';
	WAIT FOR 20000 ps;
	W <= '1';
	WAIT FOR 10000 ps;
	W <= '0';
	WAIT FOR 20000 ps;
	W <= '1';
	WAIT FOR 10000 ps;
	W <= '0';
	WAIT FOR 20000 ps;
	W <= '1';
	WAIT FOR 10000 ps;
	W <= '0';
	WAIT FOR 20000 ps;
	W <= '1';
	WAIT FOR 10000 ps;
	W <= '0';
	WAIT FOR 20000 ps;
	W <= '1';
	WAIT FOR 10000 ps;
	W <= '0';
	WAIT FOR 50000 ps;
	W <= '1';
	WAIT FOR 10000 ps;
	W <= '0';
WAIT;
END PROCESS t_prcs_W;

-- Reset_SM
t_prcs_Reset_SM: PROCESS
BEGIN
	Reset_SM <= '0';
	WAIT FOR 300000 ps;
	Reset_SM <= '1';
	WAIT FOR 10000 ps;
	Reset_SM <= '0';
WAIT;
END PROCESS t_prcs_Reset_SM;
END GateFSM_arch;
