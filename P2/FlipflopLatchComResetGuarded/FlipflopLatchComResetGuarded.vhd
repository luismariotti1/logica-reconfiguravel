LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY FlipflopLatchComResetGuarded IS
    PORT (
        clk, d, rst : IN STD_LOGIC;
        q_guarded, q : OUT STD_LOGIC
    );
END FlipflopLatchComResetGuarded;

ARCHITECTURE logic OF FlipflopLatchComResetGuarded IS
BEGIN
    bloco : BLOCK (clk = '1')
    BEGIN
        q_guarded <= GUARDED '0' WHEN rst = '1' ELSE d;
        q <= d;
    END BLOCK bloco;
END logic; 