LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
PACKAGE componente_package IS
    ------------ NOT --------------
    COMPONENT porta_inversora IS
        PORT (
            b : IN STD_LOGIC;
            w : OUT STD_LOGIC);
    END COMPONENT;
    ------------ AND --------------
    COMPONENT porta_and IS
        PORT (
            a, b : IN STD_LOGIC;
            x : OUT STD_LOGIC);
    END COMPONENT;

    ------------ AND --------------
    COMPONENT porta_and_3 IS
        PORT (
            w, c, d : IN STD_LOGIC;
            y : OUT STD_LOGIC);
    END COMPONENT;
END componente_package;