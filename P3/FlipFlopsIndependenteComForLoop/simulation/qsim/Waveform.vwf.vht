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
-- Generated on "09/28/2022 15:32:29"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          FlipFlopsIndependenteComForLoop
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY FlipFlopsIndependenteComForLoop_vhd_vec_tst IS
END FlipFlopsIndependenteComForLoop_vhd_vec_tst;
ARCHITECTURE FlipFlopsIndependenteComForLoop_arch OF FlipFlopsIndependenteComForLoop_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL d : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL q : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL rst : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT FlipFlopsIndependenteComForLoop
	PORT (
	clk : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	d : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	q : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	rst : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : FlipFlopsIndependenteComForLoop
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	d => d,
	q => q,
	rst => rst
	);
-- d[2]
t_prcs_d_2: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		d(2) <= '0';
		WAIT FOR 200000 ps;
		d(2) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	d(2) <= '0';
WAIT;
END PROCESS t_prcs_d_2;
-- d[1]
t_prcs_d_1: PROCESS
BEGIN
LOOP
	d(1) <= '0';
	WAIT FOR 100000 ps;
	d(1) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_d_1;
-- d[0]
t_prcs_d_0: PROCESS
BEGIN
LOOP
	d(0) <= '0';
	WAIT FOR 50000 ps;
	d(0) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_d_0;
-- clk[2]
t_prcs_clk_2: PROCESS
BEGIN
	FOR i IN 1 TO 5
	LOOP
		clk(2) <= '0';
		WAIT FOR 88000 ps;
		clk(2) <= '1';
		WAIT FOR 88000 ps;
	END LOOP;
	clk(2) <= '0';
	WAIT FOR 88000 ps;
	clk(2) <= '1';
WAIT;
END PROCESS t_prcs_clk_2;
-- clk[1]
t_prcs_clk_1: PROCESS
BEGIN
	FOR i IN 1 TO 11
	LOOP
		clk(1) <= '0';
		WAIT FOR 44000 ps;
		clk(1) <= '1';
		WAIT FOR 44000 ps;
	END LOOP;
	clk(1) <= '0';
WAIT;
END PROCESS t_prcs_clk_1;
-- clk[0]
t_prcs_clk_0: PROCESS
BEGIN
	FOR i IN 1 TO 22
	LOOP
		clk(0) <= '0';
		WAIT FOR 22000 ps;
		clk(0) <= '1';
		WAIT FOR 22000 ps;
	END LOOP;
	clk(0) <= '0';
	WAIT FOR 22000 ps;
	clk(0) <= '1';
WAIT;
END PROCESS t_prcs_clk_0;
-- rst[2]
t_prcs_rst_2: PROCESS
BEGIN
	rst(2) <= '0';
	WAIT FOR 740000 ps;
	rst(2) <= '1';
WAIT;
END PROCESS t_prcs_rst_2;
-- rst[1]
t_prcs_rst_1: PROCESS
BEGIN
	rst(1) <= '0';
	WAIT FOR 740000 ps;
	rst(1) <= '1';
WAIT;
END PROCESS t_prcs_rst_1;
-- rst[0]
t_prcs_rst_0: PROCESS
BEGIN
	rst(0) <= '0';
	WAIT FOR 740000 ps;
	rst(0) <= '1';
WAIT;
END PROCESS t_prcs_rst_0;
END FlipFlopsIndependenteComForLoop_arch;
