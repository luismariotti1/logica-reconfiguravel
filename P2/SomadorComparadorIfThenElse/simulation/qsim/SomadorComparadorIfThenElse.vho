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

-- DATE "09/28/2022 08:51:05"

-- 
-- Device: Altera 5CSEMA4U23C6 Package UFBGA672
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

ENTITY 	SomadorComparadorIfThenElse IS
    PORT (
	a : IN std_logic_vector(2 DOWNTO 0);
	b : IN std_logic_vector(2 DOWNTO 0);
	clk : IN std_logic;
	reg_comp : BUFFER std_logic;
	reg_sum : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END SomadorComparadorIfThenElse;

ARCHITECTURE structure OF SomadorComparadorIfThenElse IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_reg_comp : std_logic;
SIGNAL ww_reg_sum : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg_comp~output_o\ : std_logic;
SIGNAL \reg_sum[0]~output_o\ : std_logic;
SIGNAL \reg_sum[1]~output_o\ : std_logic;
SIGNAL \reg_sum[2]~output_o\ : std_logic;
SIGNAL \reg_sum[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \reg_comp~reg0_q\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \reg_sum[0]~reg0_q\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \reg_sum[1]~reg0_q\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \reg_sum[2]~reg0_q\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \reg_sum[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_a[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[0]~input_o\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_clk <= clk;
reg_comp <= ww_reg_comp;
reg_sum <= ww_reg_sum;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_a[2]~input_o\ <= NOT \a[2]~input_o\;
\ALT_INV_b[2]~input_o\ <= NOT \b[2]~input_o\;
\ALT_INV_a[1]~input_o\ <= NOT \a[1]~input_o\;
\ALT_INV_a[0]~input_o\ <= NOT \a[0]~input_o\;
\ALT_INV_b[1]~input_o\ <= NOT \b[1]~input_o\;
\ALT_INV_b[0]~input_o\ <= NOT \b[0]~input_o\;

\reg_comp~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_comp~reg0_q\,
	devoe => ww_devoe,
	o => \reg_comp~output_o\);

\reg_sum[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_sum[0]~reg0_q\,
	devoe => ww_devoe,
	o => \reg_sum[0]~output_o\);

\reg_sum[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_sum[1]~reg0_q\,
	devoe => ww_devoe,
	o => \reg_sum[1]~output_o\);

\reg_sum[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_sum[2]~reg0_q\,
	devoe => ww_devoe,
	o => \reg_sum[2]~output_o\);

\reg_sum[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_sum[3]~reg0_q\,
	devoe => ww_devoe,
	o => \reg_sum[3]~output_o\);

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

\b[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

\a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

\b[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

\a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

\b[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( \a[0]~input_o\ & ( \b[0]~input_o\ & ( (!\a[2]~input_o\ & (!\b[2]~input_o\ & (\a[1]~input_o\ & !\b[1]~input_o\))) # (\a[2]~input_o\ & ((!\b[2]~input_o\) # ((\a[1]~input_o\ & !\b[1]~input_o\)))) ) ) ) # ( !\a[0]~input_o\ & ( 
-- \b[0]~input_o\ & ( (!\a[2]~input_o\ & (!\b[2]~input_o\ & (\a[1]~input_o\ & !\b[1]~input_o\))) # (\a[2]~input_o\ & ((!\b[2]~input_o\) # ((\a[1]~input_o\ & !\b[1]~input_o\)))) ) ) ) # ( \a[0]~input_o\ & ( !\b[0]~input_o\ & ( (!\a[2]~input_o\ & 
-- (!\b[2]~input_o\ & ((!\b[1]~input_o\) # (\a[1]~input_o\)))) # (\a[2]~input_o\ & ((!\b[2]~input_o\) # ((!\b[1]~input_o\) # (\a[1]~input_o\)))) ) ) ) # ( !\a[0]~input_o\ & ( !\b[0]~input_o\ & ( (!\a[2]~input_o\ & (!\b[2]~input_o\ & (\a[1]~input_o\ & 
-- !\b[1]~input_o\))) # (\a[2]~input_o\ & ((!\b[2]~input_o\) # ((\a[1]~input_o\ & !\b[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110101000100110111010100110101001101010001000100110101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[2]~input_o\,
	datab => \ALT_INV_b[2]~input_o\,
	datac => \ALT_INV_a[1]~input_o\,
	datad => \ALT_INV_b[1]~input_o\,
	datae => \ALT_INV_a[0]~input_o\,
	dataf => \ALT_INV_b[0]~input_o\,
	combout => \LessThan0~0_combout\);

\reg_comp~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_comp~reg0_q\);

\Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = !\a[0]~input_o\ $ (!\b[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[0]~input_o\,
	datab => \ALT_INV_b[0]~input_o\,
	combout => \Add0~0_combout\);

\reg_sum[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_sum[0]~reg0_q\);

\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = !\a[1]~input_o\ $ (!\b[1]~input_o\ $ (((\a[0]~input_o\ & \b[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101001011001100110100101100110011010010110011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1]~input_o\,
	datab => \ALT_INV_b[1]~input_o\,
	datac => \ALT_INV_a[0]~input_o\,
	datad => \ALT_INV_b[0]~input_o\,
	combout => \Add0~1_combout\);

\reg_sum[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_sum[1]~reg0_q\);

\Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = ( \a[0]~input_o\ & ( \b[0]~input_o\ & ( !\a[2]~input_o\ $ (!\b[2]~input_o\ $ (((\b[1]~input_o\) # (\a[1]~input_o\)))) ) ) ) # ( !\a[0]~input_o\ & ( \b[0]~input_o\ & ( !\a[2]~input_o\ $ (!\b[2]~input_o\ $ (((\a[1]~input_o\ & 
-- \b[1]~input_o\)))) ) ) ) # ( \a[0]~input_o\ & ( !\b[0]~input_o\ & ( !\a[2]~input_o\ $ (!\b[2]~input_o\ $ (((\a[1]~input_o\ & \b[1]~input_o\)))) ) ) ) # ( !\a[0]~input_o\ & ( !\b[0]~input_o\ & ( !\a[2]~input_o\ $ (!\b[2]~input_o\ $ (((\a[1]~input_o\ & 
-- \b[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101001011001100110100101100110011010010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[2]~input_o\,
	datab => \ALT_INV_b[2]~input_o\,
	datac => \ALT_INV_a[1]~input_o\,
	datad => \ALT_INV_b[1]~input_o\,
	datae => \ALT_INV_a[0]~input_o\,
	dataf => \ALT_INV_b[0]~input_o\,
	combout => \Add0~2_combout\);

\reg_sum[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_sum[2]~reg0_q\);

\Add0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = ( \a[0]~input_o\ & ( \b[0]~input_o\ & ( (!\a[2]~input_o\ & (\b[2]~input_o\ & ((\b[1]~input_o\) # (\a[1]~input_o\)))) # (\a[2]~input_o\ & (((\b[1]~input_o\) # (\a[1]~input_o\)) # (\b[2]~input_o\))) ) ) ) # ( !\a[0]~input_o\ & ( 
-- \b[0]~input_o\ & ( (!\a[2]~input_o\ & (\b[2]~input_o\ & (\a[1]~input_o\ & \b[1]~input_o\))) # (\a[2]~input_o\ & (((\a[1]~input_o\ & \b[1]~input_o\)) # (\b[2]~input_o\))) ) ) ) # ( \a[0]~input_o\ & ( !\b[0]~input_o\ & ( (!\a[2]~input_o\ & (\b[2]~input_o\ & 
-- (\a[1]~input_o\ & \b[1]~input_o\))) # (\a[2]~input_o\ & (((\a[1]~input_o\ & \b[1]~input_o\)) # (\b[2]~input_o\))) ) ) ) # ( !\a[0]~input_o\ & ( !\b[0]~input_o\ & ( (!\a[2]~input_o\ & (\b[2]~input_o\ & (\a[1]~input_o\ & \b[1]~input_o\))) # (\a[2]~input_o\ 
-- & (((\a[1]~input_o\ & \b[1]~input_o\)) # (\b[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000100010001011100010001000101110001011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[2]~input_o\,
	datab => \ALT_INV_b[2]~input_o\,
	datac => \ALT_INV_a[1]~input_o\,
	datad => \ALT_INV_b[1]~input_o\,
	datae => \ALT_INV_a[0]~input_o\,
	dataf => \ALT_INV_b[0]~input_o\,
	combout => \Add0~3_combout\);

\reg_sum[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_sum[3]~reg0_q\);

ww_reg_comp <= \reg_comp~output_o\;

ww_reg_sum(0) <= \reg_sum[0]~output_o\;

ww_reg_sum(1) <= \reg_sum[1]~output_o\;

ww_reg_sum(2) <= \reg_sum[2]~output_o\;

ww_reg_sum(3) <= \reg_sum[3]~output_o\;
END structure;


