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
-- Generated on "09/27/2022 17:22:27"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ConversorCodBinarioGrayGenerateCondicional
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ConversorCodBinarioGrayGenerateCondicional_vhd_vec_tst IS
END ConversorCodBinarioGrayGenerateCondicional_vhd_vec_tst;
ARCHITECTURE ConversorCodBinarioGrayGenerateCondicional_arch OF ConversorCodBinarioGrayGenerateCondicional_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL entradas : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL saidas : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT ConversorCodBinarioGrayGenerateCondicional
	PORT (
	entradas : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	saidas : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ConversorCodBinarioGrayGenerateCondicional
	PORT MAP (
-- list connections between master ports and signals
	entradas => entradas,
	saidas => saidas
	);
-- entradas[3]
t_prcs_entradas_3: PROCESS
BEGIN
	entradas(3) <= '0';
	WAIT FOR 400000 ps;
	entradas(3) <= '1';
	WAIT FOR 400000 ps;
	entradas(3) <= '0';
WAIT;
END PROCESS t_prcs_entradas_3;
-- entradas[2]
t_prcs_entradas_2: PROCESS
BEGIN
	entradas(2) <= '0';
	WAIT FOR 200000 ps;
	entradas(2) <= '1';
	WAIT FOR 400000 ps;
	entradas(2) <= '0';
WAIT;
END PROCESS t_prcs_entradas_2;
-- entradas[1]
t_prcs_entradas_1: PROCESS
BEGIN
	entradas(1) <= '0';
	WAIT FOR 100000 ps;
	entradas(1) <= '1';
	WAIT FOR 200000 ps;
	entradas(1) <= '0';
	WAIT FOR 200000 ps;
	entradas(1) <= '1';
	WAIT FOR 200000 ps;
	entradas(1) <= '0';
	WAIT FOR 200000 ps;
	entradas(1) <= '1';
WAIT;
END PROCESS t_prcs_entradas_1;
-- entradas[0]
t_prcs_entradas_0: PROCESS
BEGIN
	entradas(0) <= '0';
	WAIT FOR 50000 ps;
	entradas(0) <= '1';
	WAIT FOR 100000 ps;
	FOR i IN 1 TO 4
	LOOP
		entradas(0) <= '0';
		WAIT FOR 100000 ps;
		entradas(0) <= '1';
		WAIT FOR 100000 ps;
	END LOOP;
	entradas(0) <= '0';
WAIT;
END PROCESS t_prcs_entradas_0;
END ConversorCodBinarioGrayGenerateCondicional_arch;
