LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY DecodificadorBCD7SegComCaseWhen IS
    PORT (
        entradas : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        saida : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
    );
END DecodificadorBCD7SegComCaseWhen;

ARCHITECTURE logic OF DecodificadorBCD7SegComCaseWhen IS
BEGIN
    PROCESS (entradas)
    BEGIN
        CASE entradas IS
            WHEN "0000" => saida <= "0000001";
            WHEN "0001" => saida <= "1001111";
            WHEN "0010" => saida <= "0010010";
            WHEN "0011" => saida <= "0000110";
            WHEN "0100" => saida <= "1001100";
            WHEN "0101" => saida <= "0100100";
            WHEN "0110" => saida <= "0100000";
            WHEN "0111" => saida <= "0001111";
            WHEN "1000" => saida <= "0000000";
            WHEN "1001" => saida <= "0000100";
            WHEN OTHERS => saida <= "0110000";
        END CASE;
    END PROCESS;
END logic;