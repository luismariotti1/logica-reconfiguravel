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

-- DATE "09/13/2022 20:56:38"

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

ENTITY 	ContadorSimuladoComWhen IS
    PORT (
	ENTRADA : IN std_logic_vector(3 DOWNTO 0);
	SAIDA : BUFFER std_logic_vector(1 DOWNTO 0)
	);
END ContadorSimuladoComWhen;

ARCHITECTURE structure OF ContadorSimuladoComWhen IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ENTRADA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SAIDA : std_logic_vector(1 DOWNTO 0);
SIGNAL \SAIDA[0]~output_o\ : std_logic;
SIGNAL \SAIDA[1]~output_o\ : std_logic;
SIGNAL \ENTRADA[2]~input_o\ : std_logic;
SIGNAL \ENTRADA[0]~input_o\ : std_logic;
SIGNAL \ENTRADA[1]~input_o\ : std_logic;
SIGNAL \ENTRADA[3]~input_o\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \SAIDA[1]~2_combout\ : std_logic;

BEGIN

ww_ENTRADA <= ENTRADA;
SAIDA <= ww_SAIDA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\SAIDA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan1~0_combout\,
	oe => \SAIDA[1]~2_combout\,
	devoe => ww_devoe,
	o => \SAIDA[0]~output_o\);

\SAIDA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan1~0_combout\,
	oe => \SAIDA[1]~2_combout\,
	devoe => ww_devoe,
	o => \SAIDA[1]~output_o\);

\ENTRADA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENTRADA(2),
	o => \ENTRADA[2]~input_o\);

\ENTRADA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENTRADA(0),
	o => \ENTRADA[0]~input_o\);

\ENTRADA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENTRADA(1),
	o => \ENTRADA[1]~input_o\);

\ENTRADA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENTRADA(3),
	o => \ENTRADA[3]~input_o\);

\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (\ENTRADA[3]~input_o\) # ((\ENTRADA[2]~input_o\ & (\ENTRADA[0]~input_o\ & \ENTRADA[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENTRADA[2]~input_o\,
	datab => \ENTRADA[0]~input_o\,
	datac => \ENTRADA[1]~input_o\,
	datad => \ENTRADA[3]~input_o\,
	combout => \LessThan1~0_combout\);

\SAIDA[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SAIDA[1]~2_combout\ = (\ENTRADA[3]~input_o\ & ((\ENTRADA[2]~input_o\) # ((\ENTRADA[0]~input_o\ & \ENTRADA[1]~input_o\)))) # (!\ENTRADA[3]~input_o\ & (((!\ENTRADA[1]~input_o\) # (!\ENTRADA[0]~input_o\)) # (!\ENTRADA[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENTRADA[3]~input_o\,
	datab => \ENTRADA[2]~input_o\,
	datac => \ENTRADA[0]~input_o\,
	datad => \ENTRADA[1]~input_o\,
	combout => \SAIDA[1]~2_combout\);

ww_SAIDA(0) <= \SAIDA[0]~output_o\;

ww_SAIDA(1) <= \SAIDA[1]~output_o\;
END structure;


