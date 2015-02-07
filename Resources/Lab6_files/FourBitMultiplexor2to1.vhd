LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY FourBitMultiplexor2to1 IS
	PORT(
		f0,f1   :IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		S1		:IN STD_LOGIC;
		Z		:OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
	END FourBitMultiplexor2to1;

ARCHITECTURE behavior OF FourBitMultiplexor2to1 IS
	SIGNAL and0,and1,and2,and3,and4,and5,and6,and7 : STD_LOGIC;
	BEGIN
		and0 <= f0(0) AND (NOT S1);
		and1 <= f1(0) AND (S1);
		Z(0) <= and0 OR and1;
		and2 <= f0(1) AND (NOT S1);
		and3 <= f1(1) AND (S1);
		Z(1) <= and2 OR and3;
		and4 <= f0(2) AND (NOT S1);
		and5 <= f1(2) AND (S1);
		Z(2) <= and4 OR and5;
		and6 <= f0(3) AND (NOT S1);
		and7 <= f1(3) AND (S1);
		Z(3) <= and6 OR and7;
	END behavior;