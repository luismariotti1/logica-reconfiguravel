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
-- Generated on "09/13/2022 19:56:40"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Mux4Por1ComVetores
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Mux4Por1ComVetores_vhd_vec_tst IS
END Mux4Por1ComVetores_vhd_vec_tst;
ARCHITECTURE Mux4Por1ComVetores_arch OF Mux4Por1ComVetores_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ENTRADA : STD_LOGIC_VECTOR(0 TO 3);
SIGNAL SAIDA : STD_LOGIC;
SIGNAL SELETOR : STD_LOGIC_VECTOR(0 TO 1);
COMPONENT Mux4Por1ComVetores
	PORT (
	ENTRADA : IN STD_LOGIC_VECTOR(0 TO 3);
	SAIDA : OUT STD_LOGIC;
	SELETOR : IN STD_LOGIC_VECTOR(0 TO 1)
	);
END COMPONENT;
BEGIN
	i1 : Mux4Por1ComVetores
	PORT MAP (
-- list connections between master ports and signals
	ENTRADA => ENTRADA,
	SAIDA => SAIDA,
	SELETOR => SELETOR
	);
-- ENTRADA[3]
t_prcs_ENTRADA_3: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		ENTRADA(3) <= '0';
		WAIT FOR 200000 ps;
		ENTRADA(3) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	ENTRADA(3) <= '0';
WAIT;
END PROCESS t_prcs_ENTRADA_3;
-- ENTRADA[2]
t_prcs_ENTRADA_2: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		ENTRADA(2) <= '0';
		WAIT FOR 150000 ps;
		ENTRADA(2) <= '1';
		WAIT FOR 150000 ps;
	END LOOP;
	ENTRADA(2) <= '0';
WAIT;
END PROCESS t_prcs_ENTRADA_2;
-- ENTRADA[1]
t_prcs_ENTRADA_1: PROCESS
BEGIN
LOOP
	ENTRADA(1) <= '0';
	WAIT FOR 100000 ps;
	ENTRADA(1) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ENTRADA_1;
-- ENTRADA[0]
t_prcs_ENTRADA_0: PROCESS
BEGIN
LOOP
	ENTRADA(0) <= '0';
	WAIT FOR 50000 ps;
	ENTRADA(0) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ENTRADA_0;
-- SELETOR[1]
t_prcs_SELETOR_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		SELETOR(1) <= '0';
		WAIT FOR 200000 ps;
		SELETOR(1) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	SELETOR(1) <= '0';
WAIT;
END PROCESS t_prcs_SELETOR_1;
-- SELETOR[0]
t_prcs_SELETOR_0: PROCESS
BEGIN
LOOP
	SELETOR(0) <= '0';
	WAIT FOR 100000 ps;
	SELETOR(0) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_SELETOR_0;
END Mux4Por1ComVetores_arch;
