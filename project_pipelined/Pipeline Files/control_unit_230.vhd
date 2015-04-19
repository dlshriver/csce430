library ieee;
use ieee.std_logic_1164.all;

-- Control Unit for CSCE 230 Project
-- Fall 201
--
-- Basic idea: set signals based on each stage of instruction execution
--             stage 1 initializes every control signal
--             subsequent stages only change contol signals as needed

entity control_unit_230 is
	port (op_code, cond: in std_logic_vector(3 downto 0);
		  opx: in std_logic_vector(2 downto 0);
		  s, n, z, v, c, mfc, clock, reset: in std_logic;
		  
		  -- datapath control signals
		  alu_op, c_select, y_select: out std_logic_vector(1 downto 0);
		  rf_write, b_select, a_inv, b_inv, flag_enable: out std_logic;
		  
		  -- memory interface control signals
		  extend: out std_logic_vector(1 downto 0);
		  ir_enable, ma_select, mem_write, mem_read: out std_logic;
		  
		  -- instruction address control signals
		  pc_select, pc_enable, inc_select: out std_logic;
		  
		  -- other control signals
		  exe, branch, jump: out std_logic);
		  
		  
end control_unit_230;


architecture control_unit_230_arch of control_unit_230 is
	
	signal wmfc, execute: std_logic;
	shared variable stage: integer:= 0;
	
begin
	
	process (op_code, opx, reset, execute, cond, n, z, v, c, s)
	begin

		exe <= execute;
	
		if(cond = "0000" and z = '1') then
			execute <= '1';
		elsif(cond = "0001" and z = '0') then
			execute <= '1';
		elsif(cond = "0010" and c = '1') then
			execute <= '1';
		elsif(cond = "0011" and c = '0') then
			execute <= '1';
		elsif(cond = "0100" and n = '1') then
			execute <= '1';
		elsif(cond = "0101" and n = '0') then
			execute <= '1';
		elsif(cond = "0110" and v = '1') then
			execute <= '1';
		elsif(cond = "0111" and v = '0') then
			execute <= '1';
		elsif(cond = "1000" and c = '1' and z = '0') then
			execute <= '1';
		elsif(cond = "1001" and c = '0' and z = '1') then
			execute <= '1';
		elsif(cond = "1010" and ((n = '0' and v = '0') or (n = '1' and v = '1'))) then
			execute <= '1';
		elsif(cond = "1011" and ((n = '0' and v = '1') or (n = '1' and v = '0'))) then
			execute <= '1';
		elsif(cond = "1100" and z = '0' and ((n = '0' and v = '0') or (n = '1' and v = '1'))) then
			execute <= '1';
		elsif(cond = "1101" and n = '1' and ((n = '0' and v = '1') or (n = '1' and v = '0'))) then
			execute <= '1';
		elsif(cond = "1110") then
			execute <= '1';
		elsif(cond = "1111") then
			execute <= '0';
		else
			execute <= '0';
		end if;


		if(reset = '1') then
			alu_op <= "00";
			c_select <= "01";
			y_select <= "00";
			rf_write <= '0';
			b_select <= '0';
			a_inv <= '0';
			b_inv <= '0';
			flag_enable <= '0';
			extend <= "01";
			ir_enable <= '1';
			ma_select <= '0';
			mem_write <= '0';
			mem_read <= '0';
			pc_select <= '1';
			pc_enable <= '1';
			inc_select <= '0';
			branch <= '0';
			jump <= '0';
		end if;
		

		-- R-type instructions
		if(op_code(3) = '1' and op_code(1) = '1') then
		
			flag_enable <= s;
			pc_enable <= '1';
			c_select <= "01";
			y_select <= "00";
			b_select <= '0';
			a_inv <= '0';
			extend <= "01";
			ir_enable <= '1';
			ma_select <= '0';
			mem_write <= '0';
			mem_read <= '0';
			inc_select <= '0';
			branch <= '0';
		
			-- jr instruction
			if(op_code(2) = '1' and op_code(0) = '1') then
				pc_select <= '0';
				alu_op <= "00";
				rf_write <= '0';
				b_inv <= '0';
				jump <= '1';
				
			-- cmp instruction
			elsif(op_code(2) = '1' and op_code(0) = '1') then
				pc_select <= '1';
				alu_op <= "11";
				rf_write <= '0';
				b_inv <= '1';
				jump <= '0';
					
			-- other r-type instructions
			elsif(op_code(2) = '0' and op_code(0) = '0') then				
				rf_write <= '1';
				pc_select <= '1';
				jump <= '0';
					
				-- add instruction
				if(opx = "100") then
					alu_op <= "11";
					b_inv <= '0';
					
				-- sub instruction
				elsif(opx = "000") then
					alu_op <= "11";
					b_inv <= '1';
						
				-- and instruction
				elsif(opx = "010") then
					alu_op <= "00";
					b_inv <= '0';
						
				-- or instruction
				elsif(opx = "011") then
					alu_op <= "01";
					b_inv <= '0';
						
				-- xor instruction
				elsif(opx = "001") then
					alu_op <= "10";
					b_inv <= '0';
						
				end if;
			end if;
			
			
		-- D-type instructions
		elsif(op_code(3) = '1' and op_code(1) = '0') then
				
			flag_enable <= s;
			extend <= "01";
			b_select <= '1';
			alu_op <= "11";
			c_select <= "00";
			a_inv <= '0';
			b_inv <= '0';
			ir_enable <= '1';
			ma_select <= '0';
			pc_select <= '1';
			pc_enable <= '1';
			inc_select <= '0';
			branch <= '0';
			jump <= '0';
			
			-- lw instruction
			if(op_code(2) = '0' and op_code(0) = '0') then
				mem_write <= '0';
				mem_read <= '1';
				rf_write <= '1';
				y_select <= "01";
			
			-- sw instruction
			elsif(op_code(2) = '0' and op_code(0) = '1') then
				mem_write <= '1';
				mem_read <= '0';
				rf_write <= '0';
				y_select <= "01";
			
			-- addi instruction
			elsif(op_code(2) = '1' and op_code(0) = '0') then
				mem_write <= '0';
				mem_read <= '0';
				rf_write <= '1';
				y_select <= "00";
			
			end if;
			
			
		-- B-type instructions
		elsif(op_code(3) = '0' and op_code(1) = '0') then
		
			-- b, bal instructions
			extend <= "01";
			inc_select <= '1';
			pc_enable <= '1';
			pc_select <= '1';
			y_select <= "10";
			c_select <= "10";
			alu_op <= "00";
			b_select <= '0';
			a_inv <= '0';
			b_inv <= '0';
			flag_enable <= '0';
			ir_enable <= '1';
			ma_select <= '0';
			mem_write <= '0';
			mem_read <= '0';
			branch <= execute;
			jump <= '0';
					
			-- b instruction
			if(op_code(2) = '0' and op_code(0) = '0') then
				rf_write <= '0';
					
				-- bal instruction
			elsif(op_code(2) = '1' and op_code(0) = '0') then
				rf_write <= '1';
					
			end if;
		
		
		-- J-type instructions
		elsif(op_code(3) = '0' and op_code(1) = '1') then
			-- none implemented
				
				
		end if; -- instruction check
		
		
	end process;
end control_unit_230_arch;