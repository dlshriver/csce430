LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY controlUnit2 IS
	PORT(
		opCode,Cond											:IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		opx													:IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		S,N,C,V,Z,mfc,clock,reset							:IN STD_LOGIC;
		alu_op,c_select,y_select,extend						:OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		rf_write,b_select,a_inv,b_inv,ir_enable,ma_select	:OUT STD_LOGIC;
		mem_read,mem_write,pc_select,pc_enable,inc_select,flag_enable,shift_sel,j_sel	:OUT STD_LOGIC
	);
	END controlUnit2;
ARCHITECTURE behavior OF controlUnit2 IS
	SIGNAL wmfc,cdx: STD_LOGIC;
	SHARED VARIABLE stage: INTEGER:=0;
	BEGIN
		PROCESS(clock, reset)
		BEGIN
			IF(falling_edge(clock)) THEN
				cdx <= '0';	
				IF(Cond = "0000") THEN
				cdx <= '1';				
				ELSIF(Cond = "0001") THEN
				cdx <= '0';		
				ELSIF(Cond = "0010") THEN
					IF(Z = '1') THEN
					cdx <= '1';
					END IF;
				ELSIF(Cond = "0011") THEN
					IF(Z = '0') THEN
					cdx <= '1';
					END IF;
				ELSIF(Cond = "0100") THEN
					IF(V = '1') THEN
					cdx <= '1';
					END IF;
				ELSIF(Cond = "0101") THEN
					IF(V = '0') THEN
					cdx <= '1';
					END IF;
				ELSIF(Cond = "0110") THEN
					IF(N = '1') THEN
					cdx <= '1';
					END IF;
				ELSIF(Cond = "0111") THEN
					IF(N = '0') THEN
					cdx <= '1';
					END IF;
				ELSIF(Cond = "1000") THEN
					IF(C = '1') THEN
					cdx <= '1';
					END IF;
				ELSIF(Cond = "1001") THEN
					IF(C = '0') THEN
					cdx <= '1';
					END IF;
				ELSIF(Cond = "1010") THEN
					IF(C = '1' AND Z = '0') THEN
					cdx <= '1';
					END IF;
				ELSIF(Cond = "1100") THEN
					IF(Z = '0' AND ((N = '1' AND V = '1') OR ((N = '0') AND (V = '0')))) THEN
					cdx <= '1';
					END IF;
				ELSIF(Cond = "1101") THEN
					IF((N = '1' AND (V = '0')) OR ((Z = '0') AND V = '1')) THEN
					cdx <= '1';
					END IF;
				ELSIF(Cond = "1110") THEN
					IF((N = '1' AND V = '1') OR ((N = '0') AND (V = '0'))) THEN
					cdx <= '1';
					END IF;
				ELSIF(Cond = "1111") THEN
					IF(Z = '1' OR (((N = '1' AND (V = '0')) OR ((Z = '0') AND V = '1')))) THEN
					cdx <= '1';
					END IF;
				ELSIF(Cond = "1011") THEN
					IF(C = '0' AND Z = '1') THEN
					cdx <= '1';
					END IF;
					
				END IF;
				
			END IF;
			IF(rising_edge(clock)) THEN
				IF(reset = '1') THEN
					stage := 0;
				END IF;
				IF((mfc = '1' OR wmfc = '0')) THEN
					stage := stage mod 5 + 1;
				END IF;
			IF(stage = 1) THEN
				wmfc <= '1';
				alu_op <= "00";
				c_select <= "00";
				y_select <= "00";
				rf_write <= '0';
				b_select <= '0';
				a_inv <= '0';
				b_inv <= '0';
				extend <= "00";
				ir_enable <= '1';
				ma_select <= '1';
				mem_read <= '1';
				mem_write <= '0';
				pc_select <= '1';
				pc_enable <= mfc;
				inc_select <= '0';
				flag_enable <= '0';
				shift_sel <= '0';
				j_sel <= '0';
			ELSIF(stage = 2) THEN
				wmfc <= '0';
				ir_enable <= '0';
				mem_read <= '0';
				pc_enable <= '0';
			ELSIF (stage = 3) THEN
				--R-type
				IF(opCode(3) = '0' AND opCode(2) = '0' AND cdx = '1') THEN
					IF(S = '1') THEN
					flag_enable <= '1';
					END IF;
					IF(opCode(1) = '0' AND opCode(0) = '1') THEN
					ELSIF(opCode(1) = '0' AND opCode(0) = '0') THEN
						IF(opx = "000") THEN
							alu_op <= "00";
						ELSIF(opx = "001") THEN
							alu_op <= "01";
						ELSIF(opx = "010") THEN
							alu_op <= "10";
						ELSIF(opx = "011") THEN
							alu_op <= "11";
						ELSIF(opx = "100") THEN
							alu_op <= "11";
							b_inv <= '1';
						END IF;
					--cmp
					ELSIF(opCode(1) = '1' AND opCode(0) = '0') THEN
						b_inv <= '1';
						alu_op <= "11";
						flag_enable <= '1';
						
					--jr
					ELSIF (opCode(1) = '1' AND opCode(0) = '1') THEN
						flag_enable <= '0';
						pc_enable <= '1';
						pc_select <= '0';
					END IF;
				END IF;
				--load, store, addi
				IF (opCode(3) = '0' AND opCode(2) = '1' AND cdx = '1') THEN
					IF(S = '1') THEN
					flag_enable <= '1';
					END IF;
					extend <= "01";
					alu_op <= "11";
					b_select <= '1';
					
					
				END IF;
				--b and bal
				IF (opCode(3) = '1' AND opCode(2) = '0' AND cdx = '1') THEN
					--IF (opCode(1) = '0' AND opCode(0) = '0') THEN
						pc_enable <= '1';
						pc_select <= '1';
						inc_select <= '1';
					--END IF;
						
				END IF;
				--J-type
				IF (opCode(3) = '1' AND opCode(2) = '1') THEN
						j_sel <= '1';
						--j and jal
					IF (opCode(1) = '0') THEN	
						flag_enable <= '0';
						pc_enable <= '1';
						pc_select <= '0';
					END IF;
						
				END IF;
			ELSIF (stage = 4) THEN
				pc_enable <= '0';
				--load
				IF (opCode(3) = '0' AND opCode(2) = '1' AND cdx = '1') THEN
					IF (opCode(1) = '0' AND opCode(0) = '0') THEN
						mem_read <= '1';
						ma_select <= '0';
						y_select <= "01";	
				--store
					ELSIF (opCode(1) = '0' AND opCode(0) = '1' AND cdx = '1') THEN
						 
						 mem_write <= '1';
						 ma_select <= '0';
					END IF;
				END IF;
				--sll?
				IF(opCode(3) = '0' AND opCode(2) = '0') THEN
					IF(opCode(1) = '0' AND opCode(0) = '1') THEN
						shift_sel <= '1';
					END IF;
				END IF;
				--bal
				IF (opCode(3) = '1' AND opCode(2) = '0' AND cdx = '1') THEN
						y_select <= "10";
						
				END IF;
				IF (opCode(3) = '1' AND opCode(2) = '1') THEN
						
						--jal
					IF (opCode(1) = '0' AND opCode(0) = '1') THEN	
						y_select <= "10";
					END IF;
					
						
				END IF;

			ELSIF (stage = 5) THEN
				IF (opCode(3) = '0' AND opCode(2) = '1' AND cdx = '1') THEN
					--load
					IF (opCode(1) = '0' AND opCode(0) = '0') THEN
						c_select <= "01";
						mem_read <= '0';
						ma_select<= '1';
						rf_write <= '1';
					
					--store
					ELSIF (opCode(1) = '0' AND opCode(0) = '1') THEN
						mem_write <= '0';
						ma_select<= '1';
					--addi
					ELSIF (opCode(1) = '1' AND opCode(0) = '0') THEN
						c_select <= "01";
						rf_write <= '1';
						
					END IF;
				END IF;
				IF(opCode(3) = '0' AND opCode(2) = '0' AND cdx = '1') THEN
					IF(opCode(1) = '0' AND opCode(0) = '1') THEN
						--sll
						rf_write <= '1';
						shift_sel <= '0';
					--Other R-types	
					ELSIF(opCode(1) = '0' AND opCode(0) = '0') THEN
						rf_write <= '1';
					END IF;
				END IF;
				--bal
				IF (opCode(3) = '1' AND opCode(2) = '0' AND cdx = '1') THEN
					c_select <= "10";
					rf_write <= '1';
				END IF;
				--J-type
				IF (opCode(3) = '1' AND opCode(2) = '1') THEN
						
						--jal
					IF (opCode(1) = '0' AND opCode(0) = '1') THEN	
						c_select <= "10";
						rf_write <= '1';
						--ji
					ELSIF (opCode(1) = '1' AND opCode(0) = '0') THEN	
						c_select <= "01";
						rf_write <= '1';
					END IF;
						
				END IF;
			END IF;
			END IF;
		END PROCESS;
	END behavior;