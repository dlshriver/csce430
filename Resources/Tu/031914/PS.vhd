LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY PS IS
	PORT(
		data									:IN std_logic_vector(6 downto 0);
		enable, reset, Clock				:IN std_logic;
		output								:OUT std_logic_vector(6 downto 0)
	);
END PS;

ARCHITECTURE behavior OF PS IS
BEGIN
	PROCESS(Clock, reset)
	BEGIN
		IF(reset = '1') THEN	
			output <= (OTHERS =>'0');
		ELSIF(rising_edge(Clock)) THEN
			IF(enable = '1') THEN
				output <= data;
			END IF;
		END IF;
	END PROCESS;
END behavior;