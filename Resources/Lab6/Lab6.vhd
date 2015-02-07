LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Decoder3to8 IS
	PORT(
		S1,S2,S3 :IN STD_LOGIC;
		f0,f1,f2,f3,f4,f5,f6,f7 : OUT STD_LOGIC
	);
	END Decoder3to8;
	
	ARCHITECTURE behavior OF Decoder3to8 IS
	BEGIN
		f0 <= (NOT S1) AND (NOT S2) AND (NOT s3);
		f1 <= (NOT S1) AND (NOT S2) AND (S3);
		f2 <= (NOT S1) AND (S2) AND (NOT S3);
		f3 <= (NOT S1) AND (S2) AND (S3);
		f4 <= (S1) AND (NOT S2) AND (NOT S3);
		f5 <= (S1) AND (NOT S2) AND (S3);
		f6 <= (S1) AND (S2) AND (NOT S3);
		f7 <= (S1) AND (S2) AND (S3);
	END behavior;