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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "04/30/2024 23:13:30"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	BehavioralFSM IS
    PORT (
	Start : IN std_logic;
	Clk : IN std_logic;
	Reset_SM : IN std_logic;
	Control : OUT std_logic_vector(3 DOWNTO 0)
	);
END BehavioralFSM;

-- Design Ports Information
-- Control[0]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Control[1]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Control[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Control[3]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset_SM	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Start	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BehavioralFSM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Start : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_Reset_SM : std_logic;
SIGNAL ww_Control : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Reset_SM~input_o\ : std_logic;
SIGNAL \Start~input_o\ : std_logic;
SIGNAL \Current_State.IDLE~1_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \Current_State.IDLE~3_combout\ : std_logic;
SIGNAL \Current_State.IDLE~0_combout\ : std_logic;
SIGNAL \Current_State.IDLE~_emulated_q\ : std_logic;
SIGNAL \Current_State.IDLE~2_combout\ : std_logic;
SIGNAL \Current_State.IDLE~6_combout\ : std_logic;
SIGNAL \Current_State.RESET~1_combout\ : std_logic;
SIGNAL \Current_State.RESET~0_combout\ : std_logic;
SIGNAL \Current_State.RESET~_emulated_q\ : std_logic;
SIGNAL \Current_State.RESET~2_combout\ : std_logic;
SIGNAL \Current_State.LOAD~0_combout\ : std_logic;
SIGNAL \Current_State.LOAD~q\ : std_logic;
SIGNAL \Current_State.SR1~q\ : std_logic;
SIGNAL \Current_State.SR2~q\ : std_logic;
SIGNAL \Current_State.SR3~q\ : std_logic;
SIGNAL \Current_State.SR4~q\ : std_logic;
SIGNAL \Current_State.READY~q\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \ALT_INV_Current_State.READY~q\ : std_logic;
SIGNAL \ALT_INV_WideOr0~combout\ : std_logic;
SIGNAL \ALT_INV_Current_State.RESET~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_Current_State.RESET~2_combout\ : std_logic;
SIGNAL \ALT_INV_Current_State.LOAD~0_combout\ : std_logic;
SIGNAL \ALT_INV_Current_State.IDLE~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_Current_State.IDLE~2_combout\ : std_logic;
SIGNAL \ALT_INV_Current_State.RESET~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Current_State.IDLE~0_combout\ : std_logic;
SIGNAL \ALT_INV_Current_State.IDLE~6_combout\ : std_logic;
SIGNAL \ALT_INV_Current_State.RESET~1_combout\ : std_logic;
SIGNAL \ALT_INV_Current_State.IDLE~1_combout\ : std_logic;
SIGNAL \ALT_INV_Reset_SM~input_o\ : std_logic;
SIGNAL \ALT_INV_Start~input_o\ : std_logic;

BEGIN

ww_Start <= Start;
ww_Clk <= Clk;
ww_Reset_SM <= Reset_SM;
Control <= ww_Control;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Current_State.READY~q\ <= NOT \Current_State.READY~q\;
\ALT_INV_WideOr0~combout\ <= NOT \WideOr0~combout\;
\ALT_INV_Current_State.RESET~_emulated_q\ <= NOT \Current_State.RESET~_emulated_q\;
\ALT_INV_Current_State.RESET~2_combout\ <= NOT \Current_State.RESET~2_combout\;
\ALT_INV_Current_State.LOAD~0_combout\ <= NOT \Current_State.LOAD~0_combout\;
\ALT_INV_Current_State.IDLE~_emulated_q\ <= NOT \Current_State.IDLE~_emulated_q\;
\ALT_INV_Current_State.IDLE~2_combout\ <= NOT \Current_State.IDLE~2_combout\;
\ALT_INV_Current_State.RESET~0_combout\ <= NOT \Current_State.RESET~0_combout\;
\ALT_INV_WideOr0~0_combout\ <= NOT \WideOr0~0_combout\;
\ALT_INV_Current_State.IDLE~0_combout\ <= NOT \Current_State.IDLE~0_combout\;
\ALT_INV_Current_State.IDLE~6_combout\ <= NOT \Current_State.IDLE~6_combout\;
\ALT_INV_Current_State.RESET~1_combout\ <= NOT \Current_State.RESET~1_combout\;
\ALT_INV_Current_State.IDLE~1_combout\ <= NOT \Current_State.IDLE~1_combout\;
\ALT_INV_Reset_SM~input_o\ <= NOT \Reset_SM~input_o\;
\ALT_INV_Start~input_o\ <= NOT \Start~input_o\;

-- Location: IOOBUF_X89_Y13_N5
\Control[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr0~combout\,
	devoe => ww_devoe,
	o => ww_Control(0));

-- Location: IOOBUF_X89_Y15_N39
\Control[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Current_State.LOAD~q\,
	devoe => ww_devoe,
	o => ww_Control(1));

-- Location: IOOBUF_X89_Y13_N22
\Control[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Current_State.RESET~2_combout\,
	devoe => ww_devoe,
	o => ww_Control(2));

-- Location: IOOBUF_X89_Y13_N56
\Control[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Current_State.READY~q\,
	devoe => ww_devoe,
	o => ww_Control(3));

-- Location: IOIBUF_X89_Y25_N21
\Clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G10
\Clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~input_o\,
	outclk => \Clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y13_N38
\Reset_SM~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset_SM,
	o => \Reset_SM~input_o\);

-- Location: IOIBUF_X89_Y11_N78
\Start~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Start,
	o => \Start~input_o\);

-- Location: LABCELL_X88_Y13_N18
\Current_State.IDLE~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Current_State.IDLE~1_combout\ = ( \Reset_SM~input_o\ & ( \Current_State.IDLE~1_combout\ & ( !\Current_State.IDLE~6_combout\ ) ) ) # ( !\Reset_SM~input_o\ & ( \Current_State.IDLE~1_combout\ & ( !\Current_State.IDLE~6_combout\ ) ) ) # ( \Reset_SM~input_o\ 
-- & ( !\Current_State.IDLE~1_combout\ & ( !\Current_State.IDLE~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Current_State.IDLE~6_combout\,
	datae => \ALT_INV_Reset_SM~input_o\,
	dataf => \ALT_INV_Current_State.IDLE~1_combout\,
	combout => \Current_State.IDLE~1_combout\);

-- Location: LABCELL_X88_Y13_N42
\WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = ( \Current_State.IDLE~2_combout\ & ( !\Current_State.READY~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Current_State.IDLE~2_combout\,
	dataf => \ALT_INV_Current_State.READY~q\,
	combout => \WideOr0~0_combout\);

-- Location: LABCELL_X88_Y13_N15
\Current_State.IDLE~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Current_State.IDLE~3_combout\ = ( \WideOr0~0_combout\ & ( \Current_State.IDLE~1_combout\ ) ) # ( !\WideOr0~0_combout\ & ( !\Current_State.IDLE~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Current_State.IDLE~1_combout\,
	dataf => \ALT_INV_WideOr0~0_combout\,
	combout => \Current_State.IDLE~3_combout\);

-- Location: LABCELL_X88_Y13_N0
\Current_State.IDLE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Current_State.IDLE~0_combout\ = ( \Current_State.IDLE~6_combout\ ) # ( !\Current_State.IDLE~6_combout\ & ( \Reset_SM~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Reset_SM~input_o\,
	dataf => \ALT_INV_Current_State.IDLE~6_combout\,
	combout => \Current_State.IDLE~0_combout\);

-- Location: FF_X88_Y13_N17
\Current_State.IDLE~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Current_State.IDLE~3_combout\,
	clrn => \ALT_INV_Current_State.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Current_State.IDLE~_emulated_q\);

-- Location: LABCELL_X88_Y13_N57
\Current_State.IDLE~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Current_State.IDLE~2_combout\ = ( \Current_State.IDLE~_emulated_q\ & ( ((\Current_State.IDLE~1_combout\ & !\Reset_SM~input_o\)) # (\Current_State.IDLE~6_combout\) ) ) # ( !\Current_State.IDLE~_emulated_q\ & ( ((!\Current_State.IDLE~1_combout\ & 
-- !\Reset_SM~input_o\)) # (\Current_State.IDLE~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000011111111101000001111111101010000111111110101000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Current_State.IDLE~1_combout\,
	datac => \ALT_INV_Reset_SM~input_o\,
	datad => \ALT_INV_Current_State.IDLE~6_combout\,
	dataf => \ALT_INV_Current_State.IDLE~_emulated_q\,
	combout => \Current_State.IDLE~2_combout\);

-- Location: LABCELL_X88_Y13_N51
\Current_State.IDLE~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Current_State.IDLE~6_combout\ = ( !\Current_State.IDLE~2_combout\ & ( (!\Reset_SM~input_o\ & \Start~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reset_SM~input_o\,
	datac => \ALT_INV_Start~input_o\,
	dataf => \ALT_INV_Current_State.IDLE~2_combout\,
	combout => \Current_State.IDLE~6_combout\);

-- Location: LABCELL_X88_Y13_N30
\Current_State.RESET~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Current_State.RESET~1_combout\ = ( !\Reset_SM~input_o\ & ( \Current_State.RESET~1_combout\ ) ) # ( !\Reset_SM~input_o\ & ( !\Current_State.RESET~1_combout\ & ( \Current_State.IDLE~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Current_State.IDLE~6_combout\,
	datae => \ALT_INV_Reset_SM~input_o\,
	dataf => \ALT_INV_Current_State.RESET~1_combout\,
	combout => \Current_State.RESET~1_combout\);

-- Location: MLABCELL_X87_Y13_N57
\Current_State.RESET~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Current_State.RESET~0_combout\ = ( \Current_State.IDLE~6_combout\ ) # ( !\Current_State.IDLE~6_combout\ & ( \Reset_SM~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Reset_SM~input_o\,
	dataf => \ALT_INV_Current_State.IDLE~6_combout\,
	combout => \Current_State.RESET~0_combout\);

-- Location: FF_X87_Y13_N58
\Current_State.RESET~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \Current_State.RESET~1_combout\,
	clrn => \ALT_INV_Current_State.RESET~0_combout\,
	sload => VCC,
	ena => \Current_State.IDLE~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Current_State.RESET~_emulated_q\);

-- Location: LABCELL_X88_Y13_N6
\Current_State.RESET~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Current_State.RESET~2_combout\ = ( \Current_State.RESET~_emulated_q\ & ( \Current_State.IDLE~6_combout\ & ( !\Reset_SM~input_o\ ) ) ) # ( !\Current_State.RESET~_emulated_q\ & ( \Current_State.IDLE~6_combout\ & ( !\Reset_SM~input_o\ ) ) ) # ( 
-- \Current_State.RESET~_emulated_q\ & ( !\Current_State.IDLE~6_combout\ & ( (!\Reset_SM~input_o\ & !\Current_State.RESET~1_combout\) ) ) ) # ( !\Current_State.RESET~_emulated_q\ & ( !\Current_State.IDLE~6_combout\ & ( (!\Reset_SM~input_o\ & 
-- \Current_State.RESET~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010100010001000100010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reset_SM~input_o\,
	datab => \ALT_INV_Current_State.RESET~1_combout\,
	datae => \ALT_INV_Current_State.RESET~_emulated_q\,
	dataf => \ALT_INV_Current_State.IDLE~6_combout\,
	combout => \Current_State.RESET~2_combout\);

-- Location: LABCELL_X88_Y13_N27
\Current_State.LOAD~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Current_State.LOAD~0_combout\ = ( \Current_State.IDLE~2_combout\ & ( \Reset_SM~input_o\ ) ) # ( !\Current_State.IDLE~2_combout\ & ( (\Start~input_o\) # (\Reset_SM~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reset_SM~input_o\,
	datac => \ALT_INV_Start~input_o\,
	dataf => \ALT_INV_Current_State.IDLE~2_combout\,
	combout => \Current_State.LOAD~0_combout\);

-- Location: FF_X88_Y13_N8
\Current_State.LOAD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Current_State.RESET~2_combout\,
	clrn => \ALT_INV_Current_State.LOAD~0_combout\,
	ena => \Current_State.IDLE~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Current_State.LOAD~q\);

-- Location: FF_X88_Y13_N11
\Current_State.SR1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \Current_State.LOAD~q\,
	clrn => \ALT_INV_Current_State.LOAD~0_combout\,
	sload => VCC,
	ena => \Current_State.IDLE~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Current_State.SR1~q\);

-- Location: FF_X88_Y13_N29
\Current_State.SR2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \Current_State.SR1~q\,
	clrn => \ALT_INV_Current_State.LOAD~0_combout\,
	sload => VCC,
	ena => \Current_State.IDLE~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Current_State.SR2~q\);

-- Location: FF_X88_Y13_N47
\Current_State.SR3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \Current_State.SR2~q\,
	clrn => \ALT_INV_Current_State.LOAD~0_combout\,
	sload => VCC,
	ena => \Current_State.IDLE~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Current_State.SR3~q\);

-- Location: FF_X88_Y13_N59
\Current_State.SR4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \Current_State.SR3~q\,
	clrn => \ALT_INV_Current_State.LOAD~0_combout\,
	sload => VCC,
	ena => \Current_State.IDLE~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Current_State.SR4~q\);

-- Location: FF_X88_Y13_N26
\Current_State.READY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \Current_State.SR4~q\,
	clrn => \ALT_INV_Current_State.LOAD~0_combout\,
	sload => VCC,
	ena => \Current_State.IDLE~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Current_State.READY~q\);

-- Location: LABCELL_X88_Y13_N3
WideOr0 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = ( \Current_State.RESET~2_combout\ ) # ( !\Current_State.RESET~2_combout\ & ( (!\Current_State.IDLE~2_combout\) # (\Current_State.READY~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101111111110101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Current_State.READY~q\,
	datad => \ALT_INV_Current_State.IDLE~2_combout\,
	dataf => \ALT_INV_Current_State.RESET~2_combout\,
	combout => \WideOr0~combout\);

-- Location: LABCELL_X50_Y38_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


