LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY FlipFlopTipoDComClockSubidaReseteAssinc IS
    PORT (
        d, clk, rst : IN STD_LOGIC;
        q : OUT STD_LOGIC
    );
END FlipFlopTipoDComClockSubidaReseteAssinc;

ARCHITECTURE logic OF FlipFlopTipoDComClockSubidaReseteAssinc IS
BEGIN
    PROCESS (rst, clk)
    BEGIN
        IF (rst = '1') THEN
            q <= '0';
        ELSIF (clk'event AND clk = '1') THEN
            q <= d;
        END IF;
    END PROCESS;
END logic;