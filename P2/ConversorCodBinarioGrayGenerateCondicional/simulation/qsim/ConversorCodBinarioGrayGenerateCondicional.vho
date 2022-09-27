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

-- DATE "09/27/2022 17:22:29"

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

ENTITY 	ConversorCodBinarioGrayGenerateCondicional IS
    PORT (
	entradas : IN std_logic_vector(3 DOWNTO 0);
	saidas : OUT std_logic_vector(3 DOWNTO 0)
	);
END ConversorCodBinarioGrayGenerateCondicional;

ARCHITECTURE structure OF ConversorCodBinarioGrayGenerateCondicional IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entradas : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_saidas : std_logic_vector(3 DOWNTO 0);
SIGNAL \saidas[0]~output_o\ : std_logic;
SIGNAL \saidas[1]~output_o\ : std_logic;
SIGNAL \saidas[2]~output_o\ : std_logic;
SIGNAL \saidas[3]~output_o\ : std_logic;
SIGNAL \entradas[0]~input_o\ : std_logic;
SIGNAL \entradas[1]~input_o\ : std_logic;
SIGNAL \saidas~0_combout\ : std_logic;
SIGNAL \entradas[2]~input_o\ : std_logic;
SIGNAL \saidas~1_combout\ : std_logic;
SIGNAL \entradas[3]~input_o\ : std_logic;
SIGNAL \saidas~2_combout\ : std_logic;
SIGNAL \ALT_INV_entradas[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradas[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradas[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradas[3]~input_o\ : std_logic;

BEGIN

ww_entradas <= entradas;
saidas <= ww_saidas;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_entradas[0]~input_o\ <= NOT \entradas[0]~input_o\;
\ALT_INV_entradas[2]~input_o\ <= NOT \entradas[2]~input_o\;
\ALT_INV_entradas[1]~input_o\ <= NOT \entradas[1]~input_o\;
\ALT_INV_entradas[3]~input_o\ <= NOT \entradas[3]~input_o\;

\saidas[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saidas~0_combout\,
	devoe => ww_devoe,
	o => \saidas[0]~output_o\);

\saidas[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saidas~1_combout\,
	devoe => ww_devoe,
	o => \saidas[1]~output_o\);

\saidas[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saidas~2_combout\,
	devoe => ww_devoe,
	o => \saidas[2]~output_o\);

\saidas[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradas[3]~input_o\,
	devoe => ww_devoe,
	o => \saidas[3]~output_o\);

\entradas[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(0),
	o => \entradas[0]~input_o\);

\entradas[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(1),
	o => \entradas[1]~input_o\);

\saidas~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \saidas~0_combout\ = !\entradas[0]~input_o\ $ (!\entradas[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradas[0]~input_o\,
	datab => \ALT_INV_entradas[1]~input_o\,
	combout => \saidas~0_combout\);

\entradas[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(2),
	o => \entradas[2]~input_o\);

\saidas~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \saidas~1_combout\ = !\entradas[1]~input_o\ $ (!\entradas[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradas[1]~input_o\,
	datab => \ALT_INV_entradas[2]~input_o\,
	combout => \saidas~1_combout\);

\entradas[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(3),
	o => \entradas[3]~input_o\);

\saidas~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \saidas~2_combout\ = !\entradas[2]~input_o\ $ (!\entradas[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradas[2]~input_o\,
	datab => \ALT_INV_entradas[3]~input_o\,
	combout => \saidas~2_combout\);

ww_saidas(0) <= \saidas[0]~output_o\;

ww_saidas(1) <= \saidas[1]~output_o\;

ww_saidas(2) <= \saidas[2]~output_o\;

ww_saidas(3) <= \saidas[3]~output_o\;
END structure;


