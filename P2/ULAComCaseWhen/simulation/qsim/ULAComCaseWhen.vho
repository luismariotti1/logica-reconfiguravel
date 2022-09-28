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

-- DATE "09/28/2022 10:26:38"

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

ENTITY 	ULAComCaseWhen IS
    PORT (
	op : IN std_logic_vector(1 DOWNTO 0);
	num1 : IN std_logic_vector(2 DOWNTO 0);
	num2 : IN std_logic_vector(2 DOWNTO 0);
	result : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END ULAComCaseWhen;

ARCHITECTURE structure OF ULAComCaseWhen IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_op : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_num1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_num2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_result : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mult0~8_AX_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult0~8_AY_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult0~12\ : std_logic;
SIGNAL \Mult0~13\ : std_logic;
SIGNAL \Mult0~14\ : std_logic;
SIGNAL \Mult0~15\ : std_logic;
SIGNAL \Mult0~16\ : std_logic;
SIGNAL \Mult0~17\ : std_logic;
SIGNAL \Mult0~18\ : std_logic;
SIGNAL \Mult0~19\ : std_logic;
SIGNAL \Mult0~20\ : std_logic;
SIGNAL \Mult0~21\ : std_logic;
SIGNAL \Mult0~22\ : std_logic;
SIGNAL \Mult0~23\ : std_logic;
SIGNAL \Mult0~24\ : std_logic;
SIGNAL \Mult0~25\ : std_logic;
SIGNAL \Mult0~26\ : std_logic;
SIGNAL \Mult0~27\ : std_logic;
SIGNAL \Mult0~28\ : std_logic;
SIGNAL \Mult0~29\ : std_logic;
SIGNAL \Mult0~30\ : std_logic;
SIGNAL \Mult0~31\ : std_logic;
SIGNAL \Mult0~32\ : std_logic;
SIGNAL \Mult0~33\ : std_logic;
SIGNAL \Mult0~34\ : std_logic;
SIGNAL \Mult0~35\ : std_logic;
SIGNAL \Mult0~36\ : std_logic;
SIGNAL \Mult0~37\ : std_logic;
SIGNAL \Mult0~38\ : std_logic;
SIGNAL \Mult0~39\ : std_logic;
SIGNAL \Mult0~40\ : std_logic;
SIGNAL \Mult0~41\ : std_logic;
SIGNAL \Mult0~42\ : std_logic;
SIGNAL \Mult0~43\ : std_logic;
SIGNAL \Mult0~44\ : std_logic;
SIGNAL \Mult0~45\ : std_logic;
SIGNAL \Mult0~46\ : std_logic;
SIGNAL \Mult0~47\ : std_logic;
SIGNAL \Mult0~48\ : std_logic;
SIGNAL \Mult0~49\ : std_logic;
SIGNAL \Mult0~50\ : std_logic;
SIGNAL \Mult0~51\ : std_logic;
SIGNAL \Mult0~52\ : std_logic;
SIGNAL \Mult0~53\ : std_logic;
SIGNAL \Mult0~54\ : std_logic;
SIGNAL \Mult0~55\ : std_logic;
SIGNAL \Mult0~56\ : std_logic;
SIGNAL \Mult0~57\ : std_logic;
SIGNAL \Mult0~58\ : std_logic;
SIGNAL \Mult0~59\ : std_logic;
SIGNAL \Mult0~60\ : std_logic;
SIGNAL \Mult0~61\ : std_logic;
SIGNAL \Mult0~62\ : std_logic;
SIGNAL \Mult0~63\ : std_logic;
SIGNAL \Mult0~64\ : std_logic;
SIGNAL \Mult0~65\ : std_logic;
SIGNAL \Mult0~66\ : std_logic;
SIGNAL \Mult0~67\ : std_logic;
SIGNAL \Mult0~68\ : std_logic;
SIGNAL \Mult0~69\ : std_logic;
SIGNAL \Mult0~70\ : std_logic;
SIGNAL \Mult0~71\ : std_logic;
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \op[1]~input_o\ : std_logic;
SIGNAL \op[0]~input_o\ : std_logic;
SIGNAL \num2[0]~input_o\ : std_logic;
SIGNAL \num1[0]~input_o\ : std_logic;
SIGNAL \Add0~18_cout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \num1[2]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1_sumout\ : std_logic;
SIGNAL \num2[1]~input_o\ : std_logic;
SIGNAL \num2[2]~input_o\ : std_logic;
SIGNAL \num1[1]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~14_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~10_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ : std_logic;
SIGNAL \Mult0~8_resulta\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mult0~9\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mult0~10\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mult0~11\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|selnose\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult0~8_resulta\ : std_logic;
SIGNAL \ALT_INV_Mult0~9\ : std_logic;
SIGNAL \ALT_INV_Mult0~10\ : std_logic;
SIGNAL \ALT_INV_Mult0~11\ : std_logic;
SIGNAL \ALT_INV_num1[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_num1[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_num1[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_num2[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_num2[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_num2[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_op[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_op[1]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_selnose\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[0]~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[0]~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[1]~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[1]~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\ : std_logic;

BEGIN

ww_op <= op;
ww_num1 <= num1;
ww_num2 <= num2;
result <= ww_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult0~8_AX_bus\ <= (\num1[2]~input_o\ & \num1[1]~input_o\ & \num1[0]~input_o\);

\Mult0~8_AY_bus\ <= (\num2[2]~input_o\ & \num2[1]~input_o\ & \num2[0]~input_o\);

\Mult0~8_resulta\ <= \Mult0~8_RESULTA_bus\(0);
\Mult0~9\ <= \Mult0~8_RESULTA_bus\(1);
\Mult0~10\ <= \Mult0~8_RESULTA_bus\(2);
\Mult0~11\ <= \Mult0~8_RESULTA_bus\(3);
\Mult0~12\ <= \Mult0~8_RESULTA_bus\(4);
\Mult0~13\ <= \Mult0~8_RESULTA_bus\(5);
\Mult0~14\ <= \Mult0~8_RESULTA_bus\(6);
\Mult0~15\ <= \Mult0~8_RESULTA_bus\(7);
\Mult0~16\ <= \Mult0~8_RESULTA_bus\(8);
\Mult0~17\ <= \Mult0~8_RESULTA_bus\(9);
\Mult0~18\ <= \Mult0~8_RESULTA_bus\(10);
\Mult0~19\ <= \Mult0~8_RESULTA_bus\(11);
\Mult0~20\ <= \Mult0~8_RESULTA_bus\(12);
\Mult0~21\ <= \Mult0~8_RESULTA_bus\(13);
\Mult0~22\ <= \Mult0~8_RESULTA_bus\(14);
\Mult0~23\ <= \Mult0~8_RESULTA_bus\(15);
\Mult0~24\ <= \Mult0~8_RESULTA_bus\(16);
\Mult0~25\ <= \Mult0~8_RESULTA_bus\(17);
\Mult0~26\ <= \Mult0~8_RESULTA_bus\(18);
\Mult0~27\ <= \Mult0~8_RESULTA_bus\(19);
\Mult0~28\ <= \Mult0~8_RESULTA_bus\(20);
\Mult0~29\ <= \Mult0~8_RESULTA_bus\(21);
\Mult0~30\ <= \Mult0~8_RESULTA_bus\(22);
\Mult0~31\ <= \Mult0~8_RESULTA_bus\(23);
\Mult0~32\ <= \Mult0~8_RESULTA_bus\(24);
\Mult0~33\ <= \Mult0~8_RESULTA_bus\(25);
\Mult0~34\ <= \Mult0~8_RESULTA_bus\(26);
\Mult0~35\ <= \Mult0~8_RESULTA_bus\(27);
\Mult0~36\ <= \Mult0~8_RESULTA_bus\(28);
\Mult0~37\ <= \Mult0~8_RESULTA_bus\(29);
\Mult0~38\ <= \Mult0~8_RESULTA_bus\(30);
\Mult0~39\ <= \Mult0~8_RESULTA_bus\(31);
\Mult0~40\ <= \Mult0~8_RESULTA_bus\(32);
\Mult0~41\ <= \Mult0~8_RESULTA_bus\(33);
\Mult0~42\ <= \Mult0~8_RESULTA_bus\(34);
\Mult0~43\ <= \Mult0~8_RESULTA_bus\(35);
\Mult0~44\ <= \Mult0~8_RESULTA_bus\(36);
\Mult0~45\ <= \Mult0~8_RESULTA_bus\(37);
\Mult0~46\ <= \Mult0~8_RESULTA_bus\(38);
\Mult0~47\ <= \Mult0~8_RESULTA_bus\(39);
\Mult0~48\ <= \Mult0~8_RESULTA_bus\(40);
\Mult0~49\ <= \Mult0~8_RESULTA_bus\(41);
\Mult0~50\ <= \Mult0~8_RESULTA_bus\(42);
\Mult0~51\ <= \Mult0~8_RESULTA_bus\(43);
\Mult0~52\ <= \Mult0~8_RESULTA_bus\(44);
\Mult0~53\ <= \Mult0~8_RESULTA_bus\(45);
\Mult0~54\ <= \Mult0~8_RESULTA_bus\(46);
\Mult0~55\ <= \Mult0~8_RESULTA_bus\(47);
\Mult0~56\ <= \Mult0~8_RESULTA_bus\(48);
\Mult0~57\ <= \Mult0~8_RESULTA_bus\(49);
\Mult0~58\ <= \Mult0~8_RESULTA_bus\(50);
\Mult0~59\ <= \Mult0~8_RESULTA_bus\(51);
\Mult0~60\ <= \Mult0~8_RESULTA_bus\(52);
\Mult0~61\ <= \Mult0~8_RESULTA_bus\(53);
\Mult0~62\ <= \Mult0~8_RESULTA_bus\(54);
\Mult0~63\ <= \Mult0~8_RESULTA_bus\(55);
\Mult0~64\ <= \Mult0~8_RESULTA_bus\(56);
\Mult0~65\ <= \Mult0~8_RESULTA_bus\(57);
\Mult0~66\ <= \Mult0~8_RESULTA_bus\(58);
\Mult0~67\ <= \Mult0~8_RESULTA_bus\(59);
\Mult0~68\ <= \Mult0~8_RESULTA_bus\(60);
\Mult0~69\ <= \Mult0~8_RESULTA_bus\(61);
\Mult0~70\ <= \Mult0~8_RESULTA_bus\(62);
\Mult0~71\ <= \Mult0~8_RESULTA_bus\(63);
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\;
\ALT_INV_Mult0~8_resulta\ <= NOT \Mult0~8_resulta\;
\ALT_INV_Mult0~9\ <= NOT \Mult0~9\;
\ALT_INV_Mult0~10\ <= NOT \Mult0~10\;
\ALT_INV_Mult0~11\ <= NOT \Mult0~11\;
\ALT_INV_num1[2]~input_o\ <= NOT \num1[2]~input_o\;
\ALT_INV_num1[1]~input_o\ <= NOT \num1[1]~input_o\;
\ALT_INV_num1[0]~input_o\ <= NOT \num1[0]~input_o\;
\ALT_INV_num2[0]~input_o\ <= NOT \num2[0]~input_o\;
\ALT_INV_num2[1]~input_o\ <= NOT \num2[1]~input_o\;
\ALT_INV_num2[2]~input_o\ <= NOT \num2[2]~input_o\;
\ALT_INV_op[0]~input_o\ <= NOT \op[0]~input_o\;
\ALT_INV_op[1]~input_o\ <= NOT \op[1]~input_o\;
\Div0|auto_generated|divider|divider|ALT_INV_selnose\(4) <= NOT \Div0|auto_generated|divider|divider|selnose\(4);
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[0]~0_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[0]~0_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_selnose\(0) <= NOT \Div0|auto_generated|divider|divider|selnose\(0);
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[0]~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[0]~5_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[1]~5_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[1]~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\;

\result[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \result[0]~output_o\);

\result[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \result[1]~output_o\);

\result[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \result[2]~output_o\);

\result[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \result[3]~output_o\);

\op[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(1),
	o => \op[1]~input_o\);

\op[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(0),
	o => \op[0]~input_o\);

\num2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num2(0),
	o => \num2[0]~input_o\);

\num1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num1(0),
	o => \num1[0]~input_o\);

\Add0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~18_cout\ = CARRY(( \op[0]~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op[0]~input_o\,
	cin => GND,
	cout => \Add0~18_cout\);

\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( !\op[0]~input_o\ $ (!\num2[0]~input_o\) ) + ( \num1[0]~input_o\ ) + ( \Add0~18_cout\ ))
-- \Add0~2\ = CARRY(( !\op[0]~input_o\ $ (!\num2[0]~input_o\) ) + ( \num1[0]~input_o\ ) + ( \Add0~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op[0]~input_o\,
	datad => \ALT_INV_num2[0]~input_o\,
	dataf => \ALT_INV_num1[0]~input_o\,
	cin => \Add0~18_cout\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

\num1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num1(2),
	o => \num1[2]~input_o\);

\Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\ = SUM(( !\num1[2]~input_o\ $ (!\num2[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~6\ = CARRY(( !\num1[2]~input_o\ $ (!\num2[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~7\ = SHARE((!\num2[0]~input_o\) # (\num1[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_num1[2]~input_o\,
	datad => \ALT_INV_num2[0]~input_o\,
	cin => GND,
	sharein => GND,
	sumout => \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~6\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~7\);

\Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1_sumout\ = SUM(( VCC ) + ( \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~7\ ) + ( \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~6\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~7\,
	sumout => \Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1_sumout\);

\num2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num2(1),
	o => \num2[1]~input_o\);

\num2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num2(2),
	o => \num2[2]~input_o\);

\Div0|auto_generated|divider|divider|selnose[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose\(0) = ((\num2[2]~input_o\) # (\num2[1]~input_o\)) # (\Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[1]~1_sumout\,
	datab => \ALT_INV_num2[1]~input_o\,
	datac => \ALT_INV_num2[2]~input_o\,
	combout => \Div0|auto_generated|divider|divider|selnose\(0));

\num1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num1(1),
	o => \num1[1]~input_o\);

\Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\ = SUM(( !\num2[0]~input_o\ $ (!\num1[1]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~10\ = CARRY(( !\num2[0]~input_o\ $ (!\num1[1]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~11\ = SHARE((!\num2[0]~input_o\) # (\num1[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_num2[0]~input_o\,
	datad => \ALT_INV_num1[1]~input_o\,
	cin => GND,
	sharein => GND,
	sumout => \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~10\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~11\);

\Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5_sumout\ = SUM(( !\num2[1]~input_o\ $ (((!\Div0|auto_generated|divider|divider|selnose\(0) & (\Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|selnose\(0) & ((\num1[2]~input_o\))))) ) + ( \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~11\ ) + ( \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~10\ ))
-- \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~6\ = CARRY(( !\num2[1]~input_o\ $ (((!\Div0|auto_generated|divider|divider|selnose\(0) & (\Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|selnose\(0) & ((\num1[2]~input_o\))))) ) + ( \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~11\ ) + ( \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~10\ ))
-- \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~7\ = SHARE((!\num2[1]~input_o\ & ((!\Div0|auto_generated|divider|divider|selnose\(0) & (\Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|selnose\(0) & ((\num1[2]~input_o\))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001110000000000000000000000001011100001000111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[0]~5_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_selnose\(0),
	datac => \ALT_INV_num1[2]~input_o\,
	datad => \ALT_INV_num2[1]~input_o\,
	cin => \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~10\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~11\,
	sumout => \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~6\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~7\);

\Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ = SUM(( VCC ) + ( \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~7\ ) + ( \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~6\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~7\,
	sumout => \Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\);

\Div0|auto_generated|divider|divider|StageOut[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ = ( \num2[2]~input_o\ & ( \num1[2]~input_o\ ) ) # ( !\num2[2]~input_o\ & ( (!\Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1_sumout\ & ((!\num2[1]~input_o\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\))) # (\num2[1]~input_o\ & (\num1[2]~input_o\)))) # (\Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1_sumout\ & (\num1[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010101010101010101010101010100110101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_num1[2]~input_o\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[0]~5_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[1]~1_sumout\,
	datad => \ALT_INV_num2[1]~input_o\,
	datae => \ALT_INV_num2[2]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[0]~0_combout\);

\Div0|auto_generated|divider|divider|selnose[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose\(4) = (\Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\) # (\num2[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_num2[2]~input_o\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|selnose\(4));

\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~14_cout\ = CARRY(( !\num2[0]~input_o\ $ (!\num1[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~15\ = SHARE((!\num2[0]~input_o\) # (\num1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_num2[0]~input_o\,
	datad => \ALT_INV_num1[0]~input_o\,
	cin => GND,
	sharein => GND,
	cout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~14_cout\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~15\);

\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~10_cout\ = CARRY(( !\num2[1]~input_o\ $ (((!\Div0|auto_generated|divider|divider|selnose\(4) & (\Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|selnose\(4) & ((\num1[1]~input_o\))))) ) + ( \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~15\ ) + ( \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~14_cout\ ))
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~11\ = SHARE((!\num2[1]~input_o\ & ((!\Div0|auto_generated|divider|divider|selnose\(4) & (\Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|selnose\(4) & ((\num1[1]~input_o\))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001110000000000000000000000001011100001000111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[0]~9_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_selnose\(4),
	datac => \ALT_INV_num1[1]~input_o\,
	datad => \ALT_INV_num2[1]~input_o\,
	cin => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~14_cout\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~15\,
	cout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~10_cout\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~11\);

\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~6_cout\ = CARRY(( (!\num2[2]~input_o\ & ((!\Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ & (!\Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ & ((!\Div0|auto_generated|divider|divider|StageOut[0]~0_combout\))))) # (\num2[2]~input_o\ & (((\Div0|auto_generated|divider|divider|StageOut[0]~0_combout\)))) ) + ( 
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~11\ ) + ( \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~10_cout\ ))
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~7\ = SHARE((!\num2[2]~input_o\ & ((!\Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ & (\Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ & ((\Div0|auto_generated|divider|divider|StageOut[0]~0_combout\))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001110000000000000000000000001011100000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[1]~5_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[0]~0_combout\,
	datad => \ALT_INV_num2[2]~input_o\,
	cin => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~10_cout\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~11\,
	cout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~6_cout\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~7\);

\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ = SUM(( VCC ) + ( \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~7\ ) + ( \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~6_cout\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~7\,
	sumout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\);

\Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 3,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 3,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m9x9",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \Mult0~8_AX_bus\,
	ay => \Mult0~8_AY_bus\,
	resulta => \Mult0~8_RESULTA_bus\);

\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \Mult0~8_resulta\ & ( (!\op[1]~input_o\ & (((\Add0~1_sumout\)))) # (\op[1]~input_o\ & ((!\op[0]~input_o\) # ((!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\)))) ) ) # ( !\Mult0~8_resulta\ & ( (!\op[1]~input_o\ 
-- & (((\Add0~1_sumout\)))) # (\op[1]~input_o\ & (\op[0]~input_o\ & ((!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100001010010111110100111000011011000010100101111101001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op[1]~input_o\,
	datab => \ALT_INV_op[0]~input_o\,
	datac => \ALT_INV_Add0~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\,
	datae => \ALT_INV_Mult0~8_resulta\,
	combout => \Mux3~0_combout\);

\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( !\op[0]~input_o\ $ (!\num2[1]~input_o\) ) + ( \num1[1]~input_o\ ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( !\op[0]~input_o\ $ (!\num2[1]~input_o\) ) + ( \num1[1]~input_o\ ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op[0]~input_o\,
	datad => \ALT_INV_num2[1]~input_o\,
	dataf => \ALT_INV_num1[1]~input_o\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \Mult0~9\ & ( \Add0~5_sumout\ & ( (!\op[1]~input_o\) # ((!\op[0]~input_o\) # ((!\num2[2]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\))) ) ) ) # ( !\Mult0~9\ & ( \Add0~5_sumout\ & ( 
-- (!\op[1]~input_o\) # ((\op[0]~input_o\ & (!\num2[2]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\))) ) ) ) # ( \Mult0~9\ & ( !\Add0~5_sumout\ & ( (\op[1]~input_o\ & ((!\op[0]~input_o\) # ((!\num2[2]~input_o\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\)))) ) ) ) # ( !\Mult0~9\ & ( !\Add0~5_sumout\ & ( (\op[1]~input_o\ & (\op[0]~input_o\ & (!\num2[2]~input_o\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000010101000100010010111010101010101111111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op[1]~input_o\,
	datab => \ALT_INV_op[0]~input_o\,
	datac => \ALT_INV_num2[2]~input_o\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\,
	datae => \ALT_INV_Mult0~9\,
	dataf => \ALT_INV_Add0~5_sumout\,
	combout => \Mux2~0_combout\);

\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( !\op[0]~input_o\ $ (!\num2[2]~input_o\) ) + ( \num1[2]~input_o\ ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( !\op[0]~input_o\ $ (!\num2[2]~input_o\) ) + ( \num1[2]~input_o\ ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op[0]~input_o\,
	datad => \ALT_INV_num2[2]~input_o\,
	dataf => \ALT_INV_num1[2]~input_o\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \Add0~9_sumout\ & ( (!\op[1]~input_o\) # ((!\op[0]~input_o\ & ((\Mult0~10\))) # (\op[0]~input_o\ & (!\Div0|auto_generated|divider|divider|selnose\(0)))) ) ) # ( !\Add0~9_sumout\ & ( (\op[1]~input_o\ & ((!\op[0]~input_o\ & 
-- ((\Mult0~10\))) # (\op[0]~input_o\ & (!\Div0|auto_generated|divider|divider|selnose\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001010100101110101111111000010000010101001011101011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op[1]~input_o\,
	datab => \ALT_INV_op[0]~input_o\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_selnose\(0),
	datad => \ALT_INV_Mult0~10\,
	datae => \ALT_INV_Add0~9_sumout\,
	combout => \Mux1~0_combout\);

\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \op[0]~input_o\ ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_op[0]~input_o\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\);

\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\op[1]~input_o\ & (((\Add0~13_sumout\)))) # (\op[1]~input_o\ & (!\op[0]~input_o\ & (\Mult0~11\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000000100101011100000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op[1]~input_o\,
	datab => \ALT_INV_op[0]~input_o\,
	datac => \ALT_INV_Mult0~11\,
	datad => \ALT_INV_Add0~13_sumout\,
	combout => \Mux0~0_combout\);

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;
END structure;


