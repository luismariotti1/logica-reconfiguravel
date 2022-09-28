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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "09/28/2022 10:26:36"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ULAComCaseWhen
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ULAComCaseWhen_vhd_vec_tst IS
END ULAComCaseWhen_vhd_vec_tst;
ARCHITECTURE ULAComCaseWhen_arch OF ULAComCaseWhen_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL num1 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL num2 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL op : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL result : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT ULAComCaseWhen
	PORT (
	num1 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	num2 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	op : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	result : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ULAComCaseWhen
	PORT MAP (
-- list connections between master ports and signals
	num1 => num1,
	num2 => num2,
	op => op,
	result => result
	);
-- num1[2]
t_prcs_num1_2: PROCESS
BEGIN
	num1(2) <= '1';
WAIT;
END PROCESS t_prcs_num1_2;
-- num1[1]
t_prcs_num1_1: PROCESS
BEGIN
	num1(1) <= '1';
WAIT;
END PROCESS t_prcs_num1_1;
-- num1[0]
t_prcs_num1_0: PROCESS
BEGIN
	num1(0) <= '0';
WAIT;
END PROCESS t_prcs_num1_0;
-- num2[2]
t_prcs_num2_2: PROCESS
BEGIN
	num2(2) <= '0';
WAIT;
END PROCESS t_prcs_num2_2;
-- num2[1]
t_prcs_num2_1: PROCESS
BEGIN
	num2(1) <= '1';
WAIT;
END PROCESS t_prcs_num2_1;
-- num2[0]
t_prcs_num2_0: PROCESS
BEGIN
	num2(0) <= '0';
WAIT;
END PROCESS t_prcs_num2_0;
-- op[1]
t_prcs_op_1: PROCESS
BEGIN
LOOP
	op(1) <= '0';
	WAIT FOR 500000 ps;
	op(1) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_op_1;
-- op[0]
t_prcs_op_0: PROCESS
BEGIN
LOOP
	op(0) <= '0';
	WAIT FOR 250000 ps;
	op(0) <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_op_0;
END ULAComCaseWhen_arch;
