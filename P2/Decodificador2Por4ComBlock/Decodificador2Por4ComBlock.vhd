LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY Decodificador2Por4ComBlock IS
    PORT (
        A : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        ENABLE : IN STD_LOGIC;
        Y : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );

END Decodificador2Por4ComBlock;

ARCHITECTURE logica OF Decodificador2Por4ComBlock IS
    SIGNAL X : STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
    -- Mode 1 
    -- bloco : BLOCK (ENABLE = '1')
    -- BEGIN
    --     WITH A SELECT
    --         X <= "0001" WHEN "00",
    --         "0010" WHEN "01",
    --         "0100" WHEN "10",
    --         "1000" WHEN OTHERS;
    --     Y <= GUARDED X;
    -- END BLOCK bloco;
    
    -- Mode 2
    WITH A SELECT
        X <= "0001" WHEN "00",
        "0010" WHEN "01",
        "0100" WHEN "10",
        "1000" WHEN OTHERS;
        
    bloco : BLOCK (ENABLE = '1')
    BEGIN
        Y <= GUARDED X;
    END BLOCK bloco;
END logica;