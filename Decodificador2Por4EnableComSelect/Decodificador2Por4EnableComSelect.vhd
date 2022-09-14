LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY Decodificador2Por4EnableComSelect IS
    PORT (
        A : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        ENABLE : IN STD_LOGIC;
        Y : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );

END Decodificador2Por4EnableComSelect;

ARCHITECTURE logica OF Decodificador2Por4EnableComSelect IS
    SIGNAL X : STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
    WITH A SELECT
        X <= "0001" WHEN "00",
        "0010" WHEN "01",
        "0100" WHEN "10",
        "1000" WHEN OTHERS;

    Y <= X WHEN ENABLE = '1' ELSE "ZZZZ";

    -- other option
    
    -- with ENABLE SELECT
    -- Y <= X WHEN '1' "0000" WHEN OTHERS;
END logica;