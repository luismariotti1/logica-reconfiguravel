LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY Mux4Por1NBitsComSelect IS
    GENERIC (N : INTEGER := 4);
    PORT (
        A, B, C, D : IN std_logic_vector(N-1 downto 0);
        SEL : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        X : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0)
    );

END Mux4Por1NBitsComSelect;

ARCHITECTURE logica OF Mux4Por1NBitsComSelect IS
BEGIN
    WITH SEL SELECT
        X <= A WHEN "00",
        B WHEN "01",
        C WHEN "10",
        D WHEN OTHERS;
END logica;