LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY MeioSomadorTristateComBlockGuarded IS
    PORT (
        a, b, t, en : IN STD_LOGIC;
        sum, carry_out : OUT STD_LOGIC
    );
END MeioSomadorTristateComBlockGuarded;

ARCHITECTURE logic OF MeioSomadorTristateComBlockGuarded IS
BEGIN
    bloco : BLOCK (en = '1')
    BEGIN
        sum <= GUARDED (a XOR b) WHEN t = '1' ELSE 'Z';
        carry_out <= GUARDED (a AND b) WHEN t = '1' ELSE 'Z';
    END BLOCK bloco;
END logic;