LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY FlipFlopsIndependenteComForLoop IS
    GENERIC (n : INTEGER := 3);
    PORT (
        d, clk, rst : IN STD_LOGIC_VECTOR(n - 1 DOWNTO 0);
        q : OUT STD_LOGIC_VECTOR(n - 1 DOWNTO 0)
    );
END FlipFlopsIndependenteComForLoop;

ARCHITECTURE logic OF FlipFlopsIndependenteComForLoop IS
BEGIN
    PROCESS (rst, clk)
    BEGIN
        lp : FOR i IN 0 TO n - 1 LOOP
            IF (rst(i) = '1') THEN
                q(i) <= '0';
            ELSIF (clk(i)'event AND clk(i) = '1') THEN
                q(i) <= d(i);
            END IF;
        END LOOP lp;
    END PROCESS;
END logic;