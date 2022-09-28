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
-- Generated on "09/27/2022 21:17:26"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          FlipFlopTipoDComClockSubidaReseteAssinc
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY FlipFlopTipoDComClockSubidaReseteAssinc_vhd_vec_tst IS
END FlipFlopTipoDComClockSubidaReseteAssinc_vhd_vec_tst;
ARCHITECTURE FlipFlopTipoDComClockSubidaReseteAssinc_arch OF FlipFlopTipoDComClockSubidaReseteAssinc_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL d : STD_LOGIC;
SIGNAL q : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
COMPONENT FlipFlopTipoDComClockSubidaReseteAssinc
	PORT (
	clk : IN STD_LOGIC;
	d : IN STD_LOGIC;
	q : OUT STD_LOGIC;
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : FlipFlopTipoDComClockSubidaReseteAssinc
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	d => d,
	q => q,
	rst => rst
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 50000 ps;
	clk <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- d
t_prcs_d: PROCESS
BEGIN
	FOR i IN 1 TO 4
	LOOP
		d <= '0';
		WAIT FOR 105000 ps;
		d <= '1';
		WAIT FOR 105000 ps;
	END LOOP;
	d <= '0';
	WAIT FOR 105000 ps;
	d <= '1';
WAIT;
END PROCESS t_prcs_d;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '1';
	WAIT FOR 200000 ps;
	FOR i IN 1 TO 2
	LOOP
		rst <= '0';
		WAIT FOR 200000 ps;
		rst <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
WAIT;
END PROCESS t_prcs_rst;
END FlipFlopTipoDComClockSubidaReseteAssinc_arch;
