LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY SixteenBitRippleCarryAdder IS
	PORT(
		A,B 		:IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		Cin			:IN STD_LOGIC;
		C14,C15 	:OUT STD_LOGIC;
		S			:OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
	END SixteenBitRippleCarryAdder;
ARCHITECTURE behavior OF SixteenBitRippleCarryAdder IS
	COMPONENT FullAdder
		PORT(
			A,B,Cin	:IN STD_LOGIC;
			S,Cout	:OUT STD_LOGIC
		);
	END COMPONENT;
	SIGNAL Cout : STD_LOGIC_VECTOR(15 DOWNTO 0);
	BEGIN
		adder0:  FullAdder PORT MAP(A(0), B(0), Cin, S(0), Cout(0));
		adder1:  FullAdder PORT MAP(A(1), B(1), Cout(0), S(1), Cout(1));
		adder2:  FullAdder PORT MAP(A(2), B(2), Cout(1), S(2), Cout(2));
		adder3:  FullAdder PORT MAP(A(3), B(3), Cout(2), S(3), Cout(3));
		adder4:  FullAdder PORT MAP(A(4), B(4), Cout(3), S(4), Cout(4));
		adder5:  FullAdder PORT MAP(A(5), B(5), Cout(4), S(5), Cout(5));
		adder6:  FullAdder PORT MAP(A(6), B(6), Cout(5), S(6), Cout(6));
		adder7:  FullAdder PORT MAP(A(7), B(7), Cout(6), S(7), Cout(7));
		adder8:  FullAdder PORT MAP(A(8), B(8), Cout(7), S(8), Cout(8));
		adder9:  FullAdder PORT MAP(A(9), B(9), Cout(8), S(9), Cout(9));
		adder10: FullAdder PORT MAP(A(10), B(10), Cout(9), S(10), Cout(10));
		adder11: FullAdder PORT MAP(A(11), B(11), Cout(10), S(11), Cout(11));
		adder12: FullAdder PORT MAP(A(12), B(12), Cout(11), S(12), Cout(12));
		adder13: FullAdder PORT MAP(A(13), B(13), Cout(12), S(13), Cout(13));
		adder14: FullAdder PORT MAP(A(14), B(14), Cout(13), S(14), Cout(14));
		adder15: FullAdder PORT MAP(A(15), B(15), Cout(14), S(15), Cout(15));
		C14 <= Cout(14);
		C15 <= Cout(15);
	END behavior;
	