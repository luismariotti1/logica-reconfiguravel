LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY RegistradorDeslocadorIfThenElse IS
    PORT (
        serial, clk : IN STD_LOGIC;
        Q : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
END RegistradorDeslocadorIfThenElse;

ARCHITECTURE logic OF RegistradorDeslocadorIfThenElse IS
    SIGNAL aux : STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
    PROCESS (clk)
    BEGIN
        -- MOD 1
        IF (clk'event AND clk = '1') THEN
            Q(0) <= Q(1);
            Q(1) <= Q(2);
            Q(2) <= Q(3);
            Q(3) <= serial;
        END IF;

        -- MOD 2
        -- IF (clk'event AND clk = '1') THEN
        --     lp : FOR i IN 0 TO 3 LOOP
        --         IF i < 3 THEN
        --             Q(i) <= Q(i + 1);
        --         ELSE
        --             Q(i) <= serial;
        --         END IF;
        --     END LOOP lp;
        -- END IF;
    END PROCESS;
END logic;