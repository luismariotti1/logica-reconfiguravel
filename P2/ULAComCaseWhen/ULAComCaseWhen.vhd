LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY ULAComCaseWhen IS
    PORT (
        op : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        num1, num2 : IN INTEGER RANGE 0 TO 7;
        result : OUT INTEGER RANGE 0 TO 15
    );
END ULAComCaseWhen;

ARCHITECTURE logic OF ULAComCaseWhen IS
BEGIN
    PROCESS (op)
    BEGIN
        CASE op IS
            WHEN "00" => result <= num1 + num2;
            WHEN "01" => result <= num1 - num2;
            WHEN "10" => result <= num1 * num2;
            WHEN "11" => result <= num1 / num2;
        END CASE;
    END PROCESS;
END logic;