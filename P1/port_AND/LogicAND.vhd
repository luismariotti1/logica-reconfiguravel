LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY LogicAND IS
    PORT (
        in1, in2 : IN STD_LOGIC;
        out1 : OUT STD_LOGIC
    );
END LogicAND;

ARCHITECTURE logic OF LogicAND IS
BEGIN
    out1 <= in1 AND in2;
END logic;