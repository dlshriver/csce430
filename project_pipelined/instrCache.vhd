library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity instrCache is
	port (clock			: in std_logic;
			address		: in std_logic_vector(15 downto 0);
			reset			: in std_logic;
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
	signal setEntry : integer := 0;
	
	type mem_t is array(0 to 255) of std_logic_vector(23 downto 0);
	signal ram : mem_t;
	attribute ram_init_file : string;
	attribute ram_init_file of ram :
	signal is "instr.mif";
	
	type entry is array(0 to 127) of std_logic_vector(23 downto 0);
	type meta is array(0 to 1) of std_logic_vector(1 downto 0);
	type set is array(0 to 1) of entry;
	signal entry1 : entry := (others => x"000000");
	signal entry2 : entry := (others => x"000000");
	signal set1 : set := (entry1, entry2);
	signal set1Meta : meta := (others => "00");
Begin
	controller : process (clock, reset) is
	begin
		if rising_edge(clock) then
			if reset = '1' then
				hitCount := 0;
				missCount := 0;
				hit <= std_logic_vector(to_unsigned(hitCount, 16));
				miss <= std_logic_vector(to_unsigned(missCount, 16));
				cacheStall <= '0';
				stallCount := 0;
				prevAddr := x"FFFF";
				prefetch := '0';
			elsif (prefetch = '1') then
				if address /= prevAddr then
					hitCount := hitCount + 1;
				end if;
				prevAddr := address;
				hit <= std_logic_vector(to_unsigned(hitCount, 16));
				for i in 0 to 1 loop
					if (set1Meta(i)(0) = address(7) and set1Meta(i)(1) = '1') then
						setEntry <= i;
					end if;
				end loop;
				data <= set1(setEntry)(conv_integer(address(6 downto 0)));
				cacheStall <= '0';
			else
				cacheStall <= '1';
				if (stallCount = 256) then
					set1Meta(0) <= "10";
					set1Meta(1) <= "00";
					prefetch := '1';
					missCount := missCount + 1;
					miss <= std_logic_vector(to_unsigned(missCount, 16));
				elsif (stallCount < 128) then
					set1(0)(stallCount) <= ram(stallCount);
				end if;
				stallCount := stallCount + 1;
			end if;
		end if;
	end process controller;
End behavior;