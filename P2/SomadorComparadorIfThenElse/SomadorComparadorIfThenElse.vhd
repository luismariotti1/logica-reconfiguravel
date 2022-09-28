LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY SomadorComparadorIfThenElse IS
    PORT (
        a, b : IN INTEGER RANGE 0 TO 7;
        clk : IN STD_LOGIC;
        reg_comp : OUT STD_LOGIC;
        reg_sum : OUT INTEGER RANGE 0 TO 15
    );
END SomadorComparadorIfThenElse;

ARCHITECTURE logic OF SomadorComparadorIfThenElse IS
    SIGNAL sum : INTEGER RANGE 0 TO 15;
    SIGNAL comp : STD_LOGIC;
BEGIN
    comp <= '1' WHEN a > b ELSE '0';
    sum <= a + b;
    PROCESS (clk)
    BEGIN
        IF (clk'event AND clk = '1') THEN
            reg_comp <= comp;
            reg_sum <= sum;
        END IF;
    END PROCESS;
END logic;