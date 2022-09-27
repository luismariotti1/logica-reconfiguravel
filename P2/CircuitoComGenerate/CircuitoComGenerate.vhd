LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY CircuitoComGenerate IS
    PORT (
        entradas : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
        saida : OUT STD_LOGIC
    );
END CircuitoComGenerate;

ARCHITECTURE logic OF CircuitoComGenerate IS
    SIGNAL x : STD_LOGIC;
    SIGNAL aux : STD_LOGIC_VECTOR(2 DOWNTO 0);
BEGIN
    x <= (entradas(0) AND entradas(1)) OR (entradas(1) AND entradas(2));
    aux(0) <= x OR entradas(3);
    GEN : FOR i IN 1 TO 2 GENERATE
        aux(i) <= aux(i - 1) OR entradas(i + 3);
    END GENERATE GEN;
    saida <= aux(2);
END logic;