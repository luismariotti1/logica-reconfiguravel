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
-- Generated on "09/27/2022 20:51:24"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MeioSomadorTristateComBlockGuarded
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MeioSomadorTristateComBlockGuarded_vhd_vec_tst IS
END MeioSomadorTristateComBlockGuarded_vhd_vec_tst;
ARCHITECTURE MeioSomadorTristateComBlockGuarded_arch OF MeioSomadorTristateComBlockGuarded_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL carry_out : STD_LOGIC;
SIGNAL en : STD_LOGIC;
SIGNAL sum : STD_LOGIC;
SIGNAL t : STD_LOGIC;
COMPONENT MeioSomadorTristateComBlockGuarded
	PORT (
	a : IN STD_LOGIC;
	b : IN STD_LOGIC;
	carry_out : OUT STD_LOGIC;
	en : IN STD_LOGIC;
	sum : OUT STD_LOGIC;
	t : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : MeioSomadorTristateComBlockGuarded
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	carry_out => carry_out,
	en => en,
	sum => sum,
	t => t
	);

-- a
t_prcs_a: PROCESS
BEGIN
LOOP
	a <= '0';
	WAIT FOR 50000 ps;
	a <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_a;

-- b
t_prcs_b: PROCESS
BEGIN
LOOP
	b <= '0';
	WAIT FOR 100000 ps;
	b <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_b;

-- en
t_prcs_en: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		en <= '0';
		WAIT FOR 200000 ps;
		en <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	en <= '0';
WAIT;
END PROCESS t_prcs_en;

-- t
t_prcs_t: PROCESS
BEGIN
	t <= '0';
	WAIT FOR 450000 ps;
	t <= '1';
	WAIT FOR 450000 ps;
	t <= '0';
WAIT;
END PROCESS t_prcs_t;
END MeioSomadorTristateComBlockGuarded_arch;
