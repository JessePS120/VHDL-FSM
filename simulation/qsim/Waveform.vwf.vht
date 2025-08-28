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
-- Generated on "04/22/2024 23:49:12"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          fullAdder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY fullAdder_vhd_vec_tst IS
END fullAdder_vhd_vec_tst;
ARCHITECTURE fullAdder_arch OF fullAdder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Cin : STD_LOGIC;
SIGNAL Cout : STD_LOGIC;
SIGNAL Sum : STD_LOGIC;
SIGNAL X : STD_LOGIC;
SIGNAL Y : STD_LOGIC;
COMPONENT fullAdder
	PORT (
	Cin : IN STD_LOGIC;
	Cout : OUT STD_LOGIC;
	Sum : OUT STD_LOGIC;
	X : IN STD_LOGIC;
	Y : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : fullAdder
	PORT MAP (
-- list connections between master ports and signals
	Cin => Cin,
	Cout => Cout,
	Sum => Sum,
	X => X,
	Y => Y
	);

-- Cin
t_prcs_Cin: PROCESS
BEGIN
LOOP
	Cin <= '0';
	WAIT FOR 40000 ps;
	Cin <= '1';
	WAIT FOR 40000 ps;
	IF (NOW >= 80000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Cin;

-- X
t_prcs_X: PROCESS
BEGIN
LOOP
	X <= '0';
	WAIT FOR 20000 ps;
	X <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 80000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_X;

-- Y
t_prcs_Y: PROCESS
BEGIN
LOOP
	Y <= '0';
	WAIT FOR 10000 ps;
	Y <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 80000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Y;
END fullAdder_arch;
