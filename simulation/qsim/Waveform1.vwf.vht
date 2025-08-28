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
-- Generated on "04/22/2024 23:57:21"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          D_Flip_Flop
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY D_Flip_Flop_vhd_vec_tst IS
END D_Flip_Flop_vhd_vec_tst;
ARCHITECTURE D_Flip_Flop_arch OF D_Flip_Flop_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clk : STD_LOGIC;
SIGNAL D : STD_LOGIC;
SIGNAL Enable : STD_LOGIC;
SIGNAL Q : STD_LOGIC;
SIGNAL Reset : STD_LOGIC;
COMPONENT D_Flip_Flop
	PORT (
	Clk : IN STD_LOGIC;
	D : IN STD_LOGIC;
	Enable : IN STD_LOGIC;
	Q : OUT STD_LOGIC;
	Reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : D_Flip_Flop
	PORT MAP (
-- list connections between master ports and signals
	Clk => Clk,
	D => D,
	Enable => Enable,
	Q => Q,
	Reset => Reset
	);

-- Clk
t_prcs_Clk: PROCESS
BEGIN
LOOP
	Clk <= '0';
	WAIT FOR 10000 ps;
	Clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 160000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clk;

-- D
t_prcs_D: PROCESS
BEGIN
	D <= '1';
	WAIT FOR 10000 ps;
	D <= '0';
	WAIT FOR 10000 ps;
	D <= '1';
	WAIT FOR 20000 ps;
	D <= '0';
	WAIT FOR 20000 ps;
	D <= '1';
	WAIT FOR 20000 ps;
	D <= '0';
	WAIT FOR 10000 ps;
	D <= '1';
	WAIT FOR 20000 ps;
	D <= '0';
WAIT;
END PROCESS t_prcs_D;

-- Enable
t_prcs_Enable: PROCESS
BEGIN
	Enable <= '1';
	WAIT FOR 80000 ps;
	Enable <= '0';
WAIT;
END PROCESS t_prcs_Enable;

-- Reset
t_prcs_Reset: PROCESS
BEGIN
	Reset <= '0';
	WAIT FOR 80000 ps;
	Reset <= '1';
	WAIT FOR 10000 ps;
	Reset <= '0';
	WAIT FOR 20000 ps;
	Reset <= '1';
	WAIT FOR 10000 ps;
	Reset <= '0';
WAIT;
END PROCESS t_prcs_Reset;
END D_Flip_Flop_arch;
