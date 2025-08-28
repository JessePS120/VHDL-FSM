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
-- Generated on "04/30/2024 21:32:41"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          serialAdder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY serialAdder_vhd_vec_tst IS
END serialAdder_vhd_vec_tst;
ARCHITECTURE serialAdder_arch OF serialAdder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Carry : STD_LOGIC;
SIGNAL Clk : STD_LOGIC;
SIGNAL control : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL in_a : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL in_b : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Reset_al : STD_LOGIC;
SIGNAL Sum : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT serialAdder
	PORT (
	Carry : BUFFER STD_LOGIC;
	Clk : IN STD_LOGIC;
	control : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	in_a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	in_b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Reset_al : IN STD_LOGIC;
	Sum : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : serialAdder
	PORT MAP (
-- list connections between master ports and signals
	Carry => Carry,
	Clk => Clk,
	control => control,
	in_a => in_a,
	in_b => in_b,
	Reset_al => Reset_al,
	Sum => Sum
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

-- Reset_al
t_prcs_Reset_al: PROCESS
BEGIN
	Reset_al <= '0';
	WAIT FOR 10000 ps;
	Reset_al <= '1';
	WAIT FOR 10000 ps;
	Reset_al <= '0';
	WAIT FOR 110000 ps;
	Reset_al <= '1';
	WAIT FOR 10000 ps;
	Reset_al <= '0';
WAIT;
END PROCESS t_prcs_Reset_al;
-- control[1]
t_prcs_control_1: PROCESS
BEGIN
	control(1) <= '0';
	WAIT FOR 20000 ps;
	control(1) <= '1';
	WAIT FOR 10000 ps;
	control(1) <= '0';
WAIT;
END PROCESS t_prcs_control_1;
-- control[0]
t_prcs_control_0: PROCESS
BEGIN
	control(0) <= '0';
	WAIT FOR 20000 ps;
	control(0) <= '1';
	WAIT FOR 10000 ps;
	control(0) <= '0';
	WAIT FOR 10000 ps;
	control(0) <= '1';
	WAIT FOR 10000 ps;
	control(0) <= '0';
	WAIT FOR 10000 ps;
	control(0) <= '1';
	WAIT FOR 10000 ps;
	control(0) <= '0';
	WAIT FOR 10000 ps;
	control(0) <= '1';
	WAIT FOR 10000 ps;
	control(0) <= '0';
	WAIT FOR 10000 ps;
	control(0) <= '1';
	WAIT FOR 10000 ps;
	control(0) <= '0';
WAIT;
END PROCESS t_prcs_control_0;
-- in_a[3]
t_prcs_in_a_3: PROCESS
BEGIN
	in_a(3) <= '0';
WAIT;
END PROCESS t_prcs_in_a_3;
-- in_a[2]
t_prcs_in_a_2: PROCESS
BEGIN
	in_a(2) <= '0';
WAIT;
END PROCESS t_prcs_in_a_2;
-- in_a[1]
t_prcs_in_a_1: PROCESS
BEGIN
	in_a(1) <= '0';
WAIT;
END PROCESS t_prcs_in_a_1;
-- in_a[0]
t_prcs_in_a_0: PROCESS
BEGIN
	in_a(0) <= '0';
	WAIT FOR 20000 ps;
	in_a(0) <= '1';
	WAIT FOR 10000 ps;
	in_a(0) <= '0';
WAIT;
END PROCESS t_prcs_in_a_0;
-- in_b[3]
t_prcs_in_b_3: PROCESS
BEGIN
	in_b(3) <= '0';
WAIT;
END PROCESS t_prcs_in_b_3;
-- in_b[2]
t_prcs_in_b_2: PROCESS
BEGIN
	in_b(2) <= '0';
	WAIT FOR 20000 ps;
	in_b(2) <= '1';
	WAIT FOR 10000 ps;
	in_b(2) <= '0';
WAIT;
END PROCESS t_prcs_in_b_2;
-- in_b[1]
t_prcs_in_b_1: PROCESS
BEGIN
	in_b(1) <= '0';
	WAIT FOR 20000 ps;
	in_b(1) <= '1';
	WAIT FOR 10000 ps;
	in_b(1) <= '0';
WAIT;
END PROCESS t_prcs_in_b_1;
-- in_b[0]
t_prcs_in_b_0: PROCESS
BEGIN
	in_b(0) <= '0';
	WAIT FOR 20000 ps;
	in_b(0) <= '1';
	WAIT FOR 10000 ps;
	in_b(0) <= '0';
WAIT;
END PROCESS t_prcs_in_b_0;
END serialAdder_arch;
