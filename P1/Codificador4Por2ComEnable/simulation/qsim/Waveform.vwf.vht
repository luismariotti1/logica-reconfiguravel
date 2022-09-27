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
-- Generated on "09/14/2022 11:38:54"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Codificador4Por2ComEnable
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Codificador4Por2ComEnable_vhd_vec_tst IS
END Codificador4Por2ComEnable_vhd_vec_tst;
ARCHITECTURE Codificador4Por2ComEnable_arch OF Codificador4Por2ComEnable_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ENABLE : STD_LOGIC;
SIGNAL Y : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT Codificador4Por2ComEnable
	PORT (
	A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	ENABLE : IN STD_LOGIC;
	Y : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Codificador4Por2ComEnable
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	ENABLE => ENABLE,
	Y => Y
	);
-- A[3]
t_prcs_A_3: PROCESS
BEGIN
	A(3) <= '0';
	WAIT FOR 400000 ps;
	A(3) <= '1';
	WAIT FOR 400000 ps;
	A(3) <= '0';
WAIT;
END PROCESS t_prcs_A_3;
-- A[2]
t_prcs_A_2: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		A(2) <= '0';
		WAIT FOR 200000 ps;
		A(2) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	A(2) <= '0';
WAIT;
END PROCESS t_prcs_A_2;
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
LOOP
	A(1) <= '0';
	WAIT FOR 100000 ps;
	A(1) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
LOOP
	A(0) <= '0';
	WAIT FOR 50000 ps;
	A(0) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A_0;

-- ENABLE
t_prcs_ENABLE: PROCESS
BEGIN
	ENABLE <= '1';
	WAIT FOR 500000 ps;
	ENABLE <= '0';
WAIT;
END PROCESS t_prcs_ENABLE;
END Codificador4Por2ComEnable_arch;
