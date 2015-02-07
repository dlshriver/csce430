LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY FullAdder IS
	PORT(
		A,B,Cin :IN STD_LOGIC;
		S,Cout	:OUT STD_LOGIC
	);
	END FullAdder;

ARCHITECTURE behavior OF FullAdder IS
	BEGIN
		S 	 <= A XOR B XOR Cin;
		Cout <= (A AND B) OR (Cin AND (A XOR B));
	END behavior;