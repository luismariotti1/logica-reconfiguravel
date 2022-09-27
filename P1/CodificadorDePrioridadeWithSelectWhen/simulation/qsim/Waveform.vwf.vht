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
-- Generated on "09/14/2022 11:58:20"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CodificadorDePrioridadeWithSelectWhen
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CodificadorDePrioridadeWithSelectWhen_vhd_vec_tst IS
END CodificadorDePrioridadeWithSelectWhen_vhd_vec_tst;
ARCHITECTURE CodificadorDePrioridadeWithSelectWhen_arch OF CodificadorDePrioridadeWithSelectWhen_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL C : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL P : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT CodificadorDePrioridadeWithSelectWhen
	PORT (
	C : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	P : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : CodificadorDePrioridadeWithSelectWhen
	PORT MAP (
-- list connections between master ports and signals
	C => C,
	P => P
	);
-- P[2]
t_prcs_P_2: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		P(2) <= '0';
		WAIT FOR 200000 ps;
		P(2) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	P(2) <= '0';
WAIT;
END PROCESS t_prcs_P_2;
-- P[1]
t_prcs_P_1: PROCESS
BEGIN
LOOP
	P(1) <= '0';
	WAIT FOR 100000 ps;
	P(1) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_P_1;
-- P[0]
t_prcs_P_0: PROCESS
BEGIN
LOOP
	P(0) <= '0';
	WAIT FOR 50000 ps;
	P(0) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_P_0;
END CodificadorDePrioridadeWithSelectWhen_arch;
