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

-- DATE "09/27/2022 20:38:40"

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

ENTITY 	Decodificador2Por4ComBlock IS
    PORT (
	A : IN std_logic_vector(1 DOWNTO 0);
	ENABLE : IN std_logic;
	Y : OUT std_logic_vector(3 DOWNTO 0)
	);
END Decodificador2Por4ComBlock;

ARCHITECTURE structure OF Decodificador2Por4ComBlock IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ENABLE : std_logic;
SIGNAL ww_Y : std_logic_vector(3 DOWNTO 0);
SIGNAL \Y[0]~output_o\ : std_logic;
SIGNAL \Y[1]~output_o\ : std_logic;
SIGNAL \Y[2]~output_o\ : std_logic;
SIGNAL \Y[3]~output_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \ENABLE~input_o\ : std_logic;
SIGNAL \Y[0]$latch~combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Y[1]$latch~combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Y[2]$latch~combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Y[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ENABLE~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Y[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Y[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Y[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Y[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_ENABLE <= ENABLE;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_ENABLE~input_o\ <= NOT \ENABLE~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_Y[3]$latch~combout\ <= NOT \Y[3]$latch~combout\;
\ALT_INV_Y[2]$latch~combout\ <= NOT \Y[2]$latch~combout\;
\ALT_INV_Y[1]$latch~combout\ <= NOT \Y[1]$latch~combout\;
\ALT_INV_Y[0]$latch~combout\ <= NOT \Y[0]$latch~combout\;
\ALT_INV_Mux1~2_combout\ <= NOT \Mux1~2_combout\;
\ALT_INV_Mux1~1_combout\ <= NOT \Mux1~1_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;

\Y[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[0]$latch~combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

\Y[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[1]$latch~combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

\Y[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[2]$latch~combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

\Y[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[3]$latch~combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\A[1]~input_o\) # (\A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	combout => \Mux3~0_combout\);

\ENABLE~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENABLE,
	o => \ENABLE~input_o\);

\Y[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[0]$latch~combout\ = ( \Y[0]$latch~combout\ & ( \ENABLE~input_o\ & ( !\Mux3~0_combout\ ) ) ) # ( !\Y[0]$latch~combout\ & ( \ENABLE~input_o\ & ( !\Mux3~0_combout\ ) ) ) # ( \Y[0]$latch~combout\ & ( !\ENABLE~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux3~0_combout\,
	datae => \ALT_INV_Y[0]$latch~combout\,
	dataf => \ALT_INV_ENABLE~input_o\,
	combout => \Y[0]$latch~combout\);

\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\A[0]~input_o\ & !\A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	combout => \Mux1~0_combout\);

\Y[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[1]$latch~combout\ = ( \Y[1]$latch~combout\ & ( \ENABLE~input_o\ & ( \Mux1~0_combout\ ) ) ) # ( !\Y[1]$latch~combout\ & ( \ENABLE~input_o\ & ( \Mux1~0_combout\ ) ) ) # ( \Y[1]$latch~combout\ & ( !\ENABLE~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux1~0_combout\,
	datae => \ALT_INV_Y[1]$latch~combout\,
	dataf => \ALT_INV_ENABLE~input_o\,
	combout => \Y[1]$latch~combout\);

\Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (!\A[0]~input_o\ & \A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	combout => \Mux1~1_combout\);

\Y[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[2]$latch~combout\ = ( \Y[2]$latch~combout\ & ( \ENABLE~input_o\ & ( \Mux1~1_combout\ ) ) ) # ( !\Y[2]$latch~combout\ & ( \ENABLE~input_o\ & ( \Mux1~1_combout\ ) ) ) # ( \Y[2]$latch~combout\ & ( !\ENABLE~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux1~1_combout\,
	datae => \ALT_INV_Y[2]$latch~combout\,
	dataf => \ALT_INV_ENABLE~input_o\,
	combout => \Y[2]$latch~combout\);

\Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\A[0]~input_o\ & \A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	combout => \Mux1~2_combout\);

\Y[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[3]$latch~combout\ = ( \Y[3]$latch~combout\ & ( \ENABLE~input_o\ & ( \Mux1~2_combout\ ) ) ) # ( !\Y[3]$latch~combout\ & ( \ENABLE~input_o\ & ( \Mux1~2_combout\ ) ) ) # ( \Y[3]$latch~combout\ & ( !\ENABLE~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux1~2_combout\,
	datae => \ALT_INV_Y[3]$latch~combout\,
	dataf => \ALT_INV_ENABLE~input_o\,
	combout => \Y[3]$latch~combout\);

ww_Y(0) <= \Y[0]~output_o\;

ww_Y(1) <= \Y[1]~output_o\;

ww_Y(2) <= \Y[2]~output_o\;

ww_Y(3) <= \Y[3]~output_o\;
END structure;


