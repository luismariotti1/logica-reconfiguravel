LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
LIBRARY work;
USE work.componente_package.ALL;
ENTITY PreProva IS
    PORT (
        a, b,c,d : IN STD_LOGIC;
        x,y : OUT STD_LOGIC);
END PreProva;
ARCHITECTURE funcao OF PreProva IS
    SIGNAL w : STD_LOGIC;
	 SIGNAL z : STD_LOGIC;
BEGIN
    U3 : porta_and_3 PORT MAP(w, c, d, z);
    U1 : porta_inversora PORT MAP(b, w);
	 U4 : porta_inversora PORT MAP(z, y);
	 U2 : porta_and PORT MAP(a, b, x);


END funcao;