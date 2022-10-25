LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY porta_and IS
    PORT (
        a, b : IN STD_LOGIC;
        x : OUT STD_LOGIC);
END porta_and;
ARCHITECTURE funcao OF porta_and IS
BEGIN
    x <= a NAND b;
END funcao;