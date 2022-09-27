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
-- Generated on "09/13/2022 20:38:24"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Mux4Por1When8Bits
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Mux4Por1When8Bits_vhd_vec_tst IS
END Mux4Por1When8Bits_vhd_vec_tst;
ARCHITECTURE Mux4Por1When8Bits_arch OF Mux4Por1When8Bits_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL SAIDA : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL SELETOR : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT Mux4Por1When8Bits
	PORT (
	SAIDA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	SELETOR : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Mux4Por1When8Bits
	PORT MAP (
-- list connections between master ports and signals
	SAIDA => SAIDA,
	SELETOR => SELETOR
	);
-- SELETOR[1]
t_prcs_SELETOR_1: PROCESS
BEGIN
LOOP
	SELETOR(1) <= '0';
	WAIT FOR 100000 ps;
	SELETOR(1) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_SELETOR_1;
-- SELETOR[0]
t_prcs_SELETOR_0: PROCESS
BEGIN
LOOP
	SELETOR(0) <= '0';
	WAIT FOR 50000 ps;
	SELETOR(0) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_SELETOR_0;
END Mux4Por1When8Bits_arch;
