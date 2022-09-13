LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY LogicOR IS
    PORT (
        in1 : IN STD_LOGIC;
        in2 : IN STD_LOGIC;
        out1 : OUT STD_LOGIC
    );

END LogicOR;

ARCHITECTURE logica OF LogicOR IS
BEGIN
    out1 <= in1 OR in2;
END logica;