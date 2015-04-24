library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity dataCache is
	port (clock			: in std_logic;
			address		: in std_logic_vector(15 downto 0);
			mem_read		: in std_logic;
			mem_write	: in std_logic;
			data_in		: in std_logic_vector(23 downto 0);
			reset			: in std_logic;
			data_out		: out std_logic_vector(23 downto 0);
			hit			: out std_logic_vector(15 downto 0);
			miss			: out std_logic_vector(15 downto 0);
			cacheStall	: out std_logic);
end dataCache;

Architecture behavior of dataCache is
	shared variable prefetch : std_logic := '0';
	shared variable hitCount : integer := 0;
	shared variable missCount : integer := 0;
	shared variable stallCount : integer := 0;
	
	type mem_t is array(0 to 255) of std_logic_vector(23 downto 0);
	signal ram : mem_t;
	attribute ram_init_file : string;
	attribute ram_init_file of ram :
	signal is "memoryinitialization.mif";
	
	type set is array(0 to 127) of std_logic_vector(23 downto 0);
	type iCache is array(0 to 1) of set;
	signal set1 : set := (others => x"000000");
	signal set2 : set := (others => x"000000");
Begin
	controller : process (clock, reset) is
	begin
		if rising_edge(clock) then
			if reset = '1' then
				prefetch := '0';
				hitCount := 0;
				missCount := 0;
				stallCount := 0;
				hit <= std_logic_vector(to_unsigned(hitCount, 16));
				miss <= std_logic_vector(to_unsigned(missCount, 16));
			elsif (prefetch = '1') then
				if mem_read = '1' then
					hitCount := hitCount + 1;
				end if;
				hit <= std_logic_vector(to_unsigned(hitCount, 16));
				if address(7) = '0' then
					data_out <= set1(conv_integer(address(6 downto 0)));
				else
					data_out <= set2(conv_integer(address(6 downto 0)));
				end if;
				cacheStall <= '0';
			else
				cacheStall <= '1';
				if (stallCount = 256) then
					prefetch := '1';
					missCount := missCount + 1;
					miss <= std_logic_vector(to_unsigned(missCount, 16));
				else
					if std_logic_vector(to_unsigned(stallCount, 16))(7) = '0' then
						set1(conv_integer(std_logic_vector(to_unsigned(stallCount, 16))(6 downto 0))) <= ram(stallCount);
					else
						set2(conv_integer(std_logic_vector(to_unsigned(stallCount, 16))(6 downto 0))) <= ram(stallCount);
					end if;
					stallCount := stallCount + 1;
				end if;
			end if;
		end if;
	end process controller;
End behavior;