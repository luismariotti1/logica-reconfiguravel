LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY porta_inversora IS
    PORT (
        b : IN STD_LOGIC;
        w : OUT STD_LOGIC);
END porta_inversora;
ARCHITECTURE funcao OF porta_inversora IS
BEGIN
    w <= NOT b;
END funcao;