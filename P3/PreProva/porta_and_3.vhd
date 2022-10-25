LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY porta_and_3 IS
    PORT (
        w, c, d : IN STD_LOGIC;
        y : OUT STD_LOGIC);
END porta_and_3;
ARCHITECTURE funcao OF porta_and_3 IS
BEGIN
    y <= ((w NAND c) NAND d);
END funcao;