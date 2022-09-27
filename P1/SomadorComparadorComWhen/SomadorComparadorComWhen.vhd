LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY SomadorComparadorComWhen IS
    PORT (
        A, B : IN INTEGER RANGE 0 TO 7;
        SOMA : OUT INTEGER RANGE 0 TO 15;
        COMP : OUT STD_LOGIC
    );

END SomadorComparadorComWhen;

ARCHITECTURE logica OF SomadorComparadorComWhen IS
BEGIN
    SOMA <= A + B;
    COMP <= '1' WHEN A > B ELSE '0';
END logica;