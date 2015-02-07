LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY VariousLogic IS
	PORT(
		S			:IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		C14,C15		:IN STD_LOGIC;
		N,C,V,Z		:OUT STD_LOGIC
	);
	END VariousLogic;
ARCHITECTURE behavior OF VariousLogic IS
	BEGIN
		N <= S(15);
		C <= C15;
		Z <= NOT(S(0) OR S(1) OR S(2) OR S(3) OR S(4) OR S(5) OR S(6) OR S(7) OR S(8) OR S(9) OR S(10) OR S(11) OR S(12) OR S(13) OR S(14) OR S(15));
		V <= C14 XOR C15;
	END behavior;