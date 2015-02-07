LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Multiplexor8to1 IS
	PORT(
		f0,f1,f2,f3,f4,f5,f6,f7,S1,S2,S3 :IN STD_LOGIC;
		Z								 :OUT STD_LOGIC
	);
	END Multiplexor8to1;

ARCHITECTURE behavior OF Multiplexor8to1 IS
	SIGNAL and0,and1,and2,and3,and4,and5,and6,and7 : STD_LOGIC;
	BEGIN
		and0 <= f0 AND (NOT S1) AND (NOT S2) AND (NOT S3);
		and1 <= f1 AND (NOT S1) AND (NOT S2) AND (S3);
		and2 <= f2 AND (NOT S1) AND (S2) AND (NOT S3);
		and3 <= f3 AND (NOT S1) AND (s2) AND (S3);
		and4 <= f4 AND (S1) AND (NOT S2) AND (NOT S3);
		and5 <= f5 AND (S1) AND (NOT S2) AND (S3);
		and6 <= f6 AND (S1) AND (S2) AND (NOT S3);
		and7 <= f7 AND (S1) AND (S2) AND (S3);
		Z <= and0 OR and1 OR and2 OR and3 OR and4 OR and5 OR and6 OR and7;
	END behavior;