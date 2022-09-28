LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY FlipFlopTipoDComClockNand IS
    PORT (
        clk, a, b : IN STD_LOGIC;
        q : OUT STD_LOGIC
    );
END FlipFlopTipoDComClockNand;

ARCHITECTURE logic OF FlipFlopTipoDComClockNand IS
    signal x : std_logic;
BEGIN
    x <= a nand b;
    PROCESS (clk)
    BEGIN
        IF (clk'event AND clk = '1') THEN
            q <= x;
        END IF;
    END PROCESS;
END logic;