library ieee;
use ieee.std_logic_1164.all;

entity dataCache is
	port (mem_read, clock: in std_logic;
		  address: in std_logic_vector(15 downto 0);
		  stall: out std_logic;
		  data, hit, miss: out std_logic_vector(15 downto 0));
end dataCache;


architecture cache of dataCache is
	shared variable fetched = '0';
	shared variable hit = 0;
	shared variable miss = 0;
begin
	controller : process is
		subtype index is integer range 0 to 128;
		variable setOne : array(index) of std_logic_vector(15 downto 0);
		variable setTwo : array(index) of std_logic_vector(15 downto 0);
	begin
		loop
			wait until clock = '1';
			if (stall = '1') then
				fetched := '1';
				stall = '0';
				if (address[8] = '1') then
					data <= setOne(address[7..0]);
				else
					data <= setTwo(address[7..0]);
				end if;
			elsif (mem_read = '1' and fetched = '0') then
				fetched := '1';
				miss <= miss + 1;
				stall <= '1';
				for count in 0 to 128 loop
					setOne(count) := 0;
				end loop;
				for count in 0 to 128 loop
					setTwo(count) := 0;
				end loop;
			elsif (mem_read = '1' and fetched = '1') then
				hit <= hit + 1;
				if (address[8] = '1') then
					data <= setOne(address[7..0]);
				else
					data <= setTwo(address[7..0]);
				end if;
			end if;
		end loop;
	end process;
end architecture cache;