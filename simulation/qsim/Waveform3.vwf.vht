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
-- Generated on "04/23/2024 15:23:44"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          RegA
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY RegA_vhd_vec_tst IS
END RegA_vhd_vec_tst;
ARCHITECTURE RegA_arch OF RegA_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL C : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Clk : STD_LOGIC;
SIGNAL Clr : STD_LOGIC;
SIGNAL D : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LIN : STD_LOGIC;
SIGNAL Q : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL RIN : STD_LOGIC;
COMPONENT RegA
	PORT (
	C : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	Clk : IN STD_LOGIC;
	Clr : IN STD_LOGIC;
	D : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	LIN : IN STD_LOGIC;
	Q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	RIN : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : RegA
	PORT MAP (
-- list connections between master ports and signals
	C => C,
	Clk => Clk,
	Clr => Clr,
	D => D,
	LIN => LIN,
	Q => Q,
	RIN => RIN
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

-- Clr
t_prcs_Clr: PROCESS
BEGIN
	Clr <= '0';
	WAIT FOR 30000 ps;
	Clr <= '1';
	WAIT FOR 10000 ps;
	Clr <= '0';
WAIT;
END PROCESS t_prcs_Clr;
-- C[1]
t_prcs_C_1: PROCESS
BEGIN
	C(1) <= '1';
	WAIT FOR 20000 ps;
	C(1) <= '0';
	WAIT FOR 20000 ps;
	C(1) <= '1';
	WAIT FOR 40000 ps;
	C(1) <= '0';
WAIT;
END PROCESS t_prcs_C_1;
-- C[0]
t_prcs_C_0: PROCESS
BEGIN
	C(0) <= '1';
	WAIT FOR 20000 ps;
	C(0) <= '0';
	WAIT FOR 20000 ps;
	C(0) <= '1';
	WAIT FOR 20000 ps;
	C(0) <= '0';
	WAIT FOR 40000 ps;
	C(0) <= '1';
	WAIT FOR 20000 ps;
	C(0) <= '0';
WAIT;
END PROCESS t_prcs_C_0;
-- D[3]
t_prcs_D_3: PROCESS
BEGIN
	D(3) <= '1';
	WAIT FOR 20000 ps;
	D(3) <= '0';
	WAIT FOR 20000 ps;
	D(3) <= '1';
	WAIT FOR 20000 ps;
	D(3) <= '0';
WAIT;
END PROCESS t_prcs_D_3;
-- D[2]
t_prcs_D_2: PROCESS
BEGIN
	D(2) <= '0';
	WAIT FOR 40000 ps;
	D(2) <= '1';
	WAIT FOR 20000 ps;
	D(2) <= '0';
WAIT;
END PROCESS t_prcs_D_2;
-- D[1]
t_prcs_D_1: PROCESS
BEGIN
	D(1) <= '1';
	WAIT FOR 20000 ps;
	D(1) <= '0';
	WAIT FOR 20000 ps;
	D(1) <= '1';
	WAIT FOR 20000 ps;
	D(1) <= '0';
WAIT;
END PROCESS t_prcs_D_1;
-- D[0]
t_prcs_D_0: PROCESS
BEGIN
	D(0) <= '0';
WAIT;
END PROCESS t_prcs_D_0;

-- RIN
t_prcs_RIN: PROCESS
BEGIN
	RIN <= '0';
WAIT;
END PROCESS t_prcs_RIN;

-- LIN
t_prcs_LIN: PROCESS
BEGIN
	LIN <= '0';
	WAIT FOR 60000 ps;
	LIN <= '1';
	WAIT FOR 20000 ps;
	LIN <= '0';
WAIT;
END PROCESS t_prcs_LIN;
END RegA_arch;
