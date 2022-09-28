LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY RegistradorDeslocadorComForLoop IS
    GENERIC (n : INTEGER := 6);
    PORT (
        serial, clk : IN STD_LOGIC;
        Q : BUFFER STD_LOGIC_VECTOR(n - 1 DOWNTO 0)
    );
END RegistradorDeslocadorComForLoop;
    
ARCHITECTURE logic OF RegistradorDeslocadorComForLoop IS
BEGIN
    PROCESS (clk)
    BEGIN
        IF (clk'event AND clk = '1') THEN
            lp : FOR i IN 0 TO n - 1 LOOP
                IF i < n - 1 THEN
                    Q(i) <= Q(i + 1);
                ELSE
                    Q(i) <= serial;
                END IF;
            END LOOP lp;
        END IF;
    END PROCESS;
END logic;