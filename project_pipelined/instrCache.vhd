library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity instrCache is
	port (clock		: in std_logic;
			address	: in std_logic_vector(15 downto 0);
			data		: out std_logic_vector(23 downto 0);
			hit		: out std_logic_vector(15 downto 0);
			miss		: out std_logic_vector(15 downto 0);
			cacheMiss: out std_logic);
end instrCache;

Architecture behavior of instrCache is
	shared variable prefetch : std_logic := '0';
	shared variable hitCount : integer := 0;
	shared variable missCount : integer := 0;
Begin
	controller : process (clock) is
		type set is array(0 to 127) of std_logic_vector(23 downto 0);
		type iCache is array(0 to 1) of set;
		constant set1 : set := (x"000000", x"A10018",  x"A10028",  x"A100A8",  x"A100B8",  
			x"C10F40",  x"A1FFF8",  x"A1FFF8",  x"A10098",  
			x"819800",  x"C19902",  x"C11102",  x"A18001",  
			x"0FFFFC",  x"C111FE",  x"A10F98",  x"819800",  
			x"C19902",  x"C12202",  x"A18001",  x"0FFFFC", 
			x"C122FE",  x"A10038",  x"A10048",  x"A10058",  
			x"A10098",  x"A19598",  x"A19398",  x"819600",  
			x"A10F98",  x"A19598",  x"A19498",  x"819700",  
			x"A16701",  x"0F000D",  x"C15502",  x"A15A01",  
			x"0D0003",  x"A105A8",  x"A103B8",  x"A135C8", 
			x"A1C101",  x"0A0005",  x"A145C8",  x"A1C201",  
			x"0A0002",  x"01FFEB",  x"C14402",  x"A14201",  
			x"0BFFE7",  x"C13302",  x"A13101",  x"0BFFE3",  
			x"A1FFE8",  x"A1EEE8",  x"A1EEE8",  x"A1EEE8",  
			x"A1EEE8",  x"A1EEF8",  x"A1FFF8",  x"A1FFF8", 
			x"81F900",  x"C190FF",  x"0E0005",  x"C190FD",
			x"0E0005",  x"91E000",  x"01FFFA",  x"91EA00",
			x"01FFF8",  x"91EB00",  x"01FFF6",  others => x"000000");
		constant set2 : set := (others => x"000000");
	begin
		if rising_edge(clock) then
			if (prefetch = '1') then
				cacheMiss <= '0';
				hitCount := hitCount + 1;
				hit <= std_logic_vector(to_unsigned(hitCount, 16));
				if address(7) = '0' then
					data <= set1(conv_integer(address(6 downto 0)));
				else
					data <= set2(conv_integer(address(6 downto 0)));
				end if;
			else
				prefetch := '1';
				cacheMiss <= '1';
				missCount := missCount + 1;
				miss <= std_logic_vector(to_unsigned(missCount, 16));
				for i in 0 to 128 loop
				end loop;
				cacheMiss <= '0';
			end if;
		end if;
	end process controller;
End behavior;