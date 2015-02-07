LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY IO_mem_sel IS
	PORT(
		Mem_Add		:IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		Mem_write_in				:IN STD_LOGIC;
		IO_Mem_write				:OUT STD_LOGIC;
		M_Mem_write					:OUT STD_LOGIC;
		IO_sel						:OUT STD_LOGIC
	);
	END IO_mem_sel;
ARCHITECTURE behavior OF IO_mem_sel IS
SIGNAL IO_flag: STD_LOGIC;
	BEGIN
		IO_sel <= IO_flag;
		IO_flag <= (Mem_Add(12) OR Mem_Add(13) OR Mem_Add(14) OR Mem_Add(15));
		IO_Mem_write <= (IO_flag AND Mem_write_in);
		M_Mem_write <= (NOT IO_flag AND Mem_write_in);
	END behavior;