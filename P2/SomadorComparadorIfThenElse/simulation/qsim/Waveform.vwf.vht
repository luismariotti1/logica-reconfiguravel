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
-- Generated on "09/27/2022 22:12:27"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          SomadorComparadorIfThenElse
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SomadorComparadorIfThenElse_vhd_vec_tst IS
END SomadorComparadorIfThenElse_vhd_vec_tst;
ARCHITECTURE SomadorComparadorIfThenElse_arch OF SomadorComparadorIfThenElse_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL b : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL reg_comp : STD_LOGIC;
SIGNAL reg_sum : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT SomadorComparadorIfThenElse
	PORT (
	a : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	b : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	clk : IN STD_LOGIC;
	reg_comp : OUT STD_LOGIC;
	reg_sum : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : SomadorComparadorIfThenElse
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	clk => clk,
	reg_comp => reg_comp,
	reg_sum => reg_sum
	);
-- a[2]
t_prcs_a_2: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		a(2) <= '0';
		WAIT FOR 200000 ps;
		a(2) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	a(2) <= '0';
WAIT;
END PROCESS t_prcs_a_2;
-- a[1]
t_prcs_a_1: PROCESS
BEGIN
LOOP
	a(1) <= '0';
	WAIT FOR 100000 ps;
	a(1) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_a_1;
-- a[0]
t_prcs_a_0: PROCESS
BEGIN
LOOP
	a(0) <= '0';
	WAIT FOR 50000 ps;
	a(0) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_a_0;
-- b[2]
t_prcs_b_2: PROCESS
BEGIN
	b(2) <= '0';
	WAIT FOR 400000 ps;
	b(2) <= '1';
	WAIT FOR 400000 ps;
	b(2) <= '0';
WAIT;
END PROCESS t_prcs_b_2;
-- b[1]
t_prcs_b_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		b(1) <= '0';
		WAIT FOR 200000 ps;
		b(1) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	b(1) <= '0';
WAIT;
END PROCESS t_prcs_b_1;
-- b[0]
t_prcs_b_0: PROCESS
BEGIN
LOOP
	b(0) <= '0';
	WAIT FOR 100000 ps;
	b(0) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_b_0;

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		clk <= '0';
		WAIT FOR 30000 ps;
		clk <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	clk <= '0';
	WAIT FOR 30000 ps;
	clk <= '1';
WAIT;
END PROCESS t_prcs_clk;
END SomadorComparadorIfThenElse_arch;
