LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY GenerateCodigoGray IS
    PORT (
        input : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        output : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
END GenerateCodigoGray;

ARCHITECTURE logica OF GenerateCodigoGray IS

BEGIN
    gen1: for i in 3 downto 0 generate
        gen2: if i = 3 generate
            output(i) < input(i);

        gen3: if i /= 3 generate
            output(i) <= input(i) xor input(i+1);
        end generate gen3;
    end generate gen1;
END logica;