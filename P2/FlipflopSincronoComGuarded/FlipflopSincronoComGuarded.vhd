LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY FlipflopSincronoComGuarded IS
    PORT (
        clk, d, rst : IN STD_LOGIC;
        q_guarded_sinc, q_assinc : OUT STD_LOGIC
    );
END FlipflopSincronoComGuarded;

ARCHITECTURE logic OF FlipflopSincronoComGuarded IS
BEGIN
    bloco : BLOCK (clk'event AND clk = '1')
    BEGIN
        q_guarded_sinc <= GUARDED '0' WHEN rst = '1' ELSE d;
        q_assinc <= d;
    END BLOCK bloco;
END logic;