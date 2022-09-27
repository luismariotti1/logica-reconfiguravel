LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY ConversorCodBinarioGrayGenerateIncondicional IS
    PORT (
        entradas : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        saidas : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
END ConversorCodBinarioGrayGenerateIncondicional;

ARCHITECTURE logic OF ConversorCodBinarioGrayGenerateIncondicional IS
BEGIN
    saidas(3) <= entradas(3);
    gen : FOR i IN 2 DOWNTO 0 GENERATE
        saidas(i) <= entradas(i + 1) XOR entradas(i);
    END GENERATE gen;
END logic;