LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY Exercicio1ForGenerate IS
    PORT (
        D : IN STD_LOGIC_VECTOR(0 TO 5);
        S : OUT STD_LOGIC
    );
END Exercicio1ForGenerate;

ARCHITECTURE logica OF Exercicio1ForGenerate IS
    SIGNAL X : STD_LOGIC;
    SIGNAL AUX : STD_LOGIC_VECTOR(0 TO 2);
BEGIN
    X <= (D(0) AND D(1)) OR (D(1) AND D(2));
    AUX(0) <= X OR D(3);
    GEN1 : FOR i IN 1 TO 2 GENERATE
        AUX(i) <= D(i + 3) OR AUX(i - 1);
    END GENERATE GEN1;
    S <= aux(2);
END logica;