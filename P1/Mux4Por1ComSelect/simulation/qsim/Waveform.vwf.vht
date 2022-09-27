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
-- Generated on "09/14/2022 10:23:48"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Mux4Por1ComSelect
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Mux4Por1ComSelect_vhd_vec_tst IS
END Mux4Por1ComSelect_vhd_vec_tst;
ARCHITECTURE Mux4Por1ComSelect_arch OF Mux4Por1ComSelect_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL SEL : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL X : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT Mux4Por1ComSelect
	PORT (
	SEL : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	X : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Mux4Por1ComSelect
	PORT MAP (
-- list connections between master ports and signals
	SEL => SEL,
	X => X
	);
-- SEL[1]
t_prcs_SEL_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		SEL(1) <= '0';
		WAIT FOR 200000 ps;
		SEL(1) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	SEL(1) <= '0';
WAIT;
END PROCESS t_prcs_SEL_1;
-- SEL[0]
t_prcs_SEL_0: PROCESS
BEGIN
LOOP
	SEL(0) <= '0';
	WAIT FOR 100000 ps;
	SEL(0) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_SEL_0;
END Mux4Por1ComSelect_arch;
