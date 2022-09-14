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

-- DATE "09/14/2022 12:23:57"

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

ENTITY 	CodificadorDePrioridadeComWhen IS
    PORT (
	P : IN std_logic_vector(2 DOWNTO 0);
	C : BUFFER std_logic_vector(1 DOWNTO 0)
	);
END CodificadorDePrioridadeComWhen;

ARCHITECTURE structure OF CodificadorDePrioridadeComWhen IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_P : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_C : std_logic_vector(1 DOWNTO 0);
SIGNAL \C[0]~output_o\ : std_logic;
SIGNAL \C[1]~output_o\ : std_logic;
SIGNAL \P[2]~input_o\ : std_logic;
SIGNAL \P[0]~input_o\ : std_logic;
SIGNAL \P[1]~input_o\ : std_logic;
SIGNAL \C~0_combout\ : std_logic;
SIGNAL \C~1_combout\ : std_logic;

BEGIN

ww_P <= P;
C <= ww_C;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\C[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C~0_combout\,
	devoe => ww_devoe,
	o => \C[0]~output_o\);

\C[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C~1_combout\,
	devoe => ww_devoe,
	o => \C[1]~output_o\);

\P[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P(2),
	o => \P[2]~input_o\);

\P[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P(0),
	o => \P[0]~input_o\);

\P[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P(1),
	o => \P[1]~input_o\);

\C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~0_combout\ = (\P[2]~input_o\) # ((\P[0]~input_o\ & !\P[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P[2]~input_o\,
	datab => \P[0]~input_o\,
	datad => \P[1]~input_o\,
	combout => \C~0_combout\);

\C~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~1_combout\ = (\P[2]~input_o\) # (\P[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P[2]~input_o\,
	datab => \P[1]~input_o\,
	combout => \C~1_combout\);

ww_C(0) <= \C[0]~output_o\;

ww_C(1) <= \C[1]~output_o\;
END structure;


