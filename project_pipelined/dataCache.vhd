library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity dataCache is
	port (clock		: in std_logic;
			address	: in std_logic_vector(15 downto 0);
			mem_read	: in std_logic;
			mem_write: in std_logic;
			data_in	: in std_logic_vector(23 downto 0);
			data_out		: out std_logic_vector(23 downto 0));
end dataCache;

Architecture behavior of dataCache is
Begin
	controller : process (clock) is
		type set is array(0 to 127) of std_logic_vector(23 downto 0);
		constant set1 : set := (x"000001",  x"000002",  x"000003", others => x"000000");
		constant set2 : set := (x"000002",  x"000003",  others => x"000000");
	begin
		if address(7) = '0' then
			data_out <= set1(conv_integer(address(6 downto 0)));
		else
			data_out <= set2(conv_integer(address(6 downto 0)));
		end if;
	end process controller;
End behavior;