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

-- DATE "09/13/2022 17:01:13"

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

ENTITY 	SomadorCompleto IS
    PORT (
	A : IN std_logic;
	B : IN std_logic;
	CarryIn : IN std_logic;
	Sum : OUT std_logic;
	CarryOut : OUT std_logic
	);
END SomadorCompleto;

ARCHITECTURE structure OF SomadorCompleto IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_CarryIn : std_logic;
SIGNAL ww_Sum : std_logic;
SIGNAL ww_CarryOut : std_logic;
SIGNAL \Sum~output_o\ : std_logic;
SIGNAL \CarryOut~output_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \CarryIn~input_o\ : std_logic;
SIGNAL \Sum~0_combout\ : std_logic;
SIGNAL \CarryOut~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_CarryIn <= CarryIn;
Sum <= ww_Sum;
CarryOut <= ww_CarryOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Sum~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum~output_o\);

\CarryOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CarryOut~0_combout\,
	devoe => ww_devoe,
	o => \CarryOut~output_o\);

\A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

\B~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

\CarryIn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CarryIn,
	o => \CarryIn~input_o\);

\Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sum~0_combout\ = \A~input_o\ $ (\B~input_o\ $ (\CarryIn~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datab => \B~input_o\,
	datac => \CarryIn~input_o\,
	combout => \Sum~0_combout\);

\CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryOut~0_combout\ = (\A~input_o\ & ((\B~input_o\) # (\CarryIn~input_o\))) # (!\A~input_o\ & (\B~input_o\ & \CarryIn~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datab => \B~input_o\,
	datac => \CarryIn~input_o\,
	combout => \CarryOut~0_combout\);

ww_Sum <= \Sum~output_o\;

ww_CarryOut <= \CarryOut~output_o\;
END structure;


