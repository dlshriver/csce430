library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity instrCache is
	port (clock		: in std_logic;
			address	: in std_logic_vector(15 downto 0);
			data		: out std_logic_vector(23 downto 0));
end instrCache;

Architecture behavior of instrCache is
Begin
	controller : process (clock) is
		type set is array(0 to 9) of std_logic_vector(23 downto 0);
		type iCache is array(0 to 1) of set;
		constant set1 : set := (x"C10140", x"A11118", x"A11118", x"A11118", x"A11118", x"A11118", x"A11118", x"A11118", x"C10232", x"911200");
		constant set2 : set := (x"000000", x"000000", x"000000", x"000000", x"000000", x"000000", x"000000", x"000000", x"000000", x"000000");
	begin
		if address(8) = '0' then
			data <= set1(conv_integer(address(4 downto 0)));
		else
			data <= set2(conv_integer(address(4 downto 0)));
		end if;
	end process controller;
End behavior;