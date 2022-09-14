LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY CodificadorDePrioridadeWithSelectWhen IS
    PORT (
        P : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        C : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
    );
END CodificadorDePrioridadeWithSelectWhen;

ARCHITECTURE logica OF CodificadorDePrioridadeWithSelectWhen IS
BEGIN
    WITH P SELECT
        C <= "11" WHEN "101" | "110" | "100" | "111",
        "10" WHEN "010" | "011",
        "01" WHEN "001",
        "00" WHEN "000";
END logica;