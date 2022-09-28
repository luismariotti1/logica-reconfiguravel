LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY DecodificadorBCD7SegContadorComCaseWhen IS
    PORT (
        KEY : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        HEX0 : OUT STD_LOGIC_VECTOR(0 TO 6)
    );

END DecodificadorBCD7SegContadorComCaseWhen;

ARCHITECTURE logica OF DecodificadorBCD7SegContadorComCaseWhen IS
BEGIN
    PROCESS (KEY)
        VARIABLE contador : INTEGER RANGE 0 TO 15 := 0;
    BEGIN
        IF (KEY(0) = '1' AND KEY(0)'event) THEN
            CASE contador IS
                WHEN 0 => HEX0 <= "0000001";
                WHEN 1 => HEX0 <= "1001111";
                WHEN 2 => HEX0 <= "0010010";
                WHEN 3 => HEX0 <= "0000110";
                WHEN 4 => HEX0 <= "1001100";
                WHEN 5 => HEX0 <= "0100100";
                WHEN 6 => HEX0 <= "0100000";
                WHEN 7 => HEX0 <= "0001111";
                WHEN 8 => HEX0 <= "0000000";
                WHEN 9 => HEX0 <= "0000100";
                WHEN OTHERS => HEX0 <= "0110000";
            END CASE;
            contador := contador + 1;
        END IF;
    END PROCESS;
END logica;