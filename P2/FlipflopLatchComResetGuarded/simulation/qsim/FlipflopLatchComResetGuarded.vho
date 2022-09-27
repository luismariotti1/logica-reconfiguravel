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

-- DATE "09/27/2022 20:12:06"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
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

ENTITY 	FlipflopLatchComResetGuarded IS
    PORT (
	clk : IN std_logic;
	d : IN std_logic;
	rst : IN std_logic;
	q_guarded : OUT std_logic;
	q : OUT std_logic
	);
END FlipflopLatchComResetGuarded;

ARCHITECTURE structure OF FlipflopLatchComResetGuarded IS
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
SIGNAL ww_d : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_q_guarded : std_logic;
SIGNAL ww_q : std_logic;
SIGNAL \q_guarded~output_o\ : std_logic;
SIGNAL \q~output_o\ : std_logic;
SIGNAL \d~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \q_guarded~0_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \q_guarded$latch~combout\ : std_logic;
SIGNAL \ALT_INV_q_guarded~0_combout\ : std_logic;
SIGNAL \ALT_INV_q_guarded$latch~combout\ : std_logic;
SIGNAL \ALT_INV_d~input_o\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_d <= d;
ww_rst <= rst;
q_guarded <= ww_q_guarded;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_q_guarded~0_combout\ <= NOT \q_guarded~0_combout\;
\ALT_INV_q_guarded$latch~combout\ <= NOT \q_guarded$latch~combout\;
\ALT_INV_d~input_o\ <= NOT \d~input_o\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;

\q_guarded~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q_guarded$latch~combout\,
	devoe => ww_devoe,
	o => \q_guarded~output_o\);

\q~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d~input_o\,
	devoe => ww_devoe,
	o => \q~output_o\);

\d~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d,
	o => \d~input_o\);

\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

\q_guarded~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \q_guarded~0_combout\ = (\d~input_o\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d~input_o\,
	datab => \ALT_INV_rst~input_o\,
	combout => \q_guarded~0_combout\);

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\q_guarded$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \q_guarded$latch~combout\ = ( \q_guarded$latch~combout\ & ( \clk~input_o\ & ( \q_guarded~0_combout\ ) ) ) # ( !\q_guarded$latch~combout\ & ( \clk~input_o\ & ( \q_guarded~0_combout\ ) ) ) # ( \q_guarded$latch~combout\ & ( !\clk~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_q_guarded~0_combout\,
	datae => \ALT_INV_q_guarded$latch~combout\,
	dataf => \ALT_INV_clk~input_o\,
	combout => \q_guarded$latch~combout\);

ww_q_guarded <= \q_guarded~output_o\;

ww_q <= \q~output_o\;
END structure;


