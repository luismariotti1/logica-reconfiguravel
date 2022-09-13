LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY SomadorCompleto IS
    PORT (
        A, B, CarryIn : IN STD_LOGIC;
        Sum, CarryOut : OUT STD_LOGIC
    );

END SomadorCompleto;

ARCHITECTURE logica OF SomadorCompleto IS
    SIGNAL x : STD_LOGIC;
BEGIN
    x <= A XOR B;
    Sum <= CarryIn XOR x;
    CarryOut <= (A AND B) OR (x AND CarryIn);
END logica;