LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY SixteenRegisterFile IS
	PORT(
		Reset,Enable,Clock				:IN STD_LOGIC;
		RegD,RegT,RegS					:IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		DataD							:IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		DataS,DataT						:OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
	END SixteenRegisterFile;
ARCHITECTURE behavior OF SixteenRegisterFile IS
	COMPONENT mux16
		PORT(
			d0,d1,d2,d3,d4,d5,d6,d7		:IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			d8,d9,dA,dB,dC,dD,dE,dF		:IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			sel							:IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			f							:OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
		);
	END COMPONENT;
	COMPONENT reg16
	
		PORT(
			data						:IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			enable,reset,Clock			:IN STD_LOGIC;
			output						:OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
		);
	END COMPONENT;
	COMPONENT decoder16
		PORT(
			Sel							:IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			Output						:OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
		);
	END COMPONENT;
	SIGNAL Decout,Enablebits,reg0,reg1,reg2,reg3,reg4,reg5,reg6,reg7,reg8,reg9,reg10,reg11,reg12,reg13,reg14,reg15	: STD_LOGIC_VECTOR(15 DOWNTO 0);
	BEGIN
		Decoder:	decoder16 PORT MAP(RegD, Decout);
		Enablebits(1) <= Enable AND Decout(1);
		Enablebits(2) <= Enable AND Decout(2);
		Enablebits(3) <= Enable AND Decout(3);
		Enablebits(4) <= Enable AND Decout(4);
		EnableBits(5) <= Enable AND Decout(5);
		Enablebits(6) <= Enable AND Decout(6);
		Enablebits(7) <= Enable AND Decout(7);
		Enablebits(8) <= Enable AND Decout(8);
		Enablebits(9) <= Enable AND Decout(9);
		EnableBits(10) <= Enable AND Decout(10);
		Enablebits(11) <= Enable AND Decout(11);
		Enablebits(12) <= Enable AND Decout(12);
		Enablebits(13) <= Enable AND Decout(13);
		Enablebits(14) <= Enable AND Decout(14);
		EnableBits(15) <= Enable AND Decout(15);
		RegA1:		reg16 PORT MAP(DataD, EnableBits(1), Reset, Clock, reg1);
		RegB2:		reg16 PORT MAP(DataD, EnableBits(2), Reset, Clock, reg2);
		RegC3:		reg16 PORT MAP(DataD, EnableBits(3), Reset, Clock, reg3);
		RegD4:		reg16 PORT MAP(DataD, EnableBits(4), Reset, Clock, reg4);
		RegE5:		reg16 PORT MAP(DataD, EnableBits(5), Reset, Clock, reg5);
		RegF6:		reg16 PORT MAP(DataD, EnableBits(6), Reset, Clock, reg6);
		RegG7:		reg16 PORT MAP(DataD, EnableBits(7), Reset, Clock, reg7);
		RegH8:		reg16 PORT MAP(DataD, EnableBits(8), Reset, Clock, reg8);
		RegI9:		reg16 PORT MAP(DataD, EnableBits(9), Reset, Clock, reg9);
		RegJ10:		reg16 PORT MAP(DataD, EnableBits(10), Reset, Clock, reg10);
		RegK11:		reg16 PORT MAP(DataD, EnableBits(11), Reset, Clock, reg11);
		RegL12:		reg16 PORT MAP(DataD, EnableBits(12), Reset, Clock, reg12);
		RegM13:		reg16 PORT MAP(DataD, EnableBits(13), Reset, Clock, reg13);
		RegN14:		reg16 PORT MAP(DataD, EnableBits(14), Reset, Clock, reg14);
		RegO15:		reg16 PORT MAP(DataD, EnableBits(15), Reset, Clock, reg15);
		reg0 <= "0000000000000010";
		Mux1:		mux16 PORT MAP(reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8, reg9, reg10, reg11, reg12, reg13, reg14, reg15, RegS, DataS);
		Mux2:		mux16 PORT MAP(reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8, reg9, reg10, reg11, reg12, reg13, reg14, reg15, RegT, DataT);
	END behavior;