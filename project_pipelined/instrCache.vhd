library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity instrCache is
	port (clock			: in std_logic;
			address		: in std_logic_vector(15 downto 0);
			data			: out std_logic_vector(23 downto 0);
			hit			: out std_logic_vector(15 downto 0);
			miss			: out std_logic_vector(15 downto 0);
			cacheStall	: out std_logic);
end instrCache;

Architecture behavior of instrCache is
	shared variable prefetch : std_logic := '0';
	shared variable hitCount : integer := 0;
	shared variable missCount : integer := 0;
	shared variable stallCount : integer := 0;
	shared variable prevAddr : std_logic_vector(15 downto 0) := x"FFFF";
	
	type mem_t is array(0 to 255) of std_logic_vector(23 downto 0);
	signal ram : mem_t;
	attribute ram_init_file : string;
	attribute ram_init_file of ram :
	signal is "instr.mif";
	
	type set is array(0 to 127) of std_logic_vector(23 downto 0);
	type iCache is array(0 to 1) of set;
	signal set1 : set := (others => x"000000");
	signal set2 : set := (others => x"000000");
Begin
	controller : process (clock) is
	begin
		if rising_edge(clock) then
			if (prefetch = '1') then
				if address /= prevAddr then
					hitCount := hitCount + 1;
				end if;
				prevAddr := address;
				hit <= std_logic_vector(to_unsigned(hitCount, 16));
				if address(7) = '0' then
					data <= set1(conv_integer(address(6 downto 0)));
				else
					data <= set2(conv_integer(address(6 downto 0)));
				end if;
				cacheStall <= '0';
			else
				cacheStall <= '1';
				if (stallCount = 256) then
					prefetch := '1';
					missCount := missCount + 1;
					miss <= std_logic_vector(to_unsigned(missCount, 16));
				elsif (stallCount < 128) then
					set1(stallCount) <= ram(stallCount);
				end if;
				stallCount := stallCount + 1;
			end if;
		end if;
	end process controller;
End behavior;