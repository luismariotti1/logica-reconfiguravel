LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY CodificadorDePrioridadeComWhen IS
    PORT (
      P : in std_logic_vector(2 downto 0);
      C : out std_logic_vector(1 downto 0)
    );
END CodificadorDePrioridadeComWhen;

ARCHITECTURE logica OF CodificadorDePrioridadeComWhen IS
BEGIN
  C <= "11" when P(2)='1'
  else "10" when P(1)='1'
  else "01" when P(0)='1'
  else "00";
END logica;