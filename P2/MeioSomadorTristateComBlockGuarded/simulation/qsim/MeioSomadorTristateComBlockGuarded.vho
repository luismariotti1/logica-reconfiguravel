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

-- DATE "09/27/2022 20:51:26"

-- 
-- Device: Altera 5CSEMA4U23C6 Package UFBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MeioSomadorTristateComBlockGuarded IS
    PORT (
	a : IN std_logic;
	b : IN std_logic;
	t : IN std_logic;
	en : IN std_logic;
	sum : OUT std_logic;
	carry_out : OUT std_logic
	);
END MeioSomadorTristateComBlockGuarded;

ARCHITECTURE structure OF MeioSomadorTristateComBlockGuarded IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_t : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL ww_sum : std_logic;
SIGNAL ww_carry_out : std_logic;
SIGNAL \sum~output_o\ : std_logic;
SIGNAL \carry_out~output_o\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \sum~1_combout\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \sum$latch~combout\ : std_logic;
SIGNAL \t~input_o\ : std_logic;
SIGNAL \carry_out_24~combout\ : std_logic;
SIGNAL \carry_out~1_combout\ : std_logic;
SIGNAL \carry_out$latch~combout\ : std_logic;
SIGNAL \ALT_INV_t~input_o\ : std_logic;
SIGNAL \ALT_INV_en~input_o\ : std_logic;
SIGNAL \ALT_INV_b~input_o\ : std_logic;
SIGNAL \ALT_INV_a~input_o\ : std_logic;
SIGNAL \ALT_INV_carry_out$latch~combout\ : std_logic;
SIGNAL \ALT_INV_carry_out_24~combout\ : std_logic;
SIGNAL \ALT_INV_sum$latch~combout\ : std_logic;
SIGNAL \ALT_INV_carry_out~1_combout\ : std_logic;
SIGNAL \ALT_INV_sum~1_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_t <= t;
ww_en <= en;
sum <= ww_sum;
carry_out <= ww_carry_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_t~input_o\ <= NOT \t~input_o\;
\ALT_INV_en~input_o\ <= NOT \en~input_o\;
\ALT_INV_b~input_o\ <= NOT \b~input_o\;
\ALT_INV_a~input_o\ <= NOT \a~input_o\;
\ALT_INV_carry_out$latch~combout\ <= NOT \carry_out$latch~combout\;
\ALT_INV_carry_out_24~combout\ <= NOT \carry_out_24~combout\;
\ALT_INV_sum$latch~combout\ <= NOT \sum$latch~combout\;
\ALT_INV_carry_out~1_combout\ <= NOT \carry_out~1_combout\;
\ALT_INV_sum~1_combout\ <= NOT \sum~1_combout\;

\sum~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum$latch~combout\,
	oe => \carry_out_24~combout\,
	devoe => ww_devoe,
	o => \sum~output_o\);

\carry_out~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \carry_out$latch~combout\,
	oe => \carry_out_24~combout\,
	devoe => ww_devoe,
	o => \carry_out~output_o\);

\a~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

\b~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

\sum~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum~1_combout\ = !\a~input_o\ $ (!\b~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a~input_o\,
	datab => \ALT_INV_b~input_o\,
	combout => \sum~1_combout\);

\en~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

\sum$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum$latch~combout\ = ( \sum$latch~combout\ & ( \en~input_o\ & ( \sum~1_combout\ ) ) ) # ( !\sum$latch~combout\ & ( \en~input_o\ & ( \sum~1_combout\ ) ) ) # ( \sum$latch~combout\ & ( !\en~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_sum~1_combout\,
	datae => \ALT_INV_sum$latch~combout\,
	dataf => \ALT_INV_en~input_o\,
	combout => \sum$latch~combout\);

\t~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_t,
	o => \t~input_o\);

carry_out_24 : cyclonev_lcell_comb
-- Equation(s):
-- \carry_out_24~combout\ = ( \carry_out_24~combout\ & ( \en~input_o\ & ( \t~input_o\ ) ) ) # ( !\carry_out_24~combout\ & ( \en~input_o\ & ( \t~input_o\ ) ) ) # ( \carry_out_24~combout\ & ( !\en~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_t~input_o\,
	datae => \ALT_INV_carry_out_24~combout\,
	dataf => \ALT_INV_en~input_o\,
	combout => \carry_out_24~combout\);

\carry_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_out~1_combout\ = (\a~input_o\ & \b~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a~input_o\,
	datab => \ALT_INV_b~input_o\,
	combout => \carry_out~1_combout\);

\carry_out$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_out$latch~combout\ = ( \carry_out$latch~combout\ & ( \en~input_o\ & ( \carry_out~1_combout\ ) ) ) # ( !\carry_out$latch~combout\ & ( \en~input_o\ & ( \carry_out~1_combout\ ) ) ) # ( \carry_out$latch~combout\ & ( !\en~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_carry_out~1_combout\,
	datae => \ALT_INV_carry_out$latch~combout\,
	dataf => \ALT_INV_en~input_o\,
	combout => \carry_out$latch~combout\);

ww_sum <= \sum~output_o\;

ww_carry_out <= \carry_out~output_o\;
END structure;


