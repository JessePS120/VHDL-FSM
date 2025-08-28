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

-- DATE "05/02/2024 10:14:04"

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

ENTITY 	serialAdder IS
    PORT (
	in_a : IN std_logic_vector(3 DOWNTO 0);
	in_b : IN std_logic_vector(3 DOWNTO 0);
	control : IN std_logic_vector(1 DOWNTO 0);
	Clk : IN std_logic;
	Reset_al : IN std_logic;
	Sum : BUFFER std_logic_vector(3 DOWNTO 0);
	Carry : BUFFER std_logic
	);
END serialAdder;

-- Design Ports Information
-- Sum[0]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[1]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[2]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[3]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Carry	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[0]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_a[0]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[1]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset_al	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_a[1]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_a[2]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_a[3]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_b[0]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_b[1]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_b[2]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_b[3]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF serialAdder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_in_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_in_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_control : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Clk : std_logic;
SIGNAL ww_Reset_al : std_logic;
SIGNAL ww_Sum : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Carry : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \control[1]~input_o\ : std_logic;
SIGNAL \control[0]~input_o\ : std_logic;
SIGNAL \in_a[0]~input_o\ : std_logic;
SIGNAL \in_a[1]~input_o\ : std_logic;
SIGNAL \in_a[2]~input_o\ : std_logic;
SIGNAL \in_a[3]~input_o\ : std_logic;
SIGNAL \in_b[0]~input_o\ : std_logic;
SIGNAL \in_b[3]~input_o\ : std_logic;
SIGNAL \U2|IQ~3_combout\ : std_logic;
SIGNAL \Reset_al~input_o\ : std_logic;
SIGNAL \in_b[2]~input_o\ : std_logic;
SIGNAL \U2|IQ~2_combout\ : std_logic;
SIGNAL \U1|IQ[0]~1_combout\ : std_logic;
SIGNAL \in_b[1]~input_o\ : std_logic;
SIGNAL \U2|IQ~1_combout\ : std_logic;
SIGNAL \U2|IQ~0_combout\ : std_logic;
SIGNAL \U4|Q~0_combout\ : std_logic;
SIGNAL \U4|Q~q\ : std_logic;
SIGNAL \U1|IQ~4_combout\ : std_logic;
SIGNAL \U1|IQ~3_combout\ : std_logic;
SIGNAL \U1|IQ~2_combout\ : std_logic;
SIGNAL \U1|IQ~0_combout\ : std_logic;
SIGNAL \U1|IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_in_b[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_in_b[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_in_b[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_in_b[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_in_a[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_in_a[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_in_a[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Reset_al~input_o\ : std_logic;
SIGNAL \ALT_INV_control[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_in_a[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_control[0]~input_o\ : std_logic;
SIGNAL \U2|ALT_INV_IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U4|ALT_INV_Q~q\ : std_logic;
SIGNAL \U1|ALT_INV_IQ\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_in_a <= in_a;
ww_in_b <= in_b;
ww_control <= control;
ww_Clk <= Clk;
ww_Reset_al <= Reset_al;
Sum <= ww_Sum;
Carry <= ww_Carry;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_in_b[3]~input_o\ <= NOT \in_b[3]~input_o\;
\ALT_INV_in_b[2]~input_o\ <= NOT \in_b[2]~input_o\;
\ALT_INV_in_b[1]~input_o\ <= NOT \in_b[1]~input_o\;
\ALT_INV_in_b[0]~input_o\ <= NOT \in_b[0]~input_o\;
\ALT_INV_in_a[3]~input_o\ <= NOT \in_a[3]~input_o\;
\ALT_INV_in_a[2]~input_o\ <= NOT \in_a[2]~input_o\;
\ALT_INV_in_a[1]~input_o\ <= NOT \in_a[1]~input_o\;
\ALT_INV_Reset_al~input_o\ <= NOT \Reset_al~input_o\;
\ALT_INV_control[1]~input_o\ <= NOT \control[1]~input_o\;
\ALT_INV_in_a[0]~input_o\ <= NOT \in_a[0]~input_o\;
\ALT_INV_control[0]~input_o\ <= NOT \control[0]~input_o\;
\U2|ALT_INV_IQ\(3) <= NOT \U2|IQ\(3);
\U2|ALT_INV_IQ\(2) <= NOT \U2|IQ\(2);
\U2|ALT_INV_IQ\(1) <= NOT \U2|IQ\(1);
\U2|ALT_INV_IQ\(0) <= NOT \U2|IQ\(0);
\U4|ALT_INV_Q~q\ <= NOT \U4|Q~q\;
\U1|ALT_INV_IQ\(3) <= NOT \U1|IQ\(3);
\U1|ALT_INV_IQ\(2) <= NOT \U1|IQ\(2);
\U1|ALT_INV_IQ\(1) <= NOT \U1|IQ\(1);
\U1|ALT_INV_IQ\(0) <= NOT \U1|IQ\(0);

-- Location: IOOBUF_X89_Y9_N56
\Sum[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|IQ\(0),
	devoe => ww_devoe,
	o => ww_Sum(0));

-- Location: IOOBUF_X89_Y11_N62
\Sum[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|IQ\(1),
	devoe => ww_devoe,
	o => ww_Sum(1));

-- Location: IOOBUF_X89_Y9_N39
\Sum[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|IQ\(2),
	devoe => ww_devoe,
	o => ww_Sum(2));

-- Location: IOOBUF_X89_Y11_N79
\Sum[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|IQ\(3),
	devoe => ww_devoe,
	o => ww_Sum(3));

-- Location: IOOBUF_X89_Y11_N45
\Carry~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Q~q\,
	devoe => ww_devoe,
	o => ww_Carry);

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

-- Location: IOIBUF_X89_Y13_N21
\control[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(1),
	o => \control[1]~input_o\);

-- Location: IOIBUF_X89_Y16_N21
\control[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(0),
	o => \control[0]~input_o\);

-- Location: IOIBUF_X89_Y13_N4
\in_a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_a(0),
	o => \in_a[0]~input_o\);

-- Location: IOIBUF_X89_Y15_N55
\in_a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_a(1),
	o => \in_a[1]~input_o\);

-- Location: IOIBUF_X89_Y13_N55
\in_a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_a(2),
	o => \in_a[2]~input_o\);

-- Location: IOIBUF_X89_Y11_N95
\in_a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_a(3),
	o => \in_a[3]~input_o\);

-- Location: IOIBUF_X89_Y15_N21
\in_b[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_b(0),
	o => \in_b[0]~input_o\);

-- Location: IOIBUF_X89_Y13_N38
\in_b[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_b(3),
	o => \in_b[3]~input_o\);

-- Location: LABCELL_X88_Y13_N39
\U2|IQ~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|IQ~3_combout\ = ( \U2|IQ\(3) & ( \U2|IQ\(2) & ( (!\control[0]~input_o\) # ((\control[1]~input_o\ & \in_b[3]~input_o\)) ) ) ) # ( !\U2|IQ\(3) & ( \U2|IQ\(2) & ( (\control[1]~input_o\ & ((!\control[0]~input_o\) # (\in_b[3]~input_o\))) ) ) ) # ( 
-- \U2|IQ\(3) & ( !\U2|IQ\(2) & ( (!\control[1]~input_o\ & ((!\control[0]~input_o\))) # (\control[1]~input_o\ & (\in_b[3]~input_o\ & \control[0]~input_o\)) ) ) ) # ( !\U2|IQ\(3) & ( !\U2|IQ\(2) & ( (\control[1]~input_o\ & (\in_b[3]~input_o\ & 
-- \control[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001101000011010000101010001010100011111000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_control[1]~input_o\,
	datab => \ALT_INV_in_b[3]~input_o\,
	datac => \ALT_INV_control[0]~input_o\,
	datae => \U2|ALT_INV_IQ\(3),
	dataf => \U2|ALT_INV_IQ\(2),
	combout => \U2|IQ~3_combout\);

-- Location: IOIBUF_X89_Y15_N38
\Reset_al~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset_al,
	o => \Reset_al~input_o\);

-- Location: FF_X88_Y13_N41
\U2|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \U2|IQ~3_combout\,
	clrn => \ALT_INV_Reset_al~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|IQ\(3));

-- Location: IOIBUF_X89_Y15_N4
\in_b[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_b(2),
	o => \in_b[2]~input_o\);

-- Location: LABCELL_X88_Y13_N33
\U2|IQ~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|IQ~2_combout\ = ( \U2|IQ\(1) & ( (!\control[0]~input_o\) # ((!\control[1]~input_o\ & (\U2|IQ\(3))) # (\control[1]~input_o\ & ((\in_b[2]~input_o\)))) ) ) # ( !\U2|IQ\(1) & ( (\control[0]~input_o\ & ((!\control[1]~input_o\ & (\U2|IQ\(3))) # 
-- (\control[1]~input_o\ & ((\in_b[2]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001111001110110111111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_control[1]~input_o\,
	datab => \ALT_INV_control[0]~input_o\,
	datac => \U2|ALT_INV_IQ\(3),
	datad => \ALT_INV_in_b[2]~input_o\,
	dataf => \U2|ALT_INV_IQ\(1),
	combout => \U2|IQ~2_combout\);

-- Location: LABCELL_X88_Y13_N18
\U1|IQ[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|IQ[0]~1_combout\ = (\control[0]~input_o\) # (\control[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_control[1]~input_o\,
	datab => \ALT_INV_control[0]~input_o\,
	combout => \U1|IQ[0]~1_combout\);

-- Location: FF_X88_Y13_N35
\U2|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \U2|IQ~2_combout\,
	clrn => \ALT_INV_Reset_al~input_o\,
	ena => \U1|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|IQ\(2));

-- Location: IOIBUF_X89_Y16_N55
\in_b[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_b(1),
	o => \in_b[1]~input_o\);

-- Location: LABCELL_X88_Y13_N30
\U2|IQ~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|IQ~1_combout\ = ( \U2|IQ\(0) & ( (!\control[0]~input_o\) # ((!\control[1]~input_o\ & (\U2|IQ\(2))) # (\control[1]~input_o\ & ((\in_b[1]~input_o\)))) ) ) # ( !\U2|IQ\(0) & ( (\control[0]~input_o\ & ((!\control[1]~input_o\ & (\U2|IQ\(2))) # 
-- (\control[1]~input_o\ & ((\in_b[1]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001111001110110111111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_control[1]~input_o\,
	datab => \ALT_INV_control[0]~input_o\,
	datac => \U2|ALT_INV_IQ\(2),
	datad => \ALT_INV_in_b[1]~input_o\,
	dataf => \U2|ALT_INV_IQ\(0),
	combout => \U2|IQ~1_combout\);

-- Location: FF_X88_Y13_N32
\U2|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \U2|IQ~1_combout\,
	clrn => \ALT_INV_Reset_al~input_o\,
	ena => \U1|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|IQ\(1));

-- Location: LABCELL_X88_Y13_N24
\U2|IQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|IQ~0_combout\ = ( \U2|IQ\(1) & ( (\control[0]~input_o\ & ((!\control[1]~input_o\) # (\in_b[0]~input_o\))) ) ) # ( !\U2|IQ\(1) & ( (\control[1]~input_o\ & (\control[0]~input_o\ & \in_b[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100100011001000110010001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_control[1]~input_o\,
	datab => \ALT_INV_control[0]~input_o\,
	datac => \ALT_INV_in_b[0]~input_o\,
	dataf => \U2|ALT_INV_IQ\(1),
	combout => \U2|IQ~0_combout\);

-- Location: FF_X88_Y13_N26
\U2|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \U2|IQ~0_combout\,
	clrn => \ALT_INV_Reset_al~input_o\,
	ena => \U1|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|IQ\(0));

-- Location: LABCELL_X88_Y13_N42
\U4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|Q~0_combout\ = ( \U4|Q~q\ & ( \U1|IQ\(0) ) ) # ( !\U4|Q~q\ & ( \U1|IQ\(0) & ( (!\control[1]~input_o\ & (\control[0]~input_o\ & \U2|IQ\(0))) ) ) ) # ( \U4|Q~q\ & ( !\U1|IQ\(0) & ( ((!\control[0]~input_o\) # (\U2|IQ\(0))) # (\control[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110111111101111100000010000000101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_control[1]~input_o\,
	datab => \ALT_INV_control[0]~input_o\,
	datac => \U2|ALT_INV_IQ\(0),
	datae => \U4|ALT_INV_Q~q\,
	dataf => \U1|ALT_INV_IQ\(0),
	combout => \U4|Q~0_combout\);

-- Location: FF_X88_Y13_N44
\U4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \U4|Q~0_combout\,
	clrn => \ALT_INV_Reset_al~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|Q~q\);

-- Location: LABCELL_X88_Y13_N48
\U1|IQ~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|IQ~4_combout\ = ( !\control[1]~input_o\ & ( (!\control[0]~input_o\ & (\U1|IQ\(2))) # (\control[0]~input_o\ & ((!\U1|IQ\(0) $ (!\U4|Q~q\ $ (\U2|IQ\(0)))))) ) ) # ( \control[1]~input_o\ & ( (!\control[0]~input_o\ & (\U1|IQ\(2))) # (\control[0]~input_o\ 
-- & (((\in_a[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100011101110100010001110100011101110100010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_IQ\(2),
	datab => \ALT_INV_control[0]~input_o\,
	datac => \ALT_INV_in_a[3]~input_o\,
	datad => \U4|ALT_INV_Q~q\,
	datae => \ALT_INV_control[1]~input_o\,
	dataf => \U2|ALT_INV_IQ\(0),
	datag => \U1|ALT_INV_IQ\(0),
	combout => \U1|IQ~4_combout\);

-- Location: FF_X88_Y13_N50
\U1|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \U1|IQ~4_combout\,
	clrn => \ALT_INV_Reset_al~input_o\,
	ena => \U1|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|IQ\(3));

-- Location: LABCELL_X88_Y13_N21
\U1|IQ~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|IQ~3_combout\ = ( \U1|IQ\(3) & ( (!\control[0]~input_o\ & (((\U1|IQ\(1))))) # (\control[0]~input_o\ & ((!\control[1]~input_o\) # ((\in_a[2]~input_o\)))) ) ) # ( !\U1|IQ\(3) & ( (!\control[0]~input_o\ & (((\U1|IQ\(1))))) # (\control[0]~input_o\ & 
-- (\control[1]~input_o\ & (\in_a[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100100011111011110010001111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_control[1]~input_o\,
	datab => \ALT_INV_control[0]~input_o\,
	datac => \ALT_INV_in_a[2]~input_o\,
	datad => \U1|ALT_INV_IQ\(1),
	dataf => \U1|ALT_INV_IQ\(3),
	combout => \U1|IQ~3_combout\);

-- Location: FF_X88_Y13_N23
\U1|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \U1|IQ~3_combout\,
	clrn => \ALT_INV_Reset_al~input_o\,
	ena => \U1|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|IQ\(2));

-- Location: LABCELL_X88_Y13_N27
\U1|IQ~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|IQ~2_combout\ = ( \U1|IQ\(0) & ( (!\control[0]~input_o\) # ((!\control[1]~input_o\ & ((\U1|IQ\(2)))) # (\control[1]~input_o\ & (\in_a[1]~input_o\))) ) ) # ( !\U1|IQ\(0) & ( (\control[0]~input_o\ & ((!\control[1]~input_o\ & ((\U1|IQ\(2)))) # 
-- (\control[1]~input_o\ & (\in_a[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_control[1]~input_o\,
	datab => \ALT_INV_control[0]~input_o\,
	datac => \ALT_INV_in_a[1]~input_o\,
	datad => \U1|ALT_INV_IQ\(2),
	dataf => \U1|ALT_INV_IQ\(0),
	combout => \U1|IQ~2_combout\);

-- Location: FF_X88_Y13_N29
\U1|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \U1|IQ~2_combout\,
	clrn => \ALT_INV_Reset_al~input_o\,
	ena => \U1|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|IQ\(1));

-- Location: LABCELL_X88_Y13_N54
\U1|IQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|IQ~0_combout\ = ( \U1|IQ\(1) & ( (\control[0]~input_o\ & ((!\control[1]~input_o\) # (\in_a[0]~input_o\))) ) ) # ( !\U1|IQ\(1) & ( (\control[1]~input_o\ & (\control[0]~input_o\ & \in_a[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001001000110010001100000001000000010010001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_control[1]~input_o\,
	datab => \ALT_INV_control[0]~input_o\,
	datac => \ALT_INV_in_a[0]~input_o\,
	datae => \U1|ALT_INV_IQ\(1),
	combout => \U1|IQ~0_combout\);

-- Location: FF_X88_Y13_N56
\U1|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \U1|IQ~0_combout\,
	clrn => \ALT_INV_Reset_al~input_o\,
	ena => \U1|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|IQ\(0));

-- Location: LABCELL_X36_Y23_N0
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


