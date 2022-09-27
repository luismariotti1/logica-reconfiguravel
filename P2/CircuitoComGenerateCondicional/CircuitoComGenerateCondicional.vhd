LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY CircuitoComGenerateCondicional IS
    PORT (
        entrada : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        saida : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
END CircuitoComGenerateCondicional;

ARCHITECTURE logic OF CircuitoComGenerateCondicional IS
BEGIN
    GEN1 : FOR i IN 3 DOWNTO 0 GENERATE
        GEN2 : IF i = 3 GENERATE
            saida(i) <= '0';
        END GENERATE GEN2;

        GEN3 : IF i /= 3 GENERATE
            saida(i) <= entrada(i);
        END GENERATE GEN3;
    END GENERATE GEN1;
END logic;