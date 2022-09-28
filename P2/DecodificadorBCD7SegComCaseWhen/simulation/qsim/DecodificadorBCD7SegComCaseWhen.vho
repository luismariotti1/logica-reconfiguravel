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

-- DATE "09/28/2022 09:47:34"

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

ENTITY 	DecodificadorBCD7SegComCaseWhen IS
    PORT (
	entradas : IN std_logic_vector(3 DOWNTO 0);
	saida : OUT std_logic_vector(6 DOWNTO 0)
	);
END DecodificadorBCD7SegComCaseWhen;

ARCHITECTURE structure OF DecodificadorBCD7SegComCaseWhen IS
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
SIGNAL ww_saida : std_logic_vector(6 DOWNTO 0);
SIGNAL \saida[0]~output_o\ : std_logic;
SIGNAL \saida[1]~output_o\ : std_logic;
SIGNAL \saida[2]~output_o\ : std_logic;
SIGNAL \saida[3]~output_o\ : std_logic;
SIGNAL \saida[4]~output_o\ : std_logic;
SIGNAL \saida[5]~output_o\ : std_logic;
SIGNAL \saida[6]~output_o\ : std_logic;
SIGNAL \entradas[0]~input_o\ : std_logic;
SIGNAL \entradas[1]~input_o\ : std_logic;
SIGNAL \entradas[2]~input_o\ : std_logic;
SIGNAL \entradas[3]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_entradas[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradas[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradas[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradas[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_entradas <= entradas;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_entradas[3]~input_o\ <= NOT \entradas[3]~input_o\;
\ALT_INV_entradas[2]~input_o\ <= NOT \entradas[2]~input_o\;
\ALT_INV_entradas[1]~input_o\ <= NOT \entradas[1]~input_o\;
\ALT_INV_entradas[0]~input_o\ <= NOT \entradas[0]~input_o\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;

\saida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \saida[0]~output_o\);

\saida[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \saida[1]~output_o\);

\saida[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \saida[2]~output_o\);

\saida[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \saida[3]~output_o\);

\saida[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \saida[4]~output_o\);

\saida[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \saida[5]~output_o\);

\saida[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \saida[6]~output_o\);

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

\entradas[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(2),
	o => \entradas[2]~input_o\);

\entradas[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(3),
	o => \entradas[3]~input_o\);

\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ((!\entradas[1]~input_o\ & ((\entradas[2]~input_o\))) # (\entradas[1]~input_o\ & ((!\entradas[0]~input_o\) # (!\entradas[2]~input_o\)))) # (\entradas[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111011111111001111101111111100111110111111110011111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradas[0]~input_o\,
	datab => \ALT_INV_entradas[1]~input_o\,
	datac => \ALT_INV_entradas[2]~input_o\,
	datad => \ALT_INV_entradas[3]~input_o\,
	combout => \Mux6~0_combout\);

\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!\entradas[3]~input_o\ & ((!\entradas[0]~input_o\ & (\entradas[1]~input_o\ & !\entradas[2]~input_o\)) # (\entradas[0]~input_o\ & ((!\entradas[2]~input_o\) # (\entradas[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000000011100010000000001110001000000000111000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradas[0]~input_o\,
	datab => \ALT_INV_entradas[1]~input_o\,
	datac => \ALT_INV_entradas[2]~input_o\,
	datad => \ALT_INV_entradas[3]~input_o\,
	combout => \Mux5~0_combout\);

\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!\entradas[1]~input_o\ & ((!\entradas[2]~input_o\ & (\entradas[0]~input_o\)) # (\entradas[2]~input_o\ & ((!\entradas[3]~input_o\))))) # (\entradas[1]~input_o\ & (\entradas[0]~input_o\ & ((!\entradas[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101000000010111010100000001011101010000000101110101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradas[0]~input_o\,
	datab => \ALT_INV_entradas[1]~input_o\,
	datac => \ALT_INV_entradas[2]~input_o\,
	datad => \ALT_INV_entradas[3]~input_o\,
	combout => \Mux4~0_combout\);

\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\entradas[3]~input_o\ & ((!\entradas[0]~input_o\ & (!\entradas[1]~input_o\ & \entradas[2]~input_o\)) # (\entradas[0]~input_o\ & (!\entradas[1]~input_o\ $ (\entradas[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100000000010010010000000001001001000000000100100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradas[0]~input_o\,
	datab => \ALT_INV_entradas[1]~input_o\,
	datac => \ALT_INV_entradas[2]~input_o\,
	datad => \ALT_INV_entradas[3]~input_o\,
	combout => \Mux3~0_combout\);

\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!\entradas[2]~input_o\ & (\entradas[1]~input_o\ & ((!\entradas[0]~input_o\) # (\entradas[3]~input_o\)))) # (\entradas[2]~input_o\ & (((\entradas[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000111111001000000011111100100000001111110010000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradas[0]~input_o\,
	datab => \ALT_INV_entradas[1]~input_o\,
	datac => \ALT_INV_entradas[2]~input_o\,
	datad => \ALT_INV_entradas[3]~input_o\,
	combout => \Mux2~0_combout\);

\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!\entradas[2]~input_o\ & (((\entradas[1]~input_o\ & \entradas[3]~input_o\)))) # (\entradas[2]~input_o\ & ((!\entradas[0]~input_o\ $ (!\entradas[1]~input_o\)) # (\entradas[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000111111000001100011111100000110001111110000011000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradas[0]~input_o\,
	datab => \ALT_INV_entradas[1]~input_o\,
	datac => \ALT_INV_entradas[2]~input_o\,
	datad => \ALT_INV_entradas[3]~input_o\,
	combout => \Mux1~0_combout\);

\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\entradas[1]~input_o\ & (!\entradas[3]~input_o\ & (!\entradas[0]~input_o\ $ (!\entradas[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100000000000010010000000000001001000000000000100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradas[0]~input_o\,
	datab => \ALT_INV_entradas[1]~input_o\,
	datac => \ALT_INV_entradas[2]~input_o\,
	datad => \ALT_INV_entradas[3]~input_o\,
	combout => \Mux0~0_combout\);

ww_saida(0) <= \saida[0]~output_o\;

ww_saida(1) <= \saida[1]~output_o\;

ww_saida(2) <= \saida[2]~output_o\;

ww_saida(3) <= \saida[3]~output_o\;

ww_saida(4) <= \saida[4]~output_o\;

ww_saida(5) <= \saida[5]~output_o\;

ww_saida(6) <= \saida[6]~output_o\;
END structure;


