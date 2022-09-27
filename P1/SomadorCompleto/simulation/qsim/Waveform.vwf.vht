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
-- Generated on "09/13/2022 17:01:11"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          SomadorCompleto
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SomadorCompleto_vhd_vec_tst IS
END SomadorCompleto_vhd_vec_tst;
ARCHITECTURE SomadorCompleto_arch OF SomadorCompleto_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL CarryIn : STD_LOGIC;
SIGNAL CarryOut : STD_LOGIC;
SIGNAL Sum : STD_LOGIC;
COMPONENT SomadorCompleto
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	CarryIn : IN STD_LOGIC;
	CarryOut : OUT STD_LOGIC;
	Sum : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : SomadorCompleto
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	CarryIn => CarryIn,
	CarryOut => CarryOut,
	Sum => Sum
	);

-- A
t_prcs_A: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		A <= '0';
		WAIT FOR 200000 ps;
		A <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	A <= '0';
WAIT;
END PROCESS t_prcs_A;

-- B
t_prcs_B: PROCESS
BEGIN
LOOP
	B <= '0';
	WAIT FOR 100000 ps;
	B <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_B;

-- CarryIn
t_prcs_CarryIn: PROCESS
BEGIN
LOOP
	CarryIn <= '0';
	WAIT FOR 50000 ps;
	CarryIn <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CarryIn;
END SomadorCompleto_arch;
