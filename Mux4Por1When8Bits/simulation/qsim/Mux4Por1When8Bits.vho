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

-- DATE "09/13/2022 20:38:26"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Mux4Por1When8Bits IS
    PORT (
	SELETOR : IN std_logic_vector(1 DOWNTO 0);
	SAIDA : OUT std_logic_vector(7 DOWNTO 0)
	);
END Mux4Por1When8Bits;

ARCHITECTURE structure OF Mux4Por1When8Bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SELETOR : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_SAIDA : std_logic_vector(7 DOWNTO 0);
SIGNAL \SAIDA[0]~output_o\ : std_logic;
SIGNAL \SAIDA[1]~output_o\ : std_logic;
SIGNAL \SAIDA[2]~output_o\ : std_logic;
SIGNAL \SAIDA[3]~output_o\ : std_logic;
SIGNAL \SAIDA[4]~output_o\ : std_logic;
SIGNAL \SAIDA[5]~output_o\ : std_logic;
SIGNAL \SAIDA[6]~output_o\ : std_logic;
SIGNAL \SAIDA[7]~output_o\ : std_logic;
SIGNAL \SELETOR[0]~input_o\ : std_logic;
SIGNAL \SELETOR[1]~input_o\ : std_logic;
SIGNAL \SAIDA[7]~0_combout\ : std_logic;
SIGNAL \SAIDA[7]~1_combout\ : std_logic;
SIGNAL \SAIDA[7]~2_combout\ : std_logic;
SIGNAL \SAIDA[7]~3_combout\ : std_logic;
SIGNAL \ALT_INV_SAIDA[7]~3_combout\ : std_logic;

BEGIN

ww_SELETOR <= SELETOR;
SAIDA <= ww_SAIDA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SAIDA[7]~3_combout\ <= NOT \SAIDA[7]~3_combout\;

\SAIDA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SAIDA[7]~0_combout\,
	devoe => ww_devoe,
	o => \SAIDA[0]~output_o\);

\SAIDA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SAIDA[7]~0_combout\,
	devoe => ww_devoe,
	o => \SAIDA[1]~output_o\);

\SAIDA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SAIDA[7]~1_combout\,
	devoe => ww_devoe,
	o => \SAIDA[2]~output_o\);

\SAIDA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SAIDA[7]~1_combout\,
	devoe => ww_devoe,
	o => \SAIDA[3]~output_o\);

\SAIDA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SAIDA[7]~2_combout\,
	devoe => ww_devoe,
	o => \SAIDA[4]~output_o\);

\SAIDA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SAIDA[7]~2_combout\,
	devoe => ww_devoe,
	o => \SAIDA[5]~output_o\);

\SAIDA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SAIDA[7]~3_combout\,
	devoe => ww_devoe,
	o => \SAIDA[6]~output_o\);

\SAIDA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SAIDA[7]~3_combout\,
	devoe => ww_devoe,
	o => \SAIDA[7]~output_o\);

\SELETOR[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SELETOR(0),
	o => \SELETOR[0]~input_o\);

\SELETOR[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SELETOR(1),
	o => \SELETOR[1]~input_o\);

\SAIDA[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SAIDA[7]~0_combout\ = (\SELETOR[0]~input_o\ & \SELETOR[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SELETOR[0]~input_o\,
	datab => \SELETOR[1]~input_o\,
	combout => \SAIDA[7]~0_combout\);

\SAIDA[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SAIDA[7]~1_combout\ = (\SELETOR[1]~input_o\ & !\SELETOR[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SELETOR[1]~input_o\,
	datad => \SELETOR[0]~input_o\,
	combout => \SAIDA[7]~1_combout\);

\SAIDA[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SAIDA[7]~2_combout\ = (\SELETOR[0]~input_o\ & !\SELETOR[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SELETOR[0]~input_o\,
	datad => \SELETOR[1]~input_o\,
	combout => \SAIDA[7]~2_combout\);

\SAIDA[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SAIDA[7]~3_combout\ = (\SELETOR[0]~input_o\) # (\SELETOR[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SELETOR[0]~input_o\,
	datab => \SELETOR[1]~input_o\,
	combout => \SAIDA[7]~3_combout\);

ww_SAIDA(0) <= \SAIDA[0]~output_o\;

ww_SAIDA(1) <= \SAIDA[1]~output_o\;

ww_SAIDA(2) <= \SAIDA[2]~output_o\;

ww_SAIDA(3) <= \SAIDA[3]~output_o\;

ww_SAIDA(4) <= \SAIDA[4]~output_o\;

ww_SAIDA(5) <= \SAIDA[5]~output_o\;

ww_SAIDA(6) <= \SAIDA[6]~output_o\;

ww_SAIDA(7) <= \SAIDA[7]~output_o\;
END structure;


