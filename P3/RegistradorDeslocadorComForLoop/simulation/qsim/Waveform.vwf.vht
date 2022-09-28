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
-- Generated on "09/28/2022 15:08:57"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          RegistradorDeslocadorComForLoop
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY RegistradorDeslocadorComForLoop_vhd_vec_tst IS
END RegistradorDeslocadorComForLoop_vhd_vec_tst;
ARCHITECTURE RegistradorDeslocadorComForLoop_arch OF RegistradorDeslocadorComForLoop_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL Q : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL serial : STD_LOGIC;
COMPONENT RegistradorDeslocadorComForLoop
	PORT (
	clk : IN STD_LOGIC;
	Q : BUFFER STD_LOGIC_VECTOR(5 DOWNTO 0);
	serial : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : RegistradorDeslocadorComForLoop
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	Q => Q,
	serial => serial
	);

-- serial
t_prcs_serial: PROCESS
BEGIN
	serial <= '1';
	WAIT FOR 670000 ps;
	serial <= '0';
	WAIT FOR 170000 ps;
	serial <= '1';
WAIT;
END PROCESS t_prcs_serial;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 25000 ps;
	clk <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
END RegistradorDeslocadorComForLoop_arch;
