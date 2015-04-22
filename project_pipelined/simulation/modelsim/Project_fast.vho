-- Copyright (C) 1991-2011 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 11.0 Build 208 07/03/2011 Service Pack 1 SJ Full Version"

-- DATE "04/22/2015 12:02:44"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	processor IS
    PORT (
	reset : OUT std_logic;
	n_val : OUT std_logic;
	ID_reset : OUT std_logic;
	deassert : OUT std_logic;
	IR : OUT std_logic_vector(23 DOWNTO 0);
	flush : OUT std_logic;
	PC_instr_addr : OUT std_logic_vector(15 DOWNTO 0);
	br_addr : OUT std_logic_vector(15 DOWNTO 0);
	alu_out_mem : OUT std_logic_vector(15 DOWNTO 0);
	mem_addr : OUT std_logic_vector(15 DOWNTO 0);
	mem_write_mem : OUT std_logic;
	forwardB : OUT std_logic_vector(1 DOWNTO 0);
	IRexe : OUT std_logic_vector(23 DOWNTO 0);
	pc_select : OUT std_logic_vector(1 DOWNTO 0);
	z_val : OUT std_logic;
	flag_enable_exe : OUT std_logic;
	v_val : OUT std_logic;
	c_val : OUT std_logic;
	execute : OUT std_logic;
	z_out : OUT std_logic;
	br_exe : OUT std_logic;
	jmp_exe : OUT std_logic;
	cond : OUT std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	IRmem : OUT std_logic_vector(23 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0);
	mem_data : OUT std_logic_vector(15 DOWNTO 0);
	memout : OUT std_logic_vector(23 DOWNTO 0);
	muxymem : OUT std_logic_vector(15 DOWNTO 0);
	op_code : OUT std_logic_vector(3 DOWNTO 0);
	opx : OUT std_logic_vector(2 DOWNTO 0);
	r1 : OUT std_logic_vector(15 DOWNTO 0);
	r15 : OUT std_logic_vector(15 DOWNTO 0);
	r2 : OUT std_logic_vector(15 DOWNTO 0);
	r3 : OUT std_logic_vector(15 DOWNTO 0);
	r4 : OUT std_logic_vector(15 DOWNTO 0);
	r5 : OUT std_logic_vector(15 DOWNTO 0);
	r8 : OUT std_logic_vector(15 DOWNTO 0);
	r9 : OUT std_logic_vector(15 DOWNTO 0);
	regD : OUT std_logic_vector(3 DOWNTO 0);
	WBreg : OUT std_logic_vector(3 DOWNTO 0);
	yselect : OUT std_logic_vector(1 DOWNTO 0);
	yselect_mem : OUT std_logic_vector(1 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	clock : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0)
	);
END processor;

-- Design Ports Information
-- reset	=>  Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- n_val	=>  Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ID_reset	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- deassert	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR[23]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR[22]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR[21]	=>  Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR[20]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR[19]	=>  Location: PIN_AE6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR[18]	=>  Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR[17]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR[16]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR[15]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR[14]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR[13]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR[12]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR[11]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR[10]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR[9]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR[8]	=>  Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR[7]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR[6]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR[5]	=>  Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR[4]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR[3]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR[2]	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR[1]	=>  Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR[0]	=>  Location: PIN_AD2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- flush	=>  Location: PIN_AB1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_instr_addr[15]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_instr_addr[14]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_instr_addr[13]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_instr_addr[12]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_instr_addr[11]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_instr_addr[10]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_instr_addr[9]	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_instr_addr[8]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_instr_addr[7]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_instr_addr[6]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_instr_addr[5]	=>  Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_instr_addr[4]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_instr_addr[3]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_instr_addr[2]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_instr_addr[1]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_instr_addr[0]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- br_addr[15]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- br_addr[14]	=>  Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- br_addr[13]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- br_addr[12]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- br_addr[11]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- br_addr[10]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- br_addr[9]	=>  Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- br_addr[8]	=>  Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- br_addr[7]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- br_addr[6]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- br_addr[5]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- br_addr[4]	=>  Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- br_addr[3]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- br_addr[2]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- br_addr[1]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- br_addr[0]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out_mem[15]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out_mem[14]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out_mem[13]	=>  Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out_mem[12]	=>  Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out_mem[11]	=>  Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out_mem[10]	=>  Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out_mem[9]	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out_mem[8]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out_mem[7]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out_mem[6]	=>  Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out_mem[5]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out_mem[4]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out_mem[3]	=>  Location: PIN_J9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out_mem[2]	=>  Location: PIN_AC10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out_mem[1]	=>  Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out_mem[0]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[15]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[14]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[13]	=>  Location: PIN_U26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[12]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[11]	=>  Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[10]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[9]	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[8]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[7]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[6]	=>  Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[5]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[4]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[3]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[2]	=>  Location: PIN_AE9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[1]	=>  Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[0]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_write_mem	=>  Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- forwardB[1]	=>  Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- forwardB[0]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRexe[23]	=>  Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRexe[22]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRexe[21]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRexe[20]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRexe[19]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRexe[18]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRexe[17]	=>  Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRexe[16]	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRexe[15]	=>  Location: PIN_AC7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRexe[14]	=>  Location: PIN_AD3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRexe[13]	=>  Location: PIN_AD5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRexe[12]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRexe[11]	=>  Location: PIN_V6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRexe[10]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRexe[9]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRexe[8]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRexe[7]	=>  Location: PIN_AC20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRexe[6]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRexe[5]	=>  Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRexe[4]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRexe[3]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRexe[2]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRexe[1]	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRexe[0]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_select[1]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_select[0]	=>  Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- z_val	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- flag_enable_exe	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- v_val	=>  Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c_val	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- execute	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- z_out	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- br_exe	=>  Location: PIN_Y11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- jmp_exe	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cond[3]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cond[2]	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cond[1]	=>  Location: PIN_AC23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cond[0]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRmem[23]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRmem[22]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRmem[21]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRmem[20]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRmem[19]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRmem[18]	=>  Location: PIN_AE3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRmem[17]	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRmem[16]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRmem[15]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRmem[14]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRmem[13]	=>  Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRmem[12]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRmem[11]	=>  Location: PIN_AD6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRmem[10]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRmem[9]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRmem[8]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRmem[7]	=>  Location: PIN_AE21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRmem[6]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRmem[5]	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRmem[4]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRmem[3]	=>  Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRmem[2]	=>  Location: PIN_AE25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRmem[1]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRmem[0]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[7]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[6]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[5]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[4]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[3]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[2]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[1]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[0]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[15]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[14]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[13]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[12]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[11]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[10]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[9]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[8]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[7]	=>  Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[6]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[5]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[4]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[3]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[2]	=>  Location: PIN_AE10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[1]	=>  Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[0]	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memout[23]	=>  Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memout[22]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memout[21]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memout[20]	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memout[19]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memout[18]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memout[17]	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memout[16]	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memout[15]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memout[14]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memout[13]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memout[12]	=>  Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memout[11]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memout[10]	=>  Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memout[9]	=>  Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memout[8]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memout[7]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memout[6]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memout[5]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memout[4]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memout[3]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memout[2]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memout[1]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memout[0]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- muxymem[15]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- muxymem[14]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- muxymem[13]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- muxymem[12]	=>  Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- muxymem[11]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- muxymem[10]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- muxymem[9]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- muxymem[8]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- muxymem[7]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- muxymem[6]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- muxymem[5]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- muxymem[4]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- muxymem[3]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- muxymem[2]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- muxymem[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- muxymem[0]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- op_code[3]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- op_code[2]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- op_code[1]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- op_code[0]	=>  Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- opx[2]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- opx[1]	=>  Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- opx[0]	=>  Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r1[15]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r1[14]	=>  Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r1[13]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r1[12]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r1[11]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r1[10]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r1[9]	=>  Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r1[8]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r1[7]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r1[6]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r1[5]	=>  Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r1[4]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r1[3]	=>  Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r1[2]	=>  Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r1[1]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r1[0]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r15[15]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r15[14]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r15[13]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r15[12]	=>  Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r15[11]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r15[10]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r15[9]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r15[8]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r15[7]	=>  Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r15[6]	=>  Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r15[5]	=>  Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r15[4]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r15[3]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r15[2]	=>  Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r15[1]	=>  Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r15[0]	=>  Location: PIN_V24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r2[15]	=>  Location: PIN_AC16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r2[14]	=>  Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r2[13]	=>  Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r2[12]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r2[11]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r2[10]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r2[9]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r2[8]	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r2[7]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r2[6]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r2[5]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r2[4]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r2[3]	=>  Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r2[2]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r2[1]	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r2[0]	=>  Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r3[15]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r3[14]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r3[13]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r3[12]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r3[11]	=>  Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r3[10]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r3[9]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r3[8]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r3[7]	=>  Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r3[6]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r3[5]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r3[4]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r3[3]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r3[2]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r3[1]	=>  Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r3[0]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r4[15]	=>  Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r4[14]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r4[13]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r4[12]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r4[11]	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r4[10]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r4[9]	=>  Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r4[8]	=>  Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r4[7]	=>  Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r4[6]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r4[5]	=>  Location: PIN_T19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r4[4]	=>  Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r4[3]	=>  Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r4[2]	=>  Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r4[1]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r4[0]	=>  Location: PIN_T17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r5[15]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r5[14]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r5[13]	=>  Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r5[12]	=>  Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r5[11]	=>  Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r5[10]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r5[9]	=>  Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r5[8]	=>  Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r5[7]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r5[6]	=>  Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r5[5]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r5[4]	=>  Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r5[3]	=>  Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r5[2]	=>  Location: PIN_W23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r5[1]	=>  Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r5[0]	=>  Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r8[15]	=>  Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r8[14]	=>  Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r8[13]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r8[12]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r8[11]	=>  Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r8[10]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r8[9]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r8[8]	=>  Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r8[7]	=>  Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r8[6]	=>  Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r8[5]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r8[4]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r8[3]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r8[2]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r8[1]	=>  Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r8[0]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r9[15]	=>  Location: PIN_AF21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r9[14]	=>  Location: PIN_V26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r9[13]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r9[12]	=>  Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r9[11]	=>  Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r9[10]	=>  Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r9[9]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r9[8]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r9[7]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r9[6]	=>  Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r9[5]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r9[4]	=>  Location: PIN_V25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r9[3]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r9[2]	=>  Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r9[1]	=>  Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r9[0]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regD[3]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regD[2]	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regD[1]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- regD[0]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- WBreg[3]	=>  Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- WBreg[2]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- WBreg[1]	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- WBreg[0]	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- yselect[1]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- yselect[0]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- yselect_mem[1]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- yselect_mem[0]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- KEY[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF processor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_n_val : std_logic;
SIGNAL ww_ID_reset : std_logic;
SIGNAL ww_deassert : std_logic;
SIGNAL ww_IR : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_flush : std_logic;
SIGNAL ww_PC_instr_addr : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_br_addr : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_alu_out_mem : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_mem_addr : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_mem_write_mem : std_logic;
SIGNAL ww_forwardB : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_IRexe : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_pc_select : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_z_val : std_logic;
SIGNAL ww_flag_enable_exe : std_logic;
SIGNAL ww_v_val : std_logic;
SIGNAL ww_c_val : std_logic;
SIGNAL ww_execute : std_logic;
SIGNAL ww_z_out : std_logic;
SIGNAL ww_br_exe : std_logic;
SIGNAL ww_jmp_exe : std_logic;
SIGNAL ww_cond : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_IRmem : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_mem_data : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_memout : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_muxymem : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_op_code : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_opx : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_r1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_r15 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_r2 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_r3 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_r4 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_r5 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_r8 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_r9 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_regD : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_WBreg : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_yselect : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_yselect_mem : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst38|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst38|inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst38|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst38|inst|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst38|inst|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst38|inst|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst38|inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst38|inst|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst38|inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst38|inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst38|inst|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst38|inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst38|inst|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst38|inst|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst38|inst|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst38|inst|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst38|inst|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst38|inst|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst37|inst7~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst37|inst6~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst8|y_select[1]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst13|lpm_mux_component|auto_generated|result_node[0]~28_combout\ : std_logic;
SIGNAL \inst46|lpm_mux_component|auto_generated|result_node[1]~11_combout\ : std_logic;
SIGNAL \inst13|lpm_mux_component|auto_generated|result_node[1]~30_combout\ : std_logic;
SIGNAL \inst13|lpm_mux_component|auto_generated|result_node[2]~32_combout\ : std_logic;
SIGNAL \inst46|lpm_mux_component|auto_generated|result_node[2]~13_combout\ : std_logic;
SIGNAL \inst46|lpm_mux_component|auto_generated|result_node[3]~14_combout\ : std_logic;
SIGNAL \inst46|lpm_mux_component|auto_generated|result_node[15]~33_combout\ : std_logic;
SIGNAL \inst15|lpm_mux_component|auto_generated|result_node[15]~7_combout\ : std_logic;
SIGNAL \inst12|inst20|inst13|inst1~combout\ : std_logic;
SIGNAL \inst15|lpm_mux_component|auto_generated|result_node[10]~9_combout\ : std_logic;
SIGNAL \inst12|inst20|inst9|inst1~combout\ : std_logic;
SIGNAL \inst12|inst4|lpm_xor_component|xor_cascade[6][1]~0_combout\ : std_logic;
SIGNAL \inst56~combout\ : std_logic;
SIGNAL \inst7|inst53|lpm_mux_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \inst7|inst52|lpm_mux_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \inst7|inst52|lpm_mux_component|auto_generated|_~1_combout\ : std_logic;
SIGNAL \inst7|inst53|lpm_mux_component|auto_generated|_~2_combout\ : std_logic;
SIGNAL \inst7|inst53|lpm_mux_component|auto_generated|_~3_combout\ : std_logic;
SIGNAL \inst7|inst53|lpm_mux_component|auto_generated|_~4_combout\ : std_logic;
SIGNAL \inst7|inst53|lpm_mux_component|auto_generated|_~5_combout\ : std_logic;
SIGNAL \inst7|inst52|lpm_mux_component|auto_generated|_~2_combout\ : std_logic;
SIGNAL \inst7|inst52|lpm_mux_component|auto_generated|_~3_combout\ : std_logic;
SIGNAL \inst7|inst53|lpm_mux_component|auto_generated|_~6_combout\ : std_logic;
SIGNAL \inst7|inst53|lpm_mux_component|auto_generated|_~7_combout\ : std_logic;
SIGNAL \inst7|inst52|lpm_mux_component|auto_generated|_~4_combout\ : std_logic;
SIGNAL \inst7|inst53|lpm_mux_component|auto_generated|_~8_combout\ : std_logic;
SIGNAL \inst7|inst53|lpm_mux_component|auto_generated|_~9_combout\ : std_logic;
SIGNAL \inst7|inst52|lpm_mux_component|auto_generated|_~5_combout\ : std_logic;
SIGNAL \inst7|inst52|lpm_mux_component|auto_generated|_~6_combout\ : std_logic;
SIGNAL \inst7|inst52|lpm_mux_component|auto_generated|_~11_combout\ : std_logic;
SIGNAL \inst7|inst52|lpm_mux_component|auto_generated|_~15_combout\ : std_logic;
SIGNAL \inst7|inst40~0_combout\ : std_logic;
SIGNAL \inst8|mem_read~0_combout\ : std_logic;
SIGNAL \inst8|process_0~1_combout\ : std_logic;
SIGNAL \inst8|process_0~2_combout\ : std_logic;
SIGNAL \inst8|alu_op[1]~1_combout\ : std_logic;
SIGNAL \inst12|inst10~9_combout\ : std_logic;
SIGNAL \inst12|inst10~10_combout\ : std_logic;
SIGNAL \inst37|PUSH_BUTTON|lpm_ff_component|dffs[0]~0_combout\ : std_logic;
SIGNAL \inst37|PUSH_BUTTON|lpm_ff_component|dffs[1]~1_combout\ : std_logic;
SIGNAL \inst37|PUSH_BUTTON|lpm_ff_component|dffs[2]~2_combout\ : std_logic;
SIGNAL \PC_reg1|lpm_ff_component|dffs[15]~feeder_combout\ : std_logic;
SIGNAL \PC_reg1|lpm_ff_component|dffs[12]~feeder_combout\ : std_logic;
SIGNAL \inst82|LPM_MUX_component|auto_generated|result_node[0]~15_wirecell_combout\ : std_logic;
SIGNAL \inst62|Mux1~0_combout\ : std_logic;
SIGNAL \inst82|LPM_MUX_component|auto_generated|result_node[8]~7_combout\ : std_logic;
SIGNAL \PC_adder|lpm_add_sub_component|auto_generated|op_1~3\ : std_logic;
SIGNAL \PC_adder|lpm_add_sub_component|auto_generated|op_1~5\ : std_logic;
SIGNAL \PC_adder|lpm_add_sub_component|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst82|LPM_MUX_component|auto_generated|result_node[8]~7_wirecell_combout\ : std_logic;
SIGNAL \inst62|data[6]~9_combout\ : std_logic;
SIGNAL \inst67|deassert~1_combout\ : std_logic;
SIGNAL \inst62|data[12]~8_combout\ : std_logic;
SIGNAL \inst67|deassert~3_combout\ : std_logic;
SIGNAL \inst62|data[20]~11_combout\ : std_logic;
SIGNAL \inst8|jump~0_combout\ : std_logic;
SIGNAL \inst8|rf_write~0_combout\ : std_logic;
SIGNAL \inst8|pc_select~0_combout\ : std_logic;
SIGNAL \inst8|jump~combout\ : std_logic;
SIGNAL \inst50~combout\ : std_logic;
SIGNAL \inst8|rf_write~2_combout\ : std_logic;
SIGNAL \inst8|rf_write~3_combout\ : std_logic;
SIGNAL \inst8|rf_write~1_combout\ : std_logic;
SIGNAL \inst8|rf_write~combout\ : std_logic;
SIGNAL \inst62|data[6]~12_combout\ : std_logic;
SIGNAL \inst62|Mux6~0_combout\ : std_logic;
SIGNAL \inst62|data[4]~16_combout\ : std_logic;
SIGNAL \inst5|lpm_mux_component|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst71|forwardA[0]~1_combout\ : std_logic;
SIGNAL \inst71|forwardA[0]~2_combout\ : std_logic;
SIGNAL \inst8|y_select[0]~1_combout\ : std_logic;
SIGNAL \inst8|process_0~0_combout\ : std_logic;
SIGNAL \inst46|lpm_mux_component|auto_generated|result_node[4]~15_combout\ : std_logic;
SIGNAL \inst62|data[1]~13_combout\ : std_logic;
SIGNAL \inst8|comb~0_combout\ : std_logic;
SIGNAL \inst8|b_select~combout\ : std_logic;
SIGNAL \inst7|inst40~1_combout\ : std_logic;
SIGNAL \inst7|inst39~0_combout\ : std_logic;
SIGNAL \inst7|inst53|lpm_mux_component|auto_generated|_~10_combout\ : std_logic;
SIGNAL \inst7|inst53|lpm_mux_component|auto_generated|_~11_combout\ : std_logic;
SIGNAL \inst63|lpm_ff_component|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \inst71|forwardB[1]~0_combout\ : std_logic;
SIGNAL \inst71|forwardB[1]~1_combout\ : std_logic;
SIGNAL \inst71|forwardB[0]~2_combout\ : std_logic;
SIGNAL \inst71|forwardB[0]~3_combout\ : std_logic;
SIGNAL \inst71|forwardB[0]~4_combout\ : std_logic;
SIGNAL \inst14|lpm_mux_component|auto_generated|result_node[4]~37_combout\ : std_logic;
SIGNAL \inst14|lpm_mux_component|auto_generated|result_node[4]~50_combout\ : std_logic;
SIGNAL \inst15|lpm_mux_component|auto_generated|result_node[4]~6_combout\ : std_logic;
SIGNAL \inst37|PUSH_BUTTON|lpm_ff_component|dffs[3]~3_combout\ : std_logic;
SIGNAL \inst44|LPM_MUX_component|auto_generated|result_node[3]~5_combout\ : std_logic;
SIGNAL \inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\ : std_logic;
SIGNAL \PC_adder|lpm_add_sub_component|auto_generated|op_1~15\ : std_logic;
SIGNAL \PC_adder|lpm_add_sub_component|auto_generated|op_1~17\ : std_logic;
SIGNAL \PC_adder|lpm_add_sub_component|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \inst8|alu_op[1]~2_combout\ : std_logic;
SIGNAL \inst8|process_0~3_combout\ : std_logic;
SIGNAL \inst8|alu_op[1]~0_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \PC_adder|lpm_add_sub_component|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \PC_reg1|lpm_ff_component|dffs[7]~feeder_combout\ : std_logic;
SIGNAL \inst82|LPM_MUX_component|auto_generated|result_node[7]~8_combout\ : std_logic;
SIGNAL \PC_adder|lpm_add_sub_component|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst71|forwardA[0]~3_combout\ : std_logic;
SIGNAL \inst13|lpm_mux_component|auto_generated|result_node[6]~36_combout\ : std_logic;
SIGNAL \inst13|lpm_mux_component|auto_generated|result_node[6]~49_combout\ : std_logic;
SIGNAL \PC_reg1|lpm_ff_component|dffs[6]~feeder_combout\ : std_logic;
SIGNAL \inst82|LPM_MUX_component|auto_generated|result_node[6]~9_combout\ : std_logic;
SIGNAL \inst46|lpm_mux_component|auto_generated|result_node[0]~8_combout\ : std_logic;
SIGNAL \PC_adder|lpm_add_sub_component|auto_generated|op_1~23\ : std_logic;
SIGNAL \PC_adder|lpm_add_sub_component|auto_generated|op_1~25\ : std_logic;
SIGNAL \PC_adder|lpm_add_sub_component|auto_generated|op_1~27\ : std_logic;
SIGNAL \PC_adder|lpm_add_sub_component|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \inst82|LPM_MUX_component|auto_generated|result_node[15]~0_combout\ : std_logic;
SIGNAL \inst42|lpm_ff_component|dffs[15]~feeder_combout\ : std_logic;
SIGNAL \inst46|lpm_mux_component|auto_generated|result_node[15]~34_combout\ : std_logic;
SIGNAL \inst13|lpm_mux_component|auto_generated|result_node[15]~44_combout\ : std_logic;
SIGNAL \inst7|inst41~4_combout\ : std_logic;
SIGNAL \inst7|inst41~5_combout\ : std_logic;
SIGNAL \inst7|inst52|lpm_mux_component|auto_generated|_~14_combout\ : std_logic;
SIGNAL \inst13|lpm_mux_component|auto_generated|result_node[15]~57_combout\ : std_logic;
SIGNAL \inst14|lpm_mux_component|auto_generated|result_node[14]~47_combout\ : std_logic;
SIGNAL \inst15|lpm_mux_component|auto_generated|result_node[14]~11_combout\ : std_logic;
SIGNAL \inst14|lpm_mux_component|auto_generated|result_node[13]~38_combout\ : std_logic;
SIGNAL \inst15|lpm_mux_component|auto_generated|result_node[13]~12_combout\ : std_logic;
SIGNAL \inst7|inst52|lpm_mux_component|auto_generated|_~13_combout\ : std_logic;
SIGNAL \inst13|lpm_mux_component|auto_generated|result_node[13]~43_combout\ : std_logic;
SIGNAL \inst13|lpm_mux_component|auto_generated|result_node[13]~56_combout\ : std_logic;
SIGNAL \inst7|Reg1|lpm_ff_component|dffs[12]~feeder_combout\ : std_logic;
SIGNAL \inst7|inst53|lpm_mux_component|auto_generated|_~14_combout\ : std_logic;
SIGNAL \inst7|inst53|lpm_mux_component|auto_generated|_~15_combout\ : std_logic;
SIGNAL \inst14|lpm_mux_component|auto_generated|result_node[12]~52_combout\ : std_logic;
SIGNAL \inst42|lpm_ff_component|dffs[11]~feeder_combout\ : std_logic;
SIGNAL \inst15|lpm_mux_component|auto_generated|result_node[11]~8_combout\ : std_logic;
SIGNAL \inst7|inst53|lpm_mux_component|auto_generated|_~18_combout\ : std_logic;
SIGNAL \inst7|inst53|lpm_mux_component|auto_generated|_~19_combout\ : std_logic;
SIGNAL \inst14|lpm_mux_component|auto_generated|result_node[10]~41_combout\ : std_logic;
SIGNAL \inst14|lpm_mux_component|auto_generated|result_node[10]~54_combout\ : std_logic;
SIGNAL \inst12|inst20|inst11|inst4~0_combout\ : std_logic;
SIGNAL \inst12|inst|LPM_MUX_component|auto_generated|result_node[11]~4_combout\ : std_logic;
SIGNAL \inst46|lpm_mux_component|auto_generated|result_node[0]~6_combout\ : std_logic;
SIGNAL \inst44|LPM_MUX_component|auto_generated|result_node[1]~2_combout\ : std_logic;
SIGNAL \inst14|lpm_mux_component|auto_generated|result_node[0]~62_combout\ : std_logic;
SIGNAL \inst14|lpm_mux_component|auto_generated|result_node[2]~34_combout\ : std_logic;
SIGNAL \inst15|lpm_mux_component|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst15|lpm_mux_component|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \inst14|lpm_mux_component|auto_generated|result_node[1]~33_combout\ : std_logic;
SIGNAL \inst14|lpm_mux_component|auto_generated|result_node[1]~32_combout\ : std_logic;
SIGNAL \inst15|lpm_mux_component|auto_generated|result_node[1]~2_combout\ : std_logic;
SIGNAL \inst12|inst20|inst2|inst4~0_combout\ : std_logic;
SIGNAL \inst12|inst20|inst|inst4~1_combout\ : std_logic;
SIGNAL \inst12|inst20|inst|inst4~0_combout\ : std_logic;
SIGNAL \inst12|inst20|inst4|inst1~combout\ : std_logic;
SIGNAL \inst12|inst|LPM_MUX_component|auto_generated|result_node[3]~12_combout\ : std_logic;
SIGNAL \PC_adder|lpm_add_sub_component|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst13|lpm_mux_component|auto_generated|result_node[5]~27_combout\ : std_logic;
SIGNAL \inst13|lpm_mux_component|auto_generated|result_node[5]~46_combout\ : std_logic;
SIGNAL \PC_reg1|lpm_ff_component|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \inst82|LPM_MUX_component|auto_generated|result_node[5]~10_combout\ : std_logic;
SIGNAL \inst42|lpm_ff_component|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \inst14|lpm_mux_component|auto_generated|result_node[6]~45_combout\ : std_logic;
SIGNAL \inst15|lpm_mux_component|auto_generated|result_node[6]~16_combout\ : std_logic;
SIGNAL \inst12|inst20|inst6|inst4~1_combout\ : std_logic;
SIGNAL \inst12|inst20|inst6|inst4~0_combout\ : std_logic;
SIGNAL \inst12|inst20|inst5|inst4~0_combout\ : std_logic;
SIGNAL \inst12|inst|LPM_MUX_component|auto_generated|result_node[6]~9_combout\ : std_logic;
SIGNAL \inst7|Reg1|lpm_ff_component|dffs[8]~feeder_combout\ : std_logic;
SIGNAL \inst7|inst52|lpm_mux_component|auto_generated|_~8_combout\ : std_logic;
SIGNAL \inst13|lpm_mux_component|auto_generated|result_node[8]~38_combout\ : std_logic;
SIGNAL \inst13|lpm_mux_component|auto_generated|result_node[8]~51_combout\ : std_logic;
SIGNAL \inst12|inst20|inst8|inst4~0_combout\ : std_logic;
SIGNAL \inst7|inst53|lpm_mux_component|auto_generated|_~20_combout\ : std_logic;
SIGNAL \inst7|inst53|lpm_mux_component|auto_generated|_~21_combout\ : std_logic;
SIGNAL \inst15|lpm_mux_component|auto_generated|result_node[9]~14_combout\ : std_logic;
SIGNAL \inst12|inst|LPM_MUX_component|auto_generated|result_node[9]~6_combout\ : std_logic;
SIGNAL \inst14|lpm_mux_component|auto_generated|result_node[1]~61_combout\ : std_logic;
SIGNAL \inst14|lpm_mux_component|auto_generated|result_node[2]~48_combout\ : std_logic;
SIGNAL \inst44|LPM_MUX_component|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst46|lpm_mux_component|auto_generated|result_node[5]~4_combout\ : std_logic;
SIGNAL \inst46|lpm_mux_component|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \inst7|Reg1|lpm_ff_component|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \inst7|inst53|lpm_mux_component|auto_generated|_~1_combout\ : std_logic;
SIGNAL \inst14|lpm_mux_component|auto_generated|result_node[5]~29_combout\ : std_logic;
SIGNAL \inst14|lpm_mux_component|auto_generated|result_node[5]~49_combout\ : std_logic;
SIGNAL \inst15|lpm_mux_component|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst12|inst20|inst5|inst1~combout\ : std_logic;
SIGNAL \inst12|inst|LPM_MUX_component|auto_generated|result_node[5]~10_combout\ : std_logic;
SIGNAL \inst44|LPM_MUX_component|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst44|LPM_MUX_component|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \inst46|lpm_mux_component|auto_generated|result_node[2]~37_combout\ : std_logic;
SIGNAL \inst13|lpm_mux_component|auto_generated|result_node[2]~33_combout\ : std_logic;
SIGNAL \inst12|inst|LPM_MUX_component|auto_generated|result_node[2]~13_combout\ : std_logic;
SIGNAL \inst46|lpm_mux_component|auto_generated|result_node[1]~10_combout\ : std_logic;
SIGNAL \inst46|lpm_mux_component|auto_generated|result_node[1]~12_combout\ : std_logic;
SIGNAL \inst13|lpm_mux_component|auto_generated|result_node[1]~31_combout\ : std_logic;
SIGNAL \inst12|inst20|inst2|inst1~combout\ : std_logic;
SIGNAL \inst12|inst|LPM_MUX_component|auto_generated|result_node[1]~14_combout\ : std_logic;
SIGNAL \inst14|lpm_mux_component|auto_generated|result_node[9]~42_combout\ : std_logic;
SIGNAL \inst14|lpm_mux_component|auto_generated|result_node[9]~55_combout\ : std_logic;
SIGNAL \inst44|LPM_MUX_component|auto_generated|result_node[11]~9_combout\ : std_logic;
SIGNAL \inst46|lpm_mux_component|auto_generated|result_node[11]~21_combout\ : std_logic;
SIGNAL \inst46|lpm_mux_component|auto_generated|result_node[11]~22_combout\ : std_logic;
SIGNAL \inst14|lpm_mux_component|auto_generated|result_node[11]~40_combout\ : std_logic;
SIGNAL \inst7|inst53|lpm_mux_component|auto_generated|_~16_combout\ : std_logic;
SIGNAL \inst7|Reg1|lpm_ff_component|dffs[11]~feeder_combout\ : std_logic;
SIGNAL \inst7|inst53|lpm_mux_component|auto_generated|_~17_combout\ : std_logic;
SIGNAL \inst14|lpm_mux_component|auto_generated|result_node[11]~53_combout\ : std_logic;
SIGNAL \inst12|inst20|inst12|inst4~0_combout\ : std_logic;
SIGNAL \inst7|inst52|lpm_mux_component|auto_generated|_~12_combout\ : std_logic;
SIGNAL \inst13|lpm_mux_component|auto_generated|result_node[12]~42_combout\ : std_logic;
SIGNAL \inst13|lpm_mux_component|auto_generated|result_node[12]~55_combout\ : std_logic;
SIGNAL \inst12|inst20|inst13|inst4~0_combout\ : std_logic;
SIGNAL \inst12|inst|LPM_MUX_component|auto_generated|result_node[13]~2_combout\ : std_logic;
SIGNAL \inst44|LPM_MUX_component|auto_generated|result_node[13]~8_combout\ : std_logic;
SIGNAL \inst46|lpm_mux_component|auto_generated|result_node[13]~17_combout\ : std_logic;
SIGNAL \PC_adder|lpm_add_sub_component|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \PC_reg1|lpm_ff_component|dffs[13]~feeder_combout\ : std_logic;
SIGNAL \inst82|LPM_MUX_component|auto_generated|result_node[13]~2_combout\ : std_logic;
SIGNAL \inst42|lpm_ff_component|dffs[13]~feeder_combout\ : std_logic;
SIGNAL \inst46|lpm_mux_component|auto_generated|result_node[13]~18_combout\ : std_logic;
SIGNAL \inst7|Reg1|lpm_ff_component|dffs[13]~feeder_combout\ : std_logic;
SIGNAL \inst7|inst53|lpm_mux_component|auto_generated|_~12_combout\ : std_logic;
SIGNAL \inst7|inst53|lpm_mux_component|auto_generated|_~13_combout\ : std_logic;
SIGNAL \inst14|lpm_mux_component|auto_generated|result_node[13]~51_combout\ : std_logic;
SIGNAL \inst12|inst20|inst14|inst4~0_combout\ : std_logic;
SIGNAL \inst12|inst|LPM_MUX_component|auto_generated|result_node[14]~1_combout\ : std_logic;
SIGNAL \inst14|lpm_mux_component|auto_generated|result_node[7]~44_combout\ : std_logic;
SIGNAL \inst7|inst53|lpm_mux_component|auto_generated|_~24_combout\ : std_logic;
SIGNAL \inst7|inst53|lpm_mux_component|auto_generated|_~25_combout\ : std_logic;
SIGNAL \inst14|lpm_mux_component|auto_generated|result_node[7]~57_combout\ : std_logic;
SIGNAL \inst7|inst53|lpm_mux_component|auto_generated|_~30_combout\ : std_logic;
SIGNAL \inst7|inst53|lpm_mux_component|auto_generated|_~31_combout\ : std_logic;
SIGNAL \inst14|lpm_mux_component|auto_generated|result_node[14]~59_combout\ : std_logic;
SIGNAL \inst7|inst53|lpm_mux_component|auto_generated|_~28_combout\ : std_logic;
SIGNAL \inst7|inst53|lpm_mux_component|auto_generated|_~29_combout\ : std_logic;
SIGNAL \inst14|lpm_mux_component|auto_generated|result_node[15]~46_combout\ : std_logic;
SIGNAL \inst14|lpm_mux_component|auto_generated|result_node[15]~60_combout\ : std_logic;
SIGNAL \inst44|LPM_MUX_component|auto_generated|result_node[14]~15_combout\ : std_logic;
SIGNAL \inst46|lpm_mux_component|auto_generated|result_node[14]~35_combout\ : std_logic;
SIGNAL \PC_adder|lpm_add_sub_component|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \PC_reg1|lpm_ff_component|dffs[14]~feeder_combout\ : std_logic;
SIGNAL \inst82|LPM_MUX_component|auto_generated|result_node[14]~1_combout\ : std_logic;
SIGNAL \inst46|lpm_mux_component|auto_generated|result_node[14]~36_combout\ : std_logic;
SIGNAL \inst13|lpm_mux_component|auto_generated|result_node[14]~45_combout\ : std_logic;
SIGNAL \inst13|lpm_mux_component|auto_generated|result_node[14]~58_combout\ : std_logic;
SIGNAL \inst12|inst20|inst15|inst4~0_combout\ : std_logic;
SIGNAL \inst12|inst|LPM_MUX_component|auto_generated|result_node[15]~0_combout\ : std_logic;
SIGNAL \inst44|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst46|lpm_mux_component|auto_generated|result_node[0]~7_combout\ : std_logic;
SIGNAL \inst46|lpm_mux_component|auto_generated|result_node[0]~9_combout\ : std_logic;
SIGNAL \inst14|lpm_mux_component|auto_generated|result_node[0]~31_combout\ : std_logic;
SIGNAL \inst14|lpm_mux_component|auto_generated|result_node[0]~30_combout\ : std_logic;
SIGNAL \inst15|lpm_mux_component|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst12|inst|LPM_MUX_component|auto_generated|result_node[0]~15_combout\ : std_logic;
SIGNAL \inst44|LPM_MUX_component|auto_generated|result_node[6]~14_combout\ : std_logic;
SIGNAL \inst46|lpm_mux_component|auto_generated|result_node[6]~31_combout\ : std_logic;
SIGNAL \inst46|lpm_mux_component|auto_generated|result_node[6]~32_combout\ : std_logic;
SIGNAL \inst7|inst53|lpm_mux_component|auto_generated|_~26_combout\ : std_logic;
SIGNAL \inst7|Reg1|lpm_ff_component|dffs[6]~feeder_combout\ : std_logic;
SIGNAL \inst7|inst53|lpm_mux_component|auto_generated|_~27_combout\ : std_logic;
SIGNAL \inst14|lpm_mux_component|auto_generated|result_node[6]~58_combout\ : std_logic;
SIGNAL \inst12|inst20|inst7|inst4~0_combout\ : std_logic;
SIGNAL \inst15|lpm_mux_component|auto_generated|result_node[7]~15_combout\ : std_logic;
SIGNAL \inst12|inst|LPM_MUX_component|auto_generated|result_node[7]~8_combout\ : std_logic;
SIGNAL \inst44|LPM_MUX_component|auto_generated|result_node[7]~13_combout\ : std_logic;
SIGNAL \inst46|lpm_mux_component|auto_generated|result_node[7]~29_combout\ : std_logic;
SIGNAL \inst46|lpm_mux_component|auto_generated|result_node[7]~30_combout\ : std_logic;
SIGNAL \inst7|Reg1|lpm_ff_component|dffs[7]~feeder_combout\ : std_logic;
SIGNAL \inst7|inst52|lpm_mux_component|auto_generated|_~7_combout\ : std_logic;
SIGNAL \inst13|lpm_mux_component|auto_generated|result_node[7]~37_combout\ : std_logic;
SIGNAL \inst13|lpm_mux_component|auto_generated|result_node[7]~50_combout\ : std_logic;
SIGNAL \inst12|inst20|inst9|inst4~0_combout\ : std_logic;
SIGNAL \inst14|lpm_mux_component|auto_generated|result_node[8]~43_combout\ : std_logic;
SIGNAL \inst15|lpm_mux_component|auto_generated|result_node[8]~10_combout\ : std_logic;
SIGNAL \inst12|inst|LPM_MUX_component|auto_generated|result_node[8]~7_combout\ : std_logic;
SIGNAL \inst44|LPM_MUX_component|auto_generated|result_node[8]~12_combout\ : std_logic;
SIGNAL \inst46|lpm_mux_component|auto_generated|result_node[8]~27_combout\ : std_logic;
SIGNAL \inst46|lpm_mux_component|auto_generated|result_node[8]~28_combout\ : std_logic;
SIGNAL \inst7|inst53|lpm_mux_component|auto_generated|_~22_combout\ : std_logic;
SIGNAL \inst7|inst53|lpm_mux_component|auto_generated|_~23_combout\ : std_logic;
SIGNAL \inst14|lpm_mux_component|auto_generated|result_node[8]~56_combout\ : std_logic;
SIGNAL \inst44|LPM_MUX_component|auto_generated|result_node[9]~11_combout\ : std_logic;
SIGNAL \inst46|lpm_mux_component|auto_generated|result_node[9]~25_combout\ : std_logic;
SIGNAL \PC_adder|lpm_add_sub_component|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \PC_reg1|lpm_ff_component|dffs[9]~feeder_combout\ : std_logic;
SIGNAL \inst82|LPM_MUX_component|auto_generated|result_node[9]~6_combout\ : std_logic;
SIGNAL \inst46|lpm_mux_component|auto_generated|result_node[9]~26_combout\ : std_logic;
SIGNAL \inst7|inst52|lpm_mux_component|auto_generated|_~9_combout\ : std_logic;
SIGNAL \inst13|lpm_mux_component|auto_generated|result_node[9]~39_combout\ : std_logic;
SIGNAL \inst13|lpm_mux_component|auto_generated|result_node[9]~52_combout\ : std_logic;
SIGNAL \inst12|inst20|inst10|inst4~0_combout\ : std_logic;
SIGNAL \inst12|inst|LPM_MUX_component|auto_generated|result_node[10]~5_combout\ : std_logic;
SIGNAL \inst44|LPM_MUX_component|auto_generated|result_node[10]~10_combout\ : std_logic;
SIGNAL \inst46|lpm_mux_component|auto_generated|result_node[10]~23_combout\ : std_logic;
SIGNAL \inst46|lpm_mux_component|auto_generated|result_node[10]~24_combout\ : std_logic;
SIGNAL \inst7|inst52|lpm_mux_component|auto_generated|_~10_combout\ : std_logic;
SIGNAL \inst13|lpm_mux_component|auto_generated|result_node[10]~40_combout\ : std_logic;
SIGNAL \inst13|lpm_mux_component|auto_generated|result_node[10]~53_combout\ : std_logic;
SIGNAL \PC_reg1|lpm_ff_component|dffs[10]~feeder_combout\ : std_logic;
SIGNAL \inst82|LPM_MUX_component|auto_generated|result_node[10]~5_combout\ : std_logic;
SIGNAL \PC_adder|lpm_add_sub_component|auto_generated|op_1~19\ : std_logic;
SIGNAL \PC_adder|lpm_add_sub_component|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \inst13|lpm_mux_component|auto_generated|result_node[11]~41_combout\ : std_logic;
SIGNAL \inst13|lpm_mux_component|auto_generated|result_node[11]~54_combout\ : std_logic;
SIGNAL \PC_reg1|lpm_ff_component|dffs[11]~feeder_combout\ : std_logic;
SIGNAL \inst82|LPM_MUX_component|auto_generated|result_node[11]~4_combout\ : std_logic;
SIGNAL \PC_adder|lpm_add_sub_component|auto_generated|op_1~21\ : std_logic;
SIGNAL \PC_adder|lpm_add_sub_component|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \inst82|LPM_MUX_component|auto_generated|result_node[12]~3_combout\ : std_logic;
SIGNAL \inst42|lpm_ff_component|dffs[12]~feeder_combout\ : std_logic;
SIGNAL \inst46|lpm_mux_component|auto_generated|result_node[12]~19_combout\ : std_logic;
SIGNAL \inst46|lpm_mux_component|auto_generated|result_node[12]~20_combout\ : std_logic;
SIGNAL \inst14|lpm_mux_component|auto_generated|result_node[12]~39_combout\ : std_logic;
SIGNAL \inst15|lpm_mux_component|auto_generated|result_node[12]~13_combout\ : std_logic;
SIGNAL \inst12|inst|LPM_MUX_component|auto_generated|result_node[12]~3_combout\ : std_logic;
SIGNAL \inst16~0_combout\ : std_logic;
SIGNAL \inst44|LPM_MUX_component|auto_generated|result_node[3]~6_combout\ : std_logic;
SIGNAL \inst46|lpm_mux_component|auto_generated|result_node[3]~38_combout\ : std_logic;
SIGNAL \inst14|lpm_mux_component|auto_generated|result_node[3]~35_combout\ : std_logic;
SIGNAL \inst14|lpm_mux_component|auto_generated|result_node[3]~36_combout\ : std_logic;
SIGNAL \inst15|lpm_mux_component|auto_generated|result_node[3]~5_combout\ : std_logic;
SIGNAL \inst12|inst20|inst4|inst4~0_combout\ : std_logic;
SIGNAL \inst12|inst|LPM_MUX_component|auto_generated|result_node[4]~11_combout\ : std_logic;
SIGNAL \inst44|LPM_MUX_component|auto_generated|result_node[4]~7_combout\ : std_logic;
SIGNAL \inst46|lpm_mux_component|auto_generated|result_node[4]~16_combout\ : std_logic;
SIGNAL \inst13|lpm_mux_component|auto_generated|result_node[4]~35_combout\ : std_logic;
SIGNAL \inst13|lpm_mux_component|auto_generated|result_node[4]~48_combout\ : std_logic;
SIGNAL \PC_reg1|lpm_ff_component|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \inst82|LPM_MUX_component|auto_generated|result_node[4]~11_combout\ : std_logic;
SIGNAL \PC_adder|lpm_add_sub_component|auto_generated|op_1~7\ : std_logic;
SIGNAL \PC_adder|lpm_add_sub_component|auto_generated|op_1~9\ : std_logic;
SIGNAL \PC_adder|lpm_add_sub_component|auto_generated|op_1~11\ : std_logic;
SIGNAL \PC_adder|lpm_add_sub_component|auto_generated|op_1~13\ : std_logic;
SIGNAL \PC_adder|lpm_add_sub_component|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst62|data[21]~15_combout\ : std_logic;
SIGNAL \inst8|comb~1_combout\ : std_logic;
SIGNAL \inst8|comb~2_combout\ : std_logic;
SIGNAL \inst5|lpm_mux_component|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst71|forwardA[1]~0_combout\ : std_logic;
SIGNAL \inst13|lpm_mux_component|auto_generated|result_node[14]~26_combout\ : std_logic;
SIGNAL \inst13|lpm_mux_component|auto_generated|result_node[0]~29_combout\ : std_logic;
SIGNAL \PC_reg1|lpm_ff_component|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \inst82|LPM_MUX_component|auto_generated|result_node[0]~15_combout\ : std_logic;
SIGNAL \PC_adder|lpm_add_sub_component|auto_generated|op_1~1\ : std_logic;
SIGNAL \PC_adder|lpm_add_sub_component|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \PC_reg1|lpm_ff_component|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \inst82|LPM_MUX_component|auto_generated|result_node[2]~13_combout\ : std_logic;
SIGNAL \inst62|data[22]~10_combout\ : std_logic;
SIGNAL \inst8|jump~1_combout\ : std_logic;
SIGNAL \inst8|y_select[1]~0_combout\ : std_logic;
SIGNAL \inst8|y_select[1]~0clkctrl_outclk\ : std_logic;
SIGNAL \inst8|mem_read~combout\ : std_logic;
SIGNAL \inst67|deassert~2_combout\ : std_logic;
SIGNAL \inst82|LPM_MUX_component|auto_generated|result_node[3]~12_combout\ : std_logic;
SIGNAL \PC_adder|lpm_add_sub_component|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst13|lpm_mux_component|auto_generated|result_node[3]~34_combout\ : std_logic;
SIGNAL \inst13|lpm_mux_component|auto_generated|result_node[3]~47_combout\ : std_logic;
SIGNAL \PC_reg1|lpm_ff_component|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \inst62|data[9]~14_combout\ : std_logic;
SIGNAL \inst67|deassert~0_combout\ : std_logic;
SIGNAL \inst68~0_combout\ : std_logic;
SIGNAL \inst68~combout\ : std_logic;
SIGNAL \PC_adder|lpm_add_sub_component|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \PC_reg1|lpm_ff_component|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \inst82|LPM_MUX_component|auto_generated|result_node[1]~14_combout\ : std_logic;
SIGNAL \inst74|lpm_add_sub_component|auto_generated|result[1]~1\ : std_logic;
SIGNAL \inst74|lpm_add_sub_component|auto_generated|result[2]~3\ : std_logic;
SIGNAL \inst74|lpm_add_sub_component|auto_generated|result[3]~5\ : std_logic;
SIGNAL \inst74|lpm_add_sub_component|auto_generated|result[4]~7\ : std_logic;
SIGNAL \inst74|lpm_add_sub_component|auto_generated|result[5]~9\ : std_logic;
SIGNAL \inst74|lpm_add_sub_component|auto_generated|result[6]~11\ : std_logic;
SIGNAL \inst74|lpm_add_sub_component|auto_generated|result[7]~13\ : std_logic;
SIGNAL \inst74|lpm_add_sub_component|auto_generated|result[8]~15\ : std_logic;
SIGNAL \inst74|lpm_add_sub_component|auto_generated|result[9]~17\ : std_logic;
SIGNAL \inst74|lpm_add_sub_component|auto_generated|result[10]~19\ : std_logic;
SIGNAL \inst74|lpm_add_sub_component|auto_generated|result[11]~21\ : std_logic;
SIGNAL \inst74|lpm_add_sub_component|auto_generated|result[12]~23\ : std_logic;
SIGNAL \inst74|lpm_add_sub_component|auto_generated|result[13]~25\ : std_logic;
SIGNAL \inst74|lpm_add_sub_component|auto_generated|result[14]~27\ : std_logic;
SIGNAL \inst74|lpm_add_sub_component|auto_generated|result[15]~28_combout\ : std_logic;
SIGNAL \inst74|lpm_add_sub_component|auto_generated|result[14]~26_combout\ : std_logic;
SIGNAL \inst74|lpm_add_sub_component|auto_generated|result[13]~24_combout\ : std_logic;
SIGNAL \inst74|lpm_add_sub_component|auto_generated|result[12]~22_combout\ : std_logic;
SIGNAL \inst74|lpm_add_sub_component|auto_generated|result[11]~20_combout\ : std_logic;
SIGNAL \inst74|lpm_add_sub_component|auto_generated|result[10]~18_combout\ : std_logic;
SIGNAL \inst74|lpm_add_sub_component|auto_generated|result[9]~16_combout\ : std_logic;
SIGNAL \inst74|lpm_add_sub_component|auto_generated|result[8]~14_combout\ : std_logic;
SIGNAL \inst74|lpm_add_sub_component|auto_generated|result[7]~12_combout\ : std_logic;
SIGNAL \inst74|lpm_add_sub_component|auto_generated|result[6]~10_combout\ : std_logic;
SIGNAL \inst74|lpm_add_sub_component|auto_generated|result[5]~8_combout\ : std_logic;
SIGNAL \inst74|lpm_add_sub_component|auto_generated|result[4]~6_combout\ : std_logic;
SIGNAL \inst74|lpm_add_sub_component|auto_generated|result[3]~4_combout\ : std_logic;
SIGNAL \inst74|lpm_add_sub_component|auto_generated|result[2]~2_combout\ : std_logic;
SIGNAL \inst74|lpm_add_sub_component|auto_generated|result[1]~0_combout\ : std_logic;
SIGNAL \inst8|mem_write~0_combout\ : std_logic;
SIGNAL \inst8|mem_write~combout\ : std_logic;
SIGNAL \inst18|lpm_ff_component|dffs[23]~feeder_combout\ : std_logic;
SIGNAL \inst18|lpm_ff_component|dffs[22]~feeder_combout\ : std_logic;
SIGNAL \inst18|lpm_ff_component|dffs[20]~feeder_combout\ : std_logic;
SIGNAL \inst12|inst20|inst10|inst1~combout\ : std_logic;
SIGNAL \inst12|inst10~4_combout\ : std_logic;
SIGNAL \inst12|inst20|inst14|inst1~combout\ : std_logic;
SIGNAL \inst12|inst10~0_combout\ : std_logic;
SIGNAL \inst12|inst10~1_combout\ : std_logic;
SIGNAL \inst12|inst10~2_combout\ : std_logic;
SIGNAL \inst12|inst10~3_combout\ : std_logic;
SIGNAL \inst12|inst20|inst6|inst1~combout\ : std_logic;
SIGNAL \inst12|inst10~5_combout\ : std_logic;
SIGNAL \inst12|inst10~6_combout\ : std_logic;
SIGNAL \inst12|inst10~7_combout\ : std_logic;
SIGNAL \inst12|inst10~8_combout\ : std_logic;
SIGNAL \inst37|inst7~combout\ : std_logic;
SIGNAL \inst37|inst7~clkctrl_outclk\ : std_logic;
SIGNAL \inst37|HEX_DISPLAY|lpm_ff_component|dffs[6]~feeder_combout\ : std_logic;
SIGNAL \inst37|HEX_DISPLAY|lpm_ff_component|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \inst37|HEX_DISPLAY|lpm_ff_component|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \inst37|HEX_DISPLAY|lpm_ff_component|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \inst41|lpm_ff_component|dffs[23]~feeder_combout\ : std_logic;
SIGNAL \inst41|lpm_ff_component|dffs[22]~feeder_combout\ : std_logic;
SIGNAL \inst41|lpm_ff_component|dffs[21]~feeder_combout\ : std_logic;
SIGNAL \inst41|lpm_ff_component|dffs[20]~feeder_combout\ : std_logic;
SIGNAL \inst41|lpm_ff_component|dffs[16]~feeder_combout\ : std_logic;
SIGNAL \inst41|lpm_ff_component|dffs[9]~feeder_combout\ : std_logic;
SIGNAL \inst41|lpm_ff_component|dffs[8]~feeder_combout\ : std_logic;
SIGNAL \inst41|lpm_ff_component|dffs[6]~feeder_combout\ : std_logic;
SIGNAL \inst41|lpm_ff_component|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \inst41|lpm_ff_component|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \inst41|lpm_ff_component|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \inst41|lpm_ff_component|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \inst37|inst6~combout\ : std_logic;
SIGNAL \inst37|inst6~clkctrl_outclk\ : std_logic;
SIGNAL \inst37|LED|lpm_ff_component|dffs[7]~feeder_combout\ : std_logic;
SIGNAL \inst37|LED|lpm_ff_component|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \inst37|LED|lpm_ff_component|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \inst37|LED|lpm_ff_component|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst44|LPM_MUX_component|auto_generated|result_node[23]~16_combout\ : std_logic;
SIGNAL \inst44|LPM_MUX_component|auto_generated|result_node[22]~17_combout\ : std_logic;
SIGNAL \inst44|LPM_MUX_component|auto_generated|result_node[21]~18_combout\ : std_logic;
SIGNAL \inst44|LPM_MUX_component|auto_generated|result_node[20]~19_combout\ : std_logic;
SIGNAL \inst44|LPM_MUX_component|auto_generated|result_node[19]~20_combout\ : std_logic;
SIGNAL \inst44|LPM_MUX_component|auto_generated|result_node[18]~21_combout\ : std_logic;
SIGNAL \inst44|LPM_MUX_component|auto_generated|result_node[17]~22_combout\ : std_logic;
SIGNAL \inst44|LPM_MUX_component|auto_generated|result_node[16]~23_combout\ : std_logic;
SIGNAL \inst44|LPM_MUX_component|auto_generated|result_node[15]~24_combout\ : std_logic;
SIGNAL \inst44|LPM_MUX_component|auto_generated|result_node[12]~25_combout\ : std_logic;
SIGNAL \inst44|LPM_MUX_component|auto_generated|result_node[1]~26_combout\ : std_logic;
SIGNAL \inst44|LPM_MUX_component|auto_generated|result_node[0]~27_combout\ : std_logic;
SIGNAL \inst7|Reg1|lpm_ff_component|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \inst7|Reg1|lpm_ff_component|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \inst7|Reg1|lpm_ff_component|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \inst7|Reg1|lpm_ff_component|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \inst7|Reg1|lpm_ff_component|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \inst7|Reg15|lpm_ff_component|dffs[15]~feeder_combout\ : std_logic;
SIGNAL \inst7|inst49~0_combout\ : std_logic;
SIGNAL \inst7|Reg15|lpm_ff_component|dffs[14]~feeder_combout\ : std_logic;
SIGNAL \inst7|Reg15|lpm_ff_component|dffs[13]~feeder_combout\ : std_logic;
SIGNAL \inst7|Reg15|lpm_ff_component|dffs[12]~feeder_combout\ : std_logic;
SIGNAL \inst7|Reg15|lpm_ff_component|dffs[11]~feeder_combout\ : std_logic;
SIGNAL \inst7|Reg15|lpm_ff_component|dffs[7]~feeder_combout\ : std_logic;
SIGNAL \inst7|Reg15|lpm_ff_component|dffs[6]~feeder_combout\ : std_logic;
SIGNAL \inst7|Reg15|lpm_ff_component|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \inst7|Reg15|lpm_ff_component|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \inst7|Reg15|lpm_ff_component|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \inst7|Reg15|lpm_ff_component|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \inst7|Reg4|lpm_ff_component|dffs[15]~feeder_combout\ : std_logic;
SIGNAL \inst7|inst42~0_combout\ : std_logic;
SIGNAL \inst7|inst38~0_combout\ : std_logic;
SIGNAL \inst7|Reg4|lpm_ff_component|dffs[14]~feeder_combout\ : std_logic;
SIGNAL \inst7|Reg4|lpm_ff_component|dffs[13]~feeder_combout\ : std_logic;
SIGNAL \inst7|Reg4|lpm_ff_component|dffs[10]~feeder_combout\ : std_logic;
SIGNAL \inst7|Reg4|lpm_ff_component|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \inst7|Reg4|lpm_ff_component|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \inst7|Reg5|lpm_ff_component|dffs[15]~feeder_combout\ : std_logic;
SIGNAL \inst7|inst37~0_combout\ : std_logic;
SIGNAL \inst7|Reg5|lpm_ff_component|dffs[10]~feeder_combout\ : std_logic;
SIGNAL \inst7|Reg5|lpm_ff_component|dffs[6]~feeder_combout\ : std_logic;
SIGNAL \inst7|Reg5|lpm_ff_component|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \inst7|Reg5|lpm_ff_component|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \inst7|Reg5|lpm_ff_component|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \inst7|Reg5|lpm_ff_component|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \inst7|Reg5|lpm_ff_component|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \inst7|Reg8|lpm_ff_component|dffs[15]~feeder_combout\ : std_logic;
SIGNAL \inst7|inst42~combout\ : std_logic;
SIGNAL \inst7|Reg8|lpm_ff_component|dffs[14]~feeder_combout\ : std_logic;
SIGNAL \inst7|Reg8|lpm_ff_component|dffs[13]~feeder_combout\ : std_logic;
SIGNAL \inst7|Reg8|lpm_ff_component|dffs[8]~feeder_combout\ : std_logic;
SIGNAL \inst7|Reg8|lpm_ff_component|dffs[6]~feeder_combout\ : std_logic;
SIGNAL \inst7|Reg8|lpm_ff_component|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \inst7|Reg9|lpm_ff_component|dffs[15]~feeder_combout\ : std_logic;
SIGNAL \inst7|inst43~0_combout\ : std_logic;
SIGNAL \inst7|Reg9|lpm_ff_component|dffs[13]~feeder_combout\ : std_logic;
SIGNAL \inst7|Reg9|lpm_ff_component|dffs[12]~feeder_combout\ : std_logic;
SIGNAL \inst7|Reg9|lpm_ff_component|dffs[11]~feeder_combout\ : std_logic;
SIGNAL \inst7|Reg9|lpm_ff_component|dffs[9]~feeder_combout\ : std_logic;
SIGNAL \inst7|Reg9|lpm_ff_component|dffs[7]~feeder_combout\ : std_logic;
SIGNAL \inst7|Reg9|lpm_ff_component|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \inst7|Reg9|lpm_ff_component|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \inst7|Reg9|lpm_ff_component|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \inst37|PUSH_BUTTON|lpm_ff_component|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst38|inst|altsyncram_component|auto_generated|q_a\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst35|lpm_ff_component|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst8|y_select\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst41|lpm_ff_component|dffs\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \PC_reg1|lpm_ff_component|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst51|lpm_ff_component|dffs\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst37|HEX_DISPLAY|lpm_ff_component|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst37|SWITCHES|lpm_ff_component|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst10|lpm_ff_component|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst42|lpm_ff_component|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst24|lpm_ff_component|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst64|lpm_ff_component|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst7|Reg8|lpm_ff_component|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst7|Reg2|lpm_ff_component|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst22|lpm_ff_component|dffs\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst18|lpm_ff_component|dffs\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst29|lpm_ff_component|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PC_reg|lpm_ff_component|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst72|lpm_ff_component|dffs\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst8|c_select\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst25|lpm_ff_component|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst23|lpm_ff_component|dffs\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst37|LED|lpm_ff_component|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst65|lpm_ff_component|dffs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst31|lpm_ff_component|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst59|lpm_ff_component|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst20|lpm_ff_component|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst33|lpm_ff_component|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst45|lpm_ff_component|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst7|Reg9|lpm_ff_component|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst7|Reg5|lpm_ff_component|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst7|Reg3|lpm_ff_component|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst7|Reg1|lpm_ff_component|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst9|lpm_ff_component|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|lpm_mux_component|auto_generated|result_node\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst63|lpm_ff_component|dffs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst71|forwardA\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst8|alu_op\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst17|lpm_ff_component|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst21|lpm_ff_component|dffs\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst34|lpm_ff_component|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst52|lpm_ff_component|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst7|Reg4|lpm_ff_component|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst7|Reg15|lpm_ff_component|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst32|lpm_ff_component|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst67|ALT_INV_deassert~2_combout\ : std_logic;
SIGNAL \inst12|ALT_INV_inst10~8_combout\ : std_logic;
SIGNAL \ALT_INV_KEY~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_clock~clkctrl_outclk\ : std_logic;

BEGIN

reset <= ww_reset;
n_val <= ww_n_val;
ID_reset <= ww_ID_reset;
deassert <= ww_deassert;
IR <= ww_IR;
flush <= ww_flush;
PC_instr_addr <= ww_PC_instr_addr;
br_addr <= ww_br_addr;
alu_out_mem <= ww_alu_out_mem;
mem_addr <= ww_mem_addr;
mem_write_mem <= ww_mem_write_mem;
forwardB <= ww_forwardB;
IRexe <= ww_IRexe;
pc_select <= ww_pc_select;
z_val <= ww_z_val;
flag_enable_exe <= ww_flag_enable_exe;
v_val <= ww_v_val;
c_val <= ww_c_val;
execute <= ww_execute;
z_out <= ww_z_out;
br_exe <= ww_br_exe;
jmp_exe <= ww_jmp_exe;
cond <= ww_cond;
HEX0 <= ww_HEX0;
IRmem <= ww_IRmem;
LEDG <= ww_LEDG;
mem_data <= ww_mem_data;
memout <= ww_memout;
muxymem <= ww_muxymem;
op_code <= ww_op_code;
opx <= ww_opx;
r1 <= ww_r1;
r15 <= ww_r15;
r2 <= ww_r2;
r3 <= ww_r3;
r4 <= ww_r4;
r5 <= ww_r5;
r8 <= ww_r8;
r9 <= ww_r9;
regD <= ww_regD;
WBreg <= ww_WBreg;
yselect <= ww_yselect;
yselect_mem <= ww_yselect_mem;
ww_KEY <= KEY;
ww_clock <= clock;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst38|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\inst34|lpm_ff_component|dffs\(5) & \inst34|lpm_ff_component|dffs\(2) & \inst34|lpm_ff_component|dffs\(1) & \inst34|lpm_ff_component|dffs\(0));

\inst38|inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst33|lpm_ff_component|dffs\(9) & \inst33|lpm_ff_component|dffs\(8) & \inst33|lpm_ff_component|dffs\(7) & \inst33|lpm_ff_component|dffs\(6) & 
\inst33|lpm_ff_component|dffs\(5) & \inst33|lpm_ff_component|dffs\(4) & \inst33|lpm_ff_component|dffs\(3) & \inst33|lpm_ff_component|dffs\(2) & \inst33|lpm_ff_component|dffs\(1) & \inst33|lpm_ff_component|dffs\(0));

\inst38|inst|altsyncram_component|auto_generated|q_a\(0) <= \inst38|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst38|inst|altsyncram_component|auto_generated|q_a\(1) <= \inst38|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst38|inst|altsyncram_component|auto_generated|q_a\(2) <= \inst38|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst38|inst|altsyncram_component|auto_generated|q_a\(5) <= \inst38|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);

\inst38|inst|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\ <= (\inst34|lpm_ff_component|dffs\(13) & \inst34|lpm_ff_component|dffs\(12) & \inst34|lpm_ff_component|dffs\(4) & \inst34|lpm_ff_component|dffs\(3));

\inst38|inst|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\inst33|lpm_ff_component|dffs\(9) & \inst33|lpm_ff_component|dffs\(8) & \inst33|lpm_ff_component|dffs\(7) & \inst33|lpm_ff_component|dffs\(6) & 
\inst33|lpm_ff_component|dffs\(5) & \inst33|lpm_ff_component|dffs\(4) & \inst33|lpm_ff_component|dffs\(3) & \inst33|lpm_ff_component|dffs\(2) & \inst33|lpm_ff_component|dffs\(1) & \inst33|lpm_ff_component|dffs\(0));

\inst38|inst|altsyncram_component|auto_generated|q_a\(3) <= \inst38|inst|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);
\inst38|inst|altsyncram_component|auto_generated|q_a\(4) <= \inst38|inst|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(1);
\inst38|inst|altsyncram_component|auto_generated|q_a\(12) <= \inst38|inst|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(2);
\inst38|inst|altsyncram_component|auto_generated|q_a\(13) <= \inst38|inst|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(3);

\inst38|inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ <= (\inst34|lpm_ff_component|dffs\(11) & \inst34|lpm_ff_component|dffs\(10) & \inst34|lpm_ff_component|dffs\(9) & \inst34|lpm_ff_component|dffs\(8));

\inst38|inst|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\inst33|lpm_ff_component|dffs\(9) & \inst33|lpm_ff_component|dffs\(8) & \inst33|lpm_ff_component|dffs\(7) & \inst33|lpm_ff_component|dffs\(6) & 
\inst33|lpm_ff_component|dffs\(5) & \inst33|lpm_ff_component|dffs\(4) & \inst33|lpm_ff_component|dffs\(3) & \inst33|lpm_ff_component|dffs\(2) & \inst33|lpm_ff_component|dffs\(1) & \inst33|lpm_ff_component|dffs\(0));

\inst38|inst|altsyncram_component|auto_generated|q_a\(8) <= \inst38|inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);
\inst38|inst|altsyncram_component|auto_generated|q_a\(9) <= \inst38|inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(1);
\inst38|inst|altsyncram_component|auto_generated|q_a\(10) <= \inst38|inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(2);
\inst38|inst|altsyncram_component|auto_generated|q_a\(11) <= \inst38|inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(3);

\inst38|inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ <= (\inst34|lpm_ff_component|dffs\(15) & \inst34|lpm_ff_component|dffs\(14) & \inst34|lpm_ff_component|dffs\(7) & \inst34|lpm_ff_component|dffs\(6));

\inst38|inst|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\inst33|lpm_ff_component|dffs\(9) & \inst33|lpm_ff_component|dffs\(8) & \inst33|lpm_ff_component|dffs\(7) & \inst33|lpm_ff_component|dffs\(6) & 
\inst33|lpm_ff_component|dffs\(5) & \inst33|lpm_ff_component|dffs\(4) & \inst33|lpm_ff_component|dffs\(3) & \inst33|lpm_ff_component|dffs\(2) & \inst33|lpm_ff_component|dffs\(1) & \inst33|lpm_ff_component|dffs\(0));

\inst38|inst|altsyncram_component|auto_generated|q_a\(6) <= \inst38|inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);
\inst38|inst|altsyncram_component|auto_generated|q_a\(7) <= \inst38|inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(1);
\inst38|inst|altsyncram_component|auto_generated|q_a\(14) <= \inst38|inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(2);
\inst38|inst|altsyncram_component|auto_generated|q_a\(15) <= \inst38|inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(3);

\inst38|inst|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\inst38|inst|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\inst33|lpm_ff_component|dffs\(9) & \inst33|lpm_ff_component|dffs\(8) & \inst33|lpm_ff_component|dffs\(7) & \inst33|lpm_ff_component|dffs\(6) & 
\inst33|lpm_ff_component|dffs\(5) & \inst33|lpm_ff_component|dffs\(4) & \inst33|lpm_ff_component|dffs\(3) & \inst33|lpm_ff_component|dffs\(2) & \inst33|lpm_ff_component|dffs\(1) & \inst33|lpm_ff_component|dffs\(0));

\inst38|inst|altsyncram_component|auto_generated|q_a\(20) <= \inst38|inst|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(0);
\inst38|inst|altsyncram_component|auto_generated|q_a\(21) <= \inst38|inst|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(1);
\inst38|inst|altsyncram_component|auto_generated|q_a\(22) <= \inst38|inst|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(2);
\inst38|inst|altsyncram_component|auto_generated|q_a\(23) <= \inst38|inst|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(3);

\inst38|inst|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\inst38|inst|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\inst33|lpm_ff_component|dffs\(9) & \inst33|lpm_ff_component|dffs\(8) & \inst33|lpm_ff_component|dffs\(7) & \inst33|lpm_ff_component|dffs\(6) & 
\inst33|lpm_ff_component|dffs\(5) & \inst33|lpm_ff_component|dffs\(4) & \inst33|lpm_ff_component|dffs\(3) & \inst33|lpm_ff_component|dffs\(2) & \inst33|lpm_ff_component|dffs\(1) & \inst33|lpm_ff_component|dffs\(0));

\inst38|inst|altsyncram_component|auto_generated|q_a\(16) <= \inst38|inst|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);
\inst38|inst|altsyncram_component|auto_generated|q_a\(17) <= \inst38|inst|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(1);
\inst38|inst|altsyncram_component|auto_generated|q_a\(18) <= \inst38|inst|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(2);
\inst38|inst|altsyncram_component|auto_generated|q_a\(19) <= \inst38|inst|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(3);

\inst37|inst7~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst37|inst7~combout\);

\inst37|inst6~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst37|inst6~combout\);

\inst8|y_select[1]~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst8|y_select[1]~0_combout\);

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);
\inst67|ALT_INV_deassert~2_combout\ <= NOT \inst67|deassert~2_combout\;
\inst12|ALT_INV_inst10~8_combout\ <= NOT \inst12|inst10~8_combout\;
\ALT_INV_KEY~combout\(0) <= NOT \KEY~combout\(0);
\ALT_INV_clock~clkctrl_outclk\ <= NOT \clock~clkctrl_outclk\;

-- Location: LCFF_X36_Y28_N19
\inst9|lpm_ff_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst7|inst52|lpm_mux_component|auto_generated|_~0_combout\,
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|lpm_ff_component|dffs\(5));

-- Location: LCFF_X36_Y28_N5
\inst9|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst7|inst52|lpm_mux_component|auto_generated|_~1_combout\,
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|lpm_ff_component|dffs\(0));

-- Location: LCFF_X36_Y28_N7
\inst10|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst7|inst53|lpm_mux_component|auto_generated|_~3_combout\,
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|lpm_ff_component|dffs\(0));

-- Location: LCFF_X34_Y28_N5
\inst42|lpm_ff_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst20|lpm_ff_component|dffs\(1),
	sclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst42|lpm_ff_component|dffs\(1));

-- Location: LCFF_X38_Y28_N9
\inst10|lpm_ff_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst7|inst53|lpm_mux_component|auto_generated|_~5_combout\,
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|lpm_ff_component|dffs\(1));

-- Location: LCFF_X38_Y28_N3
\inst9|lpm_ff_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst7|inst52|lpm_mux_component|auto_generated|_~2_combout\,
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|lpm_ff_component|dffs\(1));

-- Location: LCFF_X36_Y30_N17
\inst9|lpm_ff_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst7|inst52|lpm_mux_component|auto_generated|_~3_combout\,
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|lpm_ff_component|dffs\(2));

-- Location: LCFF_X34_Y28_N7
\inst42|lpm_ff_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst20|lpm_ff_component|dffs\(2),
	sclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst42|lpm_ff_component|dffs\(2));

-- Location: LCFF_X36_Y30_N11
\inst10|lpm_ff_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst7|inst53|lpm_mux_component|auto_generated|_~7_combout\,
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|lpm_ff_component|dffs\(2));

-- Location: LCFF_X34_Y28_N9
\inst42|lpm_ff_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst20|lpm_ff_component|dffs\(3),
	sclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst42|lpm_ff_component|dffs\(3));

-- Location: LCFF_X36_Y30_N21
\inst9|lpm_ff_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst7|inst52|lpm_mux_component|auto_generated|_~4_combout\,
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|lpm_ff_component|dffs\(3));

-- Location: LCFF_X36_Y30_N31
\inst10|lpm_ff_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst7|inst53|lpm_mux_component|auto_generated|_~9_combout\,
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|lpm_ff_component|dffs\(3));

-- Location: LCFF_X36_Y28_N17
\inst9|lpm_ff_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst7|inst52|lpm_mux_component|auto_generated|_~5_combout\,
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|lpm_ff_component|dffs\(4));

-- Location: LCFF_X37_Y30_N29
\inst9|lpm_ff_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst7|inst52|lpm_mux_component|auto_generated|_~6_combout\,
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|lpm_ff_component|dffs\(6));

-- Location: LCFF_X37_Y30_N7
\inst9|lpm_ff_component|dffs[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst7|inst52|lpm_mux_component|auto_generated|_~11_combout\,
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|lpm_ff_component|dffs\(11));

-- Location: LCFF_X37_Y30_N5
\inst9|lpm_ff_component|dffs[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst7|inst52|lpm_mux_component|auto_generated|_~15_combout\,
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|lpm_ff_component|dffs\(14));

-- Location: LCFF_X32_Y31_N1
\inst20|lpm_ff_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst29|lpm_ff_component|dffs\(1),
	sclr => \inst68~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst20|lpm_ff_component|dffs\(1));

-- Location: LCFF_X33_Y31_N21
\inst20|lpm_ff_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst29|lpm_ff_component|dffs\(2),
	sclr => \inst68~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst20|lpm_ff_component|dffs\(2));

-- Location: LCFF_X33_Y31_N23
\inst20|lpm_ff_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst29|lpm_ff_component|dffs\(3),
	sclr => \inst68~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst20|lpm_ff_component|dffs\(3));

-- Location: LCFF_X36_Y32_N25
\PC_reg1|lpm_ff_component|dffs[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC_reg1|lpm_ff_component|dffs[15]~feeder_combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_reg1|lpm_ff_component|dffs\(15));

-- Location: LCFF_X36_Y32_N7
\PC_reg1|lpm_ff_component|dffs[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC_reg1|lpm_ff_component|dffs[12]~feeder_combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_reg1|lpm_ff_component|dffs\(12));

-- Location: LCCOMB_X36_Y28_N8
\inst13|lpm_mux_component|auto_generated|result_node[0]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|lpm_mux_component|auto_generated|result_node[0]~28_combout\ = (!\inst71|forwardA\(1) & ((\inst71|forwardA[0]~2_combout\ & (\inst45|lpm_ff_component|dffs\(0))) # (!\inst71|forwardA[0]~2_combout\ & ((\inst9|lpm_ff_component|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|lpm_ff_component|dffs\(0),
	datab => \inst71|forwardA\(1),
	datac => \inst9|lpm_ff_component|dffs\(0),
	datad => \inst71|forwardA[0]~2_combout\,
	combout => \inst13|lpm_mux_component|auto_generated|result_node[0]~28_combout\);

-- Location: LCFF_X30_Y28_N21
\inst37|PUSH_BUTTON|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst37|PUSH_BUTTON|lpm_ff_component|dffs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|PUSH_BUTTON|lpm_ff_component|dffs\(0));

-- Location: LCFF_X30_Y28_N25
\inst37|PUSH_BUTTON|lpm_ff_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst37|PUSH_BUTTON|lpm_ff_component|dffs[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|PUSH_BUTTON|lpm_ff_component|dffs\(1));

-- Location: LCCOMB_X34_Y28_N4
\inst46|lpm_mux_component|auto_generated|result_node[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst46|lpm_mux_component|auto_generated|result_node[1]~11_combout\ = (\inst51|lpm_ff_component|dffs\(1) & (((\inst42|lpm_ff_component|dffs\(1))))) # (!\inst51|lpm_ff_component|dffs\(1) & (\inst33|lpm_ff_component|dffs\(1) & 
-- ((!\inst51|lpm_ff_component|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|lpm_ff_component|dffs\(1),
	datab => \inst33|lpm_ff_component|dffs\(1),
	datac => \inst42|lpm_ff_component|dffs\(1),
	datad => \inst51|lpm_ff_component|dffs\(0),
	combout => \inst46|lpm_mux_component|auto_generated|result_node[1]~11_combout\);

-- Location: LCCOMB_X38_Y28_N16
\inst13|lpm_mux_component|auto_generated|result_node[1]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|lpm_mux_component|auto_generated|result_node[1]~30_combout\ = (!\inst71|forwardA\(1) & ((\inst71|forwardA[0]~2_combout\ & (\inst45|lpm_ff_component|dffs\(1))) # (!\inst71|forwardA[0]~2_combout\ & ((\inst9|lpm_ff_component|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|lpm_ff_component|dffs\(1),
	datab => \inst9|lpm_ff_component|dffs\(1),
	datac => \inst71|forwardA[0]~2_combout\,
	datad => \inst71|forwardA\(1),
	combout => \inst13|lpm_mux_component|auto_generated|result_node[1]~30_combout\);

-- Location: LCCOMB_X36_Y30_N28
\inst13|lpm_mux_component|auto_generated|result_node[2]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|lpm_mux_component|auto_generated|result_node[2]~32_combout\ = (!\inst71|forwardA\(1) & ((\inst71|forwardA[0]~2_combout\ & ((\inst45|lpm_ff_component|dffs\(2)))) # (!\inst71|forwardA[0]~2_combout\ & (\inst9|lpm_ff_component|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|lpm_ff_component|dffs\(2),
	datab => \inst71|forwardA\(1),
	datac => \inst71|forwardA[0]~2_combout\,
	datad => \inst45|lpm_ff_component|dffs\(2),
	combout => \inst13|lpm_mux_component|auto_generated|result_node[2]~32_combout\);

-- Location: LCCOMB_X34_Y28_N6
\inst46|lpm_mux_component|auto_generated|result_node[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst46|lpm_mux_component|auto_generated|result_node[2]~13_combout\ = (\inst51|lpm_ff_component|dffs\(1) & (((\inst42|lpm_ff_component|dffs\(2))))) # (!\inst51|lpm_ff_component|dffs\(1) & (\inst33|lpm_ff_component|dffs\(2) & 
-- ((!\inst51|lpm_ff_component|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|lpm_ff_component|dffs\(1),
	datab => \inst33|lpm_ff_component|dffs\(2),
	datac => \inst42|lpm_ff_component|dffs\(2),
	datad => \inst51|lpm_ff_component|dffs\(0),
	combout => \inst46|lpm_mux_component|auto_generated|result_node[2]~13_combout\);

-- Location: LCFF_X30_Y28_N13
\inst37|PUSH_BUTTON|lpm_ff_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst37|PUSH_BUTTON|lpm_ff_component|dffs[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|PUSH_BUTTON|lpm_ff_component|dffs\(2));

-- Location: LCCOMB_X34_Y28_N8
\inst46|lpm_mux_component|auto_generated|result_node[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst46|lpm_mux_component|auto_generated|result_node[3]~14_combout\ = (\inst51|lpm_ff_component|dffs\(1) & (((\inst42|lpm_ff_component|dffs\(3))))) # (!\inst51|lpm_ff_component|dffs\(1) & (\inst33|lpm_ff_component|dffs\(3) & 
-- ((!\inst51|lpm_ff_component|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|lpm_ff_component|dffs\(1),
	datab => \inst33|lpm_ff_component|dffs\(3),
	datac => \inst42|lpm_ff_component|dffs\(3),
	datad => \inst51|lpm_ff_component|dffs\(0),
	combout => \inst46|lpm_mux_component|auto_generated|result_node[3]~14_combout\);

-- Location: LCCOMB_X35_Y30_N24
\inst46|lpm_mux_component|auto_generated|result_node[15]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst46|lpm_mux_component|auto_generated|result_node[15]~33_combout\ = (\inst51|lpm_ff_component|dffs\(0) & (((!\inst16~0_combout\ & \inst38|inst|altsyncram_component|auto_generated|q_a\(15))))) # (!\inst51|lpm_ff_component|dffs\(0) & 
-- (\inst33|lpm_ff_component|dffs\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|lpm_ff_component|dffs\(15),
	datab => \inst16~0_combout\,
	datac => \inst38|inst|altsyncram_component|auto_generated|q_a\(15),
	datad => \inst51|lpm_ff_component|dffs\(0),
	combout => \inst46|lpm_mux_component|auto_generated|result_node[15]~33_combout\);

-- Location: LCCOMB_X36_Y29_N26
\inst15|lpm_mux_component|auto_generated|result_node[15]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|lpm_mux_component|auto_generated|result_node[15]~7_combout\ = (!\inst25|lpm_ff_component|dffs\(0) & ((\inst14|lpm_mux_component|auto_generated|result_node[15]~46_combout\) # ((\inst10|lpm_ff_component|dffs\(15) & 
-- !\inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lpm_mux_component|auto_generated|result_node[15]~46_combout\,
	datab => \inst25|lpm_ff_component|dffs\(0),
	datac => \inst10|lpm_ff_component|dffs\(15),
	datad => \inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\,
	combout => \inst15|lpm_mux_component|auto_generated|result_node[15]~7_combout\);

-- Location: LCCOMB_X37_Y28_N10
\inst12|inst20|inst13|inst1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst20|inst13|inst1~combout\ = \inst12|inst20|inst12|inst4~0_combout\ $ (\inst13|lpm_mux_component|auto_generated|result_node[12]~55_combout\ $ (((\inst14|lpm_mux_component|auto_generated|result_node[12]~52_combout\ & 
-- !\inst25|lpm_ff_component|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst20|inst12|inst4~0_combout\,
	datab => \inst14|lpm_mux_component|auto_generated|result_node[12]~52_combout\,
	datac => \inst13|lpm_mux_component|auto_generated|result_node[12]~55_combout\,
	datad => \inst25|lpm_ff_component|dffs\(0),
	combout => \inst12|inst20|inst13|inst1~combout\);

-- Location: LCCOMB_X34_Y30_N14
\inst15|lpm_mux_component|auto_generated|result_node[10]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|lpm_mux_component|auto_generated|result_node[10]~9_combout\ = (!\inst25|lpm_ff_component|dffs\(0) & ((\inst14|lpm_mux_component|auto_generated|result_node[10]~41_combout\) # ((\inst10|lpm_ff_component|dffs\(10) & 
-- !\inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|lpm_ff_component|dffs\(10),
	datab => \inst14|lpm_mux_component|auto_generated|result_node[10]~41_combout\,
	datac => \inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\,
	datad => \inst25|lpm_ff_component|dffs\(0),
	combout => \inst15|lpm_mux_component|auto_generated|result_node[10]~9_combout\);

-- Location: LCCOMB_X33_Y29_N10
\inst12|inst20|inst9|inst1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst20|inst9|inst1~combout\ = \inst13|lpm_mux_component|auto_generated|result_node[7]~50_combout\ $ (\inst12|inst20|inst7|inst4~0_combout\ $ (((!\inst25|lpm_ff_component|dffs\(0) & 
-- \inst14|lpm_mux_component|auto_generated|result_node[7]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|lpm_mux_component|auto_generated|result_node[7]~50_combout\,
	datab => \inst25|lpm_ff_component|dffs\(0),
	datac => \inst12|inst20|inst7|inst4~0_combout\,
	datad => \inst14|lpm_mux_component|auto_generated|result_node[7]~57_combout\,
	combout => \inst12|inst20|inst9|inst1~combout\);

-- Location: LCCOMB_X36_Y29_N12
\inst12|inst4|lpm_xor_component|xor_cascade[6][1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst4|lpm_xor_component|xor_cascade[6][1]~0_combout\ = \inst13|lpm_mux_component|auto_generated|result_node[6]~49_combout\ $ (((\inst14|lpm_mux_component|auto_generated|result_node[6]~58_combout\ & !\inst25|lpm_ff_component|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|lpm_mux_component|auto_generated|result_node[6]~49_combout\,
	datac => \inst14|lpm_mux_component|auto_generated|result_node[6]~58_combout\,
	datad => \inst25|lpm_ff_component|dffs\(0),
	combout => \inst12|inst4|lpm_xor_component|xor_cascade[6][1]~0_combout\);

-- Location: LCCOMB_X33_Y29_N16
inst56 : cycloneii_lcell_comb
-- Equation(s):
-- \inst56~combout\ = (\inst59|lpm_ff_component|dffs\(0) & !\inst16~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst59|lpm_ff_component|dffs\(0),
	datad => \inst16~0_combout\,
	combout => \inst56~combout\);

-- Location: LCCOMB_X43_Y28_N14
\inst7|inst53|lpm_mux_component|auto_generated|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst53|lpm_mux_component|auto_generated|_~0_combout\ = (\inst72|lpm_ff_component|dffs\(9) & ((\inst72|lpm_ff_component|dffs\(8) & (\inst7|Reg3|lpm_ff_component|dffs\(5))) # (!\inst72|lpm_ff_component|dffs\(8) & 
-- ((\inst7|Reg2|lpm_ff_component|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(9),
	datab => \inst7|Reg3|lpm_ff_component|dffs\(5),
	datac => \inst7|Reg2|lpm_ff_component|dffs\(5),
	datad => \inst72|lpm_ff_component|dffs\(8),
	combout => \inst7|inst53|lpm_mux_component|auto_generated|_~0_combout\);

-- Location: LCCOMB_X36_Y28_N18
\inst7|inst52|lpm_mux_component|auto_generated|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst52|lpm_mux_component|auto_generated|_~0_combout\ = (\inst7|Reg1|lpm_ff_component|dffs\(5) & \inst72|lpm_ff_component|dffs\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Reg1|lpm_ff_component|dffs\(5),
	datad => \inst72|lpm_ff_component|dffs\(12),
	combout => \inst7|inst52|lpm_mux_component|auto_generated|_~0_combout\);

-- Location: LCCOMB_X36_Y28_N4
\inst7|inst52|lpm_mux_component|auto_generated|_~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst52|lpm_mux_component|auto_generated|_~1_combout\ = (\inst7|Reg1|lpm_ff_component|dffs\(0) & \inst72|lpm_ff_component|dffs\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Reg1|lpm_ff_component|dffs\(0),
	datad => \inst72|lpm_ff_component|dffs\(12),
	combout => \inst7|inst52|lpm_mux_component|auto_generated|_~1_combout\);

-- Location: LCCOMB_X41_Y28_N6
\inst7|inst53|lpm_mux_component|auto_generated|_~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst53|lpm_mux_component|auto_generated|_~2_combout\ = (\inst72|lpm_ff_component|dffs\(9) & ((\inst72|lpm_ff_component|dffs\(8) & (\inst7|Reg3|lpm_ff_component|dffs\(0))) # (!\inst72|lpm_ff_component|dffs\(8) & 
-- ((\inst7|Reg2|lpm_ff_component|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(8),
	datab => \inst7|Reg3|lpm_ff_component|dffs\(0),
	datac => \inst7|Reg2|lpm_ff_component|dffs\(0),
	datad => \inst72|lpm_ff_component|dffs\(9),
	combout => \inst7|inst53|lpm_mux_component|auto_generated|_~2_combout\);

-- Location: LCCOMB_X36_Y28_N6
\inst7|inst53|lpm_mux_component|auto_generated|_~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst53|lpm_mux_component|auto_generated|_~3_combout\ = (\inst7|inst53|lpm_mux_component|auto_generated|_~2_combout\) # ((\inst7|Reg1|lpm_ff_component|dffs\(0) & (!\inst72|lpm_ff_component|dffs\(9) & \inst72|lpm_ff_component|dffs\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst53|lpm_mux_component|auto_generated|_~2_combout\,
	datab => \inst7|Reg1|lpm_ff_component|dffs\(0),
	datac => \inst72|lpm_ff_component|dffs\(9),
	datad => \inst72|lpm_ff_component|dffs\(8),
	combout => \inst7|inst53|lpm_mux_component|auto_generated|_~3_combout\);

-- Location: LCCOMB_X41_Y28_N20
\inst7|inst53|lpm_mux_component|auto_generated|_~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst53|lpm_mux_component|auto_generated|_~4_combout\ = (\inst72|lpm_ff_component|dffs\(9) & ((\inst72|lpm_ff_component|dffs\(8) & (\inst7|Reg3|lpm_ff_component|dffs\(1))) # (!\inst72|lpm_ff_component|dffs\(8) & 
-- ((\inst7|Reg2|lpm_ff_component|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Reg3|lpm_ff_component|dffs\(1),
	datab => \inst72|lpm_ff_component|dffs\(9),
	datac => \inst7|Reg2|lpm_ff_component|dffs\(1),
	datad => \inst72|lpm_ff_component|dffs\(8),
	combout => \inst7|inst53|lpm_mux_component|auto_generated|_~4_combout\);

-- Location: LCCOMB_X38_Y28_N8
\inst7|inst53|lpm_mux_component|auto_generated|_~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst53|lpm_mux_component|auto_generated|_~5_combout\ = (\inst7|inst53|lpm_mux_component|auto_generated|_~4_combout\) # ((\inst72|lpm_ff_component|dffs\(8) & (\inst7|Reg1|lpm_ff_component|dffs\(1) & !\inst72|lpm_ff_component|dffs\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst53|lpm_mux_component|auto_generated|_~4_combout\,
	datab => \inst72|lpm_ff_component|dffs\(8),
	datac => \inst7|Reg1|lpm_ff_component|dffs\(1),
	datad => \inst72|lpm_ff_component|dffs\(9),
	combout => \inst7|inst53|lpm_mux_component|auto_generated|_~5_combout\);

-- Location: LCCOMB_X38_Y28_N2
\inst7|inst52|lpm_mux_component|auto_generated|_~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst52|lpm_mux_component|auto_generated|_~2_combout\ = (\inst72|lpm_ff_component|dffs\(12) & \inst7|Reg1|lpm_ff_component|dffs\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst72|lpm_ff_component|dffs\(12),
	datac => \inst7|Reg1|lpm_ff_component|dffs\(1),
	combout => \inst7|inst52|lpm_mux_component|auto_generated|_~2_combout\);

-- Location: LCCOMB_X36_Y30_N16
\inst7|inst52|lpm_mux_component|auto_generated|_~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst52|lpm_mux_component|auto_generated|_~3_combout\ = (\inst7|Reg1|lpm_ff_component|dffs\(2) & \inst72|lpm_ff_component|dffs\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Reg1|lpm_ff_component|dffs\(2),
	datad => \inst72|lpm_ff_component|dffs\(12),
	combout => \inst7|inst52|lpm_mux_component|auto_generated|_~3_combout\);

-- Location: LCCOMB_X41_Y28_N2
\inst7|inst53|lpm_mux_component|auto_generated|_~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst53|lpm_mux_component|auto_generated|_~6_combout\ = (\inst72|lpm_ff_component|dffs\(9) & ((\inst72|lpm_ff_component|dffs\(8) & ((\inst7|Reg3|lpm_ff_component|dffs\(2)))) # (!\inst72|lpm_ff_component|dffs\(8) & 
-- (\inst7|Reg2|lpm_ff_component|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(9),
	datab => \inst72|lpm_ff_component|dffs\(8),
	datac => \inst7|Reg2|lpm_ff_component|dffs\(2),
	datad => \inst7|Reg3|lpm_ff_component|dffs\(2),
	combout => \inst7|inst53|lpm_mux_component|auto_generated|_~6_combout\);

-- Location: LCCOMB_X36_Y30_N10
\inst7|inst53|lpm_mux_component|auto_generated|_~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst53|lpm_mux_component|auto_generated|_~7_combout\ = (\inst7|inst53|lpm_mux_component|auto_generated|_~6_combout\) # ((\inst72|lpm_ff_component|dffs\(8) & (\inst7|Reg1|lpm_ff_component|dffs\(2) & !\inst72|lpm_ff_component|dffs\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(8),
	datab => \inst7|Reg1|lpm_ff_component|dffs\(2),
	datac => \inst72|lpm_ff_component|dffs\(9),
	datad => \inst7|inst53|lpm_mux_component|auto_generated|_~6_combout\,
	combout => \inst7|inst53|lpm_mux_component|auto_generated|_~7_combout\);

-- Location: LCCOMB_X36_Y30_N20
\inst7|inst52|lpm_mux_component|auto_generated|_~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst52|lpm_mux_component|auto_generated|_~4_combout\ = (\inst7|Reg1|lpm_ff_component|dffs\(3) & \inst72|lpm_ff_component|dffs\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Reg1|lpm_ff_component|dffs\(3),
	datad => \inst72|lpm_ff_component|dffs\(12),
	combout => \inst7|inst52|lpm_mux_component|auto_generated|_~4_combout\);

-- Location: LCCOMB_X41_Y28_N0
\inst7|inst53|lpm_mux_component|auto_generated|_~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst53|lpm_mux_component|auto_generated|_~8_combout\ = (\inst72|lpm_ff_component|dffs\(9) & ((\inst72|lpm_ff_component|dffs\(8) & (\inst7|Reg3|lpm_ff_component|dffs\(3))) # (!\inst72|lpm_ff_component|dffs\(8) & 
-- ((\inst7|Reg2|lpm_ff_component|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Reg3|lpm_ff_component|dffs\(3),
	datab => \inst72|lpm_ff_component|dffs\(9),
	datac => \inst7|Reg2|lpm_ff_component|dffs\(3),
	datad => \inst72|lpm_ff_component|dffs\(8),
	combout => \inst7|inst53|lpm_mux_component|auto_generated|_~8_combout\);

-- Location: LCCOMB_X36_Y30_N30
\inst7|inst53|lpm_mux_component|auto_generated|_~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst53|lpm_mux_component|auto_generated|_~9_combout\ = (\inst7|inst53|lpm_mux_component|auto_generated|_~8_combout\) # ((\inst72|lpm_ff_component|dffs\(8) & (!\inst72|lpm_ff_component|dffs\(9) & \inst7|Reg1|lpm_ff_component|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(8),
	datab => \inst72|lpm_ff_component|dffs\(9),
	datac => \inst7|inst53|lpm_mux_component|auto_generated|_~8_combout\,
	datad => \inst7|Reg1|lpm_ff_component|dffs\(3),
	combout => \inst7|inst53|lpm_mux_component|auto_generated|_~9_combout\);

-- Location: LCCOMB_X36_Y28_N16
\inst7|inst52|lpm_mux_component|auto_generated|_~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst52|lpm_mux_component|auto_generated|_~5_combout\ = (\inst7|Reg1|lpm_ff_component|dffs\(4) & \inst72|lpm_ff_component|dffs\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Reg1|lpm_ff_component|dffs\(4),
	datad => \inst72|lpm_ff_component|dffs\(12),
	combout => \inst7|inst52|lpm_mux_component|auto_generated|_~5_combout\);

-- Location: LCCOMB_X37_Y30_N28
\inst7|inst52|lpm_mux_component|auto_generated|_~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst52|lpm_mux_component|auto_generated|_~6_combout\ = (\inst72|lpm_ff_component|dffs\(12) & \inst7|Reg1|lpm_ff_component|dffs\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst72|lpm_ff_component|dffs\(12),
	datad => \inst7|Reg1|lpm_ff_component|dffs\(6),
	combout => \inst7|inst52|lpm_mux_component|auto_generated|_~6_combout\);

-- Location: LCCOMB_X37_Y30_N6
\inst7|inst52|lpm_mux_component|auto_generated|_~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst52|lpm_mux_component|auto_generated|_~11_combout\ = (\inst72|lpm_ff_component|dffs\(12) & \inst7|Reg1|lpm_ff_component|dffs\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst72|lpm_ff_component|dffs\(12),
	datad => \inst7|Reg1|lpm_ff_component|dffs\(11),
	combout => \inst7|inst52|lpm_mux_component|auto_generated|_~11_combout\);

-- Location: LCCOMB_X37_Y30_N4
\inst7|inst52|lpm_mux_component|auto_generated|_~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst52|lpm_mux_component|auto_generated|_~15_combout\ = (\inst72|lpm_ff_component|dffs\(12) & \inst7|Reg1|lpm_ff_component|dffs\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(12),
	datac => \inst7|Reg1|lpm_ff_component|dffs\(14),
	combout => \inst7|inst52|lpm_mux_component|auto_generated|_~15_combout\);

-- Location: LCCOMB_X32_Y29_N10
\inst7|inst40~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst40~0_combout\ = (!\inst65|lpm_ff_component|dffs\(3) & !\inst65|lpm_ff_component|dffs\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|lpm_ff_component|dffs\(3),
	datad => \inst65|lpm_ff_component|dffs\(2),
	combout => \inst7|inst40~0_combout\);

-- Location: LCCOMB_X37_Y31_N10
\inst8|mem_read~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|mem_read~0_combout\ = (\inst72|lpm_ff_component|dffs\(21)) # (((\inst72|lpm_ff_component|dffs\(22)) # (\inst72|lpm_ff_component|dffs\(20))) # (!\inst72|lpm_ff_component|dffs\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(21),
	datab => \inst72|lpm_ff_component|dffs\(23),
	datac => \inst72|lpm_ff_component|dffs\(22),
	datad => \inst72|lpm_ff_component|dffs\(20),
	combout => \inst8|mem_read~0_combout\);

-- Location: LCCOMB_X36_Y31_N6
\inst8|process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|process_0~1_combout\ = (!\inst72|lpm_ff_component|dffs\(21) & \inst72|lpm_ff_component|dffs\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst72|lpm_ff_component|dffs\(21),
	datad => \inst72|lpm_ff_component|dffs\(23),
	combout => \inst8|process_0~1_combout\);

-- Location: LCCOMB_X36_Y31_N12
\inst8|process_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|process_0~2_combout\ = (\inst72|lpm_ff_component|dffs\(21)) # (\inst72|lpm_ff_component|dffs\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst72|lpm_ff_component|dffs\(21),
	datad => \inst72|lpm_ff_component|dffs\(23),
	combout => \inst8|process_0~2_combout\);

-- Location: LCCOMB_X35_Y31_N8
\inst8|alu_op[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|alu_op[1]~1_combout\ = (\inst72|lpm_ff_component|dffs\(23) & ((\inst72|lpm_ff_component|dffs\(20) & ((\inst72|lpm_ff_component|dffs\(22)))) # (!\inst72|lpm_ff_component|dffs\(20) & (!\inst72|lpm_ff_component|dffs\(1) & 
-- !\inst72|lpm_ff_component|dffs\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(1),
	datab => \inst72|lpm_ff_component|dffs\(23),
	datac => \inst72|lpm_ff_component|dffs\(20),
	datad => \inst72|lpm_ff_component|dffs\(22),
	combout => \inst8|alu_op[1]~1_combout\);

-- Location: LCCOMB_X37_Y29_N2
\inst12|inst10~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst10~9_combout\ = (\inst13|lpm_mux_component|auto_generated|result_node[14]~58_combout\ & ((\inst12|inst20|inst14|inst4~0_combout\) # ((!\inst25|lpm_ff_component|dffs\(0) & \inst14|lpm_mux_component|auto_generated|result_node[14]~59_combout\)))) 
-- # (!\inst13|lpm_mux_component|auto_generated|result_node[14]~58_combout\ & (!\inst25|lpm_ff_component|dffs\(0) & (\inst12|inst20|inst14|inst4~0_combout\ & \inst14|lpm_mux_component|auto_generated|result_node[14]~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|lpm_ff_component|dffs\(0),
	datab => \inst13|lpm_mux_component|auto_generated|result_node[14]~58_combout\,
	datac => \inst12|inst20|inst14|inst4~0_combout\,
	datad => \inst14|lpm_mux_component|auto_generated|result_node[14]~59_combout\,
	combout => \inst12|inst10~9_combout\);

-- Location: LCCOMB_X37_Y29_N4
\inst12|inst10~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst10~10_combout\ = (\inst12|inst20|inst4|inst1~combout\) # (\inst12|inst10~9_combout\ $ (\inst15|lpm_mux_component|auto_generated|result_node[15]~7_combout\ $ (\inst13|lpm_mux_component|auto_generated|result_node[15]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst10~9_combout\,
	datab => \inst15|lpm_mux_component|auto_generated|result_node[15]~7_combout\,
	datac => \inst13|lpm_mux_component|auto_generated|result_node[15]~57_combout\,
	datad => \inst12|inst20|inst4|inst1~combout\,
	combout => \inst12|inst10~10_combout\);

-- Location: LCCOMB_X30_Y28_N20
\inst37|PUSH_BUTTON|lpm_ff_component|dffs[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst37|PUSH_BUTTON|lpm_ff_component|dffs[0]~0_combout\ = !\KEY~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY~combout\(0),
	combout => \inst37|PUSH_BUTTON|lpm_ff_component|dffs[0]~0_combout\);

-- Location: LCCOMB_X30_Y28_N24
\inst37|PUSH_BUTTON|lpm_ff_component|dffs[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst37|PUSH_BUTTON|lpm_ff_component|dffs[1]~1_combout\ = !\KEY~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY~combout\(1),
	combout => \inst37|PUSH_BUTTON|lpm_ff_component|dffs[1]~1_combout\);

-- Location: LCCOMB_X30_Y28_N12
\inst37|PUSH_BUTTON|lpm_ff_component|dffs[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst37|PUSH_BUTTON|lpm_ff_component|dffs[2]~2_combout\ = !\KEY~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY~combout\(2),
	combout => \inst37|PUSH_BUTTON|lpm_ff_component|dffs[2]~2_combout\);

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(1),
	combout => \KEY~combout\(1));

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(2),
	combout => \KEY~combout\(2));

-- Location: LCCOMB_X36_Y32_N24
\PC_reg1|lpm_ff_component|dffs[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_reg1|lpm_ff_component|dffs[15]~feeder_combout\ = \PC_reg|lpm_ff_component|dffs\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC_reg|lpm_ff_component|dffs\(15),
	combout => \PC_reg1|lpm_ff_component|dffs[15]~feeder_combout\);

-- Location: LCCOMB_X36_Y32_N6
\PC_reg1|lpm_ff_component|dffs[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_reg1|lpm_ff_component|dffs[12]~feeder_combout\ = \PC_reg|lpm_ff_component|dffs\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC_reg|lpm_ff_component|dffs\(12),
	combout => \PC_reg1|lpm_ff_component|dffs[12]~feeder_combout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(0),
	combout => \KEY~combout\(0));

-- Location: LCCOMB_X38_Y32_N16
\inst82|LPM_MUX_component|auto_generated|result_node[0]~15_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst82|LPM_MUX_component|auto_generated|result_node[0]~15_wirecell_combout\ = !\inst82|LPM_MUX_component|auto_generated|result_node[0]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst82|LPM_MUX_component|auto_generated|result_node[0]~15_combout\,
	combout => \inst82|LPM_MUX_component|auto_generated|result_node[0]~15_wirecell_combout\);

-- Location: LCCOMB_X38_Y31_N6
\inst62|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst62|Mux1~0_combout\ = (\inst82|LPM_MUX_component|auto_generated|result_node[1]~14_combout\) # ((\inst82|LPM_MUX_component|auto_generated|result_node[2]~13_combout\) # ((\inst82|LPM_MUX_component|auto_generated|result_node[0]~15_combout\ & 
-- !\inst82|LPM_MUX_component|auto_generated|result_node[3]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst82|LPM_MUX_component|auto_generated|result_node[1]~14_combout\,
	datab => \inst82|LPM_MUX_component|auto_generated|result_node[0]~15_combout\,
	datac => \inst82|LPM_MUX_component|auto_generated|result_node[3]~12_combout\,
	datad => \inst82|LPM_MUX_component|auto_generated|result_node[2]~13_combout\,
	combout => \inst62|Mux1~0_combout\);

-- Location: LCCOMB_X38_Y31_N22
\inst82|LPM_MUX_component|auto_generated|result_node[8]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst82|LPM_MUX_component|auto_generated|result_node[8]~7_combout\ = (\inst67|deassert~2_combout\ & (\PC_reg|lpm_ff_component|dffs\(8))) # (!\inst67|deassert~2_combout\ & ((\PC_reg1|lpm_ff_component|dffs\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_reg|lpm_ff_component|dffs\(8),
	datac => \PC_reg1|lpm_ff_component|dffs\(8),
	datad => \inst67|deassert~2_combout\,
	combout => \inst82|LPM_MUX_component|auto_generated|result_node[8]~7_combout\);

-- Location: LCCOMB_X35_Y32_N2
\PC_adder|lpm_add_sub_component|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_adder|lpm_add_sub_component|auto_generated|op_1~2_combout\ = (\inst82|LPM_MUX_component|auto_generated|result_node[2]~13_combout\ & (!\PC_adder|lpm_add_sub_component|auto_generated|op_1~1\)) # 
-- (!\inst82|LPM_MUX_component|auto_generated|result_node[2]~13_combout\ & ((\PC_adder|lpm_add_sub_component|auto_generated|op_1~1\) # (GND)))
-- \PC_adder|lpm_add_sub_component|auto_generated|op_1~3\ = CARRY((!\PC_adder|lpm_add_sub_component|auto_generated|op_1~1\) # (!\inst82|LPM_MUX_component|auto_generated|result_node[2]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst82|LPM_MUX_component|auto_generated|result_node[2]~13_combout\,
	datad => VCC,
	cin => \PC_adder|lpm_add_sub_component|auto_generated|op_1~1\,
	combout => \PC_adder|lpm_add_sub_component|auto_generated|op_1~2_combout\,
	cout => \PC_adder|lpm_add_sub_component|auto_generated|op_1~3\);

-- Location: LCCOMB_X35_Y32_N4
\PC_adder|lpm_add_sub_component|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_adder|lpm_add_sub_component|auto_generated|op_1~4_combout\ = (\inst82|LPM_MUX_component|auto_generated|result_node[3]~12_combout\ & (\PC_adder|lpm_add_sub_component|auto_generated|op_1~3\ $ (GND))) # 
-- (!\inst82|LPM_MUX_component|auto_generated|result_node[3]~12_combout\ & (!\PC_adder|lpm_add_sub_component|auto_generated|op_1~3\ & VCC))
-- \PC_adder|lpm_add_sub_component|auto_generated|op_1~5\ = CARRY((\inst82|LPM_MUX_component|auto_generated|result_node[3]~12_combout\ & !\PC_adder|lpm_add_sub_component|auto_generated|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst82|LPM_MUX_component|auto_generated|result_node[3]~12_combout\,
	datad => VCC,
	cin => \PC_adder|lpm_add_sub_component|auto_generated|op_1~3\,
	combout => \PC_adder|lpm_add_sub_component|auto_generated|op_1~4_combout\,
	cout => \PC_adder|lpm_add_sub_component|auto_generated|op_1~5\);

-- Location: LCCOMB_X35_Y32_N6
\PC_adder|lpm_add_sub_component|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_adder|lpm_add_sub_component|auto_generated|op_1~6_combout\ = (\inst82|LPM_MUX_component|auto_generated|result_node[4]~11_combout\ & (!\PC_adder|lpm_add_sub_component|auto_generated|op_1~5\)) # 
-- (!\inst82|LPM_MUX_component|auto_generated|result_node[4]~11_combout\ & ((\PC_adder|lpm_add_sub_component|auto_generated|op_1~5\) # (GND)))
-- \PC_adder|lpm_add_sub_component|auto_generated|op_1~7\ = CARRY((!\PC_adder|lpm_add_sub_component|auto_generated|op_1~5\) # (!\inst82|LPM_MUX_component|auto_generated|result_node[4]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst82|LPM_MUX_component|auto_generated|result_node[4]~11_combout\,
	datad => VCC,
	cin => \PC_adder|lpm_add_sub_component|auto_generated|op_1~5\,
	combout => \PC_adder|lpm_add_sub_component|auto_generated|op_1~6_combout\,
	cout => \PC_adder|lpm_add_sub_component|auto_generated|op_1~7\);

-- Location: LCCOMB_X35_Y31_N12
\inst82|LPM_MUX_component|auto_generated|result_node[8]~7_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst82|LPM_MUX_component|auto_generated|result_node[8]~7_wirecell_combout\ = !\inst82|LPM_MUX_component|auto_generated|result_node[8]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst82|LPM_MUX_component|auto_generated|result_node[8]~7_combout\,
	combout => \inst82|LPM_MUX_component|auto_generated|result_node[8]~7_wirecell_combout\);

-- Location: LCCOMB_X38_Y31_N16
\inst62|data[6]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst62|data[6]~9_combout\ = (!\inst82|LPM_MUX_component|auto_generated|result_node[3]~12_combout\ & ((\inst67|deassert~2_combout\ & ((!\PC_reg|lpm_ff_component|dffs\(8)))) # (!\inst67|deassert~2_combout\ & (!\PC_reg1|lpm_ff_component|dffs\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst67|deassert~2_combout\,
	datab => \inst82|LPM_MUX_component|auto_generated|result_node[3]~12_combout\,
	datac => \PC_reg1|lpm_ff_component|dffs\(8),
	datad => \PC_reg|lpm_ff_component|dffs\(8),
	combout => \inst62|data[6]~9_combout\);

-- Location: LCFF_X38_Y31_N17
\inst72|lpm_ff_component|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst62|data[6]~9_combout\,
	sclr => \inst50~combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst72|lpm_ff_component|dffs\(8));

-- Location: LCFF_X37_Y29_N1
\inst18|lpm_ff_component|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst72|lpm_ff_component|dffs\(8),
	sclr => \inst68~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|lpm_ff_component|dffs\(8));

-- Location: LCCOMB_X37_Y31_N18
\inst67|deassert~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst67|deassert~1_combout\ = (\inst72|lpm_ff_component|dffs\(8) & (\inst18|lpm_ff_component|dffs\(8) & (\inst72|lpm_ff_component|dffs\(9) $ (!\inst18|lpm_ff_component|dffs\(9))))) # (!\inst72|lpm_ff_component|dffs\(8) & 
-- (!\inst18|lpm_ff_component|dffs\(8) & (\inst72|lpm_ff_component|dffs\(9) $ (!\inst18|lpm_ff_component|dffs\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(8),
	datab => \inst72|lpm_ff_component|dffs\(9),
	datac => \inst18|lpm_ff_component|dffs\(8),
	datad => \inst18|lpm_ff_component|dffs\(9),
	combout => \inst67|deassert~1_combout\);

-- Location: LCCOMB_X38_Y31_N14
\inst62|data[12]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst62|data[12]~8_combout\ = (!\inst82|LPM_MUX_component|auto_generated|result_node[8]~7_combout\ & ((\inst82|LPM_MUX_component|auto_generated|result_node[1]~14_combout\) # ((\inst82|LPM_MUX_component|auto_generated|result_node[2]~13_combout\) # 
-- (\inst82|LPM_MUX_component|auto_generated|result_node[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst82|LPM_MUX_component|auto_generated|result_node[1]~14_combout\,
	datab => \inst82|LPM_MUX_component|auto_generated|result_node[2]~13_combout\,
	datac => \inst82|LPM_MUX_component|auto_generated|result_node[0]~15_combout\,
	datad => \inst82|LPM_MUX_component|auto_generated|result_node[8]~7_combout\,
	combout => \inst62|data[12]~8_combout\);

-- Location: LCFF_X38_Y31_N15
\inst72|lpm_ff_component|dffs[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst62|data[12]~8_combout\,
	sclr => \inst50~combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst72|lpm_ff_component|dffs\(12));

-- Location: LCCOMB_X37_Y31_N2
\inst67|deassert~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst67|deassert~3_combout\ = (\inst67|deassert~1_combout\) # ((!\inst18|lpm_ff_component|dffs\(9) & (\inst18|lpm_ff_component|dffs\(8) $ (!\inst72|lpm_ff_component|dffs\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|lpm_ff_component|dffs\(8),
	datab => \inst67|deassert~1_combout\,
	datac => \inst72|lpm_ff_component|dffs\(12),
	datad => \inst18|lpm_ff_component|dffs\(9),
	combout => \inst67|deassert~3_combout\);

-- Location: LCCOMB_X38_Y31_N12
\inst62|data[20]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst62|data[20]~11_combout\ = (\inst82|LPM_MUX_component|auto_generated|result_node[0]~15_combout\ & (\inst82|LPM_MUX_component|auto_generated|result_node[3]~12_combout\ & !\inst82|LPM_MUX_component|auto_generated|result_node[8]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst82|LPM_MUX_component|auto_generated|result_node[0]~15_combout\,
	datac => \inst82|LPM_MUX_component|auto_generated|result_node[3]~12_combout\,
	datad => \inst82|LPM_MUX_component|auto_generated|result_node[8]~7_combout\,
	combout => \inst62|data[20]~11_combout\);

-- Location: LCFF_X34_Y31_N11
\inst72|lpm_ff_component|dffs[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \inst62|data[20]~11_combout\,
	sclr => \inst50~combout\,
	sload => VCC,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst72|lpm_ff_component|dffs\(20));

-- Location: LCCOMB_X37_Y31_N20
\inst8|jump~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|jump~0_combout\ = (\inst72|lpm_ff_component|dffs\(23) & (\inst72|lpm_ff_component|dffs\(22) & (\inst72|lpm_ff_component|dffs\(21) & \inst72|lpm_ff_component|dffs\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(23),
	datab => \inst72|lpm_ff_component|dffs\(22),
	datac => \inst72|lpm_ff_component|dffs\(21),
	datad => \inst72|lpm_ff_component|dffs\(20),
	combout => \inst8|jump~0_combout\);

-- Location: LCCOMB_X37_Y31_N30
\inst8|rf_write~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|rf_write~0_combout\ = (\inst72|lpm_ff_component|dffs\(22) $ (!\inst72|lpm_ff_component|dffs\(20))) # (!\KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst72|lpm_ff_component|dffs\(22),
	datac => \inst72|lpm_ff_component|dffs\(20),
	datad => \KEY~combout\(0),
	combout => \inst8|rf_write~0_combout\);

-- Location: LCCOMB_X37_Y31_N6
\inst8|pc_select~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|pc_select~0_combout\ = ((\inst72|lpm_ff_component|dffs\(23) & (\inst8|rf_write~0_combout\)) # (!\inst72|lpm_ff_component|dffs\(23) & ((!\KEY~combout\(0))))) # (!\inst72|lpm_ff_component|dffs\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(21),
	datab => \inst8|rf_write~0_combout\,
	datac => \inst72|lpm_ff_component|dffs\(23),
	datad => \KEY~combout\(0),
	combout => \inst8|pc_select~0_combout\);

-- Location: LCCOMB_X37_Y31_N28
\inst8|jump\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|jump~combout\ = (\inst8|pc_select~0_combout\ & ((\inst8|jump~0_combout\))) # (!\inst8|pc_select~0_combout\ & (\inst8|jump~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|jump~combout\,
	datac => \inst8|jump~0_combout\,
	datad => \inst8|pc_select~0_combout\,
	combout => \inst8|jump~combout\);

-- Location: LCCOMB_X37_Y31_N4
inst50 : cycloneii_lcell_comb
-- Equation(s):
-- \inst50~combout\ = ((\inst8|jump~combout\ & ((!\inst67|deassert~3_combout\) # (!\inst32|lpm_ff_component|dffs\(0))))) # (!\KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|lpm_ff_component|dffs\(0),
	datab => \inst67|deassert~3_combout\,
	datac => \KEY~combout\(0),
	datad => \inst8|jump~combout\,
	combout => \inst50~combout\);

-- Location: LCFF_X35_Y31_N13
\inst72|lpm_ff_component|dffs[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \inst82|LPM_MUX_component|auto_generated|result_node[8]~7_wirecell_combout\,
	sclr => \inst50~combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst72|lpm_ff_component|dffs\(23));

-- Location: LCCOMB_X37_Y31_N22
\inst8|rf_write~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|rf_write~2_combout\ = (\inst72|lpm_ff_component|dffs\(21) & (((\inst72|lpm_ff_component|dffs\(23))))) # (!\inst72|lpm_ff_component|dffs\(21) & (\inst72|lpm_ff_component|dffs\(20) & ((\inst72|lpm_ff_component|dffs\(22)) # 
-- (!\inst72|lpm_ff_component|dffs\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(20),
	datab => \inst72|lpm_ff_component|dffs\(23),
	datac => \inst72|lpm_ff_component|dffs\(22),
	datad => \inst72|lpm_ff_component|dffs\(21),
	combout => \inst8|rf_write~2_combout\);

-- Location: LCCOMB_X37_Y31_N12
\inst8|rf_write~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|rf_write~3_combout\ = (\inst8|rf_write~2_combout\ & ((\inst72|lpm_ff_component|dffs\(21) & ((\inst8|rf_write~0_combout\))) # (!\inst72|lpm_ff_component|dffs\(21) & (!\KEY~combout\(0))))) # (!\inst8|rf_write~2_combout\ & 
-- (((!\inst72|lpm_ff_component|dffs\(21))) # (!\KEY~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \inst8|rf_write~2_combout\,
	datac => \inst72|lpm_ff_component|dffs\(21),
	datad => \inst8|rf_write~0_combout\,
	combout => \inst8|rf_write~3_combout\);

-- Location: LCCOMB_X37_Y31_N26
\inst8|rf_write~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|rf_write~1_combout\ = (!\inst72|lpm_ff_component|dffs\(20) & ((\inst72|lpm_ff_component|dffs\(22) & ((!\inst72|lpm_ff_component|dffs\(21)))) # (!\inst72|lpm_ff_component|dffs\(22) & (\inst72|lpm_ff_component|dffs\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(23),
	datab => \inst72|lpm_ff_component|dffs\(22),
	datac => \inst72|lpm_ff_component|dffs\(21),
	datad => \inst72|lpm_ff_component|dffs\(20),
	combout => \inst8|rf_write~1_combout\);

-- Location: LCCOMB_X36_Y31_N26
\inst8|rf_write\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|rf_write~combout\ = (\inst8|rf_write~3_combout\ & (\inst8|rf_write~1_combout\)) # (!\inst8|rf_write~3_combout\ & ((\inst8|rf_write~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|rf_write~3_combout\,
	datac => \inst8|rf_write~1_combout\,
	datad => \inst8|rf_write~combout\,
	combout => \inst8|rf_write~combout\);

-- Location: LCFF_X36_Y31_N27
\inst24|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst8|rf_write~combout\,
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst24|lpm_ff_component|dffs\(0));

-- Location: LCFF_X32_Y29_N17
\inst52|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst24|lpm_ff_component|dffs\(0),
	sclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst52|lpm_ff_component|dffs\(0));

-- Location: LCFF_X32_Y29_N9
\inst64|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst52|lpm_ff_component|dffs\(0),
	sclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst64|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X38_Y31_N30
\inst62|data[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst62|data[6]~12_combout\ = (!\inst82|LPM_MUX_component|auto_generated|result_node[1]~14_combout\ & (!\inst82|LPM_MUX_component|auto_generated|result_node[0]~15_combout\ & (\inst62|data[6]~9_combout\ & 
-- !\inst82|LPM_MUX_component|auto_generated|result_node[2]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst82|LPM_MUX_component|auto_generated|result_node[1]~14_combout\,
	datab => \inst82|LPM_MUX_component|auto_generated|result_node[0]~15_combout\,
	datac => \inst62|data[6]~9_combout\,
	datad => \inst82|LPM_MUX_component|auto_generated|result_node[2]~13_combout\,
	combout => \inst62|data[6]~12_combout\);

-- Location: LCFF_X38_Y31_N31
\inst72|lpm_ff_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst62|data[6]~12_combout\,
	sclr => \inst50~combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst72|lpm_ff_component|dffs\(6));

-- Location: LCFF_X36_Y29_N25
\inst17|lpm_ff_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst72|lpm_ff_component|dffs\(6),
	sclr => \inst68~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|lpm_ff_component|dffs\(5));

-- Location: LCCOMB_X37_Y32_N10
\inst5|lpm_mux_component|auto_generated|result_node[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|lpm_mux_component|auto_generated|result_node\(2) = (\inst22|lpm_ff_component|dffs\(1)) # ((\inst22|lpm_ff_component|dffs\(0) & \inst17|lpm_ff_component|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|lpm_ff_component|dffs\(0),
	datab => \inst17|lpm_ff_component|dffs\(5),
	datad => \inst22|lpm_ff_component|dffs\(1),
	combout => \inst5|lpm_mux_component|auto_generated|result_node\(2));

-- Location: LCFF_X37_Y32_N11
\inst63|lpm_ff_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst5|lpm_mux_component|auto_generated|result_node\(2),
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst63|lpm_ff_component|dffs\(2));

-- Location: LCFF_X32_Y29_N29
\inst65|lpm_ff_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst63|lpm_ff_component|dffs\(2),
	sclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst65|lpm_ff_component|dffs\(2));

-- Location: LCFF_X32_Y29_N23
\inst65|lpm_ff_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst63|lpm_ff_component|dffs\(1),
	sclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst65|lpm_ff_component|dffs\(1));

-- Location: LCCOMB_X38_Y31_N26
\inst62|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst62|Mux6~0_combout\ = (\inst82|LPM_MUX_component|auto_generated|result_node[1]~14_combout\) # ((\inst82|LPM_MUX_component|auto_generated|result_node[2]~13_combout\) # (\inst82|LPM_MUX_component|auto_generated|result_node[0]~15_combout\ $ 
-- (\inst82|LPM_MUX_component|auto_generated|result_node[3]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst82|LPM_MUX_component|auto_generated|result_node[1]~14_combout\,
	datab => \inst82|LPM_MUX_component|auto_generated|result_node[0]~15_combout\,
	datac => \inst82|LPM_MUX_component|auto_generated|result_node[3]~12_combout\,
	datad => \inst82|LPM_MUX_component|auto_generated|result_node[2]~13_combout\,
	combout => \inst62|Mux6~0_combout\);

-- Location: LCCOMB_X38_Y31_N24
\inst62|data[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst62|data[4]~16_combout\ = (\inst62|Mux6~0_combout\ & ((\inst67|deassert~2_combout\ & (!\PC_reg|lpm_ff_component|dffs\(8))) # (!\inst67|deassert~2_combout\ & ((!\PC_reg1|lpm_ff_component|dffs\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_reg|lpm_ff_component|dffs\(8),
	datab => \inst67|deassert~2_combout\,
	datac => \PC_reg1|lpm_ff_component|dffs\(8),
	datad => \inst62|Mux6~0_combout\,
	combout => \inst62|data[4]~16_combout\);

-- Location: LCFF_X38_Y31_N25
\inst72|lpm_ff_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst62|data[4]~16_combout\,
	sclr => \inst50~combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst72|lpm_ff_component|dffs\(4));

-- Location: LCFF_X37_Y29_N9
\inst17|lpm_ff_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst72|lpm_ff_component|dffs\(4),
	sclr => \inst68~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|lpm_ff_component|dffs\(3));

-- Location: LCCOMB_X37_Y32_N12
\inst5|lpm_mux_component|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|lpm_mux_component|auto_generated|result_node[0]~1_combout\ = (\inst22|lpm_ff_component|dffs\(1)) # ((\inst22|lpm_ff_component|dffs\(0) & (\inst17|lpm_ff_component|dffs\(3))) # (!\inst22|lpm_ff_component|dffs\(0) & 
-- ((\inst18|lpm_ff_component|dffs\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|lpm_ff_component|dffs\(0),
	datab => \inst17|lpm_ff_component|dffs\(3),
	datac => \inst18|lpm_ff_component|dffs\(8),
	datad => \inst22|lpm_ff_component|dffs\(1),
	combout => \inst5|lpm_mux_component|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X37_Y32_N13
\inst63|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst5|lpm_mux_component|auto_generated|result_node[0]~1_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst63|lpm_ff_component|dffs\(0));

-- Location: LCFF_X32_Y29_N15
\inst65|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst63|lpm_ff_component|dffs\(0),
	sclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst65|lpm_ff_component|dffs\(0));

-- Location: LCFF_X37_Y29_N21
\inst18|lpm_ff_component|dffs[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst72|lpm_ff_component|dffs\(12),
	sclr => \inst68~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|lpm_ff_component|dffs\(12));

-- Location: LCCOMB_X32_Y29_N14
\inst71|forwardA[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst71|forwardA[0]~1_combout\ = (!\inst65|lpm_ff_component|dffs\(1) & (\inst65|lpm_ff_component|dffs\(0) & \inst18|lpm_ff_component|dffs\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst65|lpm_ff_component|dffs\(1),
	datac => \inst65|lpm_ff_component|dffs\(0),
	datad => \inst18|lpm_ff_component|dffs\(12),
	combout => \inst71|forwardA[0]~1_combout\);

-- Location: LCCOMB_X32_Y29_N28
\inst71|forwardA[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst71|forwardA[0]~2_combout\ = (!\inst65|lpm_ff_component|dffs\(3) & (\inst64|lpm_ff_component|dffs\(0) & (!\inst65|lpm_ff_component|dffs\(2) & \inst71|forwardA[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|lpm_ff_component|dffs\(3),
	datab => \inst64|lpm_ff_component|dffs\(0),
	datac => \inst65|lpm_ff_component|dffs\(2),
	datad => \inst71|forwardA[0]~1_combout\,
	combout => \inst71|forwardA[0]~2_combout\);

-- Location: LCFF_X35_Y31_N17
\inst29|lpm_ff_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst82|LPM_MUX_component|auto_generated|result_node[4]~11_combout\,
	sclr => \inst50~combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|lpm_ff_component|dffs\(4));

-- Location: LCFF_X33_Y31_N9
\inst20|lpm_ff_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst29|lpm_ff_component|dffs\(4),
	sclr => \inst68~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst20|lpm_ff_component|dffs\(4));

-- Location: LCFF_X34_Y28_N11
\inst42|lpm_ff_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst20|lpm_ff_component|dffs\(4),
	sclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst42|lpm_ff_component|dffs\(4));

-- Location: LCCOMB_X36_Y31_N30
\inst8|y_select[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|y_select[0]~1_combout\ = (!\inst72|lpm_ff_component|dffs\(21) & (!\inst72|lpm_ff_component|dffs\(22) & \inst72|lpm_ff_component|dffs\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst72|lpm_ff_component|dffs\(21),
	datac => \inst72|lpm_ff_component|dffs\(22),
	datad => \inst72|lpm_ff_component|dffs\(23),
	combout => \inst8|y_select[0]~1_combout\);

-- Location: LCCOMB_X34_Y31_N22
\inst8|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|process_0~0_combout\ = (\inst72|lpm_ff_component|dffs\(23) & \inst72|lpm_ff_component|dffs\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst72|lpm_ff_component|dffs\(23),
	datad => \inst72|lpm_ff_component|dffs\(21),
	combout => \inst8|process_0~0_combout\);

-- Location: LCCOMB_X36_Y31_N20
\inst8|y_select[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|y_select\(0) = (!\inst8|process_0~0_combout\ & ((GLOBAL(\inst8|y_select[1]~0clkctrl_outclk\) & ((\inst8|y_select[0]~1_combout\))) # (!GLOBAL(\inst8|y_select[1]~0clkctrl_outclk\) & (\inst8|y_select\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|y_select\(0),
	datab => \inst8|y_select[0]~1_combout\,
	datac => \inst8|y_select[1]~0clkctrl_outclk\,
	datad => \inst8|process_0~0_combout\,
	combout => \inst8|y_select\(0));

-- Location: LCFF_X36_Y31_N21
\inst23|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst8|y_select\(0),
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst23|lpm_ff_component|dffs\(0));

-- Location: LCFF_X34_Y32_N9
\inst51|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst23|lpm_ff_component|dffs\(0),
	sclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst51|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X34_Y28_N10
\inst46|lpm_mux_component|auto_generated|result_node[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst46|lpm_mux_component|auto_generated|result_node[4]~15_combout\ = (\inst51|lpm_ff_component|dffs\(1) & (\inst42|lpm_ff_component|dffs\(4))) # (!\inst51|lpm_ff_component|dffs\(1) & ((\inst51|lpm_ff_component|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|lpm_ff_component|dffs\(1),
	datac => \inst42|lpm_ff_component|dffs\(4),
	datad => \inst51|lpm_ff_component|dffs\(0),
	combout => \inst46|lpm_mux_component|auto_generated|result_node[4]~15_combout\);

-- Location: LCCOMB_X38_Y31_N4
\inst62|data[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst62|data[1]~13_combout\ = (!\inst82|LPM_MUX_component|auto_generated|result_node[0]~15_combout\ & (\inst82|LPM_MUX_component|auto_generated|result_node[3]~12_combout\ & !\inst82|LPM_MUX_component|auto_generated|result_node[8]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst82|LPM_MUX_component|auto_generated|result_node[0]~15_combout\,
	datac => \inst82|LPM_MUX_component|auto_generated|result_node[3]~12_combout\,
	datad => \inst82|LPM_MUX_component|auto_generated|result_node[8]~7_combout\,
	combout => \inst62|data[1]~13_combout\);

-- Location: LCFF_X38_Y31_N5
\inst72|lpm_ff_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \inst62|data[1]~13_combout\,
	sclr => \inst50~combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst72|lpm_ff_component|dffs\(1));

-- Location: LCFF_X37_Y29_N7
\inst17|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst72|lpm_ff_component|dffs\(1),
	sclr => \inst68~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X36_Y31_N4
\inst8|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|comb~0_combout\ = (\inst72|lpm_ff_component|dffs\(21) & ((\inst72|lpm_ff_component|dffs\(23)) # (!\KEY~combout\(0)))) # (!\inst72|lpm_ff_component|dffs\(21) & ((!\inst72|lpm_ff_component|dffs\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \inst72|lpm_ff_component|dffs\(21),
	datad => \inst72|lpm_ff_component|dffs\(23),
	combout => \inst8|comb~0_combout\);

-- Location: LCCOMB_X36_Y31_N28
\inst8|b_select\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|b_select~combout\ = (!\inst8|comb~0_combout\ & ((\inst8|process_0~1_combout\) # (\inst8|b_select~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|process_0~1_combout\,
	datab => \inst8|comb~0_combout\,
	datad => \inst8|b_select~combout\,
	combout => \inst8|b_select~combout\);

-- Location: LCFF_X36_Y31_N29
\inst25|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst8|b_select~combout\,
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst25|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X32_Y29_N12
\inst7|inst40~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst40~1_combout\ = (\inst7|inst40~0_combout\ & (!\inst65|lpm_ff_component|dffs\(0) & (\inst64|lpm_ff_component|dffs\(0) & \inst65|lpm_ff_component|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst40~0_combout\,
	datab => \inst65|lpm_ff_component|dffs\(0),
	datac => \inst64|lpm_ff_component|dffs\(0),
	datad => \inst65|lpm_ff_component|dffs\(1),
	combout => \inst7|inst40~1_combout\);

-- Location: LCFF_X41_Y28_N23
\inst7|Reg2|lpm_ff_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(4),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst40~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg2|lpm_ff_component|dffs\(4));

-- Location: LCCOMB_X32_Y29_N0
\inst7|inst39~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst39~0_combout\ = (\inst7|inst40~0_combout\ & (\inst65|lpm_ff_component|dffs\(0) & (\inst64|lpm_ff_component|dffs\(0) & \inst65|lpm_ff_component|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst40~0_combout\,
	datab => \inst65|lpm_ff_component|dffs\(0),
	datac => \inst64|lpm_ff_component|dffs\(0),
	datad => \inst65|lpm_ff_component|dffs\(1),
	combout => \inst7|inst39~0_combout\);

-- Location: LCFF_X41_Y28_N31
\inst7|Reg3|lpm_ff_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(4),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg3|lpm_ff_component|dffs\(4));

-- Location: LCCOMB_X41_Y28_N22
\inst7|inst53|lpm_mux_component|auto_generated|_~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst53|lpm_mux_component|auto_generated|_~10_combout\ = (\inst72|lpm_ff_component|dffs\(9) & ((\inst72|lpm_ff_component|dffs\(8) & ((\inst7|Reg3|lpm_ff_component|dffs\(4)))) # (!\inst72|lpm_ff_component|dffs\(8) & 
-- (\inst7|Reg2|lpm_ff_component|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(8),
	datab => \inst72|lpm_ff_component|dffs\(9),
	datac => \inst7|Reg2|lpm_ff_component|dffs\(4),
	datad => \inst7|Reg3|lpm_ff_component|dffs\(4),
	combout => \inst7|inst53|lpm_mux_component|auto_generated|_~10_combout\);

-- Location: LCCOMB_X36_Y28_N2
\inst7|inst53|lpm_mux_component|auto_generated|_~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst53|lpm_mux_component|auto_generated|_~11_combout\ = (\inst7|inst53|lpm_mux_component|auto_generated|_~10_combout\) # ((\inst7|Reg1|lpm_ff_component|dffs\(4) & (\inst72|lpm_ff_component|dffs\(8) & !\inst72|lpm_ff_component|dffs\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Reg1|lpm_ff_component|dffs\(4),
	datab => \inst72|lpm_ff_component|dffs\(8),
	datac => \inst72|lpm_ff_component|dffs\(9),
	datad => \inst7|inst53|lpm_mux_component|auto_generated|_~10_combout\,
	combout => \inst7|inst53|lpm_mux_component|auto_generated|_~11_combout\);

-- Location: LCFF_X36_Y28_N3
\inst10|lpm_ff_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst7|inst53|lpm_mux_component|auto_generated|_~11_combout\,
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|lpm_ff_component|dffs\(4));

-- Location: LCCOMB_X37_Y32_N0
\inst63|lpm_ff_component|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst63|lpm_ff_component|dffs[3]~feeder_combout\ = \inst22|lpm_ff_component|dffs\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst22|lpm_ff_component|dffs\(1),
	combout => \inst63|lpm_ff_component|dffs[3]~feeder_combout\);

-- Location: LCFF_X37_Y32_N1
\inst63|lpm_ff_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst63|lpm_ff_component|dffs[3]~feeder_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst63|lpm_ff_component|dffs\(3));

-- Location: LCCOMB_X37_Y29_N26
\inst71|forwardB[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst71|forwardB[1]~0_combout\ = (\inst63|lpm_ff_component|dffs\(0) & (\inst18|lpm_ff_component|dffs\(8) & (\inst18|lpm_ff_component|dffs\(9) $ (!\inst63|lpm_ff_component|dffs\(1))))) # (!\inst63|lpm_ff_component|dffs\(0) & 
-- (!\inst18|lpm_ff_component|dffs\(8) & (\inst18|lpm_ff_component|dffs\(9) & \inst63|lpm_ff_component|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst63|lpm_ff_component|dffs\(0),
	datab => \inst18|lpm_ff_component|dffs\(8),
	datac => \inst18|lpm_ff_component|dffs\(9),
	datad => \inst63|lpm_ff_component|dffs\(1),
	combout => \inst71|forwardB[1]~0_combout\);

-- Location: LCCOMB_X32_Y29_N16
\inst71|forwardB[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst71|forwardB[1]~1_combout\ = (!\inst63|lpm_ff_component|dffs\(2) & (!\inst63|lpm_ff_component|dffs\(3) & (\inst52|lpm_ff_component|dffs\(0) & \inst71|forwardB[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst63|lpm_ff_component|dffs\(2),
	datab => \inst63|lpm_ff_component|dffs\(3),
	datac => \inst52|lpm_ff_component|dffs\(0),
	datad => \inst71|forwardB[1]~0_combout\,
	combout => \inst71|forwardB[1]~1_combout\);

-- Location: LCCOMB_X32_Y29_N22
\inst71|forwardB[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst71|forwardB[0]~2_combout\ = (\inst18|lpm_ff_component|dffs\(8) & (\inst65|lpm_ff_component|dffs\(0) & (\inst65|lpm_ff_component|dffs\(1) $ (!\inst18|lpm_ff_component|dffs\(9))))) # (!\inst18|lpm_ff_component|dffs\(8) & 
-- (!\inst65|lpm_ff_component|dffs\(0) & (\inst65|lpm_ff_component|dffs\(1) & \inst18|lpm_ff_component|dffs\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|lpm_ff_component|dffs\(8),
	datab => \inst65|lpm_ff_component|dffs\(0),
	datac => \inst65|lpm_ff_component|dffs\(1),
	datad => \inst18|lpm_ff_component|dffs\(9),
	combout => \inst71|forwardB[0]~2_combout\);

-- Location: LCCOMB_X32_Y29_N8
\inst71|forwardB[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst71|forwardB[0]~3_combout\ = (!\inst65|lpm_ff_component|dffs\(3) & (!\inst65|lpm_ff_component|dffs\(2) & (\inst64|lpm_ff_component|dffs\(0) & \inst71|forwardB[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|lpm_ff_component|dffs\(3),
	datab => \inst65|lpm_ff_component|dffs\(2),
	datac => \inst64|lpm_ff_component|dffs\(0),
	datad => \inst71|forwardB[0]~2_combout\,
	combout => \inst71|forwardB[0]~3_combout\);

-- Location: LCCOMB_X34_Y30_N26
\inst71|forwardB[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst71|forwardB[0]~4_combout\ = (\inst71|forwardB[0]~3_combout\ & !\inst71|forwardB[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst71|forwardB[0]~3_combout\,
	datad => \inst71|forwardB[1]~1_combout\,
	combout => \inst71|forwardB[0]~4_combout\);

-- Location: LCCOMB_X36_Y28_N0
\inst14|lpm_mux_component|auto_generated|result_node[4]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|lpm_mux_component|auto_generated|result_node[4]~37_combout\ = (\inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\ & ((\inst71|forwardB[0]~4_combout\ & (\inst45|lpm_ff_component|dffs\(4))) # (!\inst71|forwardB[0]~4_combout\ & 
-- ((\inst46|lpm_mux_component|auto_generated|result_node[4]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\,
	datab => \inst45|lpm_ff_component|dffs\(4),
	datac => \inst71|forwardB[0]~4_combout\,
	datad => \inst46|lpm_mux_component|auto_generated|result_node[4]~16_combout\,
	combout => \inst14|lpm_mux_component|auto_generated|result_node[4]~37_combout\);

-- Location: LCCOMB_X35_Y29_N6
\inst14|lpm_mux_component|auto_generated|result_node[4]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|lpm_mux_component|auto_generated|result_node[4]~50_combout\ = (\inst14|lpm_mux_component|auto_generated|result_node[4]~37_combout\) # ((!\inst71|forwardB[0]~3_combout\ & (\inst10|lpm_ff_component|dffs\(4) & !\inst71|forwardB[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst71|forwardB[0]~3_combout\,
	datab => \inst10|lpm_ff_component|dffs\(4),
	datac => \inst71|forwardB[1]~1_combout\,
	datad => \inst14|lpm_mux_component|auto_generated|result_node[4]~37_combout\,
	combout => \inst14|lpm_mux_component|auto_generated|result_node[4]~50_combout\);

-- Location: LCCOMB_X37_Y29_N24
\inst15|lpm_mux_component|auto_generated|result_node[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|lpm_mux_component|auto_generated|result_node[4]~6_combout\ = (\inst25|lpm_ff_component|dffs\(0) & (\inst17|lpm_ff_component|dffs\(0))) # (!\inst25|lpm_ff_component|dffs\(0) & ((\inst14|lpm_mux_component|auto_generated|result_node[4]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|lpm_ff_component|dffs\(0),
	datac => \inst25|lpm_ff_component|dffs\(0),
	datad => \inst14|lpm_mux_component|auto_generated|result_node[4]~50_combout\,
	combout => \inst15|lpm_mux_component|auto_generated|result_node[4]~6_combout\);

-- Location: LCCOMB_X36_Y31_N10
\inst8|y_select[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|y_select\(1) = (!\inst8|process_0~0_combout\ & ((GLOBAL(\inst8|y_select[1]~0clkctrl_outclk\) & (!\inst8|process_0~2_combout\)) # (!GLOBAL(\inst8|y_select[1]~0clkctrl_outclk\) & ((\inst8|y_select\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|process_0~2_combout\,
	datab => \inst8|y_select\(1),
	datac => \inst8|y_select[1]~0clkctrl_outclk\,
	datad => \inst8|process_0~0_combout\,
	combout => \inst8|y_select\(1));

-- Location: LCFF_X36_Y31_N11
\inst23|lpm_ff_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst8|y_select\(1),
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst23|lpm_ff_component|dffs\(1));

-- Location: LCFF_X34_Y28_N17
\inst51|lpm_ff_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst23|lpm_ff_component|dffs\(1),
	sclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst51|lpm_ff_component|dffs\(1));

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(3),
	combout => \KEY~combout\(3));

-- Location: LCCOMB_X33_Y30_N2
\inst37|PUSH_BUTTON|lpm_ff_component|dffs[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst37|PUSH_BUTTON|lpm_ff_component|dffs[3]~3_combout\ = !\KEY~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY~combout\(3),
	combout => \inst37|PUSH_BUTTON|lpm_ff_component|dffs[3]~3_combout\);

-- Location: LCFF_X33_Y30_N3
\inst37|PUSH_BUTTON|lpm_ff_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst37|PUSH_BUTTON|lpm_ff_component|dffs[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|PUSH_BUTTON|lpm_ff_component|dffs\(3));

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(3),
	combout => \SW~combout\(3));

-- Location: LCFF_X33_Y30_N1
\inst37|SWITCHES|lpm_ff_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \SW~combout\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|SWITCHES|lpm_ff_component|dffs\(3));

-- Location: LCCOMB_X33_Y30_N0
\inst44|LPM_MUX_component|auto_generated|result_node[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst44|LPM_MUX_component|auto_generated|result_node[3]~5_combout\ = (\inst33|lpm_ff_component|dffs\(15) & ((\inst37|SWITCHES|lpm_ff_component|dffs\(3)))) # (!\inst33|lpm_ff_component|dffs\(15) & (\inst37|PUSH_BUTTON|lpm_ff_component|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|lpm_ff_component|dffs\(15),
	datab => \inst37|PUSH_BUTTON|lpm_ff_component|dffs\(3),
	datac => \inst37|SWITCHES|lpm_ff_component|dffs\(3),
	combout => \inst44|LPM_MUX_component|auto_generated|result_node[3]~5_combout\);

-- Location: LCCOMB_X34_Y30_N12
\inst14|lpm_mux_component|auto_generated|result_node[15]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\ = (\inst71|forwardB[0]~3_combout\) # (\inst71|forwardB[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst71|forwardB[0]~3_combout\,
	datad => \inst71|forwardB[1]~1_combout\,
	combout => \inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\);

-- Location: LCCOMB_X35_Y32_N14
\PC_adder|lpm_add_sub_component|auto_generated|op_1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_adder|lpm_add_sub_component|auto_generated|op_1~14_combout\ = (\inst82|LPM_MUX_component|auto_generated|result_node[8]~7_combout\ & (!\PC_adder|lpm_add_sub_component|auto_generated|op_1~13\)) # 
-- (!\inst82|LPM_MUX_component|auto_generated|result_node[8]~7_combout\ & ((\PC_adder|lpm_add_sub_component|auto_generated|op_1~13\) # (GND)))
-- \PC_adder|lpm_add_sub_component|auto_generated|op_1~15\ = CARRY((!\PC_adder|lpm_add_sub_component|auto_generated|op_1~13\) # (!\inst82|LPM_MUX_component|auto_generated|result_node[8]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst82|LPM_MUX_component|auto_generated|result_node[8]~7_combout\,
	datad => VCC,
	cin => \PC_adder|lpm_add_sub_component|auto_generated|op_1~13\,
	combout => \PC_adder|lpm_add_sub_component|auto_generated|op_1~14_combout\,
	cout => \PC_adder|lpm_add_sub_component|auto_generated|op_1~15\);

-- Location: LCCOMB_X35_Y32_N16
\PC_adder|lpm_add_sub_component|auto_generated|op_1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_adder|lpm_add_sub_component|auto_generated|op_1~16_combout\ = (\inst82|LPM_MUX_component|auto_generated|result_node[9]~6_combout\ & (\PC_adder|lpm_add_sub_component|auto_generated|op_1~15\ $ (GND))) # 
-- (!\inst82|LPM_MUX_component|auto_generated|result_node[9]~6_combout\ & (!\PC_adder|lpm_add_sub_component|auto_generated|op_1~15\ & VCC))
-- \PC_adder|lpm_add_sub_component|auto_generated|op_1~17\ = CARRY((\inst82|LPM_MUX_component|auto_generated|result_node[9]~6_combout\ & !\PC_adder|lpm_add_sub_component|auto_generated|op_1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst82|LPM_MUX_component|auto_generated|result_node[9]~6_combout\,
	datad => VCC,
	cin => \PC_adder|lpm_add_sub_component|auto_generated|op_1~15\,
	combout => \PC_adder|lpm_add_sub_component|auto_generated|op_1~16_combout\,
	cout => \PC_adder|lpm_add_sub_component|auto_generated|op_1~17\);

-- Location: LCCOMB_X35_Y32_N18
\PC_adder|lpm_add_sub_component|auto_generated|op_1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_adder|lpm_add_sub_component|auto_generated|op_1~18_combout\ = (\inst82|LPM_MUX_component|auto_generated|result_node[10]~5_combout\ & (!\PC_adder|lpm_add_sub_component|auto_generated|op_1~17\)) # 
-- (!\inst82|LPM_MUX_component|auto_generated|result_node[10]~5_combout\ & ((\PC_adder|lpm_add_sub_component|auto_generated|op_1~17\) # (GND)))
-- \PC_adder|lpm_add_sub_component|auto_generated|op_1~19\ = CARRY((!\PC_adder|lpm_add_sub_component|auto_generated|op_1~17\) # (!\inst82|LPM_MUX_component|auto_generated|result_node[10]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst82|LPM_MUX_component|auto_generated|result_node[10]~5_combout\,
	datad => VCC,
	cin => \PC_adder|lpm_add_sub_component|auto_generated|op_1~17\,
	combout => \PC_adder|lpm_add_sub_component|auto_generated|op_1~18_combout\,
	cout => \PC_adder|lpm_add_sub_component|auto_generated|op_1~19\);

-- Location: LCFF_X36_Y32_N27
\inst29|lpm_ff_component|dffs[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst82|LPM_MUX_component|auto_generated|result_node[10]~5_combout\,
	sclr => \inst50~combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|lpm_ff_component|dffs\(10));

-- Location: LCFF_X33_Y31_N25
\inst20|lpm_ff_component|dffs[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst29|lpm_ff_component|dffs\(10),
	sclr => \inst68~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst20|lpm_ff_component|dffs\(10));

-- Location: LCFF_X34_Y28_N13
\inst42|lpm_ff_component|dffs[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst20|lpm_ff_component|dffs\(10),
	sclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst42|lpm_ff_component|dffs\(10));

-- Location: LCCOMB_X35_Y31_N18
\inst8|alu_op[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|alu_op[1]~2_combout\ = (\inst8|alu_op[1]~1_combout\) # ((!\inst72|lpm_ff_component|dffs\(21)) # (!\KEY~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|alu_op[1]~1_combout\,
	datab => \KEY~combout\(0),
	datac => \inst72|lpm_ff_component|dffs\(21),
	combout => \inst8|alu_op[1]~2_combout\);

-- Location: LCCOMB_X34_Y31_N14
\inst8|process_0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|process_0~3_combout\ = (!\inst72|lpm_ff_component|dffs\(20) & !\inst72|lpm_ff_component|dffs\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(20),
	datad => \inst72|lpm_ff_component|dffs\(22),
	combout => \inst8|process_0~3_combout\);

-- Location: LCCOMB_X35_Y31_N14
\inst8|alu_op[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|alu_op[1]~0_combout\ = (\inst72|lpm_ff_component|dffs\(23) & (((!\inst72|lpm_ff_component|dffs\(1) & \inst8|process_0~3_combout\)) # (!\inst72|lpm_ff_component|dffs\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(23),
	datab => \inst72|lpm_ff_component|dffs\(1),
	datac => \inst72|lpm_ff_component|dffs\(21),
	datad => \inst8|process_0~3_combout\,
	combout => \inst8|alu_op[1]~0_combout\);

-- Location: LCCOMB_X36_Y31_N14
\inst8|alu_op[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|alu_op\(1) = (\inst8|alu_op[1]~2_combout\ & ((\inst8|alu_op[1]~0_combout\))) # (!\inst8|alu_op[1]~2_combout\ & (\inst8|alu_op\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|alu_op[1]~2_combout\,
	datac => \inst8|alu_op\(1),
	datad => \inst8|alu_op[1]~0_combout\,
	combout => \inst8|alu_op\(1));

-- Location: LCFF_X36_Y31_N15
\inst21|lpm_ff_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst8|alu_op\(1),
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst21|lpm_ff_component|dffs\(1));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(9),
	combout => \SW~combout\(9));

-- Location: LCFF_X30_Y28_N17
\inst37|SWITCHES|lpm_ff_component|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \SW~combout\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|SWITCHES|lpm_ff_component|dffs\(9));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: CLKCTRL_G11
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: LCCOMB_X35_Y32_N12
\PC_adder|lpm_add_sub_component|auto_generated|op_1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_adder|lpm_add_sub_component|auto_generated|op_1~12_combout\ = (\inst82|LPM_MUX_component|auto_generated|result_node[7]~8_combout\ & (\PC_adder|lpm_add_sub_component|auto_generated|op_1~11\ $ (GND))) # 
-- (!\inst82|LPM_MUX_component|auto_generated|result_node[7]~8_combout\ & (!\PC_adder|lpm_add_sub_component|auto_generated|op_1~11\ & VCC))
-- \PC_adder|lpm_add_sub_component|auto_generated|op_1~13\ = CARRY((\inst82|LPM_MUX_component|auto_generated|result_node[7]~8_combout\ & !\PC_adder|lpm_add_sub_component|auto_generated|op_1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst82|LPM_MUX_component|auto_generated|result_node[7]~8_combout\,
	datad => VCC,
	cin => \PC_adder|lpm_add_sub_component|auto_generated|op_1~11\,
	combout => \PC_adder|lpm_add_sub_component|auto_generated|op_1~12_combout\,
	cout => \PC_adder|lpm_add_sub_component|auto_generated|op_1~13\);

-- Location: LCFF_X33_Y29_N25
\inst35|lpm_ff_component|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst13|lpm_mux_component|auto_generated|result_node[7]~50_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst35|lpm_ff_component|dffs\(7));

-- Location: LCFF_X35_Y32_N13
\PC_reg|lpm_ff_component|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC_adder|lpm_add_sub_component|auto_generated|op_1~12_combout\,
	sdata => \inst35|lpm_ff_component|dffs\(7),
	sload => \inst8|jump~combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_reg|lpm_ff_component|dffs\(7));

-- Location: LCCOMB_X36_Y32_N22
\PC_reg1|lpm_ff_component|dffs[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_reg1|lpm_ff_component|dffs[7]~feeder_combout\ = \PC_reg|lpm_ff_component|dffs\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC_reg|lpm_ff_component|dffs\(7),
	combout => \PC_reg1|lpm_ff_component|dffs[7]~feeder_combout\);

-- Location: LCFF_X36_Y32_N23
\PC_reg1|lpm_ff_component|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC_reg1|lpm_ff_component|dffs[7]~feeder_combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_reg1|lpm_ff_component|dffs\(7));

-- Location: LCCOMB_X36_Y32_N14
\inst82|LPM_MUX_component|auto_generated|result_node[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst82|LPM_MUX_component|auto_generated|result_node[7]~8_combout\ = (\inst67|deassert~2_combout\ & (\PC_reg|lpm_ff_component|dffs\(7))) # (!\inst67|deassert~2_combout\ & ((\PC_reg1|lpm_ff_component|dffs\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_reg|lpm_ff_component|dffs\(7),
	datac => \inst67|deassert~2_combout\,
	datad => \PC_reg1|lpm_ff_component|dffs\(7),
	combout => \inst82|LPM_MUX_component|auto_generated|result_node[7]~8_combout\);

-- Location: LCFF_X36_Y32_N15
\inst29|lpm_ff_component|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst82|LPM_MUX_component|auto_generated|result_node[7]~8_combout\,
	sclr => \inst50~combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|lpm_ff_component|dffs\(7));

-- Location: LCFF_X33_Y31_N31
\inst20|lpm_ff_component|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst29|lpm_ff_component|dffs\(7),
	sclr => \inst68~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst20|lpm_ff_component|dffs\(7));

-- Location: LCFF_X34_Y28_N27
\inst42|lpm_ff_component|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst20|lpm_ff_component|dffs\(7),
	sclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst42|lpm_ff_component|dffs\(7));

-- Location: LCCOMB_X35_Y32_N10
\PC_adder|lpm_add_sub_component|auto_generated|op_1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_adder|lpm_add_sub_component|auto_generated|op_1~10_combout\ = (\inst82|LPM_MUX_component|auto_generated|result_node[6]~9_combout\ & (!\PC_adder|lpm_add_sub_component|auto_generated|op_1~9\)) # 
-- (!\inst82|LPM_MUX_component|auto_generated|result_node[6]~9_combout\ & ((\PC_adder|lpm_add_sub_component|auto_generated|op_1~9\) # (GND)))
-- \PC_adder|lpm_add_sub_component|auto_generated|op_1~11\ = CARRY((!\PC_adder|lpm_add_sub_component|auto_generated|op_1~9\) # (!\inst82|LPM_MUX_component|auto_generated|result_node[6]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst82|LPM_MUX_component|auto_generated|result_node[6]~9_combout\,
	datad => VCC,
	cin => \PC_adder|lpm_add_sub_component|auto_generated|op_1~9\,
	combout => \PC_adder|lpm_add_sub_component|auto_generated|op_1~10_combout\,
	cout => \PC_adder|lpm_add_sub_component|auto_generated|op_1~11\);

-- Location: LCCOMB_X35_Y28_N8
\inst71|forwardA[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst71|forwardA[0]~3_combout\ = (!\inst71|forwardA\(1) & \inst71|forwardA[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst71|forwardA\(1),
	datad => \inst71|forwardA[0]~2_combout\,
	combout => \inst71|forwardA[0]~3_combout\);

-- Location: LCCOMB_X35_Y28_N12
\inst13|lpm_mux_component|auto_generated|result_node[6]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|lpm_mux_component|auto_generated|result_node[6]~36_combout\ = (\inst13|lpm_mux_component|auto_generated|result_node[14]~26_combout\ & ((\inst71|forwardA[0]~3_combout\ & (\inst45|lpm_ff_component|dffs\(6))) # (!\inst71|forwardA[0]~3_combout\ & 
-- ((\inst46|lpm_mux_component|auto_generated|result_node[6]~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|lpm_mux_component|auto_generated|result_node[14]~26_combout\,
	datab => \inst45|lpm_ff_component|dffs\(6),
	datac => \inst71|forwardA[0]~3_combout\,
	datad => \inst46|lpm_mux_component|auto_generated|result_node[6]~32_combout\,
	combout => \inst13|lpm_mux_component|auto_generated|result_node[6]~36_combout\);

-- Location: LCCOMB_X35_Y28_N30
\inst13|lpm_mux_component|auto_generated|result_node[6]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|lpm_mux_component|auto_generated|result_node[6]~49_combout\ = (\inst13|lpm_mux_component|auto_generated|result_node[6]~36_combout\) # ((\inst9|lpm_ff_component|dffs\(6) & (!\inst71|forwardA[0]~2_combout\ & !\inst71|forwardA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|lpm_ff_component|dffs\(6),
	datab => \inst71|forwardA[0]~2_combout\,
	datac => \inst71|forwardA\(1),
	datad => \inst13|lpm_mux_component|auto_generated|result_node[6]~36_combout\,
	combout => \inst13|lpm_mux_component|auto_generated|result_node[6]~49_combout\);

-- Location: LCFF_X35_Y28_N31
\inst35|lpm_ff_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst13|lpm_mux_component|auto_generated|result_node[6]~49_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst35|lpm_ff_component|dffs\(6));

-- Location: LCFF_X35_Y32_N11
\PC_reg|lpm_ff_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC_adder|lpm_add_sub_component|auto_generated|op_1~10_combout\,
	sdata => \inst35|lpm_ff_component|dffs\(6),
	sload => \inst8|jump~combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_reg|lpm_ff_component|dffs\(6));

-- Location: LCCOMB_X35_Y31_N30
\PC_reg1|lpm_ff_component|dffs[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_reg1|lpm_ff_component|dffs[6]~feeder_combout\ = \PC_reg|lpm_ff_component|dffs\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC_reg|lpm_ff_component|dffs\(6),
	combout => \PC_reg1|lpm_ff_component|dffs[6]~feeder_combout\);

-- Location: LCFF_X35_Y31_N31
\PC_reg1|lpm_ff_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC_reg1|lpm_ff_component|dffs[6]~feeder_combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_reg1|lpm_ff_component|dffs\(6));

-- Location: LCCOMB_X35_Y31_N10
\inst82|LPM_MUX_component|auto_generated|result_node[6]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst82|LPM_MUX_component|auto_generated|result_node[6]~9_combout\ = (\inst67|deassert~2_combout\ & (\PC_reg|lpm_ff_component|dffs\(6))) # (!\inst67|deassert~2_combout\ & ((\PC_reg1|lpm_ff_component|dffs\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst67|deassert~2_combout\,
	datac => \PC_reg|lpm_ff_component|dffs\(6),
	datad => \PC_reg1|lpm_ff_component|dffs\(6),
	combout => \inst82|LPM_MUX_component|auto_generated|result_node[6]~9_combout\);

-- Location: LCFF_X35_Y31_N11
\inst29|lpm_ff_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst82|LPM_MUX_component|auto_generated|result_node[6]~9_combout\,
	sclr => \inst50~combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|lpm_ff_component|dffs\(6));

-- Location: LCFF_X33_Y31_N1
\inst20|lpm_ff_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst29|lpm_ff_component|dffs\(6),
	sclr => \inst68~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst20|lpm_ff_component|dffs\(6));

-- Location: LCFF_X34_Y28_N29
\inst42|lpm_ff_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst20|lpm_ff_component|dffs\(6),
	sclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst42|lpm_ff_component|dffs\(6));

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(6),
	combout => \SW~combout\(6));

-- Location: LCFF_X30_Y28_N5
\inst37|SWITCHES|lpm_ff_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \SW~combout\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|SWITCHES|lpm_ff_component|dffs\(6));

-- Location: LCFF_X35_Y29_N11
\inst34|lpm_ff_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst14|lpm_mux_component|auto_generated|result_node[6]~58_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|lpm_ff_component|dffs\(6));

-- Location: LCFF_X38_Y31_N21
\inst29|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst82|LPM_MUX_component|auto_generated|result_node[0]~15_combout\,
	sclr => \inst50~combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|lpm_ff_component|dffs\(0));

-- Location: LCFF_X33_Y31_N27
\inst20|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst29|lpm_ff_component|dffs\(0),
	sclr => \inst68~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst20|lpm_ff_component|dffs\(0));

-- Location: LCFF_X34_Y28_N19
\inst42|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst20|lpm_ff_component|dffs\(0),
	sclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst42|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X34_Y28_N18
\inst46|lpm_mux_component|auto_generated|result_node[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst46|lpm_mux_component|auto_generated|result_node[0]~8_combout\ = (\inst51|lpm_ff_component|dffs\(1) & (((\inst42|lpm_ff_component|dffs\(0))))) # (!\inst51|lpm_ff_component|dffs\(1) & (\inst33|lpm_ff_component|dffs\(0) & 
-- ((!\inst51|lpm_ff_component|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|lpm_ff_component|dffs\(1),
	datab => \inst33|lpm_ff_component|dffs\(0),
	datac => \inst42|lpm_ff_component|dffs\(0),
	datad => \inst51|lpm_ff_component|dffs\(0),
	combout => \inst46|lpm_mux_component|auto_generated|result_node[0]~8_combout\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(0),
	combout => \SW~combout\(0));

-- Location: LCFF_X30_Y28_N19
\inst37|SWITCHES|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \SW~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|SWITCHES|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X35_Y32_N22
\PC_adder|lpm_add_sub_component|auto_generated|op_1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_adder|lpm_add_sub_component|auto_generated|op_1~22_combout\ = (\inst82|LPM_MUX_component|auto_generated|result_node[12]~3_combout\ & (!\PC_adder|lpm_add_sub_component|auto_generated|op_1~21\)) # 
-- (!\inst82|LPM_MUX_component|auto_generated|result_node[12]~3_combout\ & ((\PC_adder|lpm_add_sub_component|auto_generated|op_1~21\) # (GND)))
-- \PC_adder|lpm_add_sub_component|auto_generated|op_1~23\ = CARRY((!\PC_adder|lpm_add_sub_component|auto_generated|op_1~21\) # (!\inst82|LPM_MUX_component|auto_generated|result_node[12]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst82|LPM_MUX_component|auto_generated|result_node[12]~3_combout\,
	datad => VCC,
	cin => \PC_adder|lpm_add_sub_component|auto_generated|op_1~21\,
	combout => \PC_adder|lpm_add_sub_component|auto_generated|op_1~22_combout\,
	cout => \PC_adder|lpm_add_sub_component|auto_generated|op_1~23\);

-- Location: LCCOMB_X35_Y32_N24
\PC_adder|lpm_add_sub_component|auto_generated|op_1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_adder|lpm_add_sub_component|auto_generated|op_1~24_combout\ = (\inst82|LPM_MUX_component|auto_generated|result_node[13]~2_combout\ & (\PC_adder|lpm_add_sub_component|auto_generated|op_1~23\ $ (GND))) # 
-- (!\inst82|LPM_MUX_component|auto_generated|result_node[13]~2_combout\ & (!\PC_adder|lpm_add_sub_component|auto_generated|op_1~23\ & VCC))
-- \PC_adder|lpm_add_sub_component|auto_generated|op_1~25\ = CARRY((\inst82|LPM_MUX_component|auto_generated|result_node[13]~2_combout\ & !\PC_adder|lpm_add_sub_component|auto_generated|op_1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst82|LPM_MUX_component|auto_generated|result_node[13]~2_combout\,
	datad => VCC,
	cin => \PC_adder|lpm_add_sub_component|auto_generated|op_1~23\,
	combout => \PC_adder|lpm_add_sub_component|auto_generated|op_1~24_combout\,
	cout => \PC_adder|lpm_add_sub_component|auto_generated|op_1~25\);

-- Location: LCCOMB_X35_Y32_N26
\PC_adder|lpm_add_sub_component|auto_generated|op_1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_adder|lpm_add_sub_component|auto_generated|op_1~26_combout\ = (\inst82|LPM_MUX_component|auto_generated|result_node[14]~1_combout\ & (!\PC_adder|lpm_add_sub_component|auto_generated|op_1~25\)) # 
-- (!\inst82|LPM_MUX_component|auto_generated|result_node[14]~1_combout\ & ((\PC_adder|lpm_add_sub_component|auto_generated|op_1~25\) # (GND)))
-- \PC_adder|lpm_add_sub_component|auto_generated|op_1~27\ = CARRY((!\PC_adder|lpm_add_sub_component|auto_generated|op_1~25\) # (!\inst82|LPM_MUX_component|auto_generated|result_node[14]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst82|LPM_MUX_component|auto_generated|result_node[14]~1_combout\,
	datad => VCC,
	cin => \PC_adder|lpm_add_sub_component|auto_generated|op_1~25\,
	combout => \PC_adder|lpm_add_sub_component|auto_generated|op_1~26_combout\,
	cout => \PC_adder|lpm_add_sub_component|auto_generated|op_1~27\);

-- Location: LCCOMB_X35_Y32_N28
\PC_adder|lpm_add_sub_component|auto_generated|op_1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_adder|lpm_add_sub_component|auto_generated|op_1~28_combout\ = \PC_adder|lpm_add_sub_component|auto_generated|op_1~27\ $ (!\inst82|LPM_MUX_component|auto_generated|result_node[15]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst82|LPM_MUX_component|auto_generated|result_node[15]~0_combout\,
	cin => \PC_adder|lpm_add_sub_component|auto_generated|op_1~27\,
	combout => \PC_adder|lpm_add_sub_component|auto_generated|op_1~28_combout\);

-- Location: LCFF_X35_Y30_N17
\inst35|lpm_ff_component|dffs[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst13|lpm_mux_component|auto_generated|result_node[15]~57_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst35|lpm_ff_component|dffs\(15));

-- Location: LCFF_X35_Y32_N29
\PC_reg|lpm_ff_component|dffs[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC_adder|lpm_add_sub_component|auto_generated|op_1~28_combout\,
	sdata => \inst35|lpm_ff_component|dffs\(15),
	sload => \inst8|jump~combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_reg|lpm_ff_component|dffs\(15));

-- Location: LCCOMB_X36_Y32_N16
\inst82|LPM_MUX_component|auto_generated|result_node[15]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst82|LPM_MUX_component|auto_generated|result_node[15]~0_combout\ = (\inst67|deassert~2_combout\ & ((\PC_reg|lpm_ff_component|dffs\(15)))) # (!\inst67|deassert~2_combout\ & (\PC_reg1|lpm_ff_component|dffs\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_reg1|lpm_ff_component|dffs\(15),
	datab => \PC_reg|lpm_ff_component|dffs\(15),
	datac => \inst67|deassert~2_combout\,
	combout => \inst82|LPM_MUX_component|auto_generated|result_node[15]~0_combout\);

-- Location: LCFF_X36_Y32_N17
\inst29|lpm_ff_component|dffs[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst82|LPM_MUX_component|auto_generated|result_node[15]~0_combout\,
	sclr => \inst50~combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|lpm_ff_component|dffs\(15));

-- Location: LCFF_X33_Y31_N19
\inst20|lpm_ff_component|dffs[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst29|lpm_ff_component|dffs\(15),
	sclr => \inst68~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst20|lpm_ff_component|dffs\(15));

-- Location: LCCOMB_X35_Y30_N20
\inst42|lpm_ff_component|dffs[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst42|lpm_ff_component|dffs[15]~feeder_combout\ = \inst20|lpm_ff_component|dffs\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst20|lpm_ff_component|dffs\(15),
	combout => \inst42|lpm_ff_component|dffs[15]~feeder_combout\);

-- Location: LCFF_X35_Y30_N21
\inst42|lpm_ff_component|dffs[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst42|lpm_ff_component|dffs[15]~feeder_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst42|lpm_ff_component|dffs\(15));

-- Location: LCCOMB_X35_Y30_N2
\inst46|lpm_mux_component|auto_generated|result_node[15]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst46|lpm_mux_component|auto_generated|result_node[15]~34_combout\ = (\inst51|lpm_ff_component|dffs\(1) & ((\inst42|lpm_ff_component|dffs\(15)))) # (!\inst51|lpm_ff_component|dffs\(1) & 
-- (\inst46|lpm_mux_component|auto_generated|result_node[15]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|lpm_mux_component|auto_generated|result_node[15]~33_combout\,
	datac => \inst42|lpm_ff_component|dffs\(15),
	datad => \inst51|lpm_ff_component|dffs\(1),
	combout => \inst46|lpm_mux_component|auto_generated|result_node[15]~34_combout\);

-- Location: LCFF_X35_Y30_N3
\inst45|lpm_ff_component|dffs[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst46|lpm_mux_component|auto_generated|result_node[15]~34_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst45|lpm_ff_component|dffs\(15));

-- Location: LCCOMB_X35_Y30_N26
\inst13|lpm_mux_component|auto_generated|result_node[15]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|lpm_mux_component|auto_generated|result_node[15]~44_combout\ = (\inst13|lpm_mux_component|auto_generated|result_node[14]~26_combout\ & ((\inst71|forwardA[0]~3_combout\ & (\inst45|lpm_ff_component|dffs\(15))) # (!\inst71|forwardA[0]~3_combout\ & 
-- ((\inst46|lpm_mux_component|auto_generated|result_node[15]~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst71|forwardA[0]~3_combout\,
	datab => \inst45|lpm_ff_component|dffs\(15),
	datac => \inst13|lpm_mux_component|auto_generated|result_node[14]~26_combout\,
	datad => \inst46|lpm_mux_component|auto_generated|result_node[15]~34_combout\,
	combout => \inst13|lpm_mux_component|auto_generated|result_node[15]~44_combout\);

-- Location: LCCOMB_X32_Y29_N4
\inst7|inst41~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst41~4_combout\ = (\inst64|lpm_ff_component|dffs\(0) & \inst65|lpm_ff_component|dffs\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst64|lpm_ff_component|dffs\(0),
	datac => \inst65|lpm_ff_component|dffs\(0),
	combout => \inst7|inst41~4_combout\);

-- Location: LCCOMB_X32_Y29_N6
\inst7|inst41~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst41~5_combout\ = (!\inst65|lpm_ff_component|dffs\(3) & (!\inst65|lpm_ff_component|dffs\(2) & (\inst7|inst41~4_combout\ & !\inst65|lpm_ff_component|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|lpm_ff_component|dffs\(3),
	datab => \inst65|lpm_ff_component|dffs\(2),
	datac => \inst7|inst41~4_combout\,
	datad => \inst65|lpm_ff_component|dffs\(1),
	combout => \inst7|inst41~5_combout\);

-- Location: LCFF_X41_Y30_N1
\inst7|Reg1|lpm_ff_component|dffs[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(15),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst41~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg1|lpm_ff_component|dffs\(15));

-- Location: LCCOMB_X37_Y30_N24
\inst7|inst52|lpm_mux_component|auto_generated|_~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst52|lpm_mux_component|auto_generated|_~14_combout\ = (\inst72|lpm_ff_component|dffs\(12) & \inst7|Reg1|lpm_ff_component|dffs\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(12),
	datac => \inst7|Reg1|lpm_ff_component|dffs\(15),
	combout => \inst7|inst52|lpm_mux_component|auto_generated|_~14_combout\);

-- Location: LCFF_X37_Y30_N25
\inst9|lpm_ff_component|dffs[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst7|inst52|lpm_mux_component|auto_generated|_~14_combout\,
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|lpm_ff_component|dffs\(15));

-- Location: LCCOMB_X35_Y30_N16
\inst13|lpm_mux_component|auto_generated|result_node[15]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|lpm_mux_component|auto_generated|result_node[15]~57_combout\ = (\inst13|lpm_mux_component|auto_generated|result_node[15]~44_combout\) # ((!\inst71|forwardA\(1) & (\inst9|lpm_ff_component|dffs\(15) & !\inst71|forwardA[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst71|forwardA\(1),
	datab => \inst13|lpm_mux_component|auto_generated|result_node[15]~44_combout\,
	datac => \inst9|lpm_ff_component|dffs\(15),
	datad => \inst71|forwardA[0]~2_combout\,
	combout => \inst13|lpm_mux_component|auto_generated|result_node[15]~57_combout\);

-- Location: LCCOMB_X34_Y30_N4
\inst14|lpm_mux_component|auto_generated|result_node[14]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|lpm_mux_component|auto_generated|result_node[14]~47_combout\ = (\inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\ & ((\inst71|forwardB[0]~4_combout\ & (\inst45|lpm_ff_component|dffs\(14))) # (!\inst71|forwardB[0]~4_combout\ & 
-- ((\inst46|lpm_mux_component|auto_generated|result_node[14]~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|lpm_ff_component|dffs\(14),
	datab => \inst71|forwardB[0]~4_combout\,
	datac => \inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\,
	datad => \inst46|lpm_mux_component|auto_generated|result_node[14]~36_combout\,
	combout => \inst14|lpm_mux_component|auto_generated|result_node[14]~47_combout\);

-- Location: LCCOMB_X36_Y29_N8
\inst15|lpm_mux_component|auto_generated|result_node[14]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|lpm_mux_component|auto_generated|result_node[14]~11_combout\ = (!\inst25|lpm_ff_component|dffs\(0) & ((\inst14|lpm_mux_component|auto_generated|result_node[14]~47_combout\) # ((\inst10|lpm_ff_component|dffs\(14) & 
-- !\inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|lpm_ff_component|dffs\(14),
	datab => \inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\,
	datac => \inst14|lpm_mux_component|auto_generated|result_node[14]~47_combout\,
	datad => \inst25|lpm_ff_component|dffs\(0),
	combout => \inst15|lpm_mux_component|auto_generated|result_node[14]~11_combout\);

-- Location: LCCOMB_X38_Y28_N22
\inst14|lpm_mux_component|auto_generated|result_node[13]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|lpm_mux_component|auto_generated|result_node[13]~38_combout\ = (\inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\ & ((\inst71|forwardB[0]~4_combout\ & (\inst45|lpm_ff_component|dffs\(13))) # (!\inst71|forwardB[0]~4_combout\ & 
-- ((\inst46|lpm_mux_component|auto_generated|result_node[13]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst71|forwardB[0]~4_combout\,
	datab => \inst45|lpm_ff_component|dffs\(13),
	datac => \inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\,
	datad => \inst46|lpm_mux_component|auto_generated|result_node[13]~18_combout\,
	combout => \inst14|lpm_mux_component|auto_generated|result_node[13]~38_combout\);

-- Location: LCCOMB_X38_Y28_N6
\inst15|lpm_mux_component|auto_generated|result_node[13]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|lpm_mux_component|auto_generated|result_node[13]~12_combout\ = (!\inst25|lpm_ff_component|dffs\(0) & ((\inst14|lpm_mux_component|auto_generated|result_node[13]~38_combout\) # ((\inst10|lpm_ff_component|dffs\(13) & 
-- !\inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|lpm_ff_component|dffs\(13),
	datab => \inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\,
	datac => \inst25|lpm_ff_component|dffs\(0),
	datad => \inst14|lpm_mux_component|auto_generated|result_node[13]~38_combout\,
	combout => \inst15|lpm_mux_component|auto_generated|result_node[13]~12_combout\);

-- Location: LCCOMB_X38_Y28_N30
\inst7|inst52|lpm_mux_component|auto_generated|_~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst52|lpm_mux_component|auto_generated|_~13_combout\ = (\inst7|Reg1|lpm_ff_component|dffs\(13) & \inst72|lpm_ff_component|dffs\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Reg1|lpm_ff_component|dffs\(13),
	datac => \inst72|lpm_ff_component|dffs\(12),
	combout => \inst7|inst52|lpm_mux_component|auto_generated|_~13_combout\);

-- Location: LCFF_X38_Y28_N31
\inst9|lpm_ff_component|dffs[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst7|inst52|lpm_mux_component|auto_generated|_~13_combout\,
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|lpm_ff_component|dffs\(13));

-- Location: LCCOMB_X38_Y28_N0
\inst13|lpm_mux_component|auto_generated|result_node[13]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|lpm_mux_component|auto_generated|result_node[13]~43_combout\ = (\inst13|lpm_mux_component|auto_generated|result_node[14]~26_combout\ & ((\inst71|forwardA[0]~3_combout\ & (\inst45|lpm_ff_component|dffs\(13))) # (!\inst71|forwardA[0]~3_combout\ & 
-- ((\inst46|lpm_mux_component|auto_generated|result_node[13]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|lpm_mux_component|auto_generated|result_node[14]~26_combout\,
	datab => \inst45|lpm_ff_component|dffs\(13),
	datac => \inst71|forwardA[0]~3_combout\,
	datad => \inst46|lpm_mux_component|auto_generated|result_node[13]~18_combout\,
	combout => \inst13|lpm_mux_component|auto_generated|result_node[13]~43_combout\);

-- Location: LCCOMB_X33_Y29_N4
\inst13|lpm_mux_component|auto_generated|result_node[13]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|lpm_mux_component|auto_generated|result_node[13]~56_combout\ = (\inst13|lpm_mux_component|auto_generated|result_node[13]~43_combout\) # ((!\inst71|forwardA\(1) & (!\inst71|forwardA[0]~2_combout\ & \inst9|lpm_ff_component|dffs\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst71|forwardA\(1),
	datab => \inst71|forwardA[0]~2_combout\,
	datac => \inst9|lpm_ff_component|dffs\(13),
	datad => \inst13|lpm_mux_component|auto_generated|result_node[13]~43_combout\,
	combout => \inst13|lpm_mux_component|auto_generated|result_node[13]~56_combout\);

-- Location: LCCOMB_X36_Y30_N0
\inst7|Reg1|lpm_ff_component|dffs[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg1|lpm_ff_component|dffs[12]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst45|lpm_ff_component|dffs\(12),
	combout => \inst7|Reg1|lpm_ff_component|dffs[12]~feeder_combout\);

-- Location: LCFF_X36_Y30_N1
\inst7|Reg1|lpm_ff_component|dffs[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg1|lpm_ff_component|dffs[12]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst41~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg1|lpm_ff_component|dffs\(12));

-- Location: LCFF_X43_Y28_N7
\inst7|Reg2|lpm_ff_component|dffs[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(12),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst40~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg2|lpm_ff_component|dffs\(12));

-- Location: LCFF_X43_Y28_N31
\inst7|Reg3|lpm_ff_component|dffs[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(12),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg3|lpm_ff_component|dffs\(12));

-- Location: LCCOMB_X43_Y28_N6
\inst7|inst53|lpm_mux_component|auto_generated|_~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst53|lpm_mux_component|auto_generated|_~14_combout\ = (\inst72|lpm_ff_component|dffs\(9) & ((\inst72|lpm_ff_component|dffs\(8) & ((\inst7|Reg3|lpm_ff_component|dffs\(12)))) # (!\inst72|lpm_ff_component|dffs\(8) & 
-- (\inst7|Reg2|lpm_ff_component|dffs\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(9),
	datab => \inst72|lpm_ff_component|dffs\(8),
	datac => \inst7|Reg2|lpm_ff_component|dffs\(12),
	datad => \inst7|Reg3|lpm_ff_component|dffs\(12),
	combout => \inst7|inst53|lpm_mux_component|auto_generated|_~14_combout\);

-- Location: LCCOMB_X36_Y30_N24
\inst7|inst53|lpm_mux_component|auto_generated|_~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst53|lpm_mux_component|auto_generated|_~15_combout\ = (\inst7|inst53|lpm_mux_component|auto_generated|_~14_combout\) # ((\inst72|lpm_ff_component|dffs\(8) & (\inst7|Reg1|lpm_ff_component|dffs\(12) & !\inst72|lpm_ff_component|dffs\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(8),
	datab => \inst7|Reg1|lpm_ff_component|dffs\(12),
	datac => \inst72|lpm_ff_component|dffs\(9),
	datad => \inst7|inst53|lpm_mux_component|auto_generated|_~14_combout\,
	combout => \inst7|inst53|lpm_mux_component|auto_generated|_~15_combout\);

-- Location: LCFF_X36_Y30_N25
\inst10|lpm_ff_component|dffs[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst7|inst53|lpm_mux_component|auto_generated|_~15_combout\,
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|lpm_ff_component|dffs\(12));

-- Location: LCCOMB_X35_Y29_N30
\inst14|lpm_mux_component|auto_generated|result_node[12]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|lpm_mux_component|auto_generated|result_node[12]~52_combout\ = (\inst14|lpm_mux_component|auto_generated|result_node[12]~39_combout\) # ((!\inst71|forwardB[0]~3_combout\ & (\inst10|lpm_ff_component|dffs\(12) & !\inst71|forwardB[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst71|forwardB[0]~3_combout\,
	datab => \inst10|lpm_ff_component|dffs\(12),
	datac => \inst71|forwardB[1]~1_combout\,
	datad => \inst14|lpm_mux_component|auto_generated|result_node[12]~39_combout\,
	combout => \inst14|lpm_mux_component|auto_generated|result_node[12]~52_combout\);

-- Location: LCFF_X36_Y32_N9
\inst29|lpm_ff_component|dffs[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst82|LPM_MUX_component|auto_generated|result_node[11]~4_combout\,
	sclr => \inst50~combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|lpm_ff_component|dffs\(11));

-- Location: LCFF_X33_Y31_N7
\inst20|lpm_ff_component|dffs[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst29|lpm_ff_component|dffs\(11),
	sclr => \inst68~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst20|lpm_ff_component|dffs\(11));

-- Location: LCCOMB_X35_Y28_N26
\inst42|lpm_ff_component|dffs[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst42|lpm_ff_component|dffs[11]~feeder_combout\ = \inst20|lpm_ff_component|dffs\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst20|lpm_ff_component|dffs\(11),
	combout => \inst42|lpm_ff_component|dffs[11]~feeder_combout\);

-- Location: LCFF_X35_Y28_N27
\inst42|lpm_ff_component|dffs[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst42|lpm_ff_component|dffs[11]~feeder_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst42|lpm_ff_component|dffs\(11));

-- Location: LCCOMB_X36_Y29_N6
\inst15|lpm_mux_component|auto_generated|result_node[11]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|lpm_mux_component|auto_generated|result_node[11]~8_combout\ = (!\inst25|lpm_ff_component|dffs\(0) & ((\inst14|lpm_mux_component|auto_generated|result_node[11]~40_combout\) # ((\inst10|lpm_ff_component|dffs\(11) & 
-- !\inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|lpm_ff_component|dffs\(11),
	datab => \inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\,
	datac => \inst14|lpm_mux_component|auto_generated|result_node[11]~40_combout\,
	datad => \inst25|lpm_ff_component|dffs\(0),
	combout => \inst15|lpm_mux_component|auto_generated|result_node[11]~8_combout\);

-- Location: LCFF_X43_Y28_N11
\inst7|Reg2|lpm_ff_component|dffs[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(10),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst40~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg2|lpm_ff_component|dffs\(10));

-- Location: LCFF_X43_Y28_N19
\inst7|Reg3|lpm_ff_component|dffs[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(10),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg3|lpm_ff_component|dffs\(10));

-- Location: LCCOMB_X43_Y28_N10
\inst7|inst53|lpm_mux_component|auto_generated|_~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst53|lpm_mux_component|auto_generated|_~18_combout\ = (\inst72|lpm_ff_component|dffs\(9) & ((\inst72|lpm_ff_component|dffs\(8) & ((\inst7|Reg3|lpm_ff_component|dffs\(10)))) # (!\inst72|lpm_ff_component|dffs\(8) & 
-- (\inst7|Reg2|lpm_ff_component|dffs\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(9),
	datab => \inst72|lpm_ff_component|dffs\(8),
	datac => \inst7|Reg2|lpm_ff_component|dffs\(10),
	datad => \inst7|Reg3|lpm_ff_component|dffs\(10),
	combout => \inst7|inst53|lpm_mux_component|auto_generated|_~18_combout\);

-- Location: LCCOMB_X37_Y30_N26
\inst7|inst53|lpm_mux_component|auto_generated|_~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst53|lpm_mux_component|auto_generated|_~19_combout\ = (\inst7|inst53|lpm_mux_component|auto_generated|_~18_combout\) # ((!\inst72|lpm_ff_component|dffs\(9) & (\inst72|lpm_ff_component|dffs\(8) & \inst7|Reg1|lpm_ff_component|dffs\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(9),
	datab => \inst72|lpm_ff_component|dffs\(8),
	datac => \inst7|Reg1|lpm_ff_component|dffs\(10),
	datad => \inst7|inst53|lpm_mux_component|auto_generated|_~18_combout\,
	combout => \inst7|inst53|lpm_mux_component|auto_generated|_~19_combout\);

-- Location: LCFF_X37_Y30_N27
\inst10|lpm_ff_component|dffs[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst7|inst53|lpm_mux_component|auto_generated|_~19_combout\,
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|lpm_ff_component|dffs\(10));

-- Location: LCCOMB_X34_Y30_N0
\inst14|lpm_mux_component|auto_generated|result_node[10]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|lpm_mux_component|auto_generated|result_node[10]~41_combout\ = (\inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\ & ((\inst71|forwardB[0]~4_combout\ & (\inst45|lpm_ff_component|dffs\(10))) # (!\inst71|forwardB[0]~4_combout\ & 
-- ((\inst46|lpm_mux_component|auto_generated|result_node[10]~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|lpm_ff_component|dffs\(10),
	datab => \inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\,
	datac => \inst46|lpm_mux_component|auto_generated|result_node[10]~24_combout\,
	datad => \inst71|forwardB[0]~4_combout\,
	combout => \inst14|lpm_mux_component|auto_generated|result_node[10]~41_combout\);

-- Location: LCCOMB_X35_Y29_N26
\inst14|lpm_mux_component|auto_generated|result_node[10]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|lpm_mux_component|auto_generated|result_node[10]~54_combout\ = (\inst14|lpm_mux_component|auto_generated|result_node[10]~41_combout\) # ((!\inst71|forwardB[0]~3_combout\ & (\inst10|lpm_ff_component|dffs\(10) & !\inst71|forwardB[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst71|forwardB[0]~3_combout\,
	datab => \inst10|lpm_ff_component|dffs\(10),
	datac => \inst71|forwardB[1]~1_combout\,
	datad => \inst14|lpm_mux_component|auto_generated|result_node[10]~41_combout\,
	combout => \inst14|lpm_mux_component|auto_generated|result_node[10]~54_combout\);

-- Location: LCCOMB_X34_Y29_N14
\inst12|inst20|inst11|inst4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst20|inst11|inst4~0_combout\ = (\inst13|lpm_mux_component|auto_generated|result_node[10]~53_combout\ & ((\inst12|inst20|inst10|inst4~0_combout\) # ((!\inst25|lpm_ff_component|dffs\(0) & 
-- \inst14|lpm_mux_component|auto_generated|result_node[10]~54_combout\)))) # (!\inst13|lpm_mux_component|auto_generated|result_node[10]~53_combout\ & (!\inst25|lpm_ff_component|dffs\(0) & (\inst14|lpm_mux_component|auto_generated|result_node[10]~54_combout\ 
-- & \inst12|inst20|inst10|inst4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|lpm_ff_component|dffs\(0),
	datab => \inst13|lpm_mux_component|auto_generated|result_node[10]~53_combout\,
	datac => \inst14|lpm_mux_component|auto_generated|result_node[10]~54_combout\,
	datad => \inst12|inst20|inst10|inst4~0_combout\,
	combout => \inst12|inst20|inst11|inst4~0_combout\);

-- Location: LCCOMB_X34_Y29_N4
\inst12|inst|LPM_MUX_component|auto_generated|result_node[11]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|LPM_MUX_component|auto_generated|result_node[11]~4_combout\ = (\inst21|lpm_ff_component|dffs\(1) & (\inst13|lpm_mux_component|auto_generated|result_node[11]~54_combout\ $ (\inst15|lpm_mux_component|auto_generated|result_node[11]~8_combout\ $ 
-- (\inst12|inst20|inst11|inst4~0_combout\)))) # (!\inst21|lpm_ff_component|dffs\(1) & (\inst13|lpm_mux_component|auto_generated|result_node[11]~54_combout\ & (\inst15|lpm_mux_component|auto_generated|result_node[11]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|lpm_mux_component|auto_generated|result_node[11]~54_combout\,
	datab => \inst21|lpm_ff_component|dffs\(1),
	datac => \inst15|lpm_mux_component|auto_generated|result_node[11]~8_combout\,
	datad => \inst12|inst20|inst11|inst4~0_combout\,
	combout => \inst12|inst|LPM_MUX_component|auto_generated|result_node[11]~4_combout\);

-- Location: LCFF_X34_Y29_N5
\inst33|lpm_ff_component|dffs[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst12|inst|LPM_MUX_component|auto_generated|result_node[11]~4_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst33|lpm_ff_component|dffs\(11));

-- Location: LCCOMB_X34_Y32_N8
\inst46|lpm_mux_component|auto_generated|result_node[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst46|lpm_mux_component|auto_generated|result_node[0]~6_combout\ = (\inst51|lpm_ff_component|dffs\(0) & !\inst51|lpm_ff_component|dffs\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst51|lpm_ff_component|dffs\(0),
	datad => \inst51|lpm_ff_component|dffs\(1),
	combout => \inst46|lpm_mux_component|auto_generated|result_node[0]~6_combout\);

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(1),
	combout => \SW~combout\(1));

-- Location: LCFF_X30_Y28_N23
\inst37|SWITCHES|lpm_ff_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \SW~combout\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|SWITCHES|lpm_ff_component|dffs\(1));

-- Location: LCCOMB_X30_Y28_N22
\inst44|LPM_MUX_component|auto_generated|result_node[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst44|LPM_MUX_component|auto_generated|result_node[1]~2_combout\ = (\inst33|lpm_ff_component|dffs\(15) & ((\inst37|SWITCHES|lpm_ff_component|dffs\(1)))) # (!\inst33|lpm_ff_component|dffs\(15) & (\inst37|PUSH_BUTTON|lpm_ff_component|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst37|PUSH_BUTTON|lpm_ff_component|dffs\(1),
	datac => \inst37|SWITCHES|lpm_ff_component|dffs\(1),
	datad => \inst33|lpm_ff_component|dffs\(15),
	combout => \inst44|LPM_MUX_component|auto_generated|result_node[1]~2_combout\);

-- Location: LCCOMB_X37_Y28_N4
\inst14|lpm_mux_component|auto_generated|result_node[0]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|lpm_mux_component|auto_generated|result_node[0]~62_combout\ = (\inst14|lpm_mux_component|auto_generated|result_node[0]~31_combout\) # ((\inst71|forwardB[1]~1_combout\ & ((\inst46|lpm_mux_component|auto_generated|result_node[0]~7_combout\) # 
-- (\inst46|lpm_mux_component|auto_generated|result_node[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst71|forwardB[1]~1_combout\,
	datab => \inst46|lpm_mux_component|auto_generated|result_node[0]~7_combout\,
	datac => \inst46|lpm_mux_component|auto_generated|result_node[0]~8_combout\,
	datad => \inst14|lpm_mux_component|auto_generated|result_node[0]~31_combout\,
	combout => \inst14|lpm_mux_component|auto_generated|result_node[0]~62_combout\);

-- Location: LCFF_X37_Y28_N5
\inst34|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst14|lpm_mux_component|auto_generated|result_node[0]~62_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|lpm_ff_component|dffs\(0));

-- Location: LCFF_X37_Y28_N7
\inst45|lpm_ff_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst46|lpm_mux_component|auto_generated|result_node[2]~37_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst45|lpm_ff_component|dffs\(2));

-- Location: LCCOMB_X36_Y30_N6
\inst14|lpm_mux_component|auto_generated|result_node[2]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|lpm_mux_component|auto_generated|result_node[2]~34_combout\ = (!\inst71|forwardB[1]~1_combout\ & ((\inst71|forwardB[0]~3_combout\ & ((\inst45|lpm_ff_component|dffs\(2)))) # (!\inst71|forwardB[0]~3_combout\ & (\inst10|lpm_ff_component|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|lpm_ff_component|dffs\(2),
	datab => \inst45|lpm_ff_component|dffs\(2),
	datac => \inst71|forwardB[1]~1_combout\,
	datad => \inst71|forwardB[0]~3_combout\,
	combout => \inst14|lpm_mux_component|auto_generated|result_node[2]~34_combout\);

-- Location: LCFF_X34_Y30_N9
\inst17|lpm_ff_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst72|lpm_ff_component|dffs\(21),
	sclr => \inst68~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|lpm_ff_component|dffs\(2));

-- Location: LCCOMB_X34_Y30_N8
\inst15|lpm_mux_component|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|lpm_mux_component|auto_generated|result_node[2]~3_combout\ = (\inst25|lpm_ff_component|dffs\(0) & (\inst17|lpm_ff_component|dffs\(2))) # (!\inst25|lpm_ff_component|dffs\(0) & ((\inst71|forwardB[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|lpm_ff_component|dffs\(0),
	datac => \inst17|lpm_ff_component|dffs\(2),
	datad => \inst71|forwardB[1]~1_combout\,
	combout => \inst15|lpm_mux_component|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X37_Y28_N0
\inst15|lpm_mux_component|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|lpm_mux_component|auto_generated|result_node[2]~4_combout\ = (\inst25|lpm_ff_component|dffs\(0) & (((\inst15|lpm_mux_component|auto_generated|result_node[2]~3_combout\)))) # (!\inst25|lpm_ff_component|dffs\(0) & 
-- ((\inst14|lpm_mux_component|auto_generated|result_node[2]~34_combout\) # ((\inst15|lpm_mux_component|auto_generated|result_node[2]~3_combout\ & \inst46|lpm_mux_component|auto_generated|result_node[2]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|lpm_ff_component|dffs\(0),
	datab => \inst14|lpm_mux_component|auto_generated|result_node[2]~34_combout\,
	datac => \inst15|lpm_mux_component|auto_generated|result_node[2]~3_combout\,
	datad => \inst46|lpm_mux_component|auto_generated|result_node[2]~37_combout\,
	combout => \inst15|lpm_mux_component|auto_generated|result_node[2]~4_combout\);

-- Location: LCFF_X37_Y28_N13
\inst45|lpm_ff_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst46|lpm_mux_component|auto_generated|result_node[1]~12_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst45|lpm_ff_component|dffs\(1));

-- Location: LCCOMB_X38_Y28_N28
\inst14|lpm_mux_component|auto_generated|result_node[1]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|lpm_mux_component|auto_generated|result_node[1]~33_combout\ = (!\inst71|forwardB[1]~1_combout\ & ((\inst71|forwardB[0]~3_combout\ & ((\inst45|lpm_ff_component|dffs\(1)))) # (!\inst71|forwardB[0]~3_combout\ & (\inst10|lpm_ff_component|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|lpm_ff_component|dffs\(1),
	datab => \inst45|lpm_ff_component|dffs\(1),
	datac => \inst71|forwardB[1]~1_combout\,
	datad => \inst71|forwardB[0]~3_combout\,
	combout => \inst14|lpm_mux_component|auto_generated|result_node[1]~33_combout\);

-- Location: LCCOMB_X38_Y28_N26
\inst14|lpm_mux_component|auto_generated|result_node[1]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|lpm_mux_component|auto_generated|result_node[1]~32_combout\ = (\inst71|forwardB[1]~1_combout\ & ((\inst46|lpm_mux_component|auto_generated|result_node[1]~11_combout\) # (\inst46|lpm_mux_component|auto_generated|result_node[1]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|lpm_mux_component|auto_generated|result_node[1]~11_combout\,
	datab => \inst71|forwardB[1]~1_combout\,
	datac => \inst46|lpm_mux_component|auto_generated|result_node[1]~10_combout\,
	combout => \inst14|lpm_mux_component|auto_generated|result_node[1]~32_combout\);

-- Location: LCCOMB_X38_Y28_N14
\inst15|lpm_mux_component|auto_generated|result_node[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|lpm_mux_component|auto_generated|result_node[1]~2_combout\ = (!\inst25|lpm_ff_component|dffs\(0) & ((\inst14|lpm_mux_component|auto_generated|result_node[1]~33_combout\) # (\inst14|lpm_mux_component|auto_generated|result_node[1]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|lpm_mux_component|auto_generated|result_node[1]~33_combout\,
	datac => \inst25|lpm_ff_component|dffs\(0),
	datad => \inst14|lpm_mux_component|auto_generated|result_node[1]~32_combout\,
	combout => \inst15|lpm_mux_component|auto_generated|result_node[1]~2_combout\);

-- Location: LCCOMB_X38_Y28_N10
\inst12|inst20|inst2|inst4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst20|inst2|inst4~0_combout\ = (\inst13|lpm_mux_component|auto_generated|result_node[1]~31_combout\ & ((\inst15|lpm_mux_component|auto_generated|result_node[1]~2_combout\) # ((\inst13|lpm_mux_component|auto_generated|result_node[0]~29_combout\ & 
-- \inst15|lpm_mux_component|auto_generated|result_node[0]~1_combout\)))) # (!\inst13|lpm_mux_component|auto_generated|result_node[1]~31_combout\ & (\inst13|lpm_mux_component|auto_generated|result_node[0]~29_combout\ & 
-- (\inst15|lpm_mux_component|auto_generated|result_node[1]~2_combout\ & \inst15|lpm_mux_component|auto_generated|result_node[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|lpm_mux_component|auto_generated|result_node[1]~31_combout\,
	datab => \inst13|lpm_mux_component|auto_generated|result_node[0]~29_combout\,
	datac => \inst15|lpm_mux_component|auto_generated|result_node[1]~2_combout\,
	datad => \inst15|lpm_mux_component|auto_generated|result_node[0]~1_combout\,
	combout => \inst12|inst20|inst2|inst4~0_combout\);

-- Location: LCCOMB_X38_Y28_N4
\inst12|inst20|inst|inst4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst20|inst|inst4~1_combout\ = (\inst15|lpm_mux_component|auto_generated|result_node[2]~4_combout\ & ((\inst13|lpm_mux_component|auto_generated|result_node[2]~33_combout\) # (\inst12|inst20|inst2|inst4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|lpm_mux_component|auto_generated|result_node[2]~33_combout\,
	datac => \inst15|lpm_mux_component|auto_generated|result_node[2]~4_combout\,
	datad => \inst12|inst20|inst2|inst4~0_combout\,
	combout => \inst12|inst20|inst|inst4~1_combout\);

-- Location: LCCOMB_X37_Y29_N12
\inst12|inst20|inst|inst4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst20|inst|inst4~0_combout\ = (\inst13|lpm_mux_component|auto_generated|result_node[2]~33_combout\ & \inst12|inst20|inst2|inst4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|lpm_mux_component|auto_generated|result_node[2]~33_combout\,
	datad => \inst12|inst20|inst2|inst4~0_combout\,
	combout => \inst12|inst20|inst|inst4~0_combout\);

-- Location: LCCOMB_X37_Y29_N28
\inst12|inst20|inst4|inst1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst20|inst4|inst1~combout\ = \inst13|lpm_mux_component|auto_generated|result_node[3]~47_combout\ $ (\inst15|lpm_mux_component|auto_generated|result_node[3]~5_combout\ $ (((\inst12|inst20|inst|inst4~1_combout\) # 
-- (\inst12|inst20|inst|inst4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|lpm_mux_component|auto_generated|result_node[3]~47_combout\,
	datab => \inst12|inst20|inst|inst4~1_combout\,
	datac => \inst15|lpm_mux_component|auto_generated|result_node[3]~5_combout\,
	datad => \inst12|inst20|inst|inst4~0_combout\,
	combout => \inst12|inst20|inst4|inst1~combout\);

-- Location: LCCOMB_X38_Y29_N30
\inst12|inst|LPM_MUX_component|auto_generated|result_node[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|LPM_MUX_component|auto_generated|result_node[3]~12_combout\ = (\inst21|lpm_ff_component|dffs\(1) & (((\inst12|inst20|inst4|inst1~combout\)))) # (!\inst21|lpm_ff_component|dffs\(1) & 
-- (\inst13|lpm_mux_component|auto_generated|result_node[3]~47_combout\ & (\inst15|lpm_mux_component|auto_generated|result_node[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|lpm_mux_component|auto_generated|result_node[3]~47_combout\,
	datab => \inst15|lpm_mux_component|auto_generated|result_node[3]~5_combout\,
	datac => \inst21|lpm_ff_component|dffs\(1),
	datad => \inst12|inst20|inst4|inst1~combout\,
	combout => \inst12|inst|LPM_MUX_component|auto_generated|result_node[3]~12_combout\);

-- Location: LCFF_X38_Y29_N31
\inst33|lpm_ff_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst12|inst|LPM_MUX_component|auto_generated|result_node[3]~12_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst33|lpm_ff_component|dffs\(3));

-- Location: LCCOMB_X35_Y32_N8
\PC_adder|lpm_add_sub_component|auto_generated|op_1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_adder|lpm_add_sub_component|auto_generated|op_1~8_combout\ = (\inst82|LPM_MUX_component|auto_generated|result_node[5]~10_combout\ & (\PC_adder|lpm_add_sub_component|auto_generated|op_1~7\ $ (GND))) # 
-- (!\inst82|LPM_MUX_component|auto_generated|result_node[5]~10_combout\ & (!\PC_adder|lpm_add_sub_component|auto_generated|op_1~7\ & VCC))
-- \PC_adder|lpm_add_sub_component|auto_generated|op_1~9\ = CARRY((\inst82|LPM_MUX_component|auto_generated|result_node[5]~10_combout\ & !\PC_adder|lpm_add_sub_component|auto_generated|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst82|LPM_MUX_component|auto_generated|result_node[5]~10_combout\,
	datad => VCC,
	cin => \PC_adder|lpm_add_sub_component|auto_generated|op_1~7\,
	combout => \PC_adder|lpm_add_sub_component|auto_generated|op_1~8_combout\,
	cout => \PC_adder|lpm_add_sub_component|auto_generated|op_1~9\);

-- Location: LCCOMB_X36_Y28_N14
\inst13|lpm_mux_component|auto_generated|result_node[5]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|lpm_mux_component|auto_generated|result_node[5]~27_combout\ = (\inst13|lpm_mux_component|auto_generated|result_node[14]~26_combout\ & ((\inst71|forwardA[0]~3_combout\ & (\inst45|lpm_ff_component|dffs\(5))) # (!\inst71|forwardA[0]~3_combout\ & 
-- ((\inst46|lpm_mux_component|auto_generated|result_node[5]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst71|forwardA[0]~3_combout\,
	datab => \inst45|lpm_ff_component|dffs\(5),
	datac => \inst13|lpm_mux_component|auto_generated|result_node[14]~26_combout\,
	datad => \inst46|lpm_mux_component|auto_generated|result_node[5]~5_combout\,
	combout => \inst13|lpm_mux_component|auto_generated|result_node[5]~27_combout\);

-- Location: LCCOMB_X35_Y28_N16
\inst13|lpm_mux_component|auto_generated|result_node[5]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|lpm_mux_component|auto_generated|result_node[5]~46_combout\ = (\inst13|lpm_mux_component|auto_generated|result_node[5]~27_combout\) # ((\inst9|lpm_ff_component|dffs\(5) & (!\inst71|forwardA\(1) & !\inst71|forwardA[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|lpm_ff_component|dffs\(5),
	datab => \inst71|forwardA\(1),
	datac => \inst13|lpm_mux_component|auto_generated|result_node[5]~27_combout\,
	datad => \inst71|forwardA[0]~2_combout\,
	combout => \inst13|lpm_mux_component|auto_generated|result_node[5]~46_combout\);

-- Location: LCFF_X35_Y28_N17
\inst35|lpm_ff_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst13|lpm_mux_component|auto_generated|result_node[5]~46_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst35|lpm_ff_component|dffs\(5));

-- Location: LCFF_X35_Y32_N9
\PC_reg|lpm_ff_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC_adder|lpm_add_sub_component|auto_generated|op_1~8_combout\,
	sdata => \inst35|lpm_ff_component|dffs\(5),
	sload => \inst8|jump~combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_reg|lpm_ff_component|dffs\(5));

-- Location: LCCOMB_X35_Y31_N0
\PC_reg1|lpm_ff_component|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_reg1|lpm_ff_component|dffs[5]~feeder_combout\ = \PC_reg|lpm_ff_component|dffs\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC_reg|lpm_ff_component|dffs\(5),
	combout => \PC_reg1|lpm_ff_component|dffs[5]~feeder_combout\);

-- Location: LCFF_X35_Y31_N1
\PC_reg1|lpm_ff_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC_reg1|lpm_ff_component|dffs[5]~feeder_combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_reg1|lpm_ff_component|dffs\(5));

-- Location: LCCOMB_X35_Y31_N28
\inst82|LPM_MUX_component|auto_generated|result_node[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst82|LPM_MUX_component|auto_generated|result_node[5]~10_combout\ = (\inst67|deassert~2_combout\ & ((\PC_reg|lpm_ff_component|dffs\(5)))) # (!\inst67|deassert~2_combout\ & (\PC_reg1|lpm_ff_component|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_reg1|lpm_ff_component|dffs\(5),
	datac => \inst67|deassert~2_combout\,
	datad => \PC_reg|lpm_ff_component|dffs\(5),
	combout => \inst82|LPM_MUX_component|auto_generated|result_node[5]~10_combout\);

-- Location: LCFF_X35_Y31_N29
\inst29|lpm_ff_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst82|LPM_MUX_component|auto_generated|result_node[5]~10_combout\,
	sclr => \inst50~combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|lpm_ff_component|dffs\(5));

-- Location: LCFF_X33_Y31_N17
\inst20|lpm_ff_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst29|lpm_ff_component|dffs\(5),
	sclr => \inst68~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst20|lpm_ff_component|dffs\(5));

-- Location: LCCOMB_X35_Y28_N28
\inst42|lpm_ff_component|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst42|lpm_ff_component|dffs[5]~feeder_combout\ = \inst20|lpm_ff_component|dffs\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst20|lpm_ff_component|dffs\(5),
	combout => \inst42|lpm_ff_component|dffs[5]~feeder_combout\);

-- Location: LCFF_X35_Y28_N29
\inst42|lpm_ff_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst42|lpm_ff_component|dffs[5]~feeder_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst42|lpm_ff_component|dffs\(5));

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(5),
	combout => \SW~combout\(5));

-- Location: LCFF_X30_Y28_N9
\inst37|SWITCHES|lpm_ff_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \SW~combout\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|SWITCHES|lpm_ff_component|dffs\(5));

-- Location: LCCOMB_X34_Y30_N24
\inst14|lpm_mux_component|auto_generated|result_node[6]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|lpm_mux_component|auto_generated|result_node[6]~45_combout\ = (\inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\ & ((\inst71|forwardB[0]~4_combout\ & (\inst45|lpm_ff_component|dffs\(6))) # (!\inst71|forwardB[0]~4_combout\ & 
-- ((\inst46|lpm_mux_component|auto_generated|result_node[6]~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\,
	datab => \inst45|lpm_ff_component|dffs\(6),
	datac => \inst46|lpm_mux_component|auto_generated|result_node[6]~32_combout\,
	datad => \inst71|forwardB[0]~4_combout\,
	combout => \inst14|lpm_mux_component|auto_generated|result_node[6]~45_combout\);

-- Location: LCCOMB_X34_Y30_N6
\inst15|lpm_mux_component|auto_generated|result_node[6]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|lpm_mux_component|auto_generated|result_node[6]~16_combout\ = (!\inst25|lpm_ff_component|dffs\(0) & ((\inst14|lpm_mux_component|auto_generated|result_node[6]~45_combout\) # ((\inst10|lpm_ff_component|dffs\(6) & 
-- !\inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|lpm_ff_component|dffs\(6),
	datab => \inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\,
	datac => \inst14|lpm_mux_component|auto_generated|result_node[6]~45_combout\,
	datad => \inst25|lpm_ff_component|dffs\(0),
	combout => \inst15|lpm_mux_component|auto_generated|result_node[6]~16_combout\);

-- Location: LCCOMB_X34_Y29_N8
\inst12|inst20|inst6|inst4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst20|inst6|inst4~1_combout\ = (\inst15|lpm_mux_component|auto_generated|result_node[4]~6_combout\ & ((\inst13|lpm_mux_component|auto_generated|result_node[4]~48_combout\) # (\inst12|inst20|inst4|inst4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|lpm_mux_component|auto_generated|result_node[4]~48_combout\,
	datac => \inst15|lpm_mux_component|auto_generated|result_node[4]~6_combout\,
	datad => \inst12|inst20|inst4|inst4~0_combout\,
	combout => \inst12|inst20|inst6|inst4~1_combout\);

-- Location: LCCOMB_X34_Y29_N6
\inst12|inst20|inst6|inst4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst20|inst6|inst4~0_combout\ = (\inst13|lpm_mux_component|auto_generated|result_node[4]~48_combout\ & \inst12|inst20|inst4|inst4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|lpm_mux_component|auto_generated|result_node[4]~48_combout\,
	datad => \inst12|inst20|inst4|inst4~0_combout\,
	combout => \inst12|inst20|inst6|inst4~0_combout\);

-- Location: LCCOMB_X34_Y29_N20
\inst12|inst20|inst5|inst4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst20|inst5|inst4~0_combout\ = (\inst15|lpm_mux_component|auto_generated|result_node[5]~0_combout\ & ((\inst13|lpm_mux_component|auto_generated|result_node[5]~46_combout\) # ((\inst12|inst20|inst6|inst4~1_combout\) # 
-- (\inst12|inst20|inst6|inst4~0_combout\)))) # (!\inst15|lpm_mux_component|auto_generated|result_node[5]~0_combout\ & (\inst13|lpm_mux_component|auto_generated|result_node[5]~46_combout\ & ((\inst12|inst20|inst6|inst4~1_combout\) # 
-- (\inst12|inst20|inst6|inst4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|lpm_mux_component|auto_generated|result_node[5]~0_combout\,
	datab => \inst13|lpm_mux_component|auto_generated|result_node[5]~46_combout\,
	datac => \inst12|inst20|inst6|inst4~1_combout\,
	datad => \inst12|inst20|inst6|inst4~0_combout\,
	combout => \inst12|inst20|inst5|inst4~0_combout\);

-- Location: LCCOMB_X38_Y29_N2
\inst12|inst|LPM_MUX_component|auto_generated|result_node[6]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|LPM_MUX_component|auto_generated|result_node[6]~9_combout\ = (\inst21|lpm_ff_component|dffs\(1) & (\inst15|lpm_mux_component|auto_generated|result_node[6]~16_combout\ $ (\inst13|lpm_mux_component|auto_generated|result_node[6]~49_combout\ $ 
-- (\inst12|inst20|inst5|inst4~0_combout\)))) # (!\inst21|lpm_ff_component|dffs\(1) & (\inst15|lpm_mux_component|auto_generated|result_node[6]~16_combout\ & (\inst13|lpm_mux_component|auto_generated|result_node[6]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|lpm_ff_component|dffs\(1),
	datab => \inst15|lpm_mux_component|auto_generated|result_node[6]~16_combout\,
	datac => \inst13|lpm_mux_component|auto_generated|result_node[6]~49_combout\,
	datad => \inst12|inst20|inst5|inst4~0_combout\,
	combout => \inst12|inst|LPM_MUX_component|auto_generated|result_node[6]~9_combout\);

-- Location: LCFF_X38_Y29_N3
\inst33|lpm_ff_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst12|inst|LPM_MUX_component|auto_generated|result_node[6]~9_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst33|lpm_ff_component|dffs\(6));

-- Location: LCCOMB_X41_Y30_N18
\inst7|Reg1|lpm_ff_component|dffs[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg1|lpm_ff_component|dffs[8]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(8),
	combout => \inst7|Reg1|lpm_ff_component|dffs[8]~feeder_combout\);

-- Location: LCFF_X41_Y30_N19
\inst7|Reg1|lpm_ff_component|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg1|lpm_ff_component|dffs[8]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst41~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg1|lpm_ff_component|dffs\(8));

-- Location: LCCOMB_X37_Y30_N8
\inst7|inst52|lpm_mux_component|auto_generated|_~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst52|lpm_mux_component|auto_generated|_~8_combout\ = (\inst72|lpm_ff_component|dffs\(12) & \inst7|Reg1|lpm_ff_component|dffs\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst72|lpm_ff_component|dffs\(12),
	datad => \inst7|Reg1|lpm_ff_component|dffs\(8),
	combout => \inst7|inst52|lpm_mux_component|auto_generated|_~8_combout\);

-- Location: LCFF_X37_Y30_N9
\inst9|lpm_ff_component|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst7|inst52|lpm_mux_component|auto_generated|_~8_combout\,
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|lpm_ff_component|dffs\(8));

-- Location: LCCOMB_X33_Y28_N28
\inst13|lpm_mux_component|auto_generated|result_node[8]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|lpm_mux_component|auto_generated|result_node[8]~38_combout\ = (\inst13|lpm_mux_component|auto_generated|result_node[14]~26_combout\ & ((\inst71|forwardA[0]~3_combout\ & (\inst45|lpm_ff_component|dffs\(8))) # (!\inst71|forwardA[0]~3_combout\ & 
-- ((\inst46|lpm_mux_component|auto_generated|result_node[8]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|lpm_mux_component|auto_generated|result_node[14]~26_combout\,
	datab => \inst45|lpm_ff_component|dffs\(8),
	datac => \inst46|lpm_mux_component|auto_generated|result_node[8]~28_combout\,
	datad => \inst71|forwardA[0]~3_combout\,
	combout => \inst13|lpm_mux_component|auto_generated|result_node[8]~38_combout\);

-- Location: LCCOMB_X33_Y29_N28
\inst13|lpm_mux_component|auto_generated|result_node[8]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|lpm_mux_component|auto_generated|result_node[8]~51_combout\ = (\inst13|lpm_mux_component|auto_generated|result_node[8]~38_combout\) # ((!\inst71|forwardA\(1) & (!\inst71|forwardA[0]~2_combout\ & \inst9|lpm_ff_component|dffs\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst71|forwardA\(1),
	datab => \inst71|forwardA[0]~2_combout\,
	datac => \inst9|lpm_ff_component|dffs\(8),
	datad => \inst13|lpm_mux_component|auto_generated|result_node[8]~38_combout\,
	combout => \inst13|lpm_mux_component|auto_generated|result_node[8]~51_combout\);

-- Location: LCCOMB_X34_Y29_N10
\inst12|inst20|inst8|inst4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst20|inst8|inst4~0_combout\ = (\inst13|lpm_mux_component|auto_generated|result_node[8]~51_combout\ & ((\inst12|inst20|inst9|inst4~0_combout\) # ((!\inst25|lpm_ff_component|dffs\(0) & 
-- \inst14|lpm_mux_component|auto_generated|result_node[8]~56_combout\)))) # (!\inst13|lpm_mux_component|auto_generated|result_node[8]~51_combout\ & (!\inst25|lpm_ff_component|dffs\(0) & (\inst14|lpm_mux_component|auto_generated|result_node[8]~56_combout\ & 
-- \inst12|inst20|inst9|inst4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|lpm_ff_component|dffs\(0),
	datab => \inst13|lpm_mux_component|auto_generated|result_node[8]~51_combout\,
	datac => \inst14|lpm_mux_component|auto_generated|result_node[8]~56_combout\,
	datad => \inst12|inst20|inst9|inst4~0_combout\,
	combout => \inst12|inst20|inst8|inst4~0_combout\);

-- Location: LCFF_X43_Y28_N5
\inst7|Reg2|lpm_ff_component|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(9),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst40~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg2|lpm_ff_component|dffs\(9));

-- Location: LCFF_X43_Y28_N13
\inst7|Reg3|lpm_ff_component|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(9),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg3|lpm_ff_component|dffs\(9));

-- Location: LCCOMB_X43_Y28_N4
\inst7|inst53|lpm_mux_component|auto_generated|_~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst53|lpm_mux_component|auto_generated|_~20_combout\ = (\inst72|lpm_ff_component|dffs\(9) & ((\inst72|lpm_ff_component|dffs\(8) & ((\inst7|Reg3|lpm_ff_component|dffs\(9)))) # (!\inst72|lpm_ff_component|dffs\(8) & 
-- (\inst7|Reg2|lpm_ff_component|dffs\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(9),
	datab => \inst72|lpm_ff_component|dffs\(8),
	datac => \inst7|Reg2|lpm_ff_component|dffs\(9),
	datad => \inst7|Reg3|lpm_ff_component|dffs\(9),
	combout => \inst7|inst53|lpm_mux_component|auto_generated|_~20_combout\);

-- Location: LCCOMB_X37_Y30_N12
\inst7|inst53|lpm_mux_component|auto_generated|_~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst53|lpm_mux_component|auto_generated|_~21_combout\ = (\inst7|inst53|lpm_mux_component|auto_generated|_~20_combout\) # ((!\inst72|lpm_ff_component|dffs\(9) & (\inst72|lpm_ff_component|dffs\(8) & \inst7|Reg1|lpm_ff_component|dffs\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(9),
	datab => \inst72|lpm_ff_component|dffs\(8),
	datac => \inst7|Reg1|lpm_ff_component|dffs\(9),
	datad => \inst7|inst53|lpm_mux_component|auto_generated|_~20_combout\,
	combout => \inst7|inst53|lpm_mux_component|auto_generated|_~21_combout\);

-- Location: LCFF_X37_Y30_N13
\inst10|lpm_ff_component|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst7|inst53|lpm_mux_component|auto_generated|_~21_combout\,
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|lpm_ff_component|dffs\(9));

-- Location: LCCOMB_X34_Y30_N2
\inst15|lpm_mux_component|auto_generated|result_node[9]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|lpm_mux_component|auto_generated|result_node[9]~14_combout\ = (!\inst25|lpm_ff_component|dffs\(0) & ((\inst14|lpm_mux_component|auto_generated|result_node[9]~42_combout\) # ((\inst10|lpm_ff_component|dffs\(9) & 
-- !\inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lpm_mux_component|auto_generated|result_node[9]~42_combout\,
	datab => \inst25|lpm_ff_component|dffs\(0),
	datac => \inst10|lpm_ff_component|dffs\(9),
	datad => \inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\,
	combout => \inst15|lpm_mux_component|auto_generated|result_node[9]~14_combout\);

-- Location: LCCOMB_X38_Y29_N16
\inst12|inst|LPM_MUX_component|auto_generated|result_node[9]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|LPM_MUX_component|auto_generated|result_node[9]~6_combout\ = (\inst21|lpm_ff_component|dffs\(1) & (\inst12|inst20|inst8|inst4~0_combout\ $ (\inst13|lpm_mux_component|auto_generated|result_node[9]~52_combout\ $ 
-- (\inst15|lpm_mux_component|auto_generated|result_node[9]~14_combout\)))) # (!\inst21|lpm_ff_component|dffs\(1) & (((\inst13|lpm_mux_component|auto_generated|result_node[9]~52_combout\ & 
-- \inst15|lpm_mux_component|auto_generated|result_node[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|lpm_ff_component|dffs\(1),
	datab => \inst12|inst20|inst8|inst4~0_combout\,
	datac => \inst13|lpm_mux_component|auto_generated|result_node[9]~52_combout\,
	datad => \inst15|lpm_mux_component|auto_generated|result_node[9]~14_combout\,
	combout => \inst12|inst|LPM_MUX_component|auto_generated|result_node[9]~6_combout\);

-- Location: LCFF_X38_Y29_N17
\inst33|lpm_ff_component|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst12|inst|LPM_MUX_component|auto_generated|result_node[9]~6_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst33|lpm_ff_component|dffs\(9));

-- Location: LCCOMB_X37_Y28_N2
\inst14|lpm_mux_component|auto_generated|result_node[1]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|lpm_mux_component|auto_generated|result_node[1]~61_combout\ = (\inst14|lpm_mux_component|auto_generated|result_node[1]~33_combout\) # ((\inst71|forwardB[1]~1_combout\ & ((\inst46|lpm_mux_component|auto_generated|result_node[1]~11_combout\) # 
-- (\inst46|lpm_mux_component|auto_generated|result_node[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|lpm_mux_component|auto_generated|result_node[1]~11_combout\,
	datab => \inst46|lpm_mux_component|auto_generated|result_node[1]~10_combout\,
	datac => \inst71|forwardB[1]~1_combout\,
	datad => \inst14|lpm_mux_component|auto_generated|result_node[1]~33_combout\,
	combout => \inst14|lpm_mux_component|auto_generated|result_node[1]~61_combout\);

-- Location: LCFF_X37_Y28_N3
\inst34|lpm_ff_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst14|lpm_mux_component|auto_generated|result_node[1]~61_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|lpm_ff_component|dffs\(1));

-- Location: LCCOMB_X37_Y28_N16
\inst14|lpm_mux_component|auto_generated|result_node[2]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|lpm_mux_component|auto_generated|result_node[2]~48_combout\ = (\inst14|lpm_mux_component|auto_generated|result_node[2]~34_combout\) # ((\inst71|forwardB[1]~1_combout\ & \inst46|lpm_mux_component|auto_generated|result_node[2]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|lpm_mux_component|auto_generated|result_node[2]~34_combout\,
	datac => \inst71|forwardB[1]~1_combout\,
	datad => \inst46|lpm_mux_component|auto_generated|result_node[2]~37_combout\,
	combout => \inst14|lpm_mux_component|auto_generated|result_node[2]~48_combout\);

-- Location: LCFF_X37_Y28_N17
\inst34|lpm_ff_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst14|lpm_mux_component|auto_generated|result_node[2]~48_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|lpm_ff_component|dffs\(2));

-- Location: LCFF_X35_Y29_N13
\inst34|lpm_ff_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst14|lpm_mux_component|auto_generated|result_node[5]~49_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|lpm_ff_component|dffs\(5));

-- Location: M4K_X26_Y28
\inst38|inst|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007654307430320000076500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000DCBA981076543210107650321",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "MemoryInitialization.mif",
	init_file_layout => "port_a",
	logical_ram_name => "MemoryInterface:inst38|MainMemory:inst|altsyncram:altsyncram_component|altsyncram_ghe1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_b_address_width => 10,
	port_b_data_width => 4,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \inst56~combout\,
	clk0 => \ALT_INV_clock~clkctrl_outclk\,
	portadatain => \inst38|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst38|inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst38|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y28_N8
\inst44|LPM_MUX_component|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst44|LPM_MUX_component|auto_generated|result_node[5]~0_combout\ = (\inst33|lpm_ff_component|dffs\(15) & ((\inst37|SWITCHES|lpm_ff_component|dffs\(5)) # ((!\inst16~0_combout\ & \inst38|inst|altsyncram_component|auto_generated|q_a\(5))))) # 
-- (!\inst33|lpm_ff_component|dffs\(15) & (!\inst16~0_combout\ & ((\inst38|inst|altsyncram_component|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|lpm_ff_component|dffs\(15),
	datab => \inst16~0_combout\,
	datac => \inst37|SWITCHES|lpm_ff_component|dffs\(5),
	datad => \inst38|inst|altsyncram_component|auto_generated|q_a\(5),
	combout => \inst44|LPM_MUX_component|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X34_Y28_N16
\inst46|lpm_mux_component|auto_generated|result_node[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst46|lpm_mux_component|auto_generated|result_node[5]~4_combout\ = (!\inst51|lpm_ff_component|dffs\(1) & ((\inst51|lpm_ff_component|dffs\(0) & ((\inst44|LPM_MUX_component|auto_generated|result_node[5]~0_combout\))) # (!\inst51|lpm_ff_component|dffs\(0) 
-- & (\inst33|lpm_ff_component|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|lpm_ff_component|dffs\(0),
	datab => \inst33|lpm_ff_component|dffs\(5),
	datac => \inst51|lpm_ff_component|dffs\(1),
	datad => \inst44|LPM_MUX_component|auto_generated|result_node[5]~0_combout\,
	combout => \inst46|lpm_mux_component|auto_generated|result_node[5]~4_combout\);

-- Location: LCCOMB_X35_Y28_N18
\inst46|lpm_mux_component|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst46|lpm_mux_component|auto_generated|result_node[5]~5_combout\ = (\inst46|lpm_mux_component|auto_generated|result_node[5]~4_combout\) # ((\inst42|lpm_ff_component|dffs\(5) & \inst51|lpm_ff_component|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst42|lpm_ff_component|dffs\(5),
	datac => \inst51|lpm_ff_component|dffs\(1),
	datad => \inst46|lpm_mux_component|auto_generated|result_node[5]~4_combout\,
	combout => \inst46|lpm_mux_component|auto_generated|result_node[5]~5_combout\);

-- Location: LCFF_X35_Y28_N19
\inst45|lpm_ff_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst46|lpm_mux_component|auto_generated|result_node[5]~5_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst45|lpm_ff_component|dffs\(5));

-- Location: LCCOMB_X36_Y28_N26
\inst7|Reg1|lpm_ff_component|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg1|lpm_ff_component|dffs[5]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst45|lpm_ff_component|dffs\(5),
	combout => \inst7|Reg1|lpm_ff_component|dffs[5]~feeder_combout\);

-- Location: LCFF_X36_Y28_N27
\inst7|Reg1|lpm_ff_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg1|lpm_ff_component|dffs[5]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst41~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg1|lpm_ff_component|dffs\(5));

-- Location: LCCOMB_X36_Y28_N24
\inst7|inst53|lpm_mux_component|auto_generated|_~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst53|lpm_mux_component|auto_generated|_~1_combout\ = (\inst7|inst53|lpm_mux_component|auto_generated|_~0_combout\) # ((\inst7|Reg1|lpm_ff_component|dffs\(5) & (!\inst72|lpm_ff_component|dffs\(9) & \inst72|lpm_ff_component|dffs\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst53|lpm_mux_component|auto_generated|_~0_combout\,
	datab => \inst7|Reg1|lpm_ff_component|dffs\(5),
	datac => \inst72|lpm_ff_component|dffs\(9),
	datad => \inst72|lpm_ff_component|dffs\(8),
	combout => \inst7|inst53|lpm_mux_component|auto_generated|_~1_combout\);

-- Location: LCFF_X36_Y28_N25
\inst10|lpm_ff_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst7|inst53|lpm_mux_component|auto_generated|_~1_combout\,
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|lpm_ff_component|dffs\(5));

-- Location: LCCOMB_X36_Y28_N12
\inst14|lpm_mux_component|auto_generated|result_node[5]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|lpm_mux_component|auto_generated|result_node[5]~29_combout\ = (\inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\ & ((\inst71|forwardB[0]~4_combout\ & (\inst45|lpm_ff_component|dffs\(5))) # (!\inst71|forwardB[0]~4_combout\ & 
-- ((\inst46|lpm_mux_component|auto_generated|result_node[5]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\,
	datab => \inst45|lpm_ff_component|dffs\(5),
	datac => \inst71|forwardB[0]~4_combout\,
	datad => \inst46|lpm_mux_component|auto_generated|result_node[5]~5_combout\,
	combout => \inst14|lpm_mux_component|auto_generated|result_node[5]~29_combout\);

-- Location: LCCOMB_X35_Y29_N12
\inst14|lpm_mux_component|auto_generated|result_node[5]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|lpm_mux_component|auto_generated|result_node[5]~49_combout\ = (\inst14|lpm_mux_component|auto_generated|result_node[5]~29_combout\) # ((!\inst71|forwardB[0]~3_combout\ & (\inst10|lpm_ff_component|dffs\(5) & !\inst71|forwardB[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst71|forwardB[0]~3_combout\,
	datab => \inst10|lpm_ff_component|dffs\(5),
	datac => \inst71|forwardB[1]~1_combout\,
	datad => \inst14|lpm_mux_component|auto_generated|result_node[5]~29_combout\,
	combout => \inst14|lpm_mux_component|auto_generated|result_node[5]~49_combout\);

-- Location: LCCOMB_X36_Y29_N24
\inst15|lpm_mux_component|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|lpm_mux_component|auto_generated|result_node[5]~0_combout\ = (\inst25|lpm_ff_component|dffs\(0) & (\inst17|lpm_ff_component|dffs\(5))) # (!\inst25|lpm_ff_component|dffs\(0) & ((\inst14|lpm_mux_component|auto_generated|result_node[5]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|lpm_ff_component|dffs\(0),
	datac => \inst17|lpm_ff_component|dffs\(5),
	datad => \inst14|lpm_mux_component|auto_generated|result_node[5]~49_combout\,
	combout => \inst15|lpm_mux_component|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X34_Y29_N18
\inst12|inst20|inst5|inst1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst20|inst5|inst1~combout\ = \inst13|lpm_mux_component|auto_generated|result_node[5]~46_combout\ $ (\inst15|lpm_mux_component|auto_generated|result_node[5]~0_combout\ $ (((\inst12|inst20|inst6|inst4~1_combout\) # 
-- (\inst12|inst20|inst6|inst4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst20|inst6|inst4~1_combout\,
	datab => \inst13|lpm_mux_component|auto_generated|result_node[5]~46_combout\,
	datac => \inst15|lpm_mux_component|auto_generated|result_node[5]~0_combout\,
	datad => \inst12|inst20|inst6|inst4~0_combout\,
	combout => \inst12|inst20|inst5|inst1~combout\);

-- Location: LCCOMB_X38_Y29_N4
\inst12|inst|LPM_MUX_component|auto_generated|result_node[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|LPM_MUX_component|auto_generated|result_node[5]~10_combout\ = (\inst21|lpm_ff_component|dffs\(1) & (((\inst12|inst20|inst5|inst1~combout\)))) # (!\inst21|lpm_ff_component|dffs\(1) & 
-- (\inst13|lpm_mux_component|auto_generated|result_node[5]~46_combout\ & (\inst15|lpm_mux_component|auto_generated|result_node[5]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|lpm_mux_component|auto_generated|result_node[5]~46_combout\,
	datab => \inst15|lpm_mux_component|auto_generated|result_node[5]~0_combout\,
	datac => \inst12|inst20|inst5|inst1~combout\,
	datad => \inst21|lpm_ff_component|dffs\(1),
	combout => \inst12|inst|LPM_MUX_component|auto_generated|result_node[5]~10_combout\);

-- Location: LCFF_X38_Y29_N5
\inst33|lpm_ff_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst12|inst|LPM_MUX_component|auto_generated|result_node[5]~10_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst33|lpm_ff_component|dffs\(5));

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(2),
	combout => \SW~combout\(2));

-- Location: LCFF_X30_Y28_N3
\inst37|SWITCHES|lpm_ff_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \SW~combout\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|SWITCHES|lpm_ff_component|dffs\(2));

-- Location: LCCOMB_X30_Y28_N2
\inst44|LPM_MUX_component|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst44|LPM_MUX_component|auto_generated|result_node[2]~3_combout\ = (\inst33|lpm_ff_component|dffs\(15) & ((\inst37|SWITCHES|lpm_ff_component|dffs\(2)))) # (!\inst33|lpm_ff_component|dffs\(15) & (\inst37|PUSH_BUTTON|lpm_ff_component|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst37|PUSH_BUTTON|lpm_ff_component|dffs\(2),
	datac => \inst37|SWITCHES|lpm_ff_component|dffs\(2),
	datad => \inst33|lpm_ff_component|dffs\(15),
	combout => \inst44|LPM_MUX_component|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X37_Y28_N30
\inst44|LPM_MUX_component|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst44|LPM_MUX_component|auto_generated|result_node[2]~4_combout\ = (\inst16~0_combout\ & ((\inst44|LPM_MUX_component|auto_generated|result_node[2]~3_combout\))) # (!\inst16~0_combout\ & (\inst38|inst|altsyncram_component|auto_generated|q_a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16~0_combout\,
	datac => \inst38|inst|altsyncram_component|auto_generated|q_a\(2),
	datad => \inst44|LPM_MUX_component|auto_generated|result_node[2]~3_combout\,
	combout => \inst44|LPM_MUX_component|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X37_Y28_N6
\inst46|lpm_mux_component|auto_generated|result_node[2]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst46|lpm_mux_component|auto_generated|result_node[2]~37_combout\ = (\inst46|lpm_mux_component|auto_generated|result_node[2]~13_combout\) # ((\inst51|lpm_ff_component|dffs\(0) & (!\inst51|lpm_ff_component|dffs\(1) & 
-- \inst44|LPM_MUX_component|auto_generated|result_node[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|lpm_mux_component|auto_generated|result_node[2]~13_combout\,
	datab => \inst51|lpm_ff_component|dffs\(0),
	datac => \inst51|lpm_ff_component|dffs\(1),
	datad => \inst44|LPM_MUX_component|auto_generated|result_node[2]~4_combout\,
	combout => \inst46|lpm_mux_component|auto_generated|result_node[2]~37_combout\);

-- Location: LCCOMB_X37_Y28_N22
\inst13|lpm_mux_component|auto_generated|result_node[2]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|lpm_mux_component|auto_generated|result_node[2]~33_combout\ = (\inst13|lpm_mux_component|auto_generated|result_node[2]~32_combout\) # ((\inst13|lpm_mux_component|auto_generated|result_node[14]~26_combout\ & (!\inst71|forwardA[0]~3_combout\ & 
-- \inst46|lpm_mux_component|auto_generated|result_node[2]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|lpm_mux_component|auto_generated|result_node[2]~32_combout\,
	datab => \inst13|lpm_mux_component|auto_generated|result_node[14]~26_combout\,
	datac => \inst71|forwardA[0]~3_combout\,
	datad => \inst46|lpm_mux_component|auto_generated|result_node[2]~37_combout\,
	combout => \inst13|lpm_mux_component|auto_generated|result_node[2]~33_combout\);

-- Location: LCCOMB_X37_Y28_N24
\inst12|inst|LPM_MUX_component|auto_generated|result_node[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|LPM_MUX_component|auto_generated|result_node[2]~13_combout\ = (\inst21|lpm_ff_component|dffs\(1) & (\inst13|lpm_mux_component|auto_generated|result_node[2]~33_combout\ $ (\inst12|inst20|inst2|inst4~0_combout\ $ 
-- (\inst15|lpm_mux_component|auto_generated|result_node[2]~4_combout\)))) # (!\inst21|lpm_ff_component|dffs\(1) & (\inst13|lpm_mux_component|auto_generated|result_node[2]~33_combout\ & ((\inst15|lpm_mux_component|auto_generated|result_node[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|lpm_ff_component|dffs\(1),
	datab => \inst13|lpm_mux_component|auto_generated|result_node[2]~33_combout\,
	datac => \inst12|inst20|inst2|inst4~0_combout\,
	datad => \inst15|lpm_mux_component|auto_generated|result_node[2]~4_combout\,
	combout => \inst12|inst|LPM_MUX_component|auto_generated|result_node[2]~13_combout\);

-- Location: LCFF_X37_Y28_N25
\inst33|lpm_ff_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst12|inst|LPM_MUX_component|auto_generated|result_node[2]~13_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst33|lpm_ff_component|dffs\(2));

-- Location: LCCOMB_X38_Y28_N24
\inst46|lpm_mux_component|auto_generated|result_node[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst46|lpm_mux_component|auto_generated|result_node[1]~10_combout\ = (\inst46|lpm_mux_component|auto_generated|result_node[0]~6_combout\ & ((\inst16~0_combout\ & (\inst44|LPM_MUX_component|auto_generated|result_node[1]~2_combout\)) # (!\inst16~0_combout\ 
-- & ((\inst38|inst|altsyncram_component|auto_generated|q_a\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16~0_combout\,
	datab => \inst46|lpm_mux_component|auto_generated|result_node[0]~6_combout\,
	datac => \inst44|LPM_MUX_component|auto_generated|result_node[1]~2_combout\,
	datad => \inst38|inst|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst46|lpm_mux_component|auto_generated|result_node[1]~10_combout\);

-- Location: LCCOMB_X37_Y28_N12
\inst46|lpm_mux_component|auto_generated|result_node[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst46|lpm_mux_component|auto_generated|result_node[1]~12_combout\ = (\inst46|lpm_mux_component|auto_generated|result_node[1]~11_combout\) # (\inst46|lpm_mux_component|auto_generated|result_node[1]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|lpm_mux_component|auto_generated|result_node[1]~11_combout\,
	datad => \inst46|lpm_mux_component|auto_generated|result_node[1]~10_combout\,
	combout => \inst46|lpm_mux_component|auto_generated|result_node[1]~12_combout\);

-- Location: LCCOMB_X37_Y28_N8
\inst13|lpm_mux_component|auto_generated|result_node[1]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|lpm_mux_component|auto_generated|result_node[1]~31_combout\ = (\inst13|lpm_mux_component|auto_generated|result_node[1]~30_combout\) # ((\inst13|lpm_mux_component|auto_generated|result_node[14]~26_combout\ & (!\inst71|forwardA[0]~3_combout\ & 
-- \inst46|lpm_mux_component|auto_generated|result_node[1]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|lpm_mux_component|auto_generated|result_node[1]~30_combout\,
	datab => \inst13|lpm_mux_component|auto_generated|result_node[14]~26_combout\,
	datac => \inst71|forwardA[0]~3_combout\,
	datad => \inst46|lpm_mux_component|auto_generated|result_node[1]~12_combout\,
	combout => \inst13|lpm_mux_component|auto_generated|result_node[1]~31_combout\);

-- Location: LCCOMB_X37_Y29_N16
\inst12|inst20|inst2|inst1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst20|inst2|inst1~combout\ = \inst13|lpm_mux_component|auto_generated|result_node[1]~31_combout\ $ (\inst15|lpm_mux_component|auto_generated|result_node[1]~2_combout\ $ (((\inst15|lpm_mux_component|auto_generated|result_node[0]~1_combout\ & 
-- \inst13|lpm_mux_component|auto_generated|result_node[0]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|lpm_mux_component|auto_generated|result_node[0]~1_combout\,
	datab => \inst13|lpm_mux_component|auto_generated|result_node[1]~31_combout\,
	datac => \inst15|lpm_mux_component|auto_generated|result_node[1]~2_combout\,
	datad => \inst13|lpm_mux_component|auto_generated|result_node[0]~29_combout\,
	combout => \inst12|inst20|inst2|inst1~combout\);

-- Location: LCCOMB_X38_Y29_N8
\inst12|inst|LPM_MUX_component|auto_generated|result_node[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|LPM_MUX_component|auto_generated|result_node[1]~14_combout\ = (\inst21|lpm_ff_component|dffs\(1) & (((\inst12|inst20|inst2|inst1~combout\)))) # (!\inst21|lpm_ff_component|dffs\(1) & 
-- (\inst13|lpm_mux_component|auto_generated|result_node[1]~31_combout\ & ((\inst15|lpm_mux_component|auto_generated|result_node[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|lpm_mux_component|auto_generated|result_node[1]~31_combout\,
	datab => \inst12|inst20|inst2|inst1~combout\,
	datac => \inst21|lpm_ff_component|dffs\(1),
	datad => \inst15|lpm_mux_component|auto_generated|result_node[1]~2_combout\,
	combout => \inst12|inst|LPM_MUX_component|auto_generated|result_node[1]~14_combout\);

-- Location: LCFF_X38_Y29_N9
\inst33|lpm_ff_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst12|inst|LPM_MUX_component|auto_generated|result_node[1]~14_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst33|lpm_ff_component|dffs\(1));

-- Location: LCCOMB_X34_Y30_N10
\inst14|lpm_mux_component|auto_generated|result_node[9]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|lpm_mux_component|auto_generated|result_node[9]~42_combout\ = (\inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\ & ((\inst71|forwardB[0]~4_combout\ & (\inst45|lpm_ff_component|dffs\(9))) # (!\inst71|forwardB[0]~4_combout\ & 
-- ((\inst46|lpm_mux_component|auto_generated|result_node[9]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|lpm_ff_component|dffs\(9),
	datab => \inst71|forwardB[0]~4_combout\,
	datac => \inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\,
	datad => \inst46|lpm_mux_component|auto_generated|result_node[9]~26_combout\,
	combout => \inst14|lpm_mux_component|auto_generated|result_node[9]~42_combout\);

-- Location: LCCOMB_X35_Y29_N4
\inst14|lpm_mux_component|auto_generated|result_node[9]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|lpm_mux_component|auto_generated|result_node[9]~55_combout\ = (\inst14|lpm_mux_component|auto_generated|result_node[9]~42_combout\) # ((!\inst71|forwardB[0]~3_combout\ & (!\inst71|forwardB[1]~1_combout\ & \inst10|lpm_ff_component|dffs\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst71|forwardB[0]~3_combout\,
	datab => \inst71|forwardB[1]~1_combout\,
	datac => \inst10|lpm_ff_component|dffs\(9),
	datad => \inst14|lpm_mux_component|auto_generated|result_node[9]~42_combout\,
	combout => \inst14|lpm_mux_component|auto_generated|result_node[9]~55_combout\);

-- Location: LCFF_X35_Y29_N5
\inst34|lpm_ff_component|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst14|lpm_mux_component|auto_generated|result_node[9]~55_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|lpm_ff_component|dffs\(9));

-- Location: LCFF_X35_Y29_N27
\inst34|lpm_ff_component|dffs[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst14|lpm_mux_component|auto_generated|result_node[10]~54_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|lpm_ff_component|dffs\(10));

-- Location: LCFF_X35_Y29_N9
\inst34|lpm_ff_component|dffs[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst14|lpm_mux_component|auto_generated|result_node[11]~53_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|lpm_ff_component|dffs\(11));

-- Location: M4K_X26_Y29
\inst38|inst|altsyncram_component|auto_generated|ram_block1a8\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "MemoryInitialization.mif",
	init_file_layout => "port_a",
	logical_ram_name => "MemoryInterface:inst38|MainMemory:inst|altsyncram:altsyncram_component|altsyncram_ghe1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_b_address_width => 10,
	port_b_data_width => 4,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \inst56~combout\,
	clk0 => \ALT_INV_clock~clkctrl_outclk\,
	portadatain => \inst38|inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \inst38|inst|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst38|inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: LCCOMB_X25_Y26_N10
\inst44|LPM_MUX_component|auto_generated|result_node[11]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst44|LPM_MUX_component|auto_generated|result_node[11]~9_combout\ = (!\inst16~0_combout\ & \inst38|inst|altsyncram_component|auto_generated|q_a\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16~0_combout\,
	datad => \inst38|inst|altsyncram_component|auto_generated|q_a\(11),
	combout => \inst44|LPM_MUX_component|auto_generated|result_node[11]~9_combout\);

-- Location: LCCOMB_X35_Y28_N2
\inst46|lpm_mux_component|auto_generated|result_node[11]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst46|lpm_mux_component|auto_generated|result_node[11]~21_combout\ = (!\inst51|lpm_ff_component|dffs\(1) & ((\inst51|lpm_ff_component|dffs\(0) & ((\inst44|LPM_MUX_component|auto_generated|result_node[11]~9_combout\))) # 
-- (!\inst51|lpm_ff_component|dffs\(0) & (\inst33|lpm_ff_component|dffs\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|lpm_ff_component|dffs\(1),
	datab => \inst33|lpm_ff_component|dffs\(11),
	datac => \inst44|LPM_MUX_component|auto_generated|result_node[11]~9_combout\,
	datad => \inst51|lpm_ff_component|dffs\(0),
	combout => \inst46|lpm_mux_component|auto_generated|result_node[11]~21_combout\);

-- Location: LCCOMB_X35_Y28_N0
\inst46|lpm_mux_component|auto_generated|result_node[11]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst46|lpm_mux_component|auto_generated|result_node[11]~22_combout\ = (\inst46|lpm_mux_component|auto_generated|result_node[11]~21_combout\) # ((\inst42|lpm_ff_component|dffs\(11) & \inst51|lpm_ff_component|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst42|lpm_ff_component|dffs\(11),
	datac => \inst51|lpm_ff_component|dffs\(1),
	datad => \inst46|lpm_mux_component|auto_generated|result_node[11]~21_combout\,
	combout => \inst46|lpm_mux_component|auto_generated|result_node[11]~22_combout\);

-- Location: LCFF_X35_Y28_N1
\inst45|lpm_ff_component|dffs[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst46|lpm_mux_component|auto_generated|result_node[11]~22_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst45|lpm_ff_component|dffs\(11));

-- Location: LCCOMB_X34_Y30_N22
\inst14|lpm_mux_component|auto_generated|result_node[11]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|lpm_mux_component|auto_generated|result_node[11]~40_combout\ = (\inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\ & ((\inst71|forwardB[0]~4_combout\ & (\inst45|lpm_ff_component|dffs\(11))) # (!\inst71|forwardB[0]~4_combout\ & 
-- ((\inst46|lpm_mux_component|auto_generated|result_node[11]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\,
	datab => \inst45|lpm_ff_component|dffs\(11),
	datac => \inst46|lpm_mux_component|auto_generated|result_node[11]~22_combout\,
	datad => \inst71|forwardB[0]~4_combout\,
	combout => \inst14|lpm_mux_component|auto_generated|result_node[11]~40_combout\);

-- Location: LCFF_X43_Y28_N9
\inst7|Reg3|lpm_ff_component|dffs[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(11),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg3|lpm_ff_component|dffs\(11));

-- Location: LCFF_X43_Y28_N17
\inst7|Reg2|lpm_ff_component|dffs[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(11),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst40~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg2|lpm_ff_component|dffs\(11));

-- Location: LCCOMB_X43_Y28_N16
\inst7|inst53|lpm_mux_component|auto_generated|_~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst53|lpm_mux_component|auto_generated|_~16_combout\ = (\inst72|lpm_ff_component|dffs\(9) & ((\inst72|lpm_ff_component|dffs\(8) & (\inst7|Reg3|lpm_ff_component|dffs\(11))) # (!\inst72|lpm_ff_component|dffs\(8) & 
-- ((\inst7|Reg2|lpm_ff_component|dffs\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(9),
	datab => \inst7|Reg3|lpm_ff_component|dffs\(11),
	datac => \inst7|Reg2|lpm_ff_component|dffs\(11),
	datad => \inst72|lpm_ff_component|dffs\(8),
	combout => \inst7|inst53|lpm_mux_component|auto_generated|_~16_combout\);

-- Location: LCCOMB_X41_Y30_N20
\inst7|Reg1|lpm_ff_component|dffs[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg1|lpm_ff_component|dffs[11]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(11),
	combout => \inst7|Reg1|lpm_ff_component|dffs[11]~feeder_combout\);

-- Location: LCFF_X41_Y30_N21
\inst7|Reg1|lpm_ff_component|dffs[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg1|lpm_ff_component|dffs[11]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst41~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg1|lpm_ff_component|dffs\(11));

-- Location: LCCOMB_X37_Y30_N0
\inst7|inst53|lpm_mux_component|auto_generated|_~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst53|lpm_mux_component|auto_generated|_~17_combout\ = (\inst7|inst53|lpm_mux_component|auto_generated|_~16_combout\) # ((!\inst72|lpm_ff_component|dffs\(9) & (\inst72|lpm_ff_component|dffs\(8) & \inst7|Reg1|lpm_ff_component|dffs\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(9),
	datab => \inst72|lpm_ff_component|dffs\(8),
	datac => \inst7|inst53|lpm_mux_component|auto_generated|_~16_combout\,
	datad => \inst7|Reg1|lpm_ff_component|dffs\(11),
	combout => \inst7|inst53|lpm_mux_component|auto_generated|_~17_combout\);

-- Location: LCFF_X37_Y30_N1
\inst10|lpm_ff_component|dffs[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst7|inst53|lpm_mux_component|auto_generated|_~17_combout\,
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|lpm_ff_component|dffs\(11));

-- Location: LCCOMB_X35_Y29_N8
\inst14|lpm_mux_component|auto_generated|result_node[11]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|lpm_mux_component|auto_generated|result_node[11]~53_combout\ = (\inst14|lpm_mux_component|auto_generated|result_node[11]~40_combout\) # ((!\inst71|forwardB[0]~3_combout\ & (!\inst71|forwardB[1]~1_combout\ & \inst10|lpm_ff_component|dffs\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst71|forwardB[0]~3_combout\,
	datab => \inst71|forwardB[1]~1_combout\,
	datac => \inst14|lpm_mux_component|auto_generated|result_node[11]~40_combout\,
	datad => \inst10|lpm_ff_component|dffs\(11),
	combout => \inst14|lpm_mux_component|auto_generated|result_node[11]~53_combout\);

-- Location: LCCOMB_X34_Y29_N24
\inst12|inst20|inst12|inst4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst20|inst12|inst4~0_combout\ = (\inst13|lpm_mux_component|auto_generated|result_node[11]~54_combout\ & ((\inst12|inst20|inst11|inst4~0_combout\) # ((\inst14|lpm_mux_component|auto_generated|result_node[11]~53_combout\ & 
-- !\inst25|lpm_ff_component|dffs\(0))))) # (!\inst13|lpm_mux_component|auto_generated|result_node[11]~54_combout\ & (\inst14|lpm_mux_component|auto_generated|result_node[11]~53_combout\ & (\inst12|inst20|inst11|inst4~0_combout\ & 
-- !\inst25|lpm_ff_component|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|lpm_mux_component|auto_generated|result_node[11]~54_combout\,
	datab => \inst14|lpm_mux_component|auto_generated|result_node[11]~53_combout\,
	datac => \inst12|inst20|inst11|inst4~0_combout\,
	datad => \inst25|lpm_ff_component|dffs\(0),
	combout => \inst12|inst20|inst12|inst4~0_combout\);

-- Location: LCCOMB_X36_Y30_N26
\inst7|inst52|lpm_mux_component|auto_generated|_~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst52|lpm_mux_component|auto_generated|_~12_combout\ = (\inst7|Reg1|lpm_ff_component|dffs\(12) & \inst72|lpm_ff_component|dffs\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Reg1|lpm_ff_component|dffs\(12),
	datad => \inst72|lpm_ff_component|dffs\(12),
	combout => \inst7|inst52|lpm_mux_component|auto_generated|_~12_combout\);

-- Location: LCFF_X36_Y30_N27
\inst9|lpm_ff_component|dffs[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst7|inst52|lpm_mux_component|auto_generated|_~12_combout\,
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|lpm_ff_component|dffs\(12));

-- Location: LCCOMB_X36_Y30_N14
\inst13|lpm_mux_component|auto_generated|result_node[12]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|lpm_mux_component|auto_generated|result_node[12]~42_combout\ = (\inst13|lpm_mux_component|auto_generated|result_node[14]~26_combout\ & ((\inst71|forwardA[0]~3_combout\ & (\inst45|lpm_ff_component|dffs\(12))) # (!\inst71|forwardA[0]~3_combout\ & 
-- ((\inst46|lpm_mux_component|auto_generated|result_node[12]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|lpm_ff_component|dffs\(12),
	datab => \inst71|forwardA[0]~3_combout\,
	datac => \inst13|lpm_mux_component|auto_generated|result_node[14]~26_combout\,
	datad => \inst46|lpm_mux_component|auto_generated|result_node[12]~20_combout\,
	combout => \inst13|lpm_mux_component|auto_generated|result_node[12]~42_combout\);

-- Location: LCCOMB_X33_Y29_N2
\inst13|lpm_mux_component|auto_generated|result_node[12]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|lpm_mux_component|auto_generated|result_node[12]~55_combout\ = (\inst13|lpm_mux_component|auto_generated|result_node[12]~42_combout\) # ((!\inst71|forwardA\(1) & (!\inst71|forwardA[0]~2_combout\ & \inst9|lpm_ff_component|dffs\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst71|forwardA\(1),
	datab => \inst71|forwardA[0]~2_combout\,
	datac => \inst9|lpm_ff_component|dffs\(12),
	datad => \inst13|lpm_mux_component|auto_generated|result_node[12]~42_combout\,
	combout => \inst13|lpm_mux_component|auto_generated|result_node[12]~55_combout\);

-- Location: LCCOMB_X34_Y29_N2
\inst12|inst20|inst13|inst4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst20|inst13|inst4~0_combout\ = (\inst12|inst20|inst12|inst4~0_combout\ & ((\inst13|lpm_mux_component|auto_generated|result_node[12]~55_combout\) # ((!\inst25|lpm_ff_component|dffs\(0) & 
-- \inst14|lpm_mux_component|auto_generated|result_node[12]~52_combout\)))) # (!\inst12|inst20|inst12|inst4~0_combout\ & (!\inst25|lpm_ff_component|dffs\(0) & (\inst14|lpm_mux_component|auto_generated|result_node[12]~52_combout\ & 
-- \inst13|lpm_mux_component|auto_generated|result_node[12]~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|lpm_ff_component|dffs\(0),
	datab => \inst14|lpm_mux_component|auto_generated|result_node[12]~52_combout\,
	datac => \inst12|inst20|inst12|inst4~0_combout\,
	datad => \inst13|lpm_mux_component|auto_generated|result_node[12]~55_combout\,
	combout => \inst12|inst20|inst13|inst4~0_combout\);

-- Location: LCCOMB_X33_Y29_N18
\inst12|inst|LPM_MUX_component|auto_generated|result_node[13]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|LPM_MUX_component|auto_generated|result_node[13]~2_combout\ = (\inst21|lpm_ff_component|dffs\(1) & (\inst15|lpm_mux_component|auto_generated|result_node[13]~12_combout\ $ (\inst13|lpm_mux_component|auto_generated|result_node[13]~56_combout\ $ 
-- (\inst12|inst20|inst13|inst4~0_combout\)))) # (!\inst21|lpm_ff_component|dffs\(1) & (\inst15|lpm_mux_component|auto_generated|result_node[13]~12_combout\ & (\inst13|lpm_mux_component|auto_generated|result_node[13]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|lpm_ff_component|dffs\(1),
	datab => \inst15|lpm_mux_component|auto_generated|result_node[13]~12_combout\,
	datac => \inst13|lpm_mux_component|auto_generated|result_node[13]~56_combout\,
	datad => \inst12|inst20|inst13|inst4~0_combout\,
	combout => \inst12|inst|LPM_MUX_component|auto_generated|result_node[13]~2_combout\);

-- Location: LCFF_X33_Y29_N19
\inst33|lpm_ff_component|dffs[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \inst12|inst|LPM_MUX_component|auto_generated|result_node[13]~2_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst33|lpm_ff_component|dffs\(13));

-- Location: LCFF_X35_Y30_N7
\inst34|lpm_ff_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst14|lpm_mux_component|auto_generated|result_node[3]~36_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|lpm_ff_component|dffs\(3));

-- Location: LCFF_X35_Y29_N7
\inst34|lpm_ff_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst14|lpm_mux_component|auto_generated|result_node[4]~50_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|lpm_ff_component|dffs\(4));

-- Location: LCFF_X35_Y29_N31
\inst34|lpm_ff_component|dffs[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst14|lpm_mux_component|auto_generated|result_node[12]~52_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|lpm_ff_component|dffs\(12));

-- Location: LCFF_X35_Y29_N21
\inst34|lpm_ff_component|dffs[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst14|lpm_mux_component|auto_generated|result_node[13]~51_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|lpm_ff_component|dffs\(13));

-- Location: M4K_X26_Y30
\inst38|inst|altsyncram_component|auto_generated|ram_block1a3\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000022222200000000002000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003322222222110000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "MemoryInitialization.mif",
	init_file_layout => "port_a",
	logical_ram_name => "MemoryInterface:inst38|MainMemory:inst|altsyncram:altsyncram_component|altsyncram_ghe1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_b_address_width => 10,
	port_b_data_width => 4,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \inst56~combout\,
	clk0 => \ALT_INV_clock~clkctrl_outclk\,
	portadatain => \inst38|inst|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \inst38|inst|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst38|inst|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: LCCOMB_X25_Y26_N0
\inst44|LPM_MUX_component|auto_generated|result_node[13]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst44|LPM_MUX_component|auto_generated|result_node[13]~8_combout\ = (!\inst16~0_combout\ & \inst38|inst|altsyncram_component|auto_generated|q_a\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16~0_combout\,
	datad => \inst38|inst|altsyncram_component|auto_generated|q_a\(13),
	combout => \inst44|LPM_MUX_component|auto_generated|result_node[13]~8_combout\);

-- Location: LCCOMB_X35_Y30_N4
\inst46|lpm_mux_component|auto_generated|result_node[13]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst46|lpm_mux_component|auto_generated|result_node[13]~17_combout\ = (!\inst51|lpm_ff_component|dffs\(1) & ((\inst51|lpm_ff_component|dffs\(0) & ((\inst44|LPM_MUX_component|auto_generated|result_node[13]~8_combout\))) # 
-- (!\inst51|lpm_ff_component|dffs\(0) & (\inst33|lpm_ff_component|dffs\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|lpm_ff_component|dffs\(1),
	datab => \inst33|lpm_ff_component|dffs\(13),
	datac => \inst44|LPM_MUX_component|auto_generated|result_node[13]~8_combout\,
	datad => \inst51|lpm_ff_component|dffs\(0),
	combout => \inst46|lpm_mux_component|auto_generated|result_node[13]~17_combout\);

-- Location: LCFF_X33_Y29_N5
\inst35|lpm_ff_component|dffs[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst13|lpm_mux_component|auto_generated|result_node[13]~56_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst35|lpm_ff_component|dffs\(13));

-- Location: LCFF_X35_Y32_N25
\PC_reg|lpm_ff_component|dffs[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC_adder|lpm_add_sub_component|auto_generated|op_1~24_combout\,
	sdata => \inst35|lpm_ff_component|dffs\(13),
	sload => \inst8|jump~combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_reg|lpm_ff_component|dffs\(13));

-- Location: LCCOMB_X36_Y32_N28
\PC_reg1|lpm_ff_component|dffs[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_reg1|lpm_ff_component|dffs[13]~feeder_combout\ = \PC_reg|lpm_ff_component|dffs\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC_reg|lpm_ff_component|dffs\(13),
	combout => \PC_reg1|lpm_ff_component|dffs[13]~feeder_combout\);

-- Location: LCFF_X36_Y32_N29
\PC_reg1|lpm_ff_component|dffs[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC_reg1|lpm_ff_component|dffs[13]~feeder_combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_reg1|lpm_ff_component|dffs\(13));

-- Location: LCCOMB_X36_Y32_N4
\inst82|LPM_MUX_component|auto_generated|result_node[13]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst82|LPM_MUX_component|auto_generated|result_node[13]~2_combout\ = (\inst67|deassert~2_combout\ & (\PC_reg|lpm_ff_component|dffs\(13))) # (!\inst67|deassert~2_combout\ & ((\PC_reg1|lpm_ff_component|dffs\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst67|deassert~2_combout\,
	datab => \PC_reg|lpm_ff_component|dffs\(13),
	datad => \PC_reg1|lpm_ff_component|dffs\(13),
	combout => \inst82|LPM_MUX_component|auto_generated|result_node[13]~2_combout\);

-- Location: LCFF_X36_Y32_N5
\inst29|lpm_ff_component|dffs[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst82|LPM_MUX_component|auto_generated|result_node[13]~2_combout\,
	sclr => \inst50~combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|lpm_ff_component|dffs\(13));

-- Location: LCFF_X33_Y31_N11
\inst20|lpm_ff_component|dffs[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst29|lpm_ff_component|dffs\(13),
	sclr => \inst68~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst20|lpm_ff_component|dffs\(13));

-- Location: LCCOMB_X35_Y30_N28
\inst42|lpm_ff_component|dffs[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst42|lpm_ff_component|dffs[13]~feeder_combout\ = \inst20|lpm_ff_component|dffs\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst20|lpm_ff_component|dffs\(13),
	combout => \inst42|lpm_ff_component|dffs[13]~feeder_combout\);

-- Location: LCFF_X35_Y30_N29
\inst42|lpm_ff_component|dffs[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst42|lpm_ff_component|dffs[13]~feeder_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst42|lpm_ff_component|dffs\(13));

-- Location: LCCOMB_X35_Y30_N18
\inst46|lpm_mux_component|auto_generated|result_node[13]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst46|lpm_mux_component|auto_generated|result_node[13]~18_combout\ = (\inst46|lpm_mux_component|auto_generated|result_node[13]~17_combout\) # ((\inst51|lpm_ff_component|dffs\(1) & \inst42|lpm_ff_component|dffs\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|lpm_ff_component|dffs\(1),
	datac => \inst46|lpm_mux_component|auto_generated|result_node[13]~17_combout\,
	datad => \inst42|lpm_ff_component|dffs\(13),
	combout => \inst46|lpm_mux_component|auto_generated|result_node[13]~18_combout\);

-- Location: LCFF_X35_Y30_N19
\inst45|lpm_ff_component|dffs[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst46|lpm_mux_component|auto_generated|result_node[13]~18_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst45|lpm_ff_component|dffs\(13));

-- Location: LCCOMB_X38_Y28_N18
\inst7|Reg1|lpm_ff_component|dffs[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg1|lpm_ff_component|dffs[13]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst45|lpm_ff_component|dffs\(13),
	combout => \inst7|Reg1|lpm_ff_component|dffs[13]~feeder_combout\);

-- Location: LCFF_X38_Y28_N19
\inst7|Reg1|lpm_ff_component|dffs[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg1|lpm_ff_component|dffs[13]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst41~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg1|lpm_ff_component|dffs\(13));

-- Location: LCFF_X43_Y28_N21
\inst7|Reg2|lpm_ff_component|dffs[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(13),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst40~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg2|lpm_ff_component|dffs\(13));

-- Location: LCFF_X43_Y28_N29
\inst7|Reg3|lpm_ff_component|dffs[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(13),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg3|lpm_ff_component|dffs\(13));

-- Location: LCCOMB_X43_Y28_N20
\inst7|inst53|lpm_mux_component|auto_generated|_~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst53|lpm_mux_component|auto_generated|_~12_combout\ = (\inst72|lpm_ff_component|dffs\(9) & ((\inst72|lpm_ff_component|dffs\(8) & ((\inst7|Reg3|lpm_ff_component|dffs\(13)))) # (!\inst72|lpm_ff_component|dffs\(8) & 
-- (\inst7|Reg2|lpm_ff_component|dffs\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(9),
	datab => \inst72|lpm_ff_component|dffs\(8),
	datac => \inst7|Reg2|lpm_ff_component|dffs\(13),
	datad => \inst7|Reg3|lpm_ff_component|dffs\(13),
	combout => \inst7|inst53|lpm_mux_component|auto_generated|_~12_combout\);

-- Location: LCCOMB_X38_Y28_N20
\inst7|inst53|lpm_mux_component|auto_generated|_~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst53|lpm_mux_component|auto_generated|_~13_combout\ = (\inst7|inst53|lpm_mux_component|auto_generated|_~12_combout\) # ((!\inst72|lpm_ff_component|dffs\(9) & (\inst7|Reg1|lpm_ff_component|dffs\(13) & \inst72|lpm_ff_component|dffs\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(9),
	datab => \inst7|Reg1|lpm_ff_component|dffs\(13),
	datac => \inst7|inst53|lpm_mux_component|auto_generated|_~12_combout\,
	datad => \inst72|lpm_ff_component|dffs\(8),
	combout => \inst7|inst53|lpm_mux_component|auto_generated|_~13_combout\);

-- Location: LCFF_X38_Y28_N21
\inst10|lpm_ff_component|dffs[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst7|inst53|lpm_mux_component|auto_generated|_~13_combout\,
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|lpm_ff_component|dffs\(13));

-- Location: LCCOMB_X35_Y29_N20
\inst14|lpm_mux_component|auto_generated|result_node[13]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|lpm_mux_component|auto_generated|result_node[13]~51_combout\ = (\inst14|lpm_mux_component|auto_generated|result_node[13]~38_combout\) # ((!\inst71|forwardB[0]~3_combout\ & (\inst10|lpm_ff_component|dffs\(13) & !\inst71|forwardB[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst71|forwardB[0]~3_combout\,
	datab => \inst10|lpm_ff_component|dffs\(13),
	datac => \inst71|forwardB[1]~1_combout\,
	datad => \inst14|lpm_mux_component|auto_generated|result_node[13]~38_combout\,
	combout => \inst14|lpm_mux_component|auto_generated|result_node[13]~51_combout\);

-- Location: LCCOMB_X34_Y29_N28
\inst12|inst20|inst14|inst4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst20|inst14|inst4~0_combout\ = (\inst13|lpm_mux_component|auto_generated|result_node[13]~56_combout\ & ((\inst12|inst20|inst13|inst4~0_combout\) # ((!\inst25|lpm_ff_component|dffs\(0) & 
-- \inst14|lpm_mux_component|auto_generated|result_node[13]~51_combout\)))) # (!\inst13|lpm_mux_component|auto_generated|result_node[13]~56_combout\ & (!\inst25|lpm_ff_component|dffs\(0) & (\inst14|lpm_mux_component|auto_generated|result_node[13]~51_combout\ 
-- & \inst12|inst20|inst13|inst4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|lpm_ff_component|dffs\(0),
	datab => \inst14|lpm_mux_component|auto_generated|result_node[13]~51_combout\,
	datac => \inst13|lpm_mux_component|auto_generated|result_node[13]~56_combout\,
	datad => \inst12|inst20|inst13|inst4~0_combout\,
	combout => \inst12|inst20|inst14|inst4~0_combout\);

-- Location: LCCOMB_X34_Y29_N26
\inst12|inst|LPM_MUX_component|auto_generated|result_node[14]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|LPM_MUX_component|auto_generated|result_node[14]~1_combout\ = (\inst21|lpm_ff_component|dffs\(1) & (\inst13|lpm_mux_component|auto_generated|result_node[14]~58_combout\ $ (\inst15|lpm_mux_component|auto_generated|result_node[14]~11_combout\ $ 
-- (\inst12|inst20|inst14|inst4~0_combout\)))) # (!\inst21|lpm_ff_component|dffs\(1) & (\inst13|lpm_mux_component|auto_generated|result_node[14]~58_combout\ & (\inst15|lpm_mux_component|auto_generated|result_node[14]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|lpm_ff_component|dffs\(1),
	datab => \inst13|lpm_mux_component|auto_generated|result_node[14]~58_combout\,
	datac => \inst15|lpm_mux_component|auto_generated|result_node[14]~11_combout\,
	datad => \inst12|inst20|inst14|inst4~0_combout\,
	combout => \inst12|inst|LPM_MUX_component|auto_generated|result_node[14]~1_combout\);

-- Location: LCFF_X34_Y29_N27
\inst33|lpm_ff_component|dffs[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst12|inst|LPM_MUX_component|auto_generated|result_node[14]~1_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst33|lpm_ff_component|dffs\(14));

-- Location: LCCOMB_X34_Y30_N30
\inst14|lpm_mux_component|auto_generated|result_node[7]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|lpm_mux_component|auto_generated|result_node[7]~44_combout\ = (\inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\ & ((\inst71|forwardB[0]~4_combout\ & (\inst45|lpm_ff_component|dffs\(7))) # (!\inst71|forwardB[0]~4_combout\ & 
-- ((\inst46|lpm_mux_component|auto_generated|result_node[7]~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|lpm_ff_component|dffs\(7),
	datab => \inst71|forwardB[0]~4_combout\,
	datac => \inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\,
	datad => \inst46|lpm_mux_component|auto_generated|result_node[7]~30_combout\,
	combout => \inst14|lpm_mux_component|auto_generated|result_node[7]~44_combout\);

-- Location: LCFF_X41_Y28_N19
\inst7|Reg2|lpm_ff_component|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(7),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst40~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg2|lpm_ff_component|dffs\(7));

-- Location: LCCOMB_X41_Y28_N18
\inst7|inst53|lpm_mux_component|auto_generated|_~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst53|lpm_mux_component|auto_generated|_~24_combout\ = (\inst72|lpm_ff_component|dffs\(9) & ((\inst72|lpm_ff_component|dffs\(8) & (\inst7|Reg3|lpm_ff_component|dffs\(7))) # (!\inst72|lpm_ff_component|dffs\(8) & 
-- ((\inst7|Reg2|lpm_ff_component|dffs\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Reg3|lpm_ff_component|dffs\(7),
	datab => \inst72|lpm_ff_component|dffs\(9),
	datac => \inst7|Reg2|lpm_ff_component|dffs\(7),
	datad => \inst72|lpm_ff_component|dffs\(8),
	combout => \inst7|inst53|lpm_mux_component|auto_generated|_~24_combout\);

-- Location: LCCOMB_X37_Y30_N16
\inst7|inst53|lpm_mux_component|auto_generated|_~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst53|lpm_mux_component|auto_generated|_~25_combout\ = (\inst7|inst53|lpm_mux_component|auto_generated|_~24_combout\) # ((!\inst72|lpm_ff_component|dffs\(9) & (\inst72|lpm_ff_component|dffs\(8) & \inst7|Reg1|lpm_ff_component|dffs\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(9),
	datab => \inst72|lpm_ff_component|dffs\(8),
	datac => \inst7|inst53|lpm_mux_component|auto_generated|_~24_combout\,
	datad => \inst7|Reg1|lpm_ff_component|dffs\(7),
	combout => \inst7|inst53|lpm_mux_component|auto_generated|_~25_combout\);

-- Location: LCFF_X37_Y30_N17
\inst10|lpm_ff_component|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst7|inst53|lpm_mux_component|auto_generated|_~25_combout\,
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|lpm_ff_component|dffs\(7));

-- Location: LCCOMB_X35_Y29_N0
\inst14|lpm_mux_component|auto_generated|result_node[7]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|lpm_mux_component|auto_generated|result_node[7]~57_combout\ = (\inst14|lpm_mux_component|auto_generated|result_node[7]~44_combout\) # ((!\inst71|forwardB[0]~3_combout\ & (!\inst71|forwardB[1]~1_combout\ & \inst10|lpm_ff_component|dffs\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst71|forwardB[0]~3_combout\,
	datab => \inst71|forwardB[1]~1_combout\,
	datac => \inst14|lpm_mux_component|auto_generated|result_node[7]~44_combout\,
	datad => \inst10|lpm_ff_component|dffs\(7),
	combout => \inst14|lpm_mux_component|auto_generated|result_node[7]~57_combout\);

-- Location: LCFF_X35_Y29_N1
\inst34|lpm_ff_component|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst14|lpm_mux_component|auto_generated|result_node[7]~57_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|lpm_ff_component|dffs\(7));

-- Location: LCFF_X33_Y28_N31
\inst45|lpm_ff_component|dffs[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst46|lpm_mux_component|auto_generated|result_node[14]~36_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst45|lpm_ff_component|dffs\(14));

-- Location: LCFF_X41_Y30_N11
\inst7|Reg1|lpm_ff_component|dffs[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(14),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst41~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg1|lpm_ff_component|dffs\(14));

-- Location: LCFF_X43_Y28_N3
\inst7|Reg2|lpm_ff_component|dffs[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(14),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst40~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg2|lpm_ff_component|dffs\(14));

-- Location: LCFF_X43_Y28_N27
\inst7|Reg3|lpm_ff_component|dffs[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(14),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg3|lpm_ff_component|dffs\(14));

-- Location: LCCOMB_X43_Y28_N2
\inst7|inst53|lpm_mux_component|auto_generated|_~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst53|lpm_mux_component|auto_generated|_~30_combout\ = (\inst72|lpm_ff_component|dffs\(9) & ((\inst72|lpm_ff_component|dffs\(8) & ((\inst7|Reg3|lpm_ff_component|dffs\(14)))) # (!\inst72|lpm_ff_component|dffs\(8) & 
-- (\inst7|Reg2|lpm_ff_component|dffs\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(9),
	datab => \inst72|lpm_ff_component|dffs\(8),
	datac => \inst7|Reg2|lpm_ff_component|dffs\(14),
	datad => \inst7|Reg3|lpm_ff_component|dffs\(14),
	combout => \inst7|inst53|lpm_mux_component|auto_generated|_~30_combout\);

-- Location: LCCOMB_X37_Y30_N30
\inst7|inst53|lpm_mux_component|auto_generated|_~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst53|lpm_mux_component|auto_generated|_~31_combout\ = (\inst7|inst53|lpm_mux_component|auto_generated|_~30_combout\) # ((!\inst72|lpm_ff_component|dffs\(9) & (\inst72|lpm_ff_component|dffs\(8) & \inst7|Reg1|lpm_ff_component|dffs\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(9),
	datab => \inst72|lpm_ff_component|dffs\(8),
	datac => \inst7|Reg1|lpm_ff_component|dffs\(14),
	datad => \inst7|inst53|lpm_mux_component|auto_generated|_~30_combout\,
	combout => \inst7|inst53|lpm_mux_component|auto_generated|_~31_combout\);

-- Location: LCFF_X37_Y30_N31
\inst10|lpm_ff_component|dffs[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst7|inst53|lpm_mux_component|auto_generated|_~31_combout\,
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|lpm_ff_component|dffs\(14));

-- Location: LCCOMB_X35_Y29_N18
\inst14|lpm_mux_component|auto_generated|result_node[14]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|lpm_mux_component|auto_generated|result_node[14]~59_combout\ = (\inst14|lpm_mux_component|auto_generated|result_node[14]~47_combout\) # ((!\inst71|forwardB[0]~3_combout\ & (\inst10|lpm_ff_component|dffs\(14) & !\inst71|forwardB[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst71|forwardB[0]~3_combout\,
	datab => \inst10|lpm_ff_component|dffs\(14),
	datac => \inst71|forwardB[1]~1_combout\,
	datad => \inst14|lpm_mux_component|auto_generated|result_node[14]~47_combout\,
	combout => \inst14|lpm_mux_component|auto_generated|result_node[14]~59_combout\);

-- Location: LCFF_X35_Y29_N19
\inst34|lpm_ff_component|dffs[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst14|lpm_mux_component|auto_generated|result_node[14]~59_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|lpm_ff_component|dffs\(14));

-- Location: LCFF_X43_Y28_N25
\inst7|Reg2|lpm_ff_component|dffs[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(15),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst40~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg2|lpm_ff_component|dffs\(15));

-- Location: LCFF_X43_Y28_N1
\inst7|Reg3|lpm_ff_component|dffs[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(15),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg3|lpm_ff_component|dffs\(15));

-- Location: LCCOMB_X43_Y28_N24
\inst7|inst53|lpm_mux_component|auto_generated|_~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst53|lpm_mux_component|auto_generated|_~28_combout\ = (\inst72|lpm_ff_component|dffs\(9) & ((\inst72|lpm_ff_component|dffs\(8) & ((\inst7|Reg3|lpm_ff_component|dffs\(15)))) # (!\inst72|lpm_ff_component|dffs\(8) & 
-- (\inst7|Reg2|lpm_ff_component|dffs\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(9),
	datab => \inst72|lpm_ff_component|dffs\(8),
	datac => \inst7|Reg2|lpm_ff_component|dffs\(15),
	datad => \inst7|Reg3|lpm_ff_component|dffs\(15),
	combout => \inst7|inst53|lpm_mux_component|auto_generated|_~28_combout\);

-- Location: LCCOMB_X37_Y30_N10
\inst7|inst53|lpm_mux_component|auto_generated|_~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst53|lpm_mux_component|auto_generated|_~29_combout\ = (\inst7|inst53|lpm_mux_component|auto_generated|_~28_combout\) # ((!\inst72|lpm_ff_component|dffs\(9) & (\inst72|lpm_ff_component|dffs\(8) & \inst7|Reg1|lpm_ff_component|dffs\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(9),
	datab => \inst72|lpm_ff_component|dffs\(8),
	datac => \inst7|Reg1|lpm_ff_component|dffs\(15),
	datad => \inst7|inst53|lpm_mux_component|auto_generated|_~28_combout\,
	combout => \inst7|inst53|lpm_mux_component|auto_generated|_~29_combout\);

-- Location: LCFF_X37_Y30_N11
\inst10|lpm_ff_component|dffs[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst7|inst53|lpm_mux_component|auto_generated|_~29_combout\,
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|lpm_ff_component|dffs\(15));

-- Location: LCCOMB_X34_Y30_N18
\inst14|lpm_mux_component|auto_generated|result_node[15]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|lpm_mux_component|auto_generated|result_node[15]~46_combout\ = (\inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\ & ((\inst71|forwardB[0]~4_combout\ & (\inst45|lpm_ff_component|dffs\(15))) # (!\inst71|forwardB[0]~4_combout\ & 
-- ((\inst46|lpm_mux_component|auto_generated|result_node[15]~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|lpm_ff_component|dffs\(15),
	datab => \inst71|forwardB[0]~4_combout\,
	datac => \inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\,
	datad => \inst46|lpm_mux_component|auto_generated|result_node[15]~34_combout\,
	combout => \inst14|lpm_mux_component|auto_generated|result_node[15]~46_combout\);

-- Location: LCCOMB_X35_Y29_N24
\inst14|lpm_mux_component|auto_generated|result_node[15]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|lpm_mux_component|auto_generated|result_node[15]~60_combout\ = (\inst14|lpm_mux_component|auto_generated|result_node[15]~46_combout\) # ((!\inst71|forwardB[0]~3_combout\ & (!\inst71|forwardB[1]~1_combout\ & \inst10|lpm_ff_component|dffs\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst71|forwardB[0]~3_combout\,
	datab => \inst71|forwardB[1]~1_combout\,
	datac => \inst10|lpm_ff_component|dffs\(15),
	datad => \inst14|lpm_mux_component|auto_generated|result_node[15]~46_combout\,
	combout => \inst14|lpm_mux_component|auto_generated|result_node[15]~60_combout\);

-- Location: LCFF_X35_Y29_N25
\inst34|lpm_ff_component|dffs[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst14|lpm_mux_component|auto_generated|result_node[15]~60_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|lpm_ff_component|dffs\(15));

-- Location: M4K_X26_Y27
\inst38|inst|altsyncram_component|auto_generated|ram_block1a6\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "MemoryInitialization.mif",
	init_file_layout => "port_a",
	logical_ram_name => "MemoryInterface:inst38|MainMemory:inst|altsyncram:altsyncram_component|altsyncram_ghe1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_b_address_width => 10,
	port_b_data_width => 4,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \inst56~combout\,
	clk0 => \ALT_INV_clock~clkctrl_outclk\,
	portadatain => \inst38|inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \inst38|inst|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst38|inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y28_N20
\inst44|LPM_MUX_component|auto_generated|result_node[14]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst44|LPM_MUX_component|auto_generated|result_node[14]~15_combout\ = (!\inst16~0_combout\ & \inst38|inst|altsyncram_component|auto_generated|q_a\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16~0_combout\,
	datad => \inst38|inst|altsyncram_component|auto_generated|q_a\(14),
	combout => \inst44|LPM_MUX_component|auto_generated|result_node[14]~15_combout\);

-- Location: LCCOMB_X34_Y28_N14
\inst46|lpm_mux_component|auto_generated|result_node[14]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst46|lpm_mux_component|auto_generated|result_node[14]~35_combout\ = (!\inst51|lpm_ff_component|dffs\(1) & ((\inst51|lpm_ff_component|dffs\(0) & ((\inst44|LPM_MUX_component|auto_generated|result_node[14]~15_combout\))) # 
-- (!\inst51|lpm_ff_component|dffs\(0) & (\inst33|lpm_ff_component|dffs\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|lpm_ff_component|dffs\(1),
	datab => \inst33|lpm_ff_component|dffs\(14),
	datac => \inst44|LPM_MUX_component|auto_generated|result_node[14]~15_combout\,
	datad => \inst51|lpm_ff_component|dffs\(0),
	combout => \inst46|lpm_mux_component|auto_generated|result_node[14]~35_combout\);

-- Location: LCFF_X33_Y28_N17
\inst35|lpm_ff_component|dffs[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst13|lpm_mux_component|auto_generated|result_node[14]~58_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst35|lpm_ff_component|dffs\(14));

-- Location: LCFF_X35_Y32_N27
\PC_reg|lpm_ff_component|dffs[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC_adder|lpm_add_sub_component|auto_generated|op_1~26_combout\,
	sdata => \inst35|lpm_ff_component|dffs\(14),
	sload => \inst8|jump~combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_reg|lpm_ff_component|dffs\(14));

-- Location: LCCOMB_X36_Y32_N10
\PC_reg1|lpm_ff_component|dffs[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_reg1|lpm_ff_component|dffs[14]~feeder_combout\ = \PC_reg|lpm_ff_component|dffs\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC_reg|lpm_ff_component|dffs\(14),
	combout => \PC_reg1|lpm_ff_component|dffs[14]~feeder_combout\);

-- Location: LCFF_X36_Y32_N11
\PC_reg1|lpm_ff_component|dffs[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC_reg1|lpm_ff_component|dffs[14]~feeder_combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_reg1|lpm_ff_component|dffs\(14));

-- Location: LCCOMB_X36_Y32_N2
\inst82|LPM_MUX_component|auto_generated|result_node[14]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst82|LPM_MUX_component|auto_generated|result_node[14]~1_combout\ = (\inst67|deassert~2_combout\ & (\PC_reg|lpm_ff_component|dffs\(14))) # (!\inst67|deassert~2_combout\ & ((\PC_reg1|lpm_ff_component|dffs\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_reg|lpm_ff_component|dffs\(14),
	datac => \inst67|deassert~2_combout\,
	datad => \PC_reg1|lpm_ff_component|dffs\(14),
	combout => \inst82|LPM_MUX_component|auto_generated|result_node[14]~1_combout\);

-- Location: LCFF_X36_Y32_N3
\inst29|lpm_ff_component|dffs[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst82|LPM_MUX_component|auto_generated|result_node[14]~1_combout\,
	sclr => \inst50~combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|lpm_ff_component|dffs\(14));

-- Location: LCFF_X33_Y31_N13
\inst20|lpm_ff_component|dffs[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst29|lpm_ff_component|dffs\(14),
	sclr => \inst68~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst20|lpm_ff_component|dffs\(14));

-- Location: LCFF_X34_Y28_N31
\inst42|lpm_ff_component|dffs[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst20|lpm_ff_component|dffs\(14),
	sclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst42|lpm_ff_component|dffs\(14));

-- Location: LCCOMB_X33_Y28_N30
\inst46|lpm_mux_component|auto_generated|result_node[14]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst46|lpm_mux_component|auto_generated|result_node[14]~36_combout\ = (\inst46|lpm_mux_component|auto_generated|result_node[14]~35_combout\) # ((\inst51|lpm_ff_component|dffs\(1) & \inst42|lpm_ff_component|dffs\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|lpm_ff_component|dffs\(1),
	datac => \inst46|lpm_mux_component|auto_generated|result_node[14]~35_combout\,
	datad => \inst42|lpm_ff_component|dffs\(14),
	combout => \inst46|lpm_mux_component|auto_generated|result_node[14]~36_combout\);

-- Location: LCCOMB_X33_Y28_N2
\inst13|lpm_mux_component|auto_generated|result_node[14]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|lpm_mux_component|auto_generated|result_node[14]~45_combout\ = (\inst13|lpm_mux_component|auto_generated|result_node[14]~26_combout\ & ((\inst71|forwardA[0]~3_combout\ & (\inst45|lpm_ff_component|dffs\(14))) # (!\inst71|forwardA[0]~3_combout\ & 
-- ((\inst46|lpm_mux_component|auto_generated|result_node[14]~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|lpm_ff_component|dffs\(14),
	datab => \inst46|lpm_mux_component|auto_generated|result_node[14]~36_combout\,
	datac => \inst13|lpm_mux_component|auto_generated|result_node[14]~26_combout\,
	datad => \inst71|forwardA[0]~3_combout\,
	combout => \inst13|lpm_mux_component|auto_generated|result_node[14]~45_combout\);

-- Location: LCCOMB_X33_Y28_N16
\inst13|lpm_mux_component|auto_generated|result_node[14]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|lpm_mux_component|auto_generated|result_node[14]~58_combout\ = (\inst13|lpm_mux_component|auto_generated|result_node[14]~45_combout\) # ((\inst9|lpm_ff_component|dffs\(14) & (!\inst71|forwardA\(1) & !\inst71|forwardA[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|lpm_ff_component|dffs\(14),
	datab => \inst71|forwardA\(1),
	datac => \inst71|forwardA[0]~2_combout\,
	datad => \inst13|lpm_mux_component|auto_generated|result_node[14]~45_combout\,
	combout => \inst13|lpm_mux_component|auto_generated|result_node[14]~58_combout\);

-- Location: LCCOMB_X34_Y29_N30
\inst12|inst20|inst15|inst4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst20|inst15|inst4~0_combout\ = (\inst13|lpm_mux_component|auto_generated|result_node[14]~58_combout\ & ((\inst12|inst20|inst14|inst4~0_combout\) # ((!\inst25|lpm_ff_component|dffs\(0) & 
-- \inst14|lpm_mux_component|auto_generated|result_node[14]~59_combout\)))) # (!\inst13|lpm_mux_component|auto_generated|result_node[14]~58_combout\ & (!\inst25|lpm_ff_component|dffs\(0) & (\inst14|lpm_mux_component|auto_generated|result_node[14]~59_combout\ 
-- & \inst12|inst20|inst14|inst4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|lpm_ff_component|dffs\(0),
	datab => \inst13|lpm_mux_component|auto_generated|result_node[14]~58_combout\,
	datac => \inst14|lpm_mux_component|auto_generated|result_node[14]~59_combout\,
	datad => \inst12|inst20|inst14|inst4~0_combout\,
	combout => \inst12|inst20|inst15|inst4~0_combout\);

-- Location: LCCOMB_X34_Y29_N16
\inst12|inst|LPM_MUX_component|auto_generated|result_node[15]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|LPM_MUX_component|auto_generated|result_node[15]~0_combout\ = (\inst21|lpm_ff_component|dffs\(1) & (\inst15|lpm_mux_component|auto_generated|result_node[15]~7_combout\ $ (\inst13|lpm_mux_component|auto_generated|result_node[15]~57_combout\ $ 
-- (\inst12|inst20|inst15|inst4~0_combout\)))) # (!\inst21|lpm_ff_component|dffs\(1) & (\inst15|lpm_mux_component|auto_generated|result_node[15]~7_combout\ & (\inst13|lpm_mux_component|auto_generated|result_node[15]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|lpm_mux_component|auto_generated|result_node[15]~7_combout\,
	datab => \inst13|lpm_mux_component|auto_generated|result_node[15]~57_combout\,
	datac => \inst21|lpm_ff_component|dffs\(1),
	datad => \inst12|inst20|inst15|inst4~0_combout\,
	combout => \inst12|inst|LPM_MUX_component|auto_generated|result_node[15]~0_combout\);

-- Location: LCFF_X34_Y29_N17
\inst33|lpm_ff_component|dffs[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst12|inst|LPM_MUX_component|auto_generated|result_node[15]~0_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst33|lpm_ff_component|dffs\(15));

-- Location: LCCOMB_X30_Y28_N18
\inst44|LPM_MUX_component|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst44|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ = (\inst33|lpm_ff_component|dffs\(15) & ((\inst37|SWITCHES|lpm_ff_component|dffs\(0)))) # (!\inst33|lpm_ff_component|dffs\(15) & (\inst37|PUSH_BUTTON|lpm_ff_component|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst37|PUSH_BUTTON|lpm_ff_component|dffs\(0),
	datac => \inst37|SWITCHES|lpm_ff_component|dffs\(0),
	datad => \inst33|lpm_ff_component|dffs\(15),
	combout => \inst44|LPM_MUX_component|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X37_Y28_N28
\inst46|lpm_mux_component|auto_generated|result_node[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst46|lpm_mux_component|auto_generated|result_node[0]~7_combout\ = (\inst46|lpm_mux_component|auto_generated|result_node[0]~6_combout\ & ((\inst16~0_combout\ & (\inst44|LPM_MUX_component|auto_generated|result_node[0]~1_combout\)) # (!\inst16~0_combout\ 
-- & ((\inst38|inst|altsyncram_component|auto_generated|q_a\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|lpm_mux_component|auto_generated|result_node[0]~6_combout\,
	datab => \inst44|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	datac => \inst16~0_combout\,
	datad => \inst38|inst|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst46|lpm_mux_component|auto_generated|result_node[0]~7_combout\);

-- Location: LCCOMB_X37_Y28_N18
\inst46|lpm_mux_component|auto_generated|result_node[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst46|lpm_mux_component|auto_generated|result_node[0]~9_combout\ = (\inst46|lpm_mux_component|auto_generated|result_node[0]~8_combout\) # (\inst46|lpm_mux_component|auto_generated|result_node[0]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst46|lpm_mux_component|auto_generated|result_node[0]~8_combout\,
	datad => \inst46|lpm_mux_component|auto_generated|result_node[0]~7_combout\,
	combout => \inst46|lpm_mux_component|auto_generated|result_node[0]~9_combout\);

-- Location: LCFF_X37_Y28_N19
\inst45|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst46|lpm_mux_component|auto_generated|result_node[0]~9_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst45|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X36_Y28_N28
\inst14|lpm_mux_component|auto_generated|result_node[0]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|lpm_mux_component|auto_generated|result_node[0]~31_combout\ = (!\inst71|forwardB[1]~1_combout\ & ((\inst71|forwardB[0]~3_combout\ & ((\inst45|lpm_ff_component|dffs\(0)))) # (!\inst71|forwardB[0]~3_combout\ & (\inst10|lpm_ff_component|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|lpm_ff_component|dffs\(0),
	datab => \inst71|forwardB[1]~1_combout\,
	datac => \inst45|lpm_ff_component|dffs\(0),
	datad => \inst71|forwardB[0]~3_combout\,
	combout => \inst14|lpm_mux_component|auto_generated|result_node[0]~31_combout\);

-- Location: LCCOMB_X36_Y28_N10
\inst14|lpm_mux_component|auto_generated|result_node[0]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|lpm_mux_component|auto_generated|result_node[0]~30_combout\ = (\inst71|forwardB[1]~1_combout\ & ((\inst46|lpm_mux_component|auto_generated|result_node[0]~8_combout\) # (\inst46|lpm_mux_component|auto_generated|result_node[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst71|forwardB[1]~1_combout\,
	datac => \inst46|lpm_mux_component|auto_generated|result_node[0]~8_combout\,
	datad => \inst46|lpm_mux_component|auto_generated|result_node[0]~7_combout\,
	combout => \inst14|lpm_mux_component|auto_generated|result_node[0]~30_combout\);

-- Location: LCCOMB_X37_Y29_N6
\inst15|lpm_mux_component|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|lpm_mux_component|auto_generated|result_node[0]~1_combout\ = (\inst25|lpm_ff_component|dffs\(0) & (((\inst17|lpm_ff_component|dffs\(0))))) # (!\inst25|lpm_ff_component|dffs\(0) & 
-- ((\inst14|lpm_mux_component|auto_generated|result_node[0]~31_combout\) # ((\inst14|lpm_mux_component|auto_generated|result_node[0]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|lpm_ff_component|dffs\(0),
	datab => \inst14|lpm_mux_component|auto_generated|result_node[0]~31_combout\,
	datac => \inst17|lpm_ff_component|dffs\(0),
	datad => \inst14|lpm_mux_component|auto_generated|result_node[0]~30_combout\,
	combout => \inst15|lpm_mux_component|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X33_Y28_N18
\inst12|inst|LPM_MUX_component|auto_generated|result_node[0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|LPM_MUX_component|auto_generated|result_node[0]~15_combout\ = (\inst13|lpm_mux_component|auto_generated|result_node[0]~29_combout\ & (\inst15|lpm_mux_component|auto_generated|result_node[0]~1_combout\ $ (\inst21|lpm_ff_component|dffs\(1)))) # 
-- (!\inst13|lpm_mux_component|auto_generated|result_node[0]~29_combout\ & (\inst15|lpm_mux_component|auto_generated|result_node[0]~1_combout\ & \inst21|lpm_ff_component|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|lpm_mux_component|auto_generated|result_node[0]~29_combout\,
	datac => \inst15|lpm_mux_component|auto_generated|result_node[0]~1_combout\,
	datad => \inst21|lpm_ff_component|dffs\(1),
	combout => \inst12|inst|LPM_MUX_component|auto_generated|result_node[0]~15_combout\);

-- Location: LCFF_X33_Y28_N19
\inst33|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst12|inst|LPM_MUX_component|auto_generated|result_node[0]~15_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst33|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X30_Y28_N4
\inst44|LPM_MUX_component|auto_generated|result_node[6]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst44|LPM_MUX_component|auto_generated|result_node[6]~14_combout\ = (\inst33|lpm_ff_component|dffs\(15) & ((\inst37|SWITCHES|lpm_ff_component|dffs\(6)) # ((!\inst16~0_combout\ & \inst38|inst|altsyncram_component|auto_generated|q_a\(6))))) # 
-- (!\inst33|lpm_ff_component|dffs\(15) & (!\inst16~0_combout\ & ((\inst38|inst|altsyncram_component|auto_generated|q_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|lpm_ff_component|dffs\(15),
	datab => \inst16~0_combout\,
	datac => \inst37|SWITCHES|lpm_ff_component|dffs\(6),
	datad => \inst38|inst|altsyncram_component|auto_generated|q_a\(6),
	combout => \inst44|LPM_MUX_component|auto_generated|result_node[6]~14_combout\);

-- Location: LCCOMB_X30_Y28_N6
\inst46|lpm_mux_component|auto_generated|result_node[6]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst46|lpm_mux_component|auto_generated|result_node[6]~31_combout\ = (!\inst51|lpm_ff_component|dffs\(1) & ((\inst51|lpm_ff_component|dffs\(0) & (\inst44|LPM_MUX_component|auto_generated|result_node[6]~14_combout\)) # (!\inst51|lpm_ff_component|dffs\(0) 
-- & ((\inst33|lpm_ff_component|dffs\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|lpm_ff_component|dffs\(0),
	datab => \inst51|lpm_ff_component|dffs\(1),
	datac => \inst44|LPM_MUX_component|auto_generated|result_node[6]~14_combout\,
	datad => \inst33|lpm_ff_component|dffs\(6),
	combout => \inst46|lpm_mux_component|auto_generated|result_node[6]~31_combout\);

-- Location: LCCOMB_X33_Y28_N12
\inst46|lpm_mux_component|auto_generated|result_node[6]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst46|lpm_mux_component|auto_generated|result_node[6]~32_combout\ = (\inst46|lpm_mux_component|auto_generated|result_node[6]~31_combout\) # ((\inst42|lpm_ff_component|dffs\(6) & \inst51|lpm_ff_component|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst42|lpm_ff_component|dffs\(6),
	datac => \inst51|lpm_ff_component|dffs\(1),
	datad => \inst46|lpm_mux_component|auto_generated|result_node[6]~31_combout\,
	combout => \inst46|lpm_mux_component|auto_generated|result_node[6]~32_combout\);

-- Location: LCFF_X33_Y28_N13
\inst45|lpm_ff_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst46|lpm_mux_component|auto_generated|result_node[6]~32_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst45|lpm_ff_component|dffs\(6));

-- Location: LCFF_X41_Y28_N29
\inst7|Reg2|lpm_ff_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(6),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst40~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg2|lpm_ff_component|dffs\(6));

-- Location: LCCOMB_X41_Y28_N28
\inst7|inst53|lpm_mux_component|auto_generated|_~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst53|lpm_mux_component|auto_generated|_~26_combout\ = (\inst72|lpm_ff_component|dffs\(9) & ((\inst72|lpm_ff_component|dffs\(8) & (\inst7|Reg3|lpm_ff_component|dffs\(6))) # (!\inst72|lpm_ff_component|dffs\(8) & 
-- ((\inst7|Reg2|lpm_ff_component|dffs\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Reg3|lpm_ff_component|dffs\(6),
	datab => \inst72|lpm_ff_component|dffs\(9),
	datac => \inst7|Reg2|lpm_ff_component|dffs\(6),
	datad => \inst72|lpm_ff_component|dffs\(8),
	combout => \inst7|inst53|lpm_mux_component|auto_generated|_~26_combout\);

-- Location: LCCOMB_X41_Y30_N30
\inst7|Reg1|lpm_ff_component|dffs[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg1|lpm_ff_component|dffs[6]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(6),
	combout => \inst7|Reg1|lpm_ff_component|dffs[6]~feeder_combout\);

-- Location: LCFF_X41_Y30_N31
\inst7|Reg1|lpm_ff_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg1|lpm_ff_component|dffs[6]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst41~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg1|lpm_ff_component|dffs\(6));

-- Location: LCCOMB_X37_Y30_N18
\inst7|inst53|lpm_mux_component|auto_generated|_~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst53|lpm_mux_component|auto_generated|_~27_combout\ = (\inst7|inst53|lpm_mux_component|auto_generated|_~26_combout\) # ((!\inst72|lpm_ff_component|dffs\(9) & (\inst72|lpm_ff_component|dffs\(8) & \inst7|Reg1|lpm_ff_component|dffs\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(9),
	datab => \inst72|lpm_ff_component|dffs\(8),
	datac => \inst7|inst53|lpm_mux_component|auto_generated|_~26_combout\,
	datad => \inst7|Reg1|lpm_ff_component|dffs\(6),
	combout => \inst7|inst53|lpm_mux_component|auto_generated|_~27_combout\);

-- Location: LCFF_X37_Y30_N19
\inst10|lpm_ff_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst7|inst53|lpm_mux_component|auto_generated|_~27_combout\,
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|lpm_ff_component|dffs\(6));

-- Location: LCCOMB_X35_Y29_N10
\inst14|lpm_mux_component|auto_generated|result_node[6]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|lpm_mux_component|auto_generated|result_node[6]~58_combout\ = (\inst14|lpm_mux_component|auto_generated|result_node[6]~45_combout\) # ((!\inst71|forwardB[0]~3_combout\ & (\inst10|lpm_ff_component|dffs\(6) & !\inst71|forwardB[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst71|forwardB[0]~3_combout\,
	datab => \inst10|lpm_ff_component|dffs\(6),
	datac => \inst71|forwardB[1]~1_combout\,
	datad => \inst14|lpm_mux_component|auto_generated|result_node[6]~45_combout\,
	combout => \inst14|lpm_mux_component|auto_generated|result_node[6]~58_combout\);

-- Location: LCCOMB_X34_Y29_N22
\inst12|inst20|inst7|inst4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst20|inst7|inst4~0_combout\ = (\inst12|inst20|inst5|inst4~0_combout\ & ((\inst13|lpm_mux_component|auto_generated|result_node[6]~49_combout\) # ((!\inst25|lpm_ff_component|dffs\(0) & 
-- \inst14|lpm_mux_component|auto_generated|result_node[6]~58_combout\)))) # (!\inst12|inst20|inst5|inst4~0_combout\ & (!\inst25|lpm_ff_component|dffs\(0) & (\inst14|lpm_mux_component|auto_generated|result_node[6]~58_combout\ & 
-- \inst13|lpm_mux_component|auto_generated|result_node[6]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|lpm_ff_component|dffs\(0),
	datab => \inst14|lpm_mux_component|auto_generated|result_node[6]~58_combout\,
	datac => \inst12|inst20|inst5|inst4~0_combout\,
	datad => \inst13|lpm_mux_component|auto_generated|result_node[6]~49_combout\,
	combout => \inst12|inst20|inst7|inst4~0_combout\);

-- Location: LCCOMB_X34_Y30_N20
\inst15|lpm_mux_component|auto_generated|result_node[7]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|lpm_mux_component|auto_generated|result_node[7]~15_combout\ = (!\inst25|lpm_ff_component|dffs\(0) & ((\inst14|lpm_mux_component|auto_generated|result_node[7]~44_combout\) # ((!\inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\ & 
-- \inst10|lpm_ff_component|dffs\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|lpm_ff_component|dffs\(0),
	datab => \inst14|lpm_mux_component|auto_generated|result_node[7]~44_combout\,
	datac => \inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\,
	datad => \inst10|lpm_ff_component|dffs\(7),
	combout => \inst15|lpm_mux_component|auto_generated|result_node[7]~15_combout\);

-- Location: LCCOMB_X33_Y29_N26
\inst12|inst|LPM_MUX_component|auto_generated|result_node[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|LPM_MUX_component|auto_generated|result_node[7]~8_combout\ = (\inst21|lpm_ff_component|dffs\(1) & (\inst13|lpm_mux_component|auto_generated|result_node[7]~50_combout\ $ (\inst12|inst20|inst7|inst4~0_combout\ $ 
-- (\inst15|lpm_mux_component|auto_generated|result_node[7]~15_combout\)))) # (!\inst21|lpm_ff_component|dffs\(1) & (\inst13|lpm_mux_component|auto_generated|result_node[7]~50_combout\ & 
-- ((\inst15|lpm_mux_component|auto_generated|result_node[7]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|lpm_mux_component|auto_generated|result_node[7]~50_combout\,
	datab => \inst12|inst20|inst7|inst4~0_combout\,
	datac => \inst21|lpm_ff_component|dffs\(1),
	datad => \inst15|lpm_mux_component|auto_generated|result_node[7]~15_combout\,
	combout => \inst12|inst|LPM_MUX_component|auto_generated|result_node[7]~8_combout\);

-- Location: LCFF_X33_Y29_N27
\inst33|lpm_ff_component|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst12|inst|LPM_MUX_component|auto_generated|result_node[7]~8_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst33|lpm_ff_component|dffs\(7));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(7),
	combout => \SW~combout\(7));

-- Location: LCFF_X30_Y28_N1
\inst37|SWITCHES|lpm_ff_component|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \SW~combout\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|SWITCHES|lpm_ff_component|dffs\(7));

-- Location: LCCOMB_X30_Y28_N0
\inst44|LPM_MUX_component|auto_generated|result_node[7]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst44|LPM_MUX_component|auto_generated|result_node[7]~13_combout\ = (\inst33|lpm_ff_component|dffs\(15) & ((\inst37|SWITCHES|lpm_ff_component|dffs\(7)) # ((!\inst16~0_combout\ & \inst38|inst|altsyncram_component|auto_generated|q_a\(7))))) # 
-- (!\inst33|lpm_ff_component|dffs\(15) & (!\inst16~0_combout\ & ((\inst38|inst|altsyncram_component|auto_generated|q_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|lpm_ff_component|dffs\(15),
	datab => \inst16~0_combout\,
	datac => \inst37|SWITCHES|lpm_ff_component|dffs\(7),
	datad => \inst38|inst|altsyncram_component|auto_generated|q_a\(7),
	combout => \inst44|LPM_MUX_component|auto_generated|result_node[7]~13_combout\);

-- Location: LCCOMB_X30_Y28_N10
\inst46|lpm_mux_component|auto_generated|result_node[7]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst46|lpm_mux_component|auto_generated|result_node[7]~29_combout\ = (!\inst51|lpm_ff_component|dffs\(1) & ((\inst51|lpm_ff_component|dffs\(0) & ((\inst44|LPM_MUX_component|auto_generated|result_node[7]~13_combout\))) # 
-- (!\inst51|lpm_ff_component|dffs\(0) & (\inst33|lpm_ff_component|dffs\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|lpm_ff_component|dffs\(0),
	datab => \inst33|lpm_ff_component|dffs\(7),
	datac => \inst51|lpm_ff_component|dffs\(1),
	datad => \inst44|LPM_MUX_component|auto_generated|result_node[7]~13_combout\,
	combout => \inst46|lpm_mux_component|auto_generated|result_node[7]~29_combout\);

-- Location: LCCOMB_X33_Y28_N26
\inst46|lpm_mux_component|auto_generated|result_node[7]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst46|lpm_mux_component|auto_generated|result_node[7]~30_combout\ = (\inst46|lpm_mux_component|auto_generated|result_node[7]~29_combout\) # ((\inst51|lpm_ff_component|dffs\(1) & \inst42|lpm_ff_component|dffs\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|lpm_ff_component|dffs\(1),
	datac => \inst42|lpm_ff_component|dffs\(7),
	datad => \inst46|lpm_mux_component|auto_generated|result_node[7]~29_combout\,
	combout => \inst46|lpm_mux_component|auto_generated|result_node[7]~30_combout\);

-- Location: LCFF_X33_Y28_N27
\inst45|lpm_ff_component|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst46|lpm_mux_component|auto_generated|result_node[7]~30_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst45|lpm_ff_component|dffs\(7));

-- Location: LCCOMB_X41_Y30_N28
\inst7|Reg1|lpm_ff_component|dffs[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg1|lpm_ff_component|dffs[7]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(7),
	combout => \inst7|Reg1|lpm_ff_component|dffs[7]~feeder_combout\);

-- Location: LCFF_X41_Y30_N29
\inst7|Reg1|lpm_ff_component|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg1|lpm_ff_component|dffs[7]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst41~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg1|lpm_ff_component|dffs\(7));

-- Location: LCCOMB_X37_Y30_N14
\inst7|inst52|lpm_mux_component|auto_generated|_~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst52|lpm_mux_component|auto_generated|_~7_combout\ = (\inst72|lpm_ff_component|dffs\(12) & \inst7|Reg1|lpm_ff_component|dffs\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst72|lpm_ff_component|dffs\(12),
	datad => \inst7|Reg1|lpm_ff_component|dffs\(7),
	combout => \inst7|inst52|lpm_mux_component|auto_generated|_~7_combout\);

-- Location: LCFF_X37_Y30_N15
\inst9|lpm_ff_component|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst7|inst52|lpm_mux_component|auto_generated|_~7_combout\,
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|lpm_ff_component|dffs\(7));

-- Location: LCCOMB_X33_Y28_N10
\inst13|lpm_mux_component|auto_generated|result_node[7]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|lpm_mux_component|auto_generated|result_node[7]~37_combout\ = (\inst13|lpm_mux_component|auto_generated|result_node[14]~26_combout\ & ((\inst71|forwardA[0]~3_combout\ & (\inst45|lpm_ff_component|dffs\(7))) # (!\inst71|forwardA[0]~3_combout\ & 
-- ((\inst46|lpm_mux_component|auto_generated|result_node[7]~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst71|forwardA[0]~3_combout\,
	datab => \inst45|lpm_ff_component|dffs\(7),
	datac => \inst13|lpm_mux_component|auto_generated|result_node[14]~26_combout\,
	datad => \inst46|lpm_mux_component|auto_generated|result_node[7]~30_combout\,
	combout => \inst13|lpm_mux_component|auto_generated|result_node[7]~37_combout\);

-- Location: LCCOMB_X33_Y29_N24
\inst13|lpm_mux_component|auto_generated|result_node[7]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|lpm_mux_component|auto_generated|result_node[7]~50_combout\ = (\inst13|lpm_mux_component|auto_generated|result_node[7]~37_combout\) # ((!\inst71|forwardA\(1) & (!\inst71|forwardA[0]~2_combout\ & \inst9|lpm_ff_component|dffs\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst71|forwardA\(1),
	datab => \inst71|forwardA[0]~2_combout\,
	datac => \inst9|lpm_ff_component|dffs\(7),
	datad => \inst13|lpm_mux_component|auto_generated|result_node[7]~37_combout\,
	combout => \inst13|lpm_mux_component|auto_generated|result_node[7]~50_combout\);

-- Location: LCCOMB_X34_Y29_N0
\inst12|inst20|inst9|inst4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst20|inst9|inst4~0_combout\ = (\inst13|lpm_mux_component|auto_generated|result_node[7]~50_combout\ & ((\inst12|inst20|inst7|inst4~0_combout\) # ((!\inst25|lpm_ff_component|dffs\(0) & 
-- \inst14|lpm_mux_component|auto_generated|result_node[7]~57_combout\)))) # (!\inst13|lpm_mux_component|auto_generated|result_node[7]~50_combout\ & (!\inst25|lpm_ff_component|dffs\(0) & (\inst14|lpm_mux_component|auto_generated|result_node[7]~57_combout\ & 
-- \inst12|inst20|inst7|inst4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|lpm_ff_component|dffs\(0),
	datab => \inst13|lpm_mux_component|auto_generated|result_node[7]~50_combout\,
	datac => \inst14|lpm_mux_component|auto_generated|result_node[7]~57_combout\,
	datad => \inst12|inst20|inst7|inst4~0_combout\,
	combout => \inst12|inst20|inst9|inst4~0_combout\);

-- Location: LCCOMB_X34_Y30_N28
\inst14|lpm_mux_component|auto_generated|result_node[8]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|lpm_mux_component|auto_generated|result_node[8]~43_combout\ = (\inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\ & ((\inst71|forwardB[0]~4_combout\ & (\inst45|lpm_ff_component|dffs\(8))) # (!\inst71|forwardB[0]~4_combout\ & 
-- ((\inst46|lpm_mux_component|auto_generated|result_node[8]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\,
	datab => \inst71|forwardB[0]~4_combout\,
	datac => \inst45|lpm_ff_component|dffs\(8),
	datad => \inst46|lpm_mux_component|auto_generated|result_node[8]~28_combout\,
	combout => \inst14|lpm_mux_component|auto_generated|result_node[8]~43_combout\);

-- Location: LCCOMB_X34_Y30_N16
\inst15|lpm_mux_component|auto_generated|result_node[8]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|lpm_mux_component|auto_generated|result_node[8]~10_combout\ = (!\inst25|lpm_ff_component|dffs\(0) & ((\inst14|lpm_mux_component|auto_generated|result_node[8]~43_combout\) # ((\inst10|lpm_ff_component|dffs\(8) & 
-- !\inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|lpm_ff_component|dffs\(8),
	datab => \inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\,
	datac => \inst25|lpm_ff_component|dffs\(0),
	datad => \inst14|lpm_mux_component|auto_generated|result_node[8]~43_combout\,
	combout => \inst15|lpm_mux_component|auto_generated|result_node[8]~10_combout\);

-- Location: LCCOMB_X33_Y29_N14
\inst12|inst|LPM_MUX_component|auto_generated|result_node[8]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|LPM_MUX_component|auto_generated|result_node[8]~7_combout\ = (\inst21|lpm_ff_component|dffs\(1) & (\inst12|inst20|inst9|inst4~0_combout\ $ (\inst15|lpm_mux_component|auto_generated|result_node[8]~10_combout\ $ 
-- (\inst13|lpm_mux_component|auto_generated|result_node[8]~51_combout\)))) # (!\inst21|lpm_ff_component|dffs\(1) & (((\inst15|lpm_mux_component|auto_generated|result_node[8]~10_combout\ & 
-- \inst13|lpm_mux_component|auto_generated|result_node[8]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|lpm_ff_component|dffs\(1),
	datab => \inst12|inst20|inst9|inst4~0_combout\,
	datac => \inst15|lpm_mux_component|auto_generated|result_node[8]~10_combout\,
	datad => \inst13|lpm_mux_component|auto_generated|result_node[8]~51_combout\,
	combout => \inst12|inst|LPM_MUX_component|auto_generated|result_node[8]~7_combout\);

-- Location: LCFF_X33_Y29_N15
\inst33|lpm_ff_component|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst12|inst|LPM_MUX_component|auto_generated|result_node[8]~7_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst33|lpm_ff_component|dffs\(8));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(8),
	combout => \SW~combout\(8));

-- Location: LCFF_X30_Y28_N29
\inst37|SWITCHES|lpm_ff_component|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \SW~combout\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|SWITCHES|lpm_ff_component|dffs\(8));

-- Location: LCCOMB_X30_Y28_N28
\inst44|LPM_MUX_component|auto_generated|result_node[8]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst44|LPM_MUX_component|auto_generated|result_node[8]~12_combout\ = (\inst33|lpm_ff_component|dffs\(15) & ((\inst37|SWITCHES|lpm_ff_component|dffs\(8)) # ((!\inst16~0_combout\ & \inst38|inst|altsyncram_component|auto_generated|q_a\(8))))) # 
-- (!\inst33|lpm_ff_component|dffs\(15) & (!\inst16~0_combout\ & ((\inst38|inst|altsyncram_component|auto_generated|q_a\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|lpm_ff_component|dffs\(15),
	datab => \inst16~0_combout\,
	datac => \inst37|SWITCHES|lpm_ff_component|dffs\(8),
	datad => \inst38|inst|altsyncram_component|auto_generated|q_a\(8),
	combout => \inst44|LPM_MUX_component|auto_generated|result_node[8]~12_combout\);

-- Location: LCCOMB_X30_Y28_N14
\inst46|lpm_mux_component|auto_generated|result_node[8]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst46|lpm_mux_component|auto_generated|result_node[8]~27_combout\ = (!\inst51|lpm_ff_component|dffs\(1) & ((\inst51|lpm_ff_component|dffs\(0) & ((\inst44|LPM_MUX_component|auto_generated|result_node[8]~12_combout\))) # 
-- (!\inst51|lpm_ff_component|dffs\(0) & (\inst33|lpm_ff_component|dffs\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|lpm_ff_component|dffs\(0),
	datab => \inst33|lpm_ff_component|dffs\(8),
	datac => \inst51|lpm_ff_component|dffs\(1),
	datad => \inst44|LPM_MUX_component|auto_generated|result_node[8]~12_combout\,
	combout => \inst46|lpm_mux_component|auto_generated|result_node[8]~27_combout\);

-- Location: LCFF_X38_Y31_N23
\inst29|lpm_ff_component|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst82|LPM_MUX_component|auto_generated|result_node[8]~7_combout\,
	sclr => \inst50~combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|lpm_ff_component|dffs\(8));

-- Location: LCFF_X33_Y31_N5
\inst20|lpm_ff_component|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst29|lpm_ff_component|dffs\(8),
	sclr => \inst68~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst20|lpm_ff_component|dffs\(8));

-- Location: LCFF_X34_Y28_N25
\inst42|lpm_ff_component|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst20|lpm_ff_component|dffs\(8),
	sclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst42|lpm_ff_component|dffs\(8));

-- Location: LCCOMB_X33_Y28_N8
\inst46|lpm_mux_component|auto_generated|result_node[8]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst46|lpm_mux_component|auto_generated|result_node[8]~28_combout\ = (\inst46|lpm_mux_component|auto_generated|result_node[8]~27_combout\) # ((\inst51|lpm_ff_component|dffs\(1) & \inst42|lpm_ff_component|dffs\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|lpm_ff_component|dffs\(1),
	datac => \inst46|lpm_mux_component|auto_generated|result_node[8]~27_combout\,
	datad => \inst42|lpm_ff_component|dffs\(8),
	combout => \inst46|lpm_mux_component|auto_generated|result_node[8]~28_combout\);

-- Location: LCFF_X33_Y28_N9
\inst45|lpm_ff_component|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst46|lpm_mux_component|auto_generated|result_node[8]~28_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst45|lpm_ff_component|dffs\(8));

-- Location: LCFF_X41_Y28_N9
\inst7|Reg2|lpm_ff_component|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(8),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst40~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg2|lpm_ff_component|dffs\(8));

-- Location: LCCOMB_X41_Y28_N8
\inst7|inst53|lpm_mux_component|auto_generated|_~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst53|lpm_mux_component|auto_generated|_~22_combout\ = (\inst72|lpm_ff_component|dffs\(9) & ((\inst72|lpm_ff_component|dffs\(8) & (\inst7|Reg3|lpm_ff_component|dffs\(8))) # (!\inst72|lpm_ff_component|dffs\(8) & 
-- ((\inst7|Reg2|lpm_ff_component|dffs\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Reg3|lpm_ff_component|dffs\(8),
	datab => \inst72|lpm_ff_component|dffs\(9),
	datac => \inst7|Reg2|lpm_ff_component|dffs\(8),
	datad => \inst72|lpm_ff_component|dffs\(8),
	combout => \inst7|inst53|lpm_mux_component|auto_generated|_~22_combout\);

-- Location: LCCOMB_X37_Y30_N22
\inst7|inst53|lpm_mux_component|auto_generated|_~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst53|lpm_mux_component|auto_generated|_~23_combout\ = (\inst7|inst53|lpm_mux_component|auto_generated|_~22_combout\) # ((!\inst72|lpm_ff_component|dffs\(9) & (\inst72|lpm_ff_component|dffs\(8) & \inst7|Reg1|lpm_ff_component|dffs\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(9),
	datab => \inst72|lpm_ff_component|dffs\(8),
	datac => \inst7|inst53|lpm_mux_component|auto_generated|_~22_combout\,
	datad => \inst7|Reg1|lpm_ff_component|dffs\(8),
	combout => \inst7|inst53|lpm_mux_component|auto_generated|_~23_combout\);

-- Location: LCFF_X37_Y30_N23
\inst10|lpm_ff_component|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst7|inst53|lpm_mux_component|auto_generated|_~23_combout\,
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|lpm_ff_component|dffs\(8));

-- Location: LCCOMB_X35_Y29_N14
\inst14|lpm_mux_component|auto_generated|result_node[8]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|lpm_mux_component|auto_generated|result_node[8]~56_combout\ = (\inst14|lpm_mux_component|auto_generated|result_node[8]~43_combout\) # ((!\inst71|forwardB[0]~3_combout\ & (!\inst71|forwardB[1]~1_combout\ & \inst10|lpm_ff_component|dffs\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst71|forwardB[0]~3_combout\,
	datab => \inst71|forwardB[1]~1_combout\,
	datac => \inst10|lpm_ff_component|dffs\(8),
	datad => \inst14|lpm_mux_component|auto_generated|result_node[8]~43_combout\,
	combout => \inst14|lpm_mux_component|auto_generated|result_node[8]~56_combout\);

-- Location: LCFF_X35_Y29_N15
\inst34|lpm_ff_component|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst14|lpm_mux_component|auto_generated|result_node[8]~56_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|lpm_ff_component|dffs\(8));

-- Location: LCCOMB_X30_Y28_N16
\inst44|LPM_MUX_component|auto_generated|result_node[9]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst44|LPM_MUX_component|auto_generated|result_node[9]~11_combout\ = (\inst33|lpm_ff_component|dffs\(15) & ((\inst37|SWITCHES|lpm_ff_component|dffs\(9)) # ((!\inst16~0_combout\ & \inst38|inst|altsyncram_component|auto_generated|q_a\(9))))) # 
-- (!\inst33|lpm_ff_component|dffs\(15) & (!\inst16~0_combout\ & ((\inst38|inst|altsyncram_component|auto_generated|q_a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|lpm_ff_component|dffs\(15),
	datab => \inst16~0_combout\,
	datac => \inst37|SWITCHES|lpm_ff_component|dffs\(9),
	datad => \inst38|inst|altsyncram_component|auto_generated|q_a\(9),
	combout => \inst44|LPM_MUX_component|auto_generated|result_node[9]~11_combout\);

-- Location: LCCOMB_X30_Y28_N26
\inst46|lpm_mux_component|auto_generated|result_node[9]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst46|lpm_mux_component|auto_generated|result_node[9]~25_combout\ = (!\inst51|lpm_ff_component|dffs\(1) & ((\inst51|lpm_ff_component|dffs\(0) & (\inst44|LPM_MUX_component|auto_generated|result_node[9]~11_combout\)) # (!\inst51|lpm_ff_component|dffs\(0) 
-- & ((\inst33|lpm_ff_component|dffs\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|lpm_ff_component|dffs\(0),
	datab => \inst51|lpm_ff_component|dffs\(1),
	datac => \inst44|LPM_MUX_component|auto_generated|result_node[9]~11_combout\,
	datad => \inst33|lpm_ff_component|dffs\(9),
	combout => \inst46|lpm_mux_component|auto_generated|result_node[9]~25_combout\);

-- Location: LCFF_X33_Y29_N23
\inst35|lpm_ff_component|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst13|lpm_mux_component|auto_generated|result_node[9]~52_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst35|lpm_ff_component|dffs\(9));

-- Location: LCFF_X35_Y32_N17
\PC_reg|lpm_ff_component|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC_adder|lpm_add_sub_component|auto_generated|op_1~16_combout\,
	sdata => \inst35|lpm_ff_component|dffs\(9),
	sload => \inst8|jump~combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_reg|lpm_ff_component|dffs\(9));

-- Location: LCCOMB_X36_Y32_N12
\PC_reg1|lpm_ff_component|dffs[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_reg1|lpm_ff_component|dffs[9]~feeder_combout\ = \PC_reg|lpm_ff_component|dffs\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC_reg|lpm_ff_component|dffs\(9),
	combout => \PC_reg1|lpm_ff_component|dffs[9]~feeder_combout\);

-- Location: LCFF_X36_Y32_N13
\PC_reg1|lpm_ff_component|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC_reg1|lpm_ff_component|dffs[9]~feeder_combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_reg1|lpm_ff_component|dffs\(9));

-- Location: LCCOMB_X36_Y32_N20
\inst82|LPM_MUX_component|auto_generated|result_node[9]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst82|LPM_MUX_component|auto_generated|result_node[9]~6_combout\ = (\inst67|deassert~2_combout\ & (\PC_reg|lpm_ff_component|dffs\(9))) # (!\inst67|deassert~2_combout\ & ((\PC_reg1|lpm_ff_component|dffs\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_reg|lpm_ff_component|dffs\(9),
	datac => \inst67|deassert~2_combout\,
	datad => \PC_reg1|lpm_ff_component|dffs\(9),
	combout => \inst82|LPM_MUX_component|auto_generated|result_node[9]~6_combout\);

-- Location: LCFF_X36_Y32_N21
\inst29|lpm_ff_component|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst82|LPM_MUX_component|auto_generated|result_node[9]~6_combout\,
	sclr => \inst50~combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|lpm_ff_component|dffs\(9));

-- Location: LCFF_X33_Y31_N3
\inst20|lpm_ff_component|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst29|lpm_ff_component|dffs\(9),
	sclr => \inst68~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst20|lpm_ff_component|dffs\(9));

-- Location: LCFF_X34_Y28_N23
\inst42|lpm_ff_component|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst20|lpm_ff_component|dffs\(9),
	sclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst42|lpm_ff_component|dffs\(9));

-- Location: LCCOMB_X33_Y28_N22
\inst46|lpm_mux_component|auto_generated|result_node[9]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst46|lpm_mux_component|auto_generated|result_node[9]~26_combout\ = (\inst46|lpm_mux_component|auto_generated|result_node[9]~25_combout\) # ((\inst51|lpm_ff_component|dffs\(1) & \inst42|lpm_ff_component|dffs\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|lpm_ff_component|dffs\(1),
	datac => \inst46|lpm_mux_component|auto_generated|result_node[9]~25_combout\,
	datad => \inst42|lpm_ff_component|dffs\(9),
	combout => \inst46|lpm_mux_component|auto_generated|result_node[9]~26_combout\);

-- Location: LCFF_X33_Y28_N23
\inst45|lpm_ff_component|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst46|lpm_mux_component|auto_generated|result_node[9]~26_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst45|lpm_ff_component|dffs\(9));

-- Location: LCFF_X41_Y30_N17
\inst7|Reg1|lpm_ff_component|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(9),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst41~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg1|lpm_ff_component|dffs\(9));

-- Location: LCCOMB_X37_Y30_N2
\inst7|inst52|lpm_mux_component|auto_generated|_~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst52|lpm_mux_component|auto_generated|_~9_combout\ = (\inst72|lpm_ff_component|dffs\(12) & \inst7|Reg1|lpm_ff_component|dffs\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(12),
	datac => \inst7|Reg1|lpm_ff_component|dffs\(9),
	combout => \inst7|inst52|lpm_mux_component|auto_generated|_~9_combout\);

-- Location: LCFF_X37_Y30_N3
\inst9|lpm_ff_component|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst7|inst52|lpm_mux_component|auto_generated|_~9_combout\,
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|lpm_ff_component|dffs\(9));

-- Location: LCCOMB_X33_Y28_N6
\inst13|lpm_mux_component|auto_generated|result_node[9]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|lpm_mux_component|auto_generated|result_node[9]~39_combout\ = (\inst13|lpm_mux_component|auto_generated|result_node[14]~26_combout\ & ((\inst71|forwardA[0]~3_combout\ & (\inst45|lpm_ff_component|dffs\(9))) # (!\inst71|forwardA[0]~3_combout\ & 
-- ((\inst46|lpm_mux_component|auto_generated|result_node[9]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst71|forwardA[0]~3_combout\,
	datab => \inst13|lpm_mux_component|auto_generated|result_node[14]~26_combout\,
	datac => \inst45|lpm_ff_component|dffs\(9),
	datad => \inst46|lpm_mux_component|auto_generated|result_node[9]~26_combout\,
	combout => \inst13|lpm_mux_component|auto_generated|result_node[9]~39_combout\);

-- Location: LCCOMB_X33_Y29_N22
\inst13|lpm_mux_component|auto_generated|result_node[9]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|lpm_mux_component|auto_generated|result_node[9]~52_combout\ = (\inst13|lpm_mux_component|auto_generated|result_node[9]~39_combout\) # ((!\inst71|forwardA\(1) & (!\inst71|forwardA[0]~2_combout\ & \inst9|lpm_ff_component|dffs\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst71|forwardA\(1),
	datab => \inst71|forwardA[0]~2_combout\,
	datac => \inst9|lpm_ff_component|dffs\(9),
	datad => \inst13|lpm_mux_component|auto_generated|result_node[9]~39_combout\,
	combout => \inst13|lpm_mux_component|auto_generated|result_node[9]~52_combout\);

-- Location: LCCOMB_X34_Y29_N12
\inst12|inst20|inst10|inst4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst20|inst10|inst4~0_combout\ = (\inst13|lpm_mux_component|auto_generated|result_node[9]~52_combout\ & ((\inst12|inst20|inst8|inst4~0_combout\) # ((\inst14|lpm_mux_component|auto_generated|result_node[9]~55_combout\ & 
-- !\inst25|lpm_ff_component|dffs\(0))))) # (!\inst13|lpm_mux_component|auto_generated|result_node[9]~52_combout\ & (\inst14|lpm_mux_component|auto_generated|result_node[9]~55_combout\ & (!\inst25|lpm_ff_component|dffs\(0) & 
-- \inst12|inst20|inst8|inst4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lpm_mux_component|auto_generated|result_node[9]~55_combout\,
	datab => \inst13|lpm_mux_component|auto_generated|result_node[9]~52_combout\,
	datac => \inst25|lpm_ff_component|dffs\(0),
	datad => \inst12|inst20|inst8|inst4~0_combout\,
	combout => \inst12|inst20|inst10|inst4~0_combout\);

-- Location: LCCOMB_X33_Y28_N24
\inst12|inst|LPM_MUX_component|auto_generated|result_node[10]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|LPM_MUX_component|auto_generated|result_node[10]~5_combout\ = (\inst21|lpm_ff_component|dffs\(1) & (\inst15|lpm_mux_component|auto_generated|result_node[10]~9_combout\ $ (\inst13|lpm_mux_component|auto_generated|result_node[10]~53_combout\ $ 
-- (\inst12|inst20|inst10|inst4~0_combout\)))) # (!\inst21|lpm_ff_component|dffs\(1) & (\inst15|lpm_mux_component|auto_generated|result_node[10]~9_combout\ & (\inst13|lpm_mux_component|auto_generated|result_node[10]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|lpm_mux_component|auto_generated|result_node[10]~9_combout\,
	datab => \inst21|lpm_ff_component|dffs\(1),
	datac => \inst13|lpm_mux_component|auto_generated|result_node[10]~53_combout\,
	datad => \inst12|inst20|inst10|inst4~0_combout\,
	combout => \inst12|inst|LPM_MUX_component|auto_generated|result_node[10]~5_combout\);

-- Location: LCFF_X33_Y28_N25
\inst33|lpm_ff_component|dffs[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst12|inst|LPM_MUX_component|auto_generated|result_node[10]~5_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst33|lpm_ff_component|dffs\(10));

-- Location: LCCOMB_X34_Y28_N0
\inst44|LPM_MUX_component|auto_generated|result_node[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst44|LPM_MUX_component|auto_generated|result_node[10]~10_combout\ = (!\inst16~0_combout\ & \inst38|inst|altsyncram_component|auto_generated|q_a\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16~0_combout\,
	datad => \inst38|inst|altsyncram_component|auto_generated|q_a\(10),
	combout => \inst44|LPM_MUX_component|auto_generated|result_node[10]~10_combout\);

-- Location: LCCOMB_X34_Y28_N2
\inst46|lpm_mux_component|auto_generated|result_node[10]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst46|lpm_mux_component|auto_generated|result_node[10]~23_combout\ = (!\inst51|lpm_ff_component|dffs\(1) & ((\inst51|lpm_ff_component|dffs\(0) & ((\inst44|LPM_MUX_component|auto_generated|result_node[10]~10_combout\))) # 
-- (!\inst51|lpm_ff_component|dffs\(0) & (\inst33|lpm_ff_component|dffs\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|lpm_ff_component|dffs\(0),
	datab => \inst33|lpm_ff_component|dffs\(10),
	datac => \inst51|lpm_ff_component|dffs\(1),
	datad => \inst44|LPM_MUX_component|auto_generated|result_node[10]~10_combout\,
	combout => \inst46|lpm_mux_component|auto_generated|result_node[10]~23_combout\);

-- Location: LCCOMB_X33_Y28_N20
\inst46|lpm_mux_component|auto_generated|result_node[10]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst46|lpm_mux_component|auto_generated|result_node[10]~24_combout\ = (\inst46|lpm_mux_component|auto_generated|result_node[10]~23_combout\) # ((\inst51|lpm_ff_component|dffs\(1) & \inst42|lpm_ff_component|dffs\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|lpm_ff_component|dffs\(1),
	datac => \inst42|lpm_ff_component|dffs\(10),
	datad => \inst46|lpm_mux_component|auto_generated|result_node[10]~23_combout\,
	combout => \inst46|lpm_mux_component|auto_generated|result_node[10]~24_combout\);

-- Location: LCFF_X33_Y28_N21
\inst45|lpm_ff_component|dffs[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst46|lpm_mux_component|auto_generated|result_node[10]~24_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst45|lpm_ff_component|dffs\(10));

-- Location: LCFF_X41_Y30_N23
\inst7|Reg1|lpm_ff_component|dffs[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(10),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst41~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg1|lpm_ff_component|dffs\(10));

-- Location: LCCOMB_X37_Y30_N20
\inst7|inst52|lpm_mux_component|auto_generated|_~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst52|lpm_mux_component|auto_generated|_~10_combout\ = (\inst72|lpm_ff_component|dffs\(12) & \inst7|Reg1|lpm_ff_component|dffs\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(12),
	datac => \inst7|Reg1|lpm_ff_component|dffs\(10),
	combout => \inst7|inst52|lpm_mux_component|auto_generated|_~10_combout\);

-- Location: LCFF_X37_Y30_N21
\inst9|lpm_ff_component|dffs[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst7|inst52|lpm_mux_component|auto_generated|_~10_combout\,
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|lpm_ff_component|dffs\(10));

-- Location: LCCOMB_X33_Y28_N0
\inst13|lpm_mux_component|auto_generated|result_node[10]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|lpm_mux_component|auto_generated|result_node[10]~40_combout\ = (\inst13|lpm_mux_component|auto_generated|result_node[14]~26_combout\ & ((\inst71|forwardA[0]~3_combout\ & ((\inst45|lpm_ff_component|dffs\(10)))) # (!\inst71|forwardA[0]~3_combout\ & 
-- (\inst46|lpm_mux_component|auto_generated|result_node[10]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|lpm_mux_component|auto_generated|result_node[14]~26_combout\,
	datab => \inst46|lpm_mux_component|auto_generated|result_node[10]~24_combout\,
	datac => \inst45|lpm_ff_component|dffs\(10),
	datad => \inst71|forwardA[0]~3_combout\,
	combout => \inst13|lpm_mux_component|auto_generated|result_node[10]~40_combout\);

-- Location: LCCOMB_X33_Y29_N30
\inst13|lpm_mux_component|auto_generated|result_node[10]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|lpm_mux_component|auto_generated|result_node[10]~53_combout\ = (\inst13|lpm_mux_component|auto_generated|result_node[10]~40_combout\) # ((!\inst71|forwardA\(1) & (!\inst71|forwardA[0]~2_combout\ & \inst9|lpm_ff_component|dffs\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst71|forwardA\(1),
	datab => \inst71|forwardA[0]~2_combout\,
	datac => \inst9|lpm_ff_component|dffs\(10),
	datad => \inst13|lpm_mux_component|auto_generated|result_node[10]~40_combout\,
	combout => \inst13|lpm_mux_component|auto_generated|result_node[10]~53_combout\);

-- Location: LCFF_X33_Y29_N31
\inst35|lpm_ff_component|dffs[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst13|lpm_mux_component|auto_generated|result_node[10]~53_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst35|lpm_ff_component|dffs\(10));

-- Location: LCFF_X35_Y32_N19
\PC_reg|lpm_ff_component|dffs[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC_adder|lpm_add_sub_component|auto_generated|op_1~18_combout\,
	sdata => \inst35|lpm_ff_component|dffs\(10),
	sload => \inst8|jump~combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_reg|lpm_ff_component|dffs\(10));

-- Location: LCCOMB_X36_Y32_N18
\PC_reg1|lpm_ff_component|dffs[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_reg1|lpm_ff_component|dffs[10]~feeder_combout\ = \PC_reg|lpm_ff_component|dffs\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC_reg|lpm_ff_component|dffs\(10),
	combout => \PC_reg1|lpm_ff_component|dffs[10]~feeder_combout\);

-- Location: LCFF_X36_Y32_N19
\PC_reg1|lpm_ff_component|dffs[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC_reg1|lpm_ff_component|dffs[10]~feeder_combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_reg1|lpm_ff_component|dffs\(10));

-- Location: LCCOMB_X36_Y32_N26
\inst82|LPM_MUX_component|auto_generated|result_node[10]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst82|LPM_MUX_component|auto_generated|result_node[10]~5_combout\ = (\inst67|deassert~2_combout\ & (\PC_reg|lpm_ff_component|dffs\(10))) # (!\inst67|deassert~2_combout\ & ((\PC_reg1|lpm_ff_component|dffs\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_reg|lpm_ff_component|dffs\(10),
	datac => \inst67|deassert~2_combout\,
	datad => \PC_reg1|lpm_ff_component|dffs\(10),
	combout => \inst82|LPM_MUX_component|auto_generated|result_node[10]~5_combout\);

-- Location: LCCOMB_X35_Y32_N20
\PC_adder|lpm_add_sub_component|auto_generated|op_1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_adder|lpm_add_sub_component|auto_generated|op_1~20_combout\ = (\inst82|LPM_MUX_component|auto_generated|result_node[11]~4_combout\ & (\PC_adder|lpm_add_sub_component|auto_generated|op_1~19\ $ (GND))) # 
-- (!\inst82|LPM_MUX_component|auto_generated|result_node[11]~4_combout\ & (!\PC_adder|lpm_add_sub_component|auto_generated|op_1~19\ & VCC))
-- \PC_adder|lpm_add_sub_component|auto_generated|op_1~21\ = CARRY((\inst82|LPM_MUX_component|auto_generated|result_node[11]~4_combout\ & !\PC_adder|lpm_add_sub_component|auto_generated|op_1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst82|LPM_MUX_component|auto_generated|result_node[11]~4_combout\,
	datad => VCC,
	cin => \PC_adder|lpm_add_sub_component|auto_generated|op_1~19\,
	combout => \PC_adder|lpm_add_sub_component|auto_generated|op_1~20_combout\,
	cout => \PC_adder|lpm_add_sub_component|auto_generated|op_1~21\);

-- Location: LCCOMB_X35_Y28_N6
\inst13|lpm_mux_component|auto_generated|result_node[11]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|lpm_mux_component|auto_generated|result_node[11]~41_combout\ = (\inst13|lpm_mux_component|auto_generated|result_node[14]~26_combout\ & ((\inst71|forwardA[0]~3_combout\ & (\inst45|lpm_ff_component|dffs\(11))) # (!\inst71|forwardA[0]~3_combout\ & 
-- ((\inst46|lpm_mux_component|auto_generated|result_node[11]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|lpm_ff_component|dffs\(11),
	datab => \inst13|lpm_mux_component|auto_generated|result_node[14]~26_combout\,
	datac => \inst71|forwardA[0]~3_combout\,
	datad => \inst46|lpm_mux_component|auto_generated|result_node[11]~22_combout\,
	combout => \inst13|lpm_mux_component|auto_generated|result_node[11]~41_combout\);

-- Location: LCCOMB_X35_Y28_N20
\inst13|lpm_mux_component|auto_generated|result_node[11]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|lpm_mux_component|auto_generated|result_node[11]~54_combout\ = (\inst13|lpm_mux_component|auto_generated|result_node[11]~41_combout\) # ((\inst9|lpm_ff_component|dffs\(11) & (!\inst71|forwardA\(1) & !\inst71|forwardA[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|lpm_ff_component|dffs\(11),
	datab => \inst71|forwardA\(1),
	datac => \inst71|forwardA[0]~2_combout\,
	datad => \inst13|lpm_mux_component|auto_generated|result_node[11]~41_combout\,
	combout => \inst13|lpm_mux_component|auto_generated|result_node[11]~54_combout\);

-- Location: LCFF_X35_Y28_N21
\inst35|lpm_ff_component|dffs[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst13|lpm_mux_component|auto_generated|result_node[11]~54_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst35|lpm_ff_component|dffs\(11));

-- Location: LCFF_X35_Y32_N21
\PC_reg|lpm_ff_component|dffs[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC_adder|lpm_add_sub_component|auto_generated|op_1~20_combout\,
	sdata => \inst35|lpm_ff_component|dffs\(11),
	sload => \inst8|jump~combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_reg|lpm_ff_component|dffs\(11));

-- Location: LCCOMB_X36_Y32_N0
\PC_reg1|lpm_ff_component|dffs[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_reg1|lpm_ff_component|dffs[11]~feeder_combout\ = \PC_reg|lpm_ff_component|dffs\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC_reg|lpm_ff_component|dffs\(11),
	combout => \PC_reg1|lpm_ff_component|dffs[11]~feeder_combout\);

-- Location: LCFF_X36_Y32_N1
\PC_reg1|lpm_ff_component|dffs[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC_reg1|lpm_ff_component|dffs[11]~feeder_combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_reg1|lpm_ff_component|dffs\(11));

-- Location: LCCOMB_X36_Y32_N8
\inst82|LPM_MUX_component|auto_generated|result_node[11]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst82|LPM_MUX_component|auto_generated|result_node[11]~4_combout\ = (\inst67|deassert~2_combout\ & (\PC_reg|lpm_ff_component|dffs\(11))) # (!\inst67|deassert~2_combout\ & ((\PC_reg1|lpm_ff_component|dffs\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst67|deassert~2_combout\,
	datac => \PC_reg|lpm_ff_component|dffs\(11),
	datad => \PC_reg1|lpm_ff_component|dffs\(11),
	combout => \inst82|LPM_MUX_component|auto_generated|result_node[11]~4_combout\);

-- Location: LCFF_X33_Y29_N3
\inst35|lpm_ff_component|dffs[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst13|lpm_mux_component|auto_generated|result_node[12]~55_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst35|lpm_ff_component|dffs\(12));

-- Location: LCFF_X35_Y32_N23
\PC_reg|lpm_ff_component|dffs[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC_adder|lpm_add_sub_component|auto_generated|op_1~22_combout\,
	sdata => \inst35|lpm_ff_component|dffs\(12),
	sload => \inst8|jump~combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_reg|lpm_ff_component|dffs\(12));

-- Location: LCCOMB_X36_Y32_N30
\inst82|LPM_MUX_component|auto_generated|result_node[12]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst82|LPM_MUX_component|auto_generated|result_node[12]~3_combout\ = (\inst67|deassert~2_combout\ & ((\PC_reg|lpm_ff_component|dffs\(12)))) # (!\inst67|deassert~2_combout\ & (\PC_reg1|lpm_ff_component|dffs\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_reg1|lpm_ff_component|dffs\(12),
	datab => \PC_reg|lpm_ff_component|dffs\(12),
	datac => \inst67|deassert~2_combout\,
	combout => \inst82|LPM_MUX_component|auto_generated|result_node[12]~3_combout\);

-- Location: LCFF_X36_Y32_N31
\inst29|lpm_ff_component|dffs[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst82|LPM_MUX_component|auto_generated|result_node[12]~3_combout\,
	sclr => \inst50~combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|lpm_ff_component|dffs\(12));

-- Location: LCFF_X33_Y31_N29
\inst20|lpm_ff_component|dffs[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst29|lpm_ff_component|dffs\(12),
	sclr => \inst68~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst20|lpm_ff_component|dffs\(12));

-- Location: LCCOMB_X35_Y30_N0
\inst42|lpm_ff_component|dffs[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst42|lpm_ff_component|dffs[12]~feeder_combout\ = \inst20|lpm_ff_component|dffs\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst20|lpm_ff_component|dffs\(12),
	combout => \inst42|lpm_ff_component|dffs[12]~feeder_combout\);

-- Location: LCFF_X35_Y30_N1
\inst42|lpm_ff_component|dffs[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst42|lpm_ff_component|dffs[12]~feeder_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst42|lpm_ff_component|dffs\(12));

-- Location: LCCOMB_X35_Y30_N30
\inst46|lpm_mux_component|auto_generated|result_node[12]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst46|lpm_mux_component|auto_generated|result_node[12]~19_combout\ = (\inst51|lpm_ff_component|dffs\(0) & (\inst38|inst|altsyncram_component|auto_generated|q_a\(12) & (!\inst16~0_combout\))) # (!\inst51|lpm_ff_component|dffs\(0) & 
-- (((\inst33|lpm_ff_component|dffs\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst|altsyncram_component|auto_generated|q_a\(12),
	datab => \inst51|lpm_ff_component|dffs\(0),
	datac => \inst16~0_combout\,
	datad => \inst33|lpm_ff_component|dffs\(12),
	combout => \inst46|lpm_mux_component|auto_generated|result_node[12]~19_combout\);

-- Location: LCCOMB_X35_Y30_N22
\inst46|lpm_mux_component|auto_generated|result_node[12]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst46|lpm_mux_component|auto_generated|result_node[12]~20_combout\ = (\inst51|lpm_ff_component|dffs\(1) & (\inst42|lpm_ff_component|dffs\(12))) # (!\inst51|lpm_ff_component|dffs\(1) & 
-- ((\inst46|lpm_mux_component|auto_generated|result_node[12]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|lpm_ff_component|dffs\(1),
	datab => \inst42|lpm_ff_component|dffs\(12),
	datad => \inst46|lpm_mux_component|auto_generated|result_node[12]~19_combout\,
	combout => \inst46|lpm_mux_component|auto_generated|result_node[12]~20_combout\);

-- Location: LCFF_X35_Y30_N23
\inst45|lpm_ff_component|dffs[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst46|lpm_mux_component|auto_generated|result_node[12]~20_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst45|lpm_ff_component|dffs\(12));

-- Location: LCCOMB_X36_Y30_N12
\inst14|lpm_mux_component|auto_generated|result_node[12]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|lpm_mux_component|auto_generated|result_node[12]~39_combout\ = (\inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\ & ((\inst71|forwardB[0]~4_combout\ & (\inst45|lpm_ff_component|dffs\(12))) # (!\inst71|forwardB[0]~4_combout\ & 
-- ((\inst46|lpm_mux_component|auto_generated|result_node[12]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst71|forwardB[0]~4_combout\,
	datab => \inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\,
	datac => \inst45|lpm_ff_component|dffs\(12),
	datad => \inst46|lpm_mux_component|auto_generated|result_node[12]~20_combout\,
	combout => \inst14|lpm_mux_component|auto_generated|result_node[12]~39_combout\);

-- Location: LCCOMB_X36_Y30_N22
\inst15|lpm_mux_component|auto_generated|result_node[12]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|lpm_mux_component|auto_generated|result_node[12]~13_combout\ = (!\inst25|lpm_ff_component|dffs\(0) & ((\inst14|lpm_mux_component|auto_generated|result_node[12]~39_combout\) # ((\inst10|lpm_ff_component|dffs\(12) & 
-- !\inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|lpm_ff_component|dffs\(12),
	datab => \inst25|lpm_ff_component|dffs\(0),
	datac => \inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\,
	datad => \inst14|lpm_mux_component|auto_generated|result_node[12]~39_combout\,
	combout => \inst15|lpm_mux_component|auto_generated|result_node[12]~13_combout\);

-- Location: LCCOMB_X33_Y29_N8
\inst12|inst|LPM_MUX_component|auto_generated|result_node[12]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|LPM_MUX_component|auto_generated|result_node[12]~3_combout\ = (\inst21|lpm_ff_component|dffs\(1) & (\inst15|lpm_mux_component|auto_generated|result_node[12]~13_combout\ $ (\inst13|lpm_mux_component|auto_generated|result_node[12]~55_combout\ $ 
-- (\inst12|inst20|inst12|inst4~0_combout\)))) # (!\inst21|lpm_ff_component|dffs\(1) & (\inst15|lpm_mux_component|auto_generated|result_node[12]~13_combout\ & (\inst13|lpm_mux_component|auto_generated|result_node[12]~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|lpm_ff_component|dffs\(1),
	datab => \inst15|lpm_mux_component|auto_generated|result_node[12]~13_combout\,
	datac => \inst13|lpm_mux_component|auto_generated|result_node[12]~55_combout\,
	datad => \inst12|inst20|inst12|inst4~0_combout\,
	combout => \inst12|inst|LPM_MUX_component|auto_generated|result_node[12]~3_combout\);

-- Location: LCFF_X33_Y29_N9
\inst33|lpm_ff_component|dffs[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \inst12|inst|LPM_MUX_component|auto_generated|result_node[12]~3_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst33|lpm_ff_component|dffs\(12));

-- Location: LCCOMB_X33_Y29_N12
\inst16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16~0_combout\ = (\inst33|lpm_ff_component|dffs\(14)) # ((\inst33|lpm_ff_component|dffs\(12)) # ((\inst33|lpm_ff_component|dffs\(15)) # (\inst33|lpm_ff_component|dffs\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|lpm_ff_component|dffs\(14),
	datab => \inst33|lpm_ff_component|dffs\(12),
	datac => \inst33|lpm_ff_component|dffs\(15),
	datad => \inst33|lpm_ff_component|dffs\(13),
	combout => \inst16~0_combout\);

-- Location: LCCOMB_X35_Y30_N10
\inst44|LPM_MUX_component|auto_generated|result_node[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst44|LPM_MUX_component|auto_generated|result_node[3]~6_combout\ = (\inst16~0_combout\ & (\inst44|LPM_MUX_component|auto_generated|result_node[3]~5_combout\)) # (!\inst16~0_combout\ & ((\inst38|inst|altsyncram_component|auto_generated|q_a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst44|LPM_MUX_component|auto_generated|result_node[3]~5_combout\,
	datac => \inst16~0_combout\,
	datad => \inst38|inst|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst44|LPM_MUX_component|auto_generated|result_node[3]~6_combout\);

-- Location: LCCOMB_X35_Y30_N8
\inst46|lpm_mux_component|auto_generated|result_node[3]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst46|lpm_mux_component|auto_generated|result_node[3]~38_combout\ = (\inst46|lpm_mux_component|auto_generated|result_node[3]~14_combout\) # ((\inst51|lpm_ff_component|dffs\(0) & (!\inst51|lpm_ff_component|dffs\(1) & 
-- \inst44|LPM_MUX_component|auto_generated|result_node[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|lpm_mux_component|auto_generated|result_node[3]~14_combout\,
	datab => \inst51|lpm_ff_component|dffs\(0),
	datac => \inst51|lpm_ff_component|dffs\(1),
	datad => \inst44|LPM_MUX_component|auto_generated|result_node[3]~6_combout\,
	combout => \inst46|lpm_mux_component|auto_generated|result_node[3]~38_combout\);

-- Location: LCFF_X35_Y30_N9
\inst45|lpm_ff_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst46|lpm_mux_component|auto_generated|result_node[3]~38_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst45|lpm_ff_component|dffs\(3));

-- Location: LCCOMB_X36_Y30_N18
\inst14|lpm_mux_component|auto_generated|result_node[3]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|lpm_mux_component|auto_generated|result_node[3]~35_combout\ = (!\inst71|forwardB[1]~1_combout\ & ((\inst71|forwardB[0]~3_combout\ & ((\inst45|lpm_ff_component|dffs\(3)))) # (!\inst71|forwardB[0]~3_combout\ & (\inst10|lpm_ff_component|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|lpm_ff_component|dffs\(3),
	datab => \inst45|lpm_ff_component|dffs\(3),
	datac => \inst71|forwardB[1]~1_combout\,
	datad => \inst71|forwardB[0]~3_combout\,
	combout => \inst14|lpm_mux_component|auto_generated|result_node[3]~35_combout\);

-- Location: LCCOMB_X35_Y30_N6
\inst14|lpm_mux_component|auto_generated|result_node[3]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|lpm_mux_component|auto_generated|result_node[3]~36_combout\ = (\inst14|lpm_mux_component|auto_generated|result_node[3]~35_combout\) # ((\inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\ & 
-- (\inst46|lpm_mux_component|auto_generated|result_node[3]~38_combout\ & !\inst71|forwardB[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lpm_mux_component|auto_generated|result_node[15]~28_combout\,
	datab => \inst14|lpm_mux_component|auto_generated|result_node[3]~35_combout\,
	datac => \inst46|lpm_mux_component|auto_generated|result_node[3]~38_combout\,
	datad => \inst71|forwardB[0]~4_combout\,
	combout => \inst14|lpm_mux_component|auto_generated|result_node[3]~36_combout\);

-- Location: LCCOMB_X37_Y29_N8
\inst15|lpm_mux_component|auto_generated|result_node[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|lpm_mux_component|auto_generated|result_node[3]~5_combout\ = (\inst25|lpm_ff_component|dffs\(0) & (\inst17|lpm_ff_component|dffs\(3))) # (!\inst25|lpm_ff_component|dffs\(0) & ((\inst14|lpm_mux_component|auto_generated|result_node[3]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|lpm_ff_component|dffs\(0),
	datac => \inst17|lpm_ff_component|dffs\(3),
	datad => \inst14|lpm_mux_component|auto_generated|result_node[3]~36_combout\,
	combout => \inst15|lpm_mux_component|auto_generated|result_node[3]~5_combout\);

-- Location: LCCOMB_X37_Y29_N22
\inst12|inst20|inst4|inst4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst20|inst4|inst4~0_combout\ = (\inst13|lpm_mux_component|auto_generated|result_node[3]~47_combout\ & ((\inst15|lpm_mux_component|auto_generated|result_node[3]~5_combout\) # ((\inst12|inst20|inst|inst4~1_combout\) # 
-- (\inst12|inst20|inst|inst4~0_combout\)))) # (!\inst13|lpm_mux_component|auto_generated|result_node[3]~47_combout\ & (\inst15|lpm_mux_component|auto_generated|result_node[3]~5_combout\ & ((\inst12|inst20|inst|inst4~1_combout\) # 
-- (\inst12|inst20|inst|inst4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|lpm_mux_component|auto_generated|result_node[3]~47_combout\,
	datab => \inst15|lpm_mux_component|auto_generated|result_node[3]~5_combout\,
	datac => \inst12|inst20|inst|inst4~1_combout\,
	datad => \inst12|inst20|inst|inst4~0_combout\,
	combout => \inst12|inst20|inst4|inst4~0_combout\);

-- Location: LCCOMB_X35_Y28_N24
\inst12|inst|LPM_MUX_component|auto_generated|result_node[4]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|LPM_MUX_component|auto_generated|result_node[4]~11_combout\ = (\inst21|lpm_ff_component|dffs\(1) & (\inst15|lpm_mux_component|auto_generated|result_node[4]~6_combout\ $ (\inst12|inst20|inst4|inst4~0_combout\ $ 
-- (\inst13|lpm_mux_component|auto_generated|result_node[4]~48_combout\)))) # (!\inst21|lpm_ff_component|dffs\(1) & (\inst15|lpm_mux_component|auto_generated|result_node[4]~6_combout\ & 
-- ((\inst13|lpm_mux_component|auto_generated|result_node[4]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|lpm_ff_component|dffs\(1),
	datab => \inst15|lpm_mux_component|auto_generated|result_node[4]~6_combout\,
	datac => \inst12|inst20|inst4|inst4~0_combout\,
	datad => \inst13|lpm_mux_component|auto_generated|result_node[4]~48_combout\,
	combout => \inst12|inst|LPM_MUX_component|auto_generated|result_node[4]~11_combout\);

-- Location: LCFF_X35_Y28_N25
\inst33|lpm_ff_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst12|inst|LPM_MUX_component|auto_generated|result_node[4]~11_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst33|lpm_ff_component|dffs\(4));

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(4),
	combout => \SW~combout\(4));

-- Location: LCFF_X30_Y28_N31
\inst37|SWITCHES|lpm_ff_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \SW~combout\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|SWITCHES|lpm_ff_component|dffs\(4));

-- Location: LCCOMB_X30_Y28_N30
\inst44|LPM_MUX_component|auto_generated|result_node[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst44|LPM_MUX_component|auto_generated|result_node[4]~7_combout\ = (\inst33|lpm_ff_component|dffs\(15) & ((\inst37|SWITCHES|lpm_ff_component|dffs\(4)) # ((!\inst16~0_combout\ & \inst38|inst|altsyncram_component|auto_generated|q_a\(4))))) # 
-- (!\inst33|lpm_ff_component|dffs\(15) & (!\inst16~0_combout\ & ((\inst38|inst|altsyncram_component|auto_generated|q_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|lpm_ff_component|dffs\(15),
	datab => \inst16~0_combout\,
	datac => \inst37|SWITCHES|lpm_ff_component|dffs\(4),
	datad => \inst38|inst|altsyncram_component|auto_generated|q_a\(4),
	combout => \inst44|LPM_MUX_component|auto_generated|result_node[4]~7_combout\);

-- Location: LCCOMB_X35_Y28_N14
\inst46|lpm_mux_component|auto_generated|result_node[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst46|lpm_mux_component|auto_generated|result_node[4]~16_combout\ = (\inst51|lpm_ff_component|dffs\(1) & (\inst46|lpm_mux_component|auto_generated|result_node[4]~15_combout\)) # (!\inst51|lpm_ff_component|dffs\(1) & 
-- ((\inst46|lpm_mux_component|auto_generated|result_node[4]~15_combout\ & ((\inst44|LPM_MUX_component|auto_generated|result_node[4]~7_combout\))) # (!\inst46|lpm_mux_component|auto_generated|result_node[4]~15_combout\ & 
-- (\inst33|lpm_ff_component|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|lpm_ff_component|dffs\(1),
	datab => \inst46|lpm_mux_component|auto_generated|result_node[4]~15_combout\,
	datac => \inst33|lpm_ff_component|dffs\(4),
	datad => \inst44|LPM_MUX_component|auto_generated|result_node[4]~7_combout\,
	combout => \inst46|lpm_mux_component|auto_generated|result_node[4]~16_combout\);

-- Location: LCFF_X35_Y28_N15
\inst45|lpm_ff_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst46|lpm_mux_component|auto_generated|result_node[4]~16_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst45|lpm_ff_component|dffs\(4));

-- Location: LCCOMB_X36_Y28_N22
\inst13|lpm_mux_component|auto_generated|result_node[4]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|lpm_mux_component|auto_generated|result_node[4]~35_combout\ = (\inst13|lpm_mux_component|auto_generated|result_node[14]~26_combout\ & ((\inst71|forwardA[0]~3_combout\ & (\inst45|lpm_ff_component|dffs\(4))) # (!\inst71|forwardA[0]~3_combout\ & 
-- ((\inst46|lpm_mux_component|auto_generated|result_node[4]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst71|forwardA[0]~3_combout\,
	datab => \inst13|lpm_mux_component|auto_generated|result_node[14]~26_combout\,
	datac => \inst45|lpm_ff_component|dffs\(4),
	datad => \inst46|lpm_mux_component|auto_generated|result_node[4]~16_combout\,
	combout => \inst13|lpm_mux_component|auto_generated|result_node[4]~35_combout\);

-- Location: LCCOMB_X35_Y28_N10
\inst13|lpm_mux_component|auto_generated|result_node[4]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|lpm_mux_component|auto_generated|result_node[4]~48_combout\ = (\inst13|lpm_mux_component|auto_generated|result_node[4]~35_combout\) # ((\inst9|lpm_ff_component|dffs\(4) & (!\inst71|forwardA[0]~2_combout\ & !\inst71|forwardA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|lpm_ff_component|dffs\(4),
	datab => \inst71|forwardA[0]~2_combout\,
	datac => \inst71|forwardA\(1),
	datad => \inst13|lpm_mux_component|auto_generated|result_node[4]~35_combout\,
	combout => \inst13|lpm_mux_component|auto_generated|result_node[4]~48_combout\);

-- Location: LCFF_X35_Y28_N11
\inst35|lpm_ff_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst13|lpm_mux_component|auto_generated|result_node[4]~48_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst35|lpm_ff_component|dffs\(4));

-- Location: LCFF_X35_Y32_N7
\PC_reg|lpm_ff_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC_adder|lpm_add_sub_component|auto_generated|op_1~6_combout\,
	sdata => \inst35|lpm_ff_component|dffs\(4),
	sload => \inst8|jump~combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_reg|lpm_ff_component|dffs\(4));

-- Location: LCCOMB_X35_Y31_N6
\PC_reg1|lpm_ff_component|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_reg1|lpm_ff_component|dffs[4]~feeder_combout\ = \PC_reg|lpm_ff_component|dffs\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC_reg|lpm_ff_component|dffs\(4),
	combout => \PC_reg1|lpm_ff_component|dffs[4]~feeder_combout\);

-- Location: LCFF_X35_Y31_N7
\PC_reg1|lpm_ff_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC_reg1|lpm_ff_component|dffs[4]~feeder_combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_reg1|lpm_ff_component|dffs\(4));

-- Location: LCCOMB_X35_Y31_N16
\inst82|LPM_MUX_component|auto_generated|result_node[4]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst82|LPM_MUX_component|auto_generated|result_node[4]~11_combout\ = (\inst67|deassert~2_combout\ & (\PC_reg|lpm_ff_component|dffs\(4))) # (!\inst67|deassert~2_combout\ & ((\PC_reg1|lpm_ff_component|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_reg|lpm_ff_component|dffs\(4),
	datac => \inst67|deassert~2_combout\,
	datad => \PC_reg1|lpm_ff_component|dffs\(4),
	combout => \inst82|LPM_MUX_component|auto_generated|result_node[4]~11_combout\);

-- Location: LCFF_X33_Y29_N29
\inst35|lpm_ff_component|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst13|lpm_mux_component|auto_generated|result_node[8]~51_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst35|lpm_ff_component|dffs\(8));

-- Location: LCFF_X35_Y32_N15
\PC_reg|lpm_ff_component|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC_adder|lpm_add_sub_component|auto_generated|op_1~14_combout\,
	sdata => \inst35|lpm_ff_component|dffs\(8),
	sload => \inst8|jump~combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_reg|lpm_ff_component|dffs\(8));

-- Location: LCFF_X38_Y30_N25
\PC_reg1|lpm_ff_component|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \PC_reg|lpm_ff_component|dffs\(8),
	sload => VCC,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_reg1|lpm_ff_component|dffs\(8));

-- Location: LCCOMB_X38_Y30_N24
\inst62|data[21]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst62|data[21]~15_combout\ = (\inst62|Mux1~0_combout\ & ((\inst67|deassert~2_combout\ & (!\PC_reg|lpm_ff_component|dffs\(8))) # (!\inst67|deassert~2_combout\ & ((!\PC_reg1|lpm_ff_component|dffs\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_reg|lpm_ff_component|dffs\(8),
	datab => \inst62|Mux1~0_combout\,
	datac => \PC_reg1|lpm_ff_component|dffs\(8),
	datad => \inst67|deassert~2_combout\,
	combout => \inst62|data[21]~15_combout\);

-- Location: LCFF_X34_Y31_N31
\inst72|lpm_ff_component|dffs[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \inst62|data[21]~15_combout\,
	sclr => \inst50~combout\,
	sload => VCC,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst72|lpm_ff_component|dffs\(21));

-- Location: LCCOMB_X36_Y31_N0
\inst8|comb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|comb~1_combout\ = (\inst72|lpm_ff_component|dffs\(23)) # ((!\KEY~combout\(0) & \inst72|lpm_ff_component|dffs\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \inst72|lpm_ff_component|dffs\(21),
	datad => \inst72|lpm_ff_component|dffs\(23),
	combout => \inst8|comb~1_combout\);

-- Location: LCCOMB_X36_Y31_N22
\inst8|c_select[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|c_select\(1) = (!\inst8|comb~1_combout\ & ((\inst8|c_select\(1)) # (!\inst72|lpm_ff_component|dffs\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|comb~1_combout\,
	datac => \inst72|lpm_ff_component|dffs\(21),
	datad => \inst8|c_select\(1),
	combout => \inst8|c_select\(1));

-- Location: LCFF_X36_Y31_N23
\inst22|lpm_ff_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst8|c_select\(1),
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst22|lpm_ff_component|dffs\(1));

-- Location: LCCOMB_X36_Y31_N18
\inst8|comb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|comb~2_combout\ = (\inst72|lpm_ff_component|dffs\(23)) # (!\KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datad => \inst72|lpm_ff_component|dffs\(23),
	combout => \inst8|comb~2_combout\);

-- Location: LCCOMB_X36_Y31_N8
\inst8|c_select[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|c_select\(0) = (\inst72|lpm_ff_component|dffs\(21) & ((\inst8|c_select\(0)) # (\inst8|comb~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst72|lpm_ff_component|dffs\(21),
	datac => \inst8|c_select\(0),
	datad => \inst8|comb~2_combout\,
	combout => \inst8|c_select\(0));

-- Location: LCFF_X36_Y31_N9
\inst22|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst8|c_select\(0),
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst22|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X37_Y32_N22
\inst5|lpm_mux_component|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|lpm_mux_component|auto_generated|result_node[1]~0_combout\ = (\inst22|lpm_ff_component|dffs\(1)) # ((\inst22|lpm_ff_component|dffs\(0) & (\inst17|lpm_ff_component|dffs\(0))) # (!\inst22|lpm_ff_component|dffs\(0) & 
-- ((\inst18|lpm_ff_component|dffs\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|lpm_ff_component|dffs\(0),
	datab => \inst18|lpm_ff_component|dffs\(9),
	datac => \inst22|lpm_ff_component|dffs\(1),
	datad => \inst22|lpm_ff_component|dffs\(0),
	combout => \inst5|lpm_mux_component|auto_generated|result_node[1]~0_combout\);

-- Location: LCFF_X37_Y32_N23
\inst63|lpm_ff_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst5|lpm_mux_component|auto_generated|result_node[1]~0_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst63|lpm_ff_component|dffs\(1));

-- Location: LCCOMB_X37_Y29_N20
\inst71|forwardA[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst71|forwardA[1]~0_combout\ = (!\inst63|lpm_ff_component|dffs\(3) & (\inst18|lpm_ff_component|dffs\(12) & !\inst63|lpm_ff_component|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst63|lpm_ff_component|dffs\(3),
	datac => \inst18|lpm_ff_component|dffs\(12),
	datad => \inst63|lpm_ff_component|dffs\(2),
	combout => \inst71|forwardA[1]~0_combout\);

-- Location: LCCOMB_X37_Y29_N18
\inst71|forwardA[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst71|forwardA\(1) = (\inst63|lpm_ff_component|dffs\(0) & (!\inst63|lpm_ff_component|dffs\(1) & (\inst71|forwardA[1]~0_combout\ & \inst52|lpm_ff_component|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst63|lpm_ff_component|dffs\(0),
	datab => \inst63|lpm_ff_component|dffs\(1),
	datac => \inst71|forwardA[1]~0_combout\,
	datad => \inst52|lpm_ff_component|dffs\(0),
	combout => \inst71|forwardA\(1));

-- Location: LCCOMB_X35_Y28_N22
\inst13|lpm_mux_component|auto_generated|result_node[14]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|lpm_mux_component|auto_generated|result_node[14]~26_combout\ = (\inst71|forwardA\(1)) # (\inst71|forwardA[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst71|forwardA\(1),
	datad => \inst71|forwardA[0]~2_combout\,
	combout => \inst13|lpm_mux_component|auto_generated|result_node[14]~26_combout\);

-- Location: LCCOMB_X37_Y28_N26
\inst13|lpm_mux_component|auto_generated|result_node[0]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|lpm_mux_component|auto_generated|result_node[0]~29_combout\ = (\inst13|lpm_mux_component|auto_generated|result_node[0]~28_combout\) # ((\inst13|lpm_mux_component|auto_generated|result_node[14]~26_combout\ & (!\inst71|forwardA[0]~3_combout\ & 
-- \inst46|lpm_mux_component|auto_generated|result_node[0]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|lpm_mux_component|auto_generated|result_node[0]~28_combout\,
	datab => \inst13|lpm_mux_component|auto_generated|result_node[14]~26_combout\,
	datac => \inst71|forwardA[0]~3_combout\,
	datad => \inst46|lpm_mux_component|auto_generated|result_node[0]~9_combout\,
	combout => \inst13|lpm_mux_component|auto_generated|result_node[0]~29_combout\);

-- Location: LCFF_X37_Y28_N27
\inst35|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst13|lpm_mux_component|auto_generated|result_node[0]~29_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst35|lpm_ff_component|dffs\(0));

-- Location: LCFF_X38_Y32_N17
\PC_reg|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst82|LPM_MUX_component|auto_generated|result_node[0]~15_wirecell_combout\,
	sdata => \inst35|lpm_ff_component|dffs\(0),
	sload => \inst8|jump~combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_reg|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X38_Y31_N18
\PC_reg1|lpm_ff_component|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_reg1|lpm_ff_component|dffs[0]~feeder_combout\ = \PC_reg|lpm_ff_component|dffs\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC_reg|lpm_ff_component|dffs\(0),
	combout => \PC_reg1|lpm_ff_component|dffs[0]~feeder_combout\);

-- Location: LCFF_X38_Y31_N19
\PC_reg1|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC_reg1|lpm_ff_component|dffs[0]~feeder_combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_reg1|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X38_Y31_N20
\inst82|LPM_MUX_component|auto_generated|result_node[0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst82|LPM_MUX_component|auto_generated|result_node[0]~15_combout\ = (\inst67|deassert~2_combout\ & (\PC_reg|lpm_ff_component|dffs\(0))) # (!\inst67|deassert~2_combout\ & ((\PC_reg1|lpm_ff_component|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst67|deassert~2_combout\,
	datac => \PC_reg|lpm_ff_component|dffs\(0),
	datad => \PC_reg1|lpm_ff_component|dffs\(0),
	combout => \inst82|LPM_MUX_component|auto_generated|result_node[0]~15_combout\);

-- Location: LCCOMB_X35_Y32_N0
\PC_adder|lpm_add_sub_component|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_adder|lpm_add_sub_component|auto_generated|op_1~0_combout\ = (\inst82|LPM_MUX_component|auto_generated|result_node[1]~14_combout\ & (\inst82|LPM_MUX_component|auto_generated|result_node[0]~15_combout\ $ (VCC))) # 
-- (!\inst82|LPM_MUX_component|auto_generated|result_node[1]~14_combout\ & (\inst82|LPM_MUX_component|auto_generated|result_node[0]~15_combout\ & VCC))
-- \PC_adder|lpm_add_sub_component|auto_generated|op_1~1\ = CARRY((\inst82|LPM_MUX_component|auto_generated|result_node[1]~14_combout\ & \inst82|LPM_MUX_component|auto_generated|result_node[0]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst82|LPM_MUX_component|auto_generated|result_node[1]~14_combout\,
	datab => \inst82|LPM_MUX_component|auto_generated|result_node[0]~15_combout\,
	datad => VCC,
	combout => \PC_adder|lpm_add_sub_component|auto_generated|op_1~0_combout\,
	cout => \PC_adder|lpm_add_sub_component|auto_generated|op_1~1\);

-- Location: LCFF_X37_Y28_N23
\inst35|lpm_ff_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst13|lpm_mux_component|auto_generated|result_node[2]~33_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst35|lpm_ff_component|dffs\(2));

-- Location: LCFF_X35_Y32_N3
\PC_reg|lpm_ff_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC_adder|lpm_add_sub_component|auto_generated|op_1~2_combout\,
	sdata => \inst35|lpm_ff_component|dffs\(2),
	sload => \inst8|jump~combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_reg|lpm_ff_component|dffs\(2));

-- Location: LCCOMB_X38_Y31_N10
\PC_reg1|lpm_ff_component|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_reg1|lpm_ff_component|dffs[2]~feeder_combout\ = \PC_reg|lpm_ff_component|dffs\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC_reg|lpm_ff_component|dffs\(2),
	combout => \PC_reg1|lpm_ff_component|dffs[2]~feeder_combout\);

-- Location: LCFF_X38_Y31_N11
\PC_reg1|lpm_ff_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC_reg1|lpm_ff_component|dffs[2]~feeder_combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_reg1|lpm_ff_component|dffs\(2));

-- Location: LCCOMB_X38_Y31_N2
\inst82|LPM_MUX_component|auto_generated|result_node[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst82|LPM_MUX_component|auto_generated|result_node[2]~13_combout\ = (\inst67|deassert~2_combout\ & (\PC_reg|lpm_ff_component|dffs\(2))) # (!\inst67|deassert~2_combout\ & ((\PC_reg1|lpm_ff_component|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_reg|lpm_ff_component|dffs\(2),
	datac => \inst67|deassert~2_combout\,
	datad => \PC_reg1|lpm_ff_component|dffs\(2),
	combout => \inst82|LPM_MUX_component|auto_generated|result_node[2]~13_combout\);

-- Location: LCCOMB_X38_Y31_N8
\inst62|data[22]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst62|data[22]~10_combout\ = (!\inst82|LPM_MUX_component|auto_generated|result_node[1]~14_combout\ & (!\inst82|LPM_MUX_component|auto_generated|result_node[2]~13_combout\ & (!\inst82|LPM_MUX_component|auto_generated|result_node[0]~15_combout\ & 
-- !\inst82|LPM_MUX_component|auto_generated|result_node[8]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst82|LPM_MUX_component|auto_generated|result_node[1]~14_combout\,
	datab => \inst82|LPM_MUX_component|auto_generated|result_node[2]~13_combout\,
	datac => \inst82|LPM_MUX_component|auto_generated|result_node[0]~15_combout\,
	datad => \inst82|LPM_MUX_component|auto_generated|result_node[8]~7_combout\,
	combout => \inst62|data[22]~10_combout\);

-- Location: LCFF_X38_Y31_N9
\inst72|lpm_ff_component|dffs[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \inst62|data[22]~10_combout\,
	sclr => \inst50~combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst72|lpm_ff_component|dffs\(22));

-- Location: LCCOMB_X35_Y31_N2
\inst8|jump~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|jump~1_combout\ = (\inst72|lpm_ff_component|dffs\(22) & \inst72|lpm_ff_component|dffs\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst72|lpm_ff_component|dffs\(22),
	datad => \inst72|lpm_ff_component|dffs\(20),
	combout => \inst8|jump~1_combout\);

-- Location: LCCOMB_X35_Y31_N20
\inst8|y_select[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|y_select[1]~0_combout\ = ((!\inst72|lpm_ff_component|dffs\(21) & ((!\inst8|jump~1_combout\) # (!\inst72|lpm_ff_component|dffs\(23))))) # (!\KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(23),
	datab => \inst8|jump~1_combout\,
	datac => \inst72|lpm_ff_component|dffs\(21),
	datad => \KEY~combout\(0),
	combout => \inst8|y_select[1]~0_combout\);

-- Location: CLKCTRL_G8
\inst8|y_select[1]~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst8|y_select[1]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst8|y_select[1]~0clkctrl_outclk\);

-- Location: LCCOMB_X37_Y31_N14
\inst8|mem_read\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|mem_read~combout\ = (!\inst8|process_0~0_combout\ & ((GLOBAL(\inst8|y_select[1]~0clkctrl_outclk\) & (!\inst8|mem_read~0_combout\)) # (!GLOBAL(\inst8|y_select[1]~0clkctrl_outclk\) & ((\inst8|mem_read~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|mem_read~0_combout\,
	datab => \inst8|mem_read~combout\,
	datac => \inst8|y_select[1]~0clkctrl_outclk\,
	datad => \inst8|process_0~0_combout\,
	combout => \inst8|mem_read~combout\);

-- Location: LCFF_X37_Y31_N15
\inst32|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst8|mem_read~combout\,
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst32|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X37_Y31_N24
\inst67|deassert~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst67|deassert~2_combout\ = ((!\inst67|deassert~0_combout\ & !\inst67|deassert~1_combout\)) # (!\inst32|lpm_ff_component|dffs\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst32|lpm_ff_component|dffs\(0),
	datac => \inst67|deassert~0_combout\,
	datad => \inst67|deassert~1_combout\,
	combout => \inst67|deassert~2_combout\);

-- Location: LCCOMB_X35_Y31_N4
\inst82|LPM_MUX_component|auto_generated|result_node[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst82|LPM_MUX_component|auto_generated|result_node[3]~12_combout\ = (\inst67|deassert~2_combout\ & ((\PC_reg|lpm_ff_component|dffs\(3)))) # (!\inst67|deassert~2_combout\ & (\PC_reg1|lpm_ff_component|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_reg1|lpm_ff_component|dffs\(3),
	datac => \inst67|deassert~2_combout\,
	datad => \PC_reg|lpm_ff_component|dffs\(3),
	combout => \inst82|LPM_MUX_component|auto_generated|result_node[3]~12_combout\);

-- Location: LCCOMB_X36_Y30_N8
\inst13|lpm_mux_component|auto_generated|result_node[3]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|lpm_mux_component|auto_generated|result_node[3]~34_combout\ = (\inst13|lpm_mux_component|auto_generated|result_node[14]~26_combout\ & ((\inst71|forwardA[0]~3_combout\ & (\inst45|lpm_ff_component|dffs\(3))) # (!\inst71|forwardA[0]~3_combout\ & 
-- ((\inst46|lpm_mux_component|auto_generated|result_node[3]~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|lpm_ff_component|dffs\(3),
	datab => \inst71|forwardA[0]~3_combout\,
	datac => \inst13|lpm_mux_component|auto_generated|result_node[14]~26_combout\,
	datad => \inst46|lpm_mux_component|auto_generated|result_node[3]~38_combout\,
	combout => \inst13|lpm_mux_component|auto_generated|result_node[3]~34_combout\);

-- Location: LCCOMB_X35_Y28_N4
\inst13|lpm_mux_component|auto_generated|result_node[3]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|lpm_mux_component|auto_generated|result_node[3]~47_combout\ = (\inst13|lpm_mux_component|auto_generated|result_node[3]~34_combout\) # ((\inst9|lpm_ff_component|dffs\(3) & (!\inst71|forwardA[0]~2_combout\ & !\inst71|forwardA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|lpm_ff_component|dffs\(3),
	datab => \inst71|forwardA[0]~2_combout\,
	datac => \inst71|forwardA\(1),
	datad => \inst13|lpm_mux_component|auto_generated|result_node[3]~34_combout\,
	combout => \inst13|lpm_mux_component|auto_generated|result_node[3]~47_combout\);

-- Location: LCFF_X35_Y28_N5
\inst35|lpm_ff_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst13|lpm_mux_component|auto_generated|result_node[3]~47_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst35|lpm_ff_component|dffs\(3));

-- Location: LCFF_X35_Y32_N5
\PC_reg|lpm_ff_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC_adder|lpm_add_sub_component|auto_generated|op_1~4_combout\,
	sdata => \inst35|lpm_ff_component|dffs\(3),
	sload => \inst8|jump~combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_reg|lpm_ff_component|dffs\(3));

-- Location: LCCOMB_X35_Y31_N26
\PC_reg1|lpm_ff_component|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_reg1|lpm_ff_component|dffs[3]~feeder_combout\ = \PC_reg|lpm_ff_component|dffs\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC_reg|lpm_ff_component|dffs\(3),
	combout => \PC_reg1|lpm_ff_component|dffs[3]~feeder_combout\);

-- Location: LCFF_X35_Y31_N27
\PC_reg1|lpm_ff_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC_reg1|lpm_ff_component|dffs[3]~feeder_combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_reg1|lpm_ff_component|dffs\(3));

-- Location: LCCOMB_X35_Y31_N22
\inst62|data[9]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst62|data[9]~14_combout\ = (!\inst82|LPM_MUX_component|auto_generated|result_node[8]~7_combout\ & ((\inst67|deassert~2_combout\ & ((\PC_reg|lpm_ff_component|dffs\(3)))) # (!\inst67|deassert~2_combout\ & (\PC_reg1|lpm_ff_component|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst67|deassert~2_combout\,
	datab => \PC_reg1|lpm_ff_component|dffs\(3),
	datac => \PC_reg|lpm_ff_component|dffs\(3),
	datad => \inst82|LPM_MUX_component|auto_generated|result_node[8]~7_combout\,
	combout => \inst62|data[9]~14_combout\);

-- Location: LCFF_X35_Y31_N23
\inst72|lpm_ff_component|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst62|data[9]~14_combout\,
	sclr => \inst50~combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst72|lpm_ff_component|dffs\(9));

-- Location: LCFF_X37_Y29_N27
\inst18|lpm_ff_component|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst72|lpm_ff_component|dffs\(9),
	sclr => \inst68~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|lpm_ff_component|dffs\(9));

-- Location: LCCOMB_X37_Y29_N0
\inst67|deassert~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst67|deassert~0_combout\ = (!\inst18|lpm_ff_component|dffs\(9) & (\inst18|lpm_ff_component|dffs\(8) $ (!\inst72|lpm_ff_component|dffs\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|lpm_ff_component|dffs\(9),
	datac => \inst18|lpm_ff_component|dffs\(8),
	datad => \inst72|lpm_ff_component|dffs\(12),
	combout => \inst67|deassert~0_combout\);

-- Location: LCCOMB_X37_Y31_N0
\inst68~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst68~0_combout\ = (!\KEY~combout\(0)) # (!\inst72|lpm_ff_component|dffs\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(23),
	datad => \KEY~combout\(0),
	combout => \inst68~0_combout\);

-- Location: LCCOMB_X37_Y31_N16
inst68 : cycloneii_lcell_comb
-- Equation(s):
-- \inst68~combout\ = (\inst68~0_combout\) # ((\inst32|lpm_ff_component|dffs\(0) & ((\inst67|deassert~0_combout\) # (\inst67|deassert~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst67|deassert~0_combout\,
	datab => \inst67|deassert~1_combout\,
	datac => \inst32|lpm_ff_component|dffs\(0),
	datad => \inst68~0_combout\,
	combout => \inst68~combout\);

-- Location: LCFF_X37_Y28_N9
\inst35|lpm_ff_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst13|lpm_mux_component|auto_generated|result_node[1]~31_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst35|lpm_ff_component|dffs\(1));

-- Location: LCFF_X35_Y32_N1
\PC_reg|lpm_ff_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC_adder|lpm_add_sub_component|auto_generated|op_1~0_combout\,
	sdata => \inst35|lpm_ff_component|dffs\(1),
	sload => \inst8|jump~combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_reg|lpm_ff_component|dffs\(1));

-- Location: LCCOMB_X38_Y31_N0
\PC_reg1|lpm_ff_component|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_reg1|lpm_ff_component|dffs[1]~feeder_combout\ = \PC_reg|lpm_ff_component|dffs\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC_reg|lpm_ff_component|dffs\(1),
	combout => \PC_reg1|lpm_ff_component|dffs[1]~feeder_combout\);

-- Location: LCFF_X38_Y31_N1
\PC_reg1|lpm_ff_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC_reg1|lpm_ff_component|dffs[1]~feeder_combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_reg1|lpm_ff_component|dffs\(1));

-- Location: LCCOMB_X38_Y31_N28
\inst82|LPM_MUX_component|auto_generated|result_node[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst82|LPM_MUX_component|auto_generated|result_node[1]~14_combout\ = (\inst67|deassert~2_combout\ & (\PC_reg|lpm_ff_component|dffs\(1))) # (!\inst67|deassert~2_combout\ & ((\PC_reg1|lpm_ff_component|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst67|deassert~2_combout\,
	datac => \PC_reg|lpm_ff_component|dffs\(1),
	datad => \PC_reg1|lpm_ff_component|dffs\(1),
	combout => \inst82|LPM_MUX_component|auto_generated|result_node[1]~14_combout\);

-- Location: LCFF_X35_Y31_N5
\inst29|lpm_ff_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst82|LPM_MUX_component|auto_generated|result_node[3]~12_combout\,
	sclr => \inst50~combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|lpm_ff_component|dffs\(3));

-- Location: LCFF_X38_Y31_N29
\inst29|lpm_ff_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst82|LPM_MUX_component|auto_generated|result_node[1]~14_combout\,
	sclr => \inst50~combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|lpm_ff_component|dffs\(1));

-- Location: LCCOMB_X32_Y31_N2
\inst74|lpm_add_sub_component|auto_generated|result[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst74|lpm_add_sub_component|auto_generated|result[1]~0_combout\ = (\inst72|lpm_ff_component|dffs\(1) & (\inst29|lpm_ff_component|dffs\(1) $ (VCC))) # (!\inst72|lpm_ff_component|dffs\(1) & (\inst29|lpm_ff_component|dffs\(1) & VCC))
-- \inst74|lpm_add_sub_component|auto_generated|result[1]~1\ = CARRY((\inst72|lpm_ff_component|dffs\(1) & \inst29|lpm_ff_component|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(1),
	datab => \inst29|lpm_ff_component|dffs\(1),
	datad => VCC,
	combout => \inst74|lpm_add_sub_component|auto_generated|result[1]~0_combout\,
	cout => \inst74|lpm_add_sub_component|auto_generated|result[1]~1\);

-- Location: LCCOMB_X32_Y31_N4
\inst74|lpm_add_sub_component|auto_generated|result[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst74|lpm_add_sub_component|auto_generated|result[2]~2_combout\ = (\inst29|lpm_ff_component|dffs\(2) & (!\inst74|lpm_add_sub_component|auto_generated|result[1]~1\)) # (!\inst29|lpm_ff_component|dffs\(2) & 
-- ((\inst74|lpm_add_sub_component|auto_generated|result[1]~1\) # (GND)))
-- \inst74|lpm_add_sub_component|auto_generated|result[2]~3\ = CARRY((!\inst74|lpm_add_sub_component|auto_generated|result[1]~1\) # (!\inst29|lpm_ff_component|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|lpm_ff_component|dffs\(2),
	datad => VCC,
	cin => \inst74|lpm_add_sub_component|auto_generated|result[1]~1\,
	combout => \inst74|lpm_add_sub_component|auto_generated|result[2]~2_combout\,
	cout => \inst74|lpm_add_sub_component|auto_generated|result[2]~3\);

-- Location: LCCOMB_X32_Y31_N6
\inst74|lpm_add_sub_component|auto_generated|result[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst74|lpm_add_sub_component|auto_generated|result[3]~4_combout\ = ((\inst72|lpm_ff_component|dffs\(21) $ (\inst29|lpm_ff_component|dffs\(3) $ (!\inst74|lpm_add_sub_component|auto_generated|result[2]~3\)))) # (GND)
-- \inst74|lpm_add_sub_component|auto_generated|result[3]~5\ = CARRY((\inst72|lpm_ff_component|dffs\(21) & ((\inst29|lpm_ff_component|dffs\(3)) # (!\inst74|lpm_add_sub_component|auto_generated|result[2]~3\))) # (!\inst72|lpm_ff_component|dffs\(21) & 
-- (\inst29|lpm_ff_component|dffs\(3) & !\inst74|lpm_add_sub_component|auto_generated|result[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(21),
	datab => \inst29|lpm_ff_component|dffs\(3),
	datad => VCC,
	cin => \inst74|lpm_add_sub_component|auto_generated|result[2]~3\,
	combout => \inst74|lpm_add_sub_component|auto_generated|result[3]~4_combout\,
	cout => \inst74|lpm_add_sub_component|auto_generated|result[3]~5\);

-- Location: LCCOMB_X32_Y31_N8
\inst74|lpm_add_sub_component|auto_generated|result[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst74|lpm_add_sub_component|auto_generated|result[4]~6_combout\ = (\inst72|lpm_ff_component|dffs\(4) & ((\inst29|lpm_ff_component|dffs\(4) & (\inst74|lpm_add_sub_component|auto_generated|result[3]~5\ & VCC)) # (!\inst29|lpm_ff_component|dffs\(4) & 
-- (!\inst74|lpm_add_sub_component|auto_generated|result[3]~5\)))) # (!\inst72|lpm_ff_component|dffs\(4) & ((\inst29|lpm_ff_component|dffs\(4) & (!\inst74|lpm_add_sub_component|auto_generated|result[3]~5\)) # (!\inst29|lpm_ff_component|dffs\(4) & 
-- ((\inst74|lpm_add_sub_component|auto_generated|result[3]~5\) # (GND)))))
-- \inst74|lpm_add_sub_component|auto_generated|result[4]~7\ = CARRY((\inst72|lpm_ff_component|dffs\(4) & (!\inst29|lpm_ff_component|dffs\(4) & !\inst74|lpm_add_sub_component|auto_generated|result[3]~5\)) # (!\inst72|lpm_ff_component|dffs\(4) & 
-- ((!\inst74|lpm_add_sub_component|auto_generated|result[3]~5\) # (!\inst29|lpm_ff_component|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(4),
	datab => \inst29|lpm_ff_component|dffs\(4),
	datad => VCC,
	cin => \inst74|lpm_add_sub_component|auto_generated|result[3]~5\,
	combout => \inst74|lpm_add_sub_component|auto_generated|result[4]~6_combout\,
	cout => \inst74|lpm_add_sub_component|auto_generated|result[4]~7\);

-- Location: LCCOMB_X32_Y31_N10
\inst74|lpm_add_sub_component|auto_generated|result[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst74|lpm_add_sub_component|auto_generated|result[5]~8_combout\ = ((\inst72|lpm_ff_component|dffs\(1) $ (\inst29|lpm_ff_component|dffs\(5) $ (!\inst74|lpm_add_sub_component|auto_generated|result[4]~7\)))) # (GND)
-- \inst74|lpm_add_sub_component|auto_generated|result[5]~9\ = CARRY((\inst72|lpm_ff_component|dffs\(1) & ((\inst29|lpm_ff_component|dffs\(5)) # (!\inst74|lpm_add_sub_component|auto_generated|result[4]~7\))) # (!\inst72|lpm_ff_component|dffs\(1) & 
-- (\inst29|lpm_ff_component|dffs\(5) & !\inst74|lpm_add_sub_component|auto_generated|result[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(1),
	datab => \inst29|lpm_ff_component|dffs\(5),
	datad => VCC,
	cin => \inst74|lpm_add_sub_component|auto_generated|result[4]~7\,
	combout => \inst74|lpm_add_sub_component|auto_generated|result[5]~8_combout\,
	cout => \inst74|lpm_add_sub_component|auto_generated|result[5]~9\);

-- Location: LCCOMB_X32_Y31_N12
\inst74|lpm_add_sub_component|auto_generated|result[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst74|lpm_add_sub_component|auto_generated|result[6]~10_combout\ = (\inst72|lpm_ff_component|dffs\(6) & ((\inst29|lpm_ff_component|dffs\(6) & (\inst74|lpm_add_sub_component|auto_generated|result[5]~9\ & VCC)) # (!\inst29|lpm_ff_component|dffs\(6) & 
-- (!\inst74|lpm_add_sub_component|auto_generated|result[5]~9\)))) # (!\inst72|lpm_ff_component|dffs\(6) & ((\inst29|lpm_ff_component|dffs\(6) & (!\inst74|lpm_add_sub_component|auto_generated|result[5]~9\)) # (!\inst29|lpm_ff_component|dffs\(6) & 
-- ((\inst74|lpm_add_sub_component|auto_generated|result[5]~9\) # (GND)))))
-- \inst74|lpm_add_sub_component|auto_generated|result[6]~11\ = CARRY((\inst72|lpm_ff_component|dffs\(6) & (!\inst29|lpm_ff_component|dffs\(6) & !\inst74|lpm_add_sub_component|auto_generated|result[5]~9\)) # (!\inst72|lpm_ff_component|dffs\(6) & 
-- ((!\inst74|lpm_add_sub_component|auto_generated|result[5]~9\) # (!\inst29|lpm_ff_component|dffs\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(6),
	datab => \inst29|lpm_ff_component|dffs\(6),
	datad => VCC,
	cin => \inst74|lpm_add_sub_component|auto_generated|result[5]~9\,
	combout => \inst74|lpm_add_sub_component|auto_generated|result[6]~10_combout\,
	cout => \inst74|lpm_add_sub_component|auto_generated|result[6]~11\);

-- Location: LCCOMB_X32_Y31_N14
\inst74|lpm_add_sub_component|auto_generated|result[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst74|lpm_add_sub_component|auto_generated|result[7]~12_combout\ = (\inst29|lpm_ff_component|dffs\(7) & (\inst74|lpm_add_sub_component|auto_generated|result[6]~11\ $ (GND))) # (!\inst29|lpm_ff_component|dffs\(7) & 
-- (!\inst74|lpm_add_sub_component|auto_generated|result[6]~11\ & VCC))
-- \inst74|lpm_add_sub_component|auto_generated|result[7]~13\ = CARRY((\inst29|lpm_ff_component|dffs\(7) & !\inst74|lpm_add_sub_component|auto_generated|result[6]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst29|lpm_ff_component|dffs\(7),
	datad => VCC,
	cin => \inst74|lpm_add_sub_component|auto_generated|result[6]~11\,
	combout => \inst74|lpm_add_sub_component|auto_generated|result[7]~12_combout\,
	cout => \inst74|lpm_add_sub_component|auto_generated|result[7]~13\);

-- Location: LCCOMB_X32_Y31_N16
\inst74|lpm_add_sub_component|auto_generated|result[8]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst74|lpm_add_sub_component|auto_generated|result[8]~14_combout\ = (\inst29|lpm_ff_component|dffs\(8) & ((\inst72|lpm_ff_component|dffs\(8) & (\inst74|lpm_add_sub_component|auto_generated|result[7]~13\ & VCC)) # (!\inst72|lpm_ff_component|dffs\(8) & 
-- (!\inst74|lpm_add_sub_component|auto_generated|result[7]~13\)))) # (!\inst29|lpm_ff_component|dffs\(8) & ((\inst72|lpm_ff_component|dffs\(8) & (!\inst74|lpm_add_sub_component|auto_generated|result[7]~13\)) # (!\inst72|lpm_ff_component|dffs\(8) & 
-- ((\inst74|lpm_add_sub_component|auto_generated|result[7]~13\) # (GND)))))
-- \inst74|lpm_add_sub_component|auto_generated|result[8]~15\ = CARRY((\inst29|lpm_ff_component|dffs\(8) & (!\inst72|lpm_ff_component|dffs\(8) & !\inst74|lpm_add_sub_component|auto_generated|result[7]~13\)) # (!\inst29|lpm_ff_component|dffs\(8) & 
-- ((!\inst74|lpm_add_sub_component|auto_generated|result[7]~13\) # (!\inst72|lpm_ff_component|dffs\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|lpm_ff_component|dffs\(8),
	datab => \inst72|lpm_ff_component|dffs\(8),
	datad => VCC,
	cin => \inst74|lpm_add_sub_component|auto_generated|result[7]~13\,
	combout => \inst74|lpm_add_sub_component|auto_generated|result[8]~14_combout\,
	cout => \inst74|lpm_add_sub_component|auto_generated|result[8]~15\);

-- Location: LCCOMB_X32_Y31_N18
\inst74|lpm_add_sub_component|auto_generated|result[9]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst74|lpm_add_sub_component|auto_generated|result[9]~16_combout\ = ((\inst29|lpm_ff_component|dffs\(9) $ (\inst72|lpm_ff_component|dffs\(9) $ (!\inst74|lpm_add_sub_component|auto_generated|result[8]~15\)))) # (GND)
-- \inst74|lpm_add_sub_component|auto_generated|result[9]~17\ = CARRY((\inst29|lpm_ff_component|dffs\(9) & ((\inst72|lpm_ff_component|dffs\(9)) # (!\inst74|lpm_add_sub_component|auto_generated|result[8]~15\))) # (!\inst29|lpm_ff_component|dffs\(9) & 
-- (\inst72|lpm_ff_component|dffs\(9) & !\inst74|lpm_add_sub_component|auto_generated|result[8]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|lpm_ff_component|dffs\(9),
	datab => \inst72|lpm_ff_component|dffs\(9),
	datad => VCC,
	cin => \inst74|lpm_add_sub_component|auto_generated|result[8]~15\,
	combout => \inst74|lpm_add_sub_component|auto_generated|result[9]~16_combout\,
	cout => \inst74|lpm_add_sub_component|auto_generated|result[9]~17\);

-- Location: LCCOMB_X32_Y31_N20
\inst74|lpm_add_sub_component|auto_generated|result[10]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst74|lpm_add_sub_component|auto_generated|result[10]~18_combout\ = (\inst29|lpm_ff_component|dffs\(10) & (!\inst74|lpm_add_sub_component|auto_generated|result[9]~17\)) # (!\inst29|lpm_ff_component|dffs\(10) & 
-- ((\inst74|lpm_add_sub_component|auto_generated|result[9]~17\) # (GND)))
-- \inst74|lpm_add_sub_component|auto_generated|result[10]~19\ = CARRY((!\inst74|lpm_add_sub_component|auto_generated|result[9]~17\) # (!\inst29|lpm_ff_component|dffs\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|lpm_ff_component|dffs\(10),
	datad => VCC,
	cin => \inst74|lpm_add_sub_component|auto_generated|result[9]~17\,
	combout => \inst74|lpm_add_sub_component|auto_generated|result[10]~18_combout\,
	cout => \inst74|lpm_add_sub_component|auto_generated|result[10]~19\);

-- Location: LCCOMB_X32_Y31_N22
\inst74|lpm_add_sub_component|auto_generated|result[11]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst74|lpm_add_sub_component|auto_generated|result[11]~20_combout\ = (\inst29|lpm_ff_component|dffs\(11) & (\inst74|lpm_add_sub_component|auto_generated|result[10]~19\ $ (GND))) # (!\inst29|lpm_ff_component|dffs\(11) & 
-- (!\inst74|lpm_add_sub_component|auto_generated|result[10]~19\ & VCC))
-- \inst74|lpm_add_sub_component|auto_generated|result[11]~21\ = CARRY((\inst29|lpm_ff_component|dffs\(11) & !\inst74|lpm_add_sub_component|auto_generated|result[10]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst29|lpm_ff_component|dffs\(11),
	datad => VCC,
	cin => \inst74|lpm_add_sub_component|auto_generated|result[10]~19\,
	combout => \inst74|lpm_add_sub_component|auto_generated|result[11]~20_combout\,
	cout => \inst74|lpm_add_sub_component|auto_generated|result[11]~21\);

-- Location: LCCOMB_X32_Y31_N24
\inst74|lpm_add_sub_component|auto_generated|result[12]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst74|lpm_add_sub_component|auto_generated|result[12]~22_combout\ = (\inst72|lpm_ff_component|dffs\(12) & ((\inst29|lpm_ff_component|dffs\(12) & (\inst74|lpm_add_sub_component|auto_generated|result[11]~21\ & VCC)) # (!\inst29|lpm_ff_component|dffs\(12) 
-- & (!\inst74|lpm_add_sub_component|auto_generated|result[11]~21\)))) # (!\inst72|lpm_ff_component|dffs\(12) & ((\inst29|lpm_ff_component|dffs\(12) & (!\inst74|lpm_add_sub_component|auto_generated|result[11]~21\)) # (!\inst29|lpm_ff_component|dffs\(12) & 
-- ((\inst74|lpm_add_sub_component|auto_generated|result[11]~21\) # (GND)))))
-- \inst74|lpm_add_sub_component|auto_generated|result[12]~23\ = CARRY((\inst72|lpm_ff_component|dffs\(12) & (!\inst29|lpm_ff_component|dffs\(12) & !\inst74|lpm_add_sub_component|auto_generated|result[11]~21\)) # (!\inst72|lpm_ff_component|dffs\(12) & 
-- ((!\inst74|lpm_add_sub_component|auto_generated|result[11]~21\) # (!\inst29|lpm_ff_component|dffs\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(12),
	datab => \inst29|lpm_ff_component|dffs\(12),
	datad => VCC,
	cin => \inst74|lpm_add_sub_component|auto_generated|result[11]~21\,
	combout => \inst74|lpm_add_sub_component|auto_generated|result[12]~22_combout\,
	cout => \inst74|lpm_add_sub_component|auto_generated|result[12]~23\);

-- Location: LCCOMB_X32_Y31_N26
\inst74|lpm_add_sub_component|auto_generated|result[13]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst74|lpm_add_sub_component|auto_generated|result[13]~24_combout\ = (\inst29|lpm_ff_component|dffs\(13) & (\inst74|lpm_add_sub_component|auto_generated|result[12]~23\ $ (GND))) # (!\inst29|lpm_ff_component|dffs\(13) & 
-- (!\inst74|lpm_add_sub_component|auto_generated|result[12]~23\ & VCC))
-- \inst74|lpm_add_sub_component|auto_generated|result[13]~25\ = CARRY((\inst29|lpm_ff_component|dffs\(13) & !\inst74|lpm_add_sub_component|auto_generated|result[12]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst29|lpm_ff_component|dffs\(13),
	datad => VCC,
	cin => \inst74|lpm_add_sub_component|auto_generated|result[12]~23\,
	combout => \inst74|lpm_add_sub_component|auto_generated|result[13]~24_combout\,
	cout => \inst74|lpm_add_sub_component|auto_generated|result[13]~25\);

-- Location: LCCOMB_X32_Y31_N28
\inst74|lpm_add_sub_component|auto_generated|result[14]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst74|lpm_add_sub_component|auto_generated|result[14]~26_combout\ = (\inst29|lpm_ff_component|dffs\(14) & (!\inst74|lpm_add_sub_component|auto_generated|result[13]~25\)) # (!\inst29|lpm_ff_component|dffs\(14) & 
-- ((\inst74|lpm_add_sub_component|auto_generated|result[13]~25\) # (GND)))
-- \inst74|lpm_add_sub_component|auto_generated|result[14]~27\ = CARRY((!\inst74|lpm_add_sub_component|auto_generated|result[13]~25\) # (!\inst29|lpm_ff_component|dffs\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst29|lpm_ff_component|dffs\(14),
	datad => VCC,
	cin => \inst74|lpm_add_sub_component|auto_generated|result[13]~25\,
	combout => \inst74|lpm_add_sub_component|auto_generated|result[14]~26_combout\,
	cout => \inst74|lpm_add_sub_component|auto_generated|result[14]~27\);

-- Location: LCCOMB_X32_Y31_N30
\inst74|lpm_add_sub_component|auto_generated|result[15]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst74|lpm_add_sub_component|auto_generated|result[15]~28_combout\ = \inst29|lpm_ff_component|dffs\(15) $ (!\inst74|lpm_add_sub_component|auto_generated|result[14]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst29|lpm_ff_component|dffs\(15),
	cin => \inst74|lpm_add_sub_component|auto_generated|result[14]~27\,
	combout => \inst74|lpm_add_sub_component|auto_generated|result[15]~28_combout\);

-- Location: LCFF_X38_Y31_N3
\inst29|lpm_ff_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst82|LPM_MUX_component|auto_generated|result_node[2]~13_combout\,
	sclr => \inst50~combout\,
	ena => \inst67|deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|lpm_ff_component|dffs\(2));

-- Location: LCCOMB_X35_Y31_N24
\inst8|mem_write~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|mem_write~0_combout\ = (!\inst72|lpm_ff_component|dffs\(22) & (\inst72|lpm_ff_component|dffs\(20) & (!\inst72|lpm_ff_component|dffs\(21) & \inst72|lpm_ff_component|dffs\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|lpm_ff_component|dffs\(22),
	datab => \inst72|lpm_ff_component|dffs\(20),
	datac => \inst72|lpm_ff_component|dffs\(21),
	datad => \inst72|lpm_ff_component|dffs\(23),
	combout => \inst8|mem_write~0_combout\);

-- Location: LCCOMB_X36_Y31_N24
\inst8|mem_write\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|mem_write~combout\ = (!\inst8|process_0~0_combout\ & ((GLOBAL(\inst8|y_select[1]~0clkctrl_outclk\) & ((\inst8|mem_write~0_combout\))) # (!GLOBAL(\inst8|y_select[1]~0clkctrl_outclk\) & (\inst8|mem_write~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|mem_write~combout\,
	datab => \inst8|mem_write~0_combout\,
	datac => \inst8|y_select[1]~0clkctrl_outclk\,
	datad => \inst8|process_0~0_combout\,
	combout => \inst8|mem_write~combout\);

-- Location: LCFF_X36_Y31_N25
\inst31|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst8|mem_write~combout\,
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst31|lpm_ff_component|dffs\(0));

-- Location: LCFF_X32_Y29_N11
\inst59|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \inst31|lpm_ff_component|dffs\(0),
	sclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst59|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X37_Y31_N8
\inst18|lpm_ff_component|dffs[23]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|lpm_ff_component|dffs[23]~feeder_combout\ = \inst72|lpm_ff_component|dffs\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst72|lpm_ff_component|dffs\(23),
	combout => \inst18|lpm_ff_component|dffs[23]~feeder_combout\);

-- Location: LCFF_X37_Y31_N9
\inst18|lpm_ff_component|dffs[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst18|lpm_ff_component|dffs[23]~feeder_combout\,
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|lpm_ff_component|dffs\(23));

-- Location: LCCOMB_X36_Y31_N16
\inst18|lpm_ff_component|dffs[22]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|lpm_ff_component|dffs[22]~feeder_combout\ = \inst72|lpm_ff_component|dffs\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst72|lpm_ff_component|dffs\(22),
	combout => \inst18|lpm_ff_component|dffs[22]~feeder_combout\);

-- Location: LCFF_X36_Y31_N17
\inst18|lpm_ff_component|dffs[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst18|lpm_ff_component|dffs[22]~feeder_combout\,
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|lpm_ff_component|dffs\(22));

-- Location: LCCOMB_X36_Y31_N2
\inst18|lpm_ff_component|dffs[20]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|lpm_ff_component|dffs[20]~feeder_combout\ = \inst72|lpm_ff_component|dffs\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst72|lpm_ff_component|dffs\(20),
	combout => \inst18|lpm_ff_component|dffs[20]~feeder_combout\);

-- Location: LCFF_X36_Y31_N3
\inst18|lpm_ff_component|dffs[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst18|lpm_ff_component|dffs[20]~feeder_combout\,
	sclr => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|lpm_ff_component|dffs\(20));

-- Location: LCCOMB_X38_Y29_N10
\inst12|inst20|inst10|inst1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst20|inst10|inst1~combout\ = \inst12|inst20|inst8|inst4~0_combout\ $ (\inst13|lpm_mux_component|auto_generated|result_node[9]~52_combout\ $ (((!\inst25|lpm_ff_component|dffs\(0) & 
-- \inst14|lpm_mux_component|auto_generated|result_node[9]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|lpm_ff_component|dffs\(0),
	datab => \inst12|inst20|inst8|inst4~0_combout\,
	datac => \inst13|lpm_mux_component|auto_generated|result_node[9]~52_combout\,
	datad => \inst14|lpm_mux_component|auto_generated|result_node[9]~55_combout\,
	combout => \inst12|inst20|inst10|inst1~combout\);

-- Location: LCCOMB_X36_Y29_N10
\inst12|inst10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst10~4_combout\ = (\inst12|inst20|inst10|inst1~combout\) # (\inst15|lpm_mux_component|auto_generated|result_node[10]~9_combout\ $ (\inst13|lpm_mux_component|auto_generated|result_node[10]~53_combout\ $ (\inst12|inst20|inst10|inst4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|lpm_mux_component|auto_generated|result_node[10]~9_combout\,
	datab => \inst13|lpm_mux_component|auto_generated|result_node[10]~53_combout\,
	datac => \inst12|inst20|inst10|inst1~combout\,
	datad => \inst12|inst20|inst10|inst4~0_combout\,
	combout => \inst12|inst10~4_combout\);

-- Location: LCCOMB_X35_Y29_N16
\inst12|inst20|inst14|inst1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst20|inst14|inst1~combout\ = \inst12|inst20|inst13|inst4~0_combout\ $ (\inst13|lpm_mux_component|auto_generated|result_node[13]~56_combout\ $ (((\inst14|lpm_mux_component|auto_generated|result_node[13]~51_combout\ & 
-- !\inst25|lpm_ff_component|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lpm_mux_component|auto_generated|result_node[13]~51_combout\,
	datab => \inst12|inst20|inst13|inst4~0_combout\,
	datac => \inst25|lpm_ff_component|dffs\(0),
	datad => \inst13|lpm_mux_component|auto_generated|result_node[13]~56_combout\,
	combout => \inst12|inst20|inst14|inst1~combout\);

-- Location: LCCOMB_X37_Y29_N10
\inst12|inst10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst10~0_combout\ = (\inst15|lpm_mux_component|auto_generated|result_node[0]~1_combout\ & ((\inst13|lpm_mux_component|auto_generated|result_node[1]~31_combout\ $ (!\inst15|lpm_mux_component|auto_generated|result_node[1]~2_combout\)) # 
-- (!\inst13|lpm_mux_component|auto_generated|result_node[0]~29_combout\))) # (!\inst15|lpm_mux_component|auto_generated|result_node[0]~1_combout\ & ((\inst13|lpm_mux_component|auto_generated|result_node[0]~29_combout\) # 
-- (\inst13|lpm_mux_component|auto_generated|result_node[1]~31_combout\ $ (\inst15|lpm_mux_component|auto_generated|result_node[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|lpm_mux_component|auto_generated|result_node[0]~1_combout\,
	datab => \inst13|lpm_mux_component|auto_generated|result_node[1]~31_combout\,
	datac => \inst15|lpm_mux_component|auto_generated|result_node[1]~2_combout\,
	datad => \inst13|lpm_mux_component|auto_generated|result_node[0]~29_combout\,
	combout => \inst12|inst10~0_combout\);

-- Location: LCCOMB_X36_Y29_N28
\inst12|inst10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst10~1_combout\ = (\inst12|inst10~10_combout\) # ((\inst12|inst20|inst14|inst1~combout\) # ((\inst12|inst20|inst5|inst1~combout\) # (\inst12|inst10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst10~10_combout\,
	datab => \inst12|inst20|inst14|inst1~combout\,
	datac => \inst12|inst20|inst5|inst1~combout\,
	datad => \inst12|inst10~0_combout\,
	combout => \inst12|inst10~1_combout\);

-- Location: LCCOMB_X37_Y28_N20
\inst12|inst10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst10~2_combout\ = (\inst12|inst20|inst13|inst1~combout\) # (\inst13|lpm_mux_component|auto_generated|result_node[2]~33_combout\ $ (\inst12|inst20|inst2|inst4~0_combout\ $ (\inst15|lpm_mux_component|auto_generated|result_node[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst20|inst13|inst1~combout\,
	datab => \inst13|lpm_mux_component|auto_generated|result_node[2]~33_combout\,
	datac => \inst12|inst20|inst2|inst4~0_combout\,
	datad => \inst15|lpm_mux_component|auto_generated|result_node[2]~4_combout\,
	combout => \inst12|inst10~2_combout\);

-- Location: LCCOMB_X36_Y29_N16
\inst12|inst10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst10~3_combout\ = (\inst12|inst10~2_combout\) # (\inst13|lpm_mux_component|auto_generated|result_node[11]~54_combout\ $ (\inst12|inst20|inst11|inst4~0_combout\ $ (\inst15|lpm_mux_component|auto_generated|result_node[11]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|lpm_mux_component|auto_generated|result_node[11]~54_combout\,
	datab => \inst12|inst20|inst11|inst4~0_combout\,
	datac => \inst15|lpm_mux_component|auto_generated|result_node[11]~8_combout\,
	datad => \inst12|inst10~2_combout\,
	combout => \inst12|inst10~3_combout\);

-- Location: LCCOMB_X37_Y29_N30
\inst12|inst20|inst6|inst1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst20|inst6|inst1~combout\ = \inst15|lpm_mux_component|auto_generated|result_node[4]~6_combout\ $ (\inst13|lpm_mux_component|auto_generated|result_node[4]~48_combout\ $ (\inst12|inst20|inst4|inst4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|lpm_mux_component|auto_generated|result_node[4]~6_combout\,
	datac => \inst13|lpm_mux_component|auto_generated|result_node[4]~48_combout\,
	datad => \inst12|inst20|inst4|inst4~0_combout\,
	combout => \inst12|inst20|inst6|inst1~combout\);

-- Location: LCCOMB_X33_Y29_N20
\inst12|inst10~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst10~5_combout\ = (\inst12|inst20|inst9|inst1~combout\) # (\inst12|inst20|inst9|inst4~0_combout\ $ (\inst15|lpm_mux_component|auto_generated|result_node[8]~10_combout\ $ (\inst13|lpm_mux_component|auto_generated|result_node[8]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst20|inst9|inst1~combout\,
	datab => \inst12|inst20|inst9|inst4~0_combout\,
	datac => \inst15|lpm_mux_component|auto_generated|result_node[8]~10_combout\,
	datad => \inst13|lpm_mux_component|auto_generated|result_node[8]~51_combout\,
	combout => \inst12|inst10~5_combout\);

-- Location: LCCOMB_X36_Y29_N22
\inst12|inst10~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst10~6_combout\ = (\inst12|inst20|inst6|inst1~combout\) # ((\inst12|inst10~5_combout\) # (\inst12|inst4|lpm_xor_component|xor_cascade[6][1]~0_combout\ $ (\inst12|inst20|inst5|inst4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst4|lpm_xor_component|xor_cascade[6][1]~0_combout\,
	datab => \inst12|inst20|inst6|inst1~combout\,
	datac => \inst12|inst10~5_combout\,
	datad => \inst12|inst20|inst5|inst4~0_combout\,
	combout => \inst12|inst10~6_combout\);

-- Location: LCCOMB_X36_Y29_N18
\inst12|inst10~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst10~7_combout\ = (\inst12|inst10~6_combout\) # (\inst13|lpm_mux_component|auto_generated|result_node[14]~58_combout\ $ (\inst15|lpm_mux_component|auto_generated|result_node[14]~11_combout\ $ (\inst12|inst20|inst14|inst4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|lpm_mux_component|auto_generated|result_node[14]~58_combout\,
	datab => \inst12|inst10~6_combout\,
	datac => \inst15|lpm_mux_component|auto_generated|result_node[14]~11_combout\,
	datad => \inst12|inst20|inst14|inst4~0_combout\,
	combout => \inst12|inst10~7_combout\);

-- Location: LCCOMB_X36_Y29_N20
\inst12|inst10~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst10~8_combout\ = (\inst12|inst10~4_combout\) # ((\inst12|inst10~1_combout\) # ((\inst12|inst10~3_combout\) # (\inst12|inst10~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst10~4_combout\,
	datab => \inst12|inst10~1_combout\,
	datac => \inst12|inst10~3_combout\,
	datad => \inst12|inst10~7_combout\,
	combout => \inst12|inst10~8_combout\);

-- Location: LCCOMB_X32_Y29_N20
\inst37|inst7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst37|inst7~combout\ = LCELL((\inst33|lpm_ff_component|dffs\(13) & (\clock~combout\ & \inst59|lpm_ff_component|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|lpm_ff_component|dffs\(13),
	datab => \clock~combout\,
	datad => \inst59|lpm_ff_component|dffs\(0),
	combout => \inst37|inst7~combout\);

-- Location: CLKCTRL_G9
\inst37|inst7~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst37|inst7~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst37|inst7~clkctrl_outclk\);

-- Location: LCCOMB_X35_Y29_N2
\inst37|HEX_DISPLAY|lpm_ff_component|dffs[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst37|HEX_DISPLAY|lpm_ff_component|dffs[6]~feeder_combout\ = \inst34|lpm_ff_component|dffs\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst34|lpm_ff_component|dffs\(6),
	combout => \inst37|HEX_DISPLAY|lpm_ff_component|dffs[6]~feeder_combout\);

-- Location: LCFF_X35_Y29_N3
\inst37|HEX_DISPLAY|lpm_ff_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst37|inst7~clkctrl_outclk\,
	datain => \inst37|HEX_DISPLAY|lpm_ff_component|dffs[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|HEX_DISPLAY|lpm_ff_component|dffs\(6));

-- Location: LCCOMB_X35_Y29_N28
\inst37|HEX_DISPLAY|lpm_ff_component|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst37|HEX_DISPLAY|lpm_ff_component|dffs[5]~feeder_combout\ = \inst34|lpm_ff_component|dffs\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst34|lpm_ff_component|dffs\(5),
	combout => \inst37|HEX_DISPLAY|lpm_ff_component|dffs[5]~feeder_combout\);

-- Location: LCFF_X35_Y29_N29
\inst37|HEX_DISPLAY|lpm_ff_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst37|inst7~clkctrl_outclk\,
	datain => \inst37|HEX_DISPLAY|lpm_ff_component|dffs[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|HEX_DISPLAY|lpm_ff_component|dffs\(5));

-- Location: LCCOMB_X35_Y29_N22
\inst37|HEX_DISPLAY|lpm_ff_component|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst37|HEX_DISPLAY|lpm_ff_component|dffs[4]~feeder_combout\ = \inst34|lpm_ff_component|dffs\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst34|lpm_ff_component|dffs\(4),
	combout => \inst37|HEX_DISPLAY|lpm_ff_component|dffs[4]~feeder_combout\);

-- Location: LCFF_X35_Y29_N23
\inst37|HEX_DISPLAY|lpm_ff_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst37|inst7~clkctrl_outclk\,
	datain => \inst37|HEX_DISPLAY|lpm_ff_component|dffs[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|HEX_DISPLAY|lpm_ff_component|dffs\(4));

-- Location: LCFF_X31_Y3_N9
\inst37|HEX_DISPLAY|lpm_ff_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst37|inst7~clkctrl_outclk\,
	sdata => \inst34|lpm_ff_component|dffs\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|HEX_DISPLAY|lpm_ff_component|dffs\(3));

-- Location: LCFF_X32_Y3_N9
\inst37|HEX_DISPLAY|lpm_ff_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst37|inst7~clkctrl_outclk\,
	sdata => \inst34|lpm_ff_component|dffs\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|HEX_DISPLAY|lpm_ff_component|dffs\(2));

-- Location: LCFF_X32_Y3_N19
\inst37|HEX_DISPLAY|lpm_ff_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst37|inst7~clkctrl_outclk\,
	sdata => \inst34|lpm_ff_component|dffs\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|HEX_DISPLAY|lpm_ff_component|dffs\(1));

-- Location: LCCOMB_X32_Y3_N20
\inst37|HEX_DISPLAY|lpm_ff_component|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst37|HEX_DISPLAY|lpm_ff_component|dffs[0]~feeder_combout\ = \inst34|lpm_ff_component|dffs\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst34|lpm_ff_component|dffs\(0),
	combout => \inst37|HEX_DISPLAY|lpm_ff_component|dffs[0]~feeder_combout\);

-- Location: LCFF_X32_Y3_N21
\inst37|HEX_DISPLAY|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst37|inst7~clkctrl_outclk\,
	datain => \inst37|HEX_DISPLAY|lpm_ff_component|dffs[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|HEX_DISPLAY|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X37_Y32_N16
\inst41|lpm_ff_component|dffs[23]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst41|lpm_ff_component|dffs[23]~feeder_combout\ = \inst18|lpm_ff_component|dffs\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst18|lpm_ff_component|dffs\(23),
	combout => \inst41|lpm_ff_component|dffs[23]~feeder_combout\);

-- Location: LCFF_X37_Y32_N17
\inst41|lpm_ff_component|dffs[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst41|lpm_ff_component|dffs[23]~feeder_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst41|lpm_ff_component|dffs\(23));

-- Location: LCCOMB_X37_Y32_N26
\inst41|lpm_ff_component|dffs[22]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst41|lpm_ff_component|dffs[22]~feeder_combout\ = \inst18|lpm_ff_component|dffs\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|lpm_ff_component|dffs\(22),
	combout => \inst41|lpm_ff_component|dffs[22]~feeder_combout\);

-- Location: LCFF_X37_Y32_N27
\inst41|lpm_ff_component|dffs[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst41|lpm_ff_component|dffs[22]~feeder_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst41|lpm_ff_component|dffs\(22));

-- Location: LCCOMB_X37_Y32_N20
\inst41|lpm_ff_component|dffs[21]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst41|lpm_ff_component|dffs[21]~feeder_combout\ = \inst17|lpm_ff_component|dffs\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|lpm_ff_component|dffs\(2),
	combout => \inst41|lpm_ff_component|dffs[21]~feeder_combout\);

-- Location: LCFF_X37_Y32_N21
\inst41|lpm_ff_component|dffs[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst41|lpm_ff_component|dffs[21]~feeder_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst41|lpm_ff_component|dffs\(21));

-- Location: LCCOMB_X37_Y32_N6
\inst41|lpm_ff_component|dffs[20]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst41|lpm_ff_component|dffs[20]~feeder_combout\ = \inst18|lpm_ff_component|dffs\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|lpm_ff_component|dffs\(20),
	combout => \inst41|lpm_ff_component|dffs[20]~feeder_combout\);

-- Location: LCFF_X37_Y32_N7
\inst41|lpm_ff_component|dffs[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst41|lpm_ff_component|dffs[20]~feeder_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst41|lpm_ff_component|dffs\(20));

-- Location: LCCOMB_X37_Y32_N24
\inst41|lpm_ff_component|dffs[16]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst41|lpm_ff_component|dffs[16]~feeder_combout\ = \inst18|lpm_ff_component|dffs\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst18|lpm_ff_component|dffs\(23),
	combout => \inst41|lpm_ff_component|dffs[16]~feeder_combout\);

-- Location: LCFF_X37_Y32_N25
\inst41|lpm_ff_component|dffs[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst41|lpm_ff_component|dffs[16]~feeder_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst41|lpm_ff_component|dffs\(16));

-- Location: LCFF_X34_Y32_N11
\inst41|lpm_ff_component|dffs[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst18|lpm_ff_component|dffs\(12),
	sclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst41|lpm_ff_component|dffs\(12));

-- Location: LCCOMB_X37_Y32_N18
\inst41|lpm_ff_component|dffs[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst41|lpm_ff_component|dffs[9]~feeder_combout\ = \inst18|lpm_ff_component|dffs\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst18|lpm_ff_component|dffs\(9),
	combout => \inst41|lpm_ff_component|dffs[9]~feeder_combout\);

-- Location: LCFF_X37_Y32_N19
\inst41|lpm_ff_component|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst41|lpm_ff_component|dffs[9]~feeder_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst41|lpm_ff_component|dffs\(9));

-- Location: LCCOMB_X37_Y32_N28
\inst41|lpm_ff_component|dffs[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst41|lpm_ff_component|dffs[8]~feeder_combout\ = \inst18|lpm_ff_component|dffs\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|lpm_ff_component|dffs\(8),
	combout => \inst41|lpm_ff_component|dffs[8]~feeder_combout\);

-- Location: LCFF_X37_Y32_N29
\inst41|lpm_ff_component|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst41|lpm_ff_component|dffs[8]~feeder_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst41|lpm_ff_component|dffs\(8));

-- Location: LCCOMB_X37_Y32_N14
\inst41|lpm_ff_component|dffs[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst41|lpm_ff_component|dffs[6]~feeder_combout\ = \inst17|lpm_ff_component|dffs\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst17|lpm_ff_component|dffs\(5),
	combout => \inst41|lpm_ff_component|dffs[6]~feeder_combout\);

-- Location: LCFF_X37_Y32_N15
\inst41|lpm_ff_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst41|lpm_ff_component|dffs[6]~feeder_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst41|lpm_ff_component|dffs\(6));

-- Location: LCCOMB_X37_Y32_N8
\inst41|lpm_ff_component|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst41|lpm_ff_component|dffs[5]~feeder_combout\ = \inst17|lpm_ff_component|dffs\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|lpm_ff_component|dffs\(0),
	combout => \inst41|lpm_ff_component|dffs[5]~feeder_combout\);

-- Location: LCFF_X37_Y32_N9
\inst41|lpm_ff_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst41|lpm_ff_component|dffs[5]~feeder_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst41|lpm_ff_component|dffs\(5));

-- Location: LCCOMB_X37_Y32_N2
\inst41|lpm_ff_component|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst41|lpm_ff_component|dffs[4]~feeder_combout\ = \inst17|lpm_ff_component|dffs\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst17|lpm_ff_component|dffs\(3),
	combout => \inst41|lpm_ff_component|dffs[4]~feeder_combout\);

-- Location: LCFF_X37_Y32_N3
\inst41|lpm_ff_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst41|lpm_ff_component|dffs[4]~feeder_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst41|lpm_ff_component|dffs\(4));

-- Location: LCCOMB_X37_Y32_N4
\inst41|lpm_ff_component|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst41|lpm_ff_component|dffs[3]~feeder_combout\ = \inst17|lpm_ff_component|dffs\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|lpm_ff_component|dffs\(2),
	combout => \inst41|lpm_ff_component|dffs[3]~feeder_combout\);

-- Location: LCFF_X37_Y32_N5
\inst41|lpm_ff_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst41|lpm_ff_component|dffs[3]~feeder_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst41|lpm_ff_component|dffs\(3));

-- Location: LCCOMB_X37_Y32_N30
\inst41|lpm_ff_component|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst41|lpm_ff_component|dffs[1]~feeder_combout\ = \inst17|lpm_ff_component|dffs\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|lpm_ff_component|dffs\(0),
	combout => \inst41|lpm_ff_component|dffs[1]~feeder_combout\);

-- Location: LCFF_X37_Y32_N31
\inst41|lpm_ff_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst41|lpm_ff_component|dffs[1]~feeder_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst41|lpm_ff_component|dffs\(1));

-- Location: LCCOMB_X33_Y29_N0
\inst37|inst6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst37|inst6~combout\ = LCELL((\inst59|lpm_ff_component|dffs\(0) & (\clock~combout\ & \inst33|lpm_ff_component|dffs\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst59|lpm_ff_component|dffs\(0),
	datac => \clock~combout\,
	datad => \inst33|lpm_ff_component|dffs\(12),
	combout => \inst37|inst6~combout\);

-- Location: CLKCTRL_G10
\inst37|inst6~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst37|inst6~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst37|inst6~clkctrl_outclk\);

-- Location: LCCOMB_X57_Y1_N16
\inst37|LED|lpm_ff_component|dffs[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst37|LED|lpm_ff_component|dffs[7]~feeder_combout\ = \inst34|lpm_ff_component|dffs\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst34|lpm_ff_component|dffs\(7),
	combout => \inst37|LED|lpm_ff_component|dffs[7]~feeder_combout\);

-- Location: LCFF_X57_Y1_N17
\inst37|LED|lpm_ff_component|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst37|inst6~clkctrl_outclk\,
	datain => \inst37|LED|lpm_ff_component|dffs[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|LED|lpm_ff_component|dffs\(7));

-- Location: LCFF_X57_Y1_N19
\inst37|LED|lpm_ff_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst37|inst6~clkctrl_outclk\,
	sdata => \inst34|lpm_ff_component|dffs\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|LED|lpm_ff_component|dffs\(6));

-- Location: LCCOMB_X57_Y1_N12
\inst37|LED|lpm_ff_component|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst37|LED|lpm_ff_component|dffs[5]~feeder_combout\ = \inst34|lpm_ff_component|dffs\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst34|lpm_ff_component|dffs\(5),
	combout => \inst37|LED|lpm_ff_component|dffs[5]~feeder_combout\);

-- Location: LCFF_X57_Y1_N13
\inst37|LED|lpm_ff_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst37|inst6~clkctrl_outclk\,
	datain => \inst37|LED|lpm_ff_component|dffs[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|LED|lpm_ff_component|dffs\(5));

-- Location: LCCOMB_X57_Y1_N6
\inst37|LED|lpm_ff_component|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst37|LED|lpm_ff_component|dffs[4]~feeder_combout\ = \inst34|lpm_ff_component|dffs\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst34|lpm_ff_component|dffs\(4),
	combout => \inst37|LED|lpm_ff_component|dffs[4]~feeder_combout\);

-- Location: LCFF_X57_Y1_N7
\inst37|LED|lpm_ff_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst37|inst6~clkctrl_outclk\,
	datain => \inst37|LED|lpm_ff_component|dffs[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|LED|lpm_ff_component|dffs\(4));

-- Location: LCFF_X31_Y3_N3
\inst37|LED|lpm_ff_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst37|inst6~clkctrl_outclk\,
	sdata => \inst34|lpm_ff_component|dffs\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|LED|lpm_ff_component|dffs\(3));

-- Location: LCFF_X32_Y3_N7
\inst37|LED|lpm_ff_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst37|inst6~clkctrl_outclk\,
	sdata => \inst34|lpm_ff_component|dffs\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|LED|lpm_ff_component|dffs\(2));

-- Location: LCFF_X32_Y3_N17
\inst37|LED|lpm_ff_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst37|inst6~clkctrl_outclk\,
	sdata => \inst34|lpm_ff_component|dffs\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|LED|lpm_ff_component|dffs\(1));

-- Location: LCCOMB_X32_Y3_N2
\inst37|LED|lpm_ff_component|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst37|LED|lpm_ff_component|dffs[0]~feeder_combout\ = \inst34|lpm_ff_component|dffs\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst34|lpm_ff_component|dffs\(0),
	combout => \inst37|LED|lpm_ff_component|dffs[0]~feeder_combout\);

-- Location: LCFF_X32_Y3_N3
\inst37|LED|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst37|inst6~clkctrl_outclk\,
	datain => \inst37|LED|lpm_ff_component|dffs[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|LED|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X27_Y25_N8
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: M4K_X26_Y25
\inst38|inst|altsyncram_component|auto_generated|ram_block1a20\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "MemoryInitialization.mif",
	init_file_layout => "port_a",
	logical_ram_name => "MemoryInterface:inst38|MainMemory:inst|altsyncram:altsyncram_component|altsyncram_ghe1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 20,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_b_address_width => 10,
	port_b_data_width => 4,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \inst56~combout\,
	clk0 => \ALT_INV_clock~clkctrl_outclk\,
	portadatain => \inst38|inst|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \inst38|inst|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst38|inst|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\);

-- Location: LCCOMB_X25_Y26_N20
\inst44|LPM_MUX_component|auto_generated|result_node[23]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst44|LPM_MUX_component|auto_generated|result_node[23]~16_combout\ = (!\inst16~0_combout\ & \inst38|inst|altsyncram_component|auto_generated|q_a\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16~0_combout\,
	datac => \inst38|inst|altsyncram_component|auto_generated|q_a\(23),
	combout => \inst44|LPM_MUX_component|auto_generated|result_node[23]~16_combout\);

-- Location: LCCOMB_X25_Y26_N30
\inst44|LPM_MUX_component|auto_generated|result_node[22]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst44|LPM_MUX_component|auto_generated|result_node[22]~17_combout\ = (!\inst16~0_combout\ & \inst38|inst|altsyncram_component|auto_generated|q_a\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16~0_combout\,
	datac => \inst38|inst|altsyncram_component|auto_generated|q_a\(22),
	combout => \inst44|LPM_MUX_component|auto_generated|result_node[22]~17_combout\);

-- Location: LCCOMB_X25_Y26_N24
\inst44|LPM_MUX_component|auto_generated|result_node[21]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst44|LPM_MUX_component|auto_generated|result_node[21]~18_combout\ = (!\inst16~0_combout\ & \inst38|inst|altsyncram_component|auto_generated|q_a\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16~0_combout\,
	datac => \inst38|inst|altsyncram_component|auto_generated|q_a\(21),
	combout => \inst44|LPM_MUX_component|auto_generated|result_node[21]~18_combout\);

-- Location: LCCOMB_X25_Y26_N26
\inst44|LPM_MUX_component|auto_generated|result_node[20]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst44|LPM_MUX_component|auto_generated|result_node[20]~19_combout\ = (!\inst16~0_combout\ & \inst38|inst|altsyncram_component|auto_generated|q_a\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16~0_combout\,
	datac => \inst38|inst|altsyncram_component|auto_generated|q_a\(20),
	combout => \inst44|LPM_MUX_component|auto_generated|result_node[20]~19_combout\);

-- Location: M4K_X26_Y26
\inst38|inst|altsyncram_component|auto_generated|ram_block1a16\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "MemoryInitialization.mif",
	init_file_layout => "port_a",
	logical_ram_name => "MemoryInterface:inst38|MainMemory:inst|altsyncram:altsyncram_component|altsyncram_ghe1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 16,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_b_address_width => 10,
	port_b_data_width => 4,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \inst56~combout\,
	clk0 => \ALT_INV_clock~clkctrl_outclk\,
	portadatain => \inst38|inst|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \inst38|inst|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst38|inst|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

-- Location: LCCOMB_X25_Y26_N28
\inst44|LPM_MUX_component|auto_generated|result_node[19]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst44|LPM_MUX_component|auto_generated|result_node[19]~20_combout\ = (\inst38|inst|altsyncram_component|auto_generated|q_a\(19) & !\inst16~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst38|inst|altsyncram_component|auto_generated|q_a\(19),
	datac => \inst16~0_combout\,
	combout => \inst44|LPM_MUX_component|auto_generated|result_node[19]~20_combout\);

-- Location: LCCOMB_X25_Y26_N22
\inst44|LPM_MUX_component|auto_generated|result_node[18]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst44|LPM_MUX_component|auto_generated|result_node[18]~21_combout\ = (!\inst16~0_combout\ & \inst38|inst|altsyncram_component|auto_generated|q_a\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16~0_combout\,
	datac => \inst38|inst|altsyncram_component|auto_generated|q_a\(18),
	combout => \inst44|LPM_MUX_component|auto_generated|result_node[18]~21_combout\);

-- Location: LCCOMB_X25_Y26_N8
\inst44|LPM_MUX_component|auto_generated|result_node[17]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst44|LPM_MUX_component|auto_generated|result_node[17]~22_combout\ = (\inst38|inst|altsyncram_component|auto_generated|q_a\(17) & !\inst16~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst38|inst|altsyncram_component|auto_generated|q_a\(17),
	datac => \inst16~0_combout\,
	combout => \inst44|LPM_MUX_component|auto_generated|result_node[17]~22_combout\);

-- Location: LCCOMB_X25_Y26_N2
\inst44|LPM_MUX_component|auto_generated|result_node[16]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst44|LPM_MUX_component|auto_generated|result_node[16]~23_combout\ = (\inst38|inst|altsyncram_component|auto_generated|q_a\(16) & !\inst16~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst|altsyncram_component|auto_generated|q_a\(16),
	datac => \inst16~0_combout\,
	combout => \inst44|LPM_MUX_component|auto_generated|result_node[16]~23_combout\);

-- Location: LCCOMB_X35_Y30_N12
\inst44|LPM_MUX_component|auto_generated|result_node[15]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst44|LPM_MUX_component|auto_generated|result_node[15]~24_combout\ = (!\inst16~0_combout\ & \inst38|inst|altsyncram_component|auto_generated|q_a\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16~0_combout\,
	datac => \inst38|inst|altsyncram_component|auto_generated|q_a\(15),
	combout => \inst44|LPM_MUX_component|auto_generated|result_node[15]~24_combout\);

-- Location: LCCOMB_X35_Y30_N14
\inst44|LPM_MUX_component|auto_generated|result_node[12]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst44|LPM_MUX_component|auto_generated|result_node[12]~25_combout\ = (!\inst16~0_combout\ & \inst38|inst|altsyncram_component|auto_generated|q_a\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16~0_combout\,
	datac => \inst38|inst|altsyncram_component|auto_generated|q_a\(12),
	combout => \inst44|LPM_MUX_component|auto_generated|result_node[12]~25_combout\);

-- Location: LCCOMB_X25_Y26_N4
\inst44|LPM_MUX_component|auto_generated|result_node[1]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst44|LPM_MUX_component|auto_generated|result_node[1]~26_combout\ = (\inst16~0_combout\ & (\inst44|LPM_MUX_component|auto_generated|result_node[1]~2_combout\)) # (!\inst16~0_combout\ & ((\inst38|inst|altsyncram_component|auto_generated|q_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16~0_combout\,
	datab => \inst44|LPM_MUX_component|auto_generated|result_node[1]~2_combout\,
	datac => \inst38|inst|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst44|LPM_MUX_component|auto_generated|result_node[1]~26_combout\);

-- Location: LCCOMB_X37_Y28_N14
\inst44|LPM_MUX_component|auto_generated|result_node[0]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst44|LPM_MUX_component|auto_generated|result_node[0]~27_combout\ = (\inst16~0_combout\ & ((\inst44|LPM_MUX_component|auto_generated|result_node[0]~1_combout\))) # (!\inst16~0_combout\ & (\inst38|inst|altsyncram_component|auto_generated|q_a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst38|inst|altsyncram_component|auto_generated|q_a\(0),
	datac => \inst16~0_combout\,
	datad => \inst44|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	combout => \inst44|LPM_MUX_component|auto_generated|result_node[0]~27_combout\);

-- Location: LCCOMB_X36_Y28_N20
\inst7|Reg1|lpm_ff_component|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg1|lpm_ff_component|dffs[4]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst45|lpm_ff_component|dffs\(4),
	combout => \inst7|Reg1|lpm_ff_component|dffs[4]~feeder_combout\);

-- Location: LCFF_X36_Y28_N21
\inst7|Reg1|lpm_ff_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg1|lpm_ff_component|dffs[4]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst41~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg1|lpm_ff_component|dffs\(4));

-- Location: LCCOMB_X36_Y30_N2
\inst7|Reg1|lpm_ff_component|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg1|lpm_ff_component|dffs[3]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst45|lpm_ff_component|dffs\(3),
	combout => \inst7|Reg1|lpm_ff_component|dffs[3]~feeder_combout\);

-- Location: LCFF_X36_Y30_N3
\inst7|Reg1|lpm_ff_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg1|lpm_ff_component|dffs[3]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst41~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg1|lpm_ff_component|dffs\(3));

-- Location: LCCOMB_X36_Y30_N4
\inst7|Reg1|lpm_ff_component|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg1|lpm_ff_component|dffs[2]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(2),
	combout => \inst7|Reg1|lpm_ff_component|dffs[2]~feeder_combout\);

-- Location: LCFF_X36_Y30_N5
\inst7|Reg1|lpm_ff_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg1|lpm_ff_component|dffs[2]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst41~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg1|lpm_ff_component|dffs\(2));

-- Location: LCCOMB_X38_Y28_N12
\inst7|Reg1|lpm_ff_component|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg1|lpm_ff_component|dffs[1]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst45|lpm_ff_component|dffs\(1),
	combout => \inst7|Reg1|lpm_ff_component|dffs[1]~feeder_combout\);

-- Location: LCFF_X38_Y28_N13
\inst7|Reg1|lpm_ff_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg1|lpm_ff_component|dffs[1]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst41~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg1|lpm_ff_component|dffs\(1));

-- Location: LCCOMB_X36_Y28_N30
\inst7|Reg1|lpm_ff_component|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg1|lpm_ff_component|dffs[0]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst45|lpm_ff_component|dffs\(0),
	combout => \inst7|Reg1|lpm_ff_component|dffs[0]~feeder_combout\);

-- Location: LCFF_X36_Y28_N31
\inst7|Reg1|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg1|lpm_ff_component|dffs[0]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst41~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg1|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X61_Y28_N0
\inst7|Reg15|lpm_ff_component|dffs[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg15|lpm_ff_component|dffs[15]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(15),
	combout => \inst7|Reg15|lpm_ff_component|dffs[15]~feeder_combout\);

-- Location: LCCOMB_X32_Y29_N30
\inst7|inst49~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst49~0_combout\ = (\inst65|lpm_ff_component|dffs\(3) & (\inst65|lpm_ff_component|dffs\(2) & (\inst7|inst41~4_combout\ & \inst65|lpm_ff_component|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|lpm_ff_component|dffs\(3),
	datab => \inst65|lpm_ff_component|dffs\(2),
	datac => \inst7|inst41~4_combout\,
	datad => \inst65|lpm_ff_component|dffs\(1),
	combout => \inst7|inst49~0_combout\);

-- Location: LCFF_X61_Y28_N1
\inst7|Reg15|lpm_ff_component|dffs[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg15|lpm_ff_component|dffs[15]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst49~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg15|lpm_ff_component|dffs\(15));

-- Location: LCCOMB_X61_Y28_N2
\inst7|Reg15|lpm_ff_component|dffs[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg15|lpm_ff_component|dffs[14]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(14),
	combout => \inst7|Reg15|lpm_ff_component|dffs[14]~feeder_combout\);

-- Location: LCFF_X61_Y28_N3
\inst7|Reg15|lpm_ff_component|dffs[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg15|lpm_ff_component|dffs[14]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst49~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg15|lpm_ff_component|dffs\(14));

-- Location: LCCOMB_X61_Y28_N12
\inst7|Reg15|lpm_ff_component|dffs[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg15|lpm_ff_component|dffs[13]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(13),
	combout => \inst7|Reg15|lpm_ff_component|dffs[13]~feeder_combout\);

-- Location: LCFF_X61_Y28_N13
\inst7|Reg15|lpm_ff_component|dffs[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg15|lpm_ff_component|dffs[13]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst49~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg15|lpm_ff_component|dffs\(13));

-- Location: LCCOMB_X61_Y28_N22
\inst7|Reg15|lpm_ff_component|dffs[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg15|lpm_ff_component|dffs[12]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(12),
	combout => \inst7|Reg15|lpm_ff_component|dffs[12]~feeder_combout\);

-- Location: LCFF_X61_Y28_N23
\inst7|Reg15|lpm_ff_component|dffs[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg15|lpm_ff_component|dffs[12]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst49~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg15|lpm_ff_component|dffs\(12));

-- Location: LCCOMB_X61_Y28_N8
\inst7|Reg15|lpm_ff_component|dffs[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg15|lpm_ff_component|dffs[11]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(11),
	combout => \inst7|Reg15|lpm_ff_component|dffs[11]~feeder_combout\);

-- Location: LCFF_X61_Y28_N9
\inst7|Reg15|lpm_ff_component|dffs[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg15|lpm_ff_component|dffs[11]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst49~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg15|lpm_ff_component|dffs\(11));

-- Location: LCFF_X61_Y28_N11
\inst7|Reg15|lpm_ff_component|dffs[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(10),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst49~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg15|lpm_ff_component|dffs\(10));

-- Location: LCFF_X61_Y28_N21
\inst7|Reg15|lpm_ff_component|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(9),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst49~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg15|lpm_ff_component|dffs\(9));

-- Location: LCFF_X61_Y28_N31
\inst7|Reg15|lpm_ff_component|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(8),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst49~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg15|lpm_ff_component|dffs\(8));

-- Location: LCCOMB_X61_Y28_N16
\inst7|Reg15|lpm_ff_component|dffs[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg15|lpm_ff_component|dffs[7]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(7),
	combout => \inst7|Reg15|lpm_ff_component|dffs[7]~feeder_combout\);

-- Location: LCFF_X61_Y28_N17
\inst7|Reg15|lpm_ff_component|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg15|lpm_ff_component|dffs[7]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst49~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg15|lpm_ff_component|dffs\(7));

-- Location: LCCOMB_X61_Y28_N26
\inst7|Reg15|lpm_ff_component|dffs[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg15|lpm_ff_component|dffs[6]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(6),
	combout => \inst7|Reg15|lpm_ff_component|dffs[6]~feeder_combout\);

-- Location: LCFF_X61_Y28_N27
\inst7|Reg15|lpm_ff_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg15|lpm_ff_component|dffs[6]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst49~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg15|lpm_ff_component|dffs\(6));

-- Location: LCCOMB_X61_Y28_N4
\inst7|Reg15|lpm_ff_component|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg15|lpm_ff_component|dffs[5]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(5),
	combout => \inst7|Reg15|lpm_ff_component|dffs[5]~feeder_combout\);

-- Location: LCFF_X61_Y28_N5
\inst7|Reg15|lpm_ff_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg15|lpm_ff_component|dffs[5]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst49~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg15|lpm_ff_component|dffs\(5));

-- Location: LCFF_X61_Y28_N7
\inst7|Reg15|lpm_ff_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(4),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst49~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg15|lpm_ff_component|dffs\(4));

-- Location: LCCOMB_X61_Y28_N24
\inst7|Reg15|lpm_ff_component|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg15|lpm_ff_component|dffs[3]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(3),
	combout => \inst7|Reg15|lpm_ff_component|dffs[3]~feeder_combout\);

-- Location: LCFF_X61_Y28_N25
\inst7|Reg15|lpm_ff_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg15|lpm_ff_component|dffs[3]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst49~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg15|lpm_ff_component|dffs\(3));

-- Location: LCCOMB_X61_Y28_N18
\inst7|Reg15|lpm_ff_component|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg15|lpm_ff_component|dffs[2]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(2),
	combout => \inst7|Reg15|lpm_ff_component|dffs[2]~feeder_combout\);

-- Location: LCFF_X61_Y28_N19
\inst7|Reg15|lpm_ff_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg15|lpm_ff_component|dffs[2]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst49~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg15|lpm_ff_component|dffs\(2));

-- Location: LCCOMB_X61_Y28_N28
\inst7|Reg15|lpm_ff_component|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg15|lpm_ff_component|dffs[1]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(1),
	combout => \inst7|Reg15|lpm_ff_component|dffs[1]~feeder_combout\);

-- Location: LCFF_X61_Y28_N29
\inst7|Reg15|lpm_ff_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg15|lpm_ff_component|dffs[1]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst49~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg15|lpm_ff_component|dffs\(1));

-- Location: LCFF_X61_Y28_N15
\inst7|Reg15|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(0),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst49~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg15|lpm_ff_component|dffs\(0));

-- Location: LCFF_X43_Y28_N15
\inst7|Reg2|lpm_ff_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(5),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst40~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg2|lpm_ff_component|dffs\(5));

-- Location: LCFF_X41_Y28_N1
\inst7|Reg2|lpm_ff_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(3),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst40~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg2|lpm_ff_component|dffs\(3));

-- Location: LCFF_X41_Y28_N3
\inst7|Reg2|lpm_ff_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(2),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst40~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg2|lpm_ff_component|dffs\(2));

-- Location: LCFF_X41_Y28_N21
\inst7|Reg2|lpm_ff_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(1),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst40~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg2|lpm_ff_component|dffs\(1));

-- Location: LCFF_X41_Y28_N7
\inst7|Reg2|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(0),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst40~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg2|lpm_ff_component|dffs\(0));

-- Location: LCFF_X41_Y28_N17
\inst7|Reg3|lpm_ff_component|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(8),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg3|lpm_ff_component|dffs\(8));

-- Location: LCFF_X41_Y28_N11
\inst7|Reg3|lpm_ff_component|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(7),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg3|lpm_ff_component|dffs\(7));

-- Location: LCFF_X41_Y28_N13
\inst7|Reg3|lpm_ff_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(6),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg3|lpm_ff_component|dffs\(6));

-- Location: LCFF_X43_Y28_N23
\inst7|Reg3|lpm_ff_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(5),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg3|lpm_ff_component|dffs\(5));

-- Location: LCFF_X41_Y28_N25
\inst7|Reg3|lpm_ff_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(3),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg3|lpm_ff_component|dffs\(3));

-- Location: LCFF_X41_Y28_N27
\inst7|Reg3|lpm_ff_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(2),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg3|lpm_ff_component|dffs\(2));

-- Location: LCFF_X41_Y28_N5
\inst7|Reg3|lpm_ff_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(1),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg3|lpm_ff_component|dffs\(1));

-- Location: LCFF_X41_Y28_N15
\inst7|Reg3|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(0),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg3|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X62_Y28_N0
\inst7|Reg4|lpm_ff_component|dffs[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg4|lpm_ff_component|dffs[15]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(15),
	combout => \inst7|Reg4|lpm_ff_component|dffs[15]~feeder_combout\);

-- Location: LCFF_X32_Y29_N21
\inst65|lpm_ff_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst63|lpm_ff_component|dffs\(3),
	sclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst65|lpm_ff_component|dffs\(3));

-- Location: LCCOMB_X32_Y29_N2
\inst7|inst42~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst42~0_combout\ = (\inst64|lpm_ff_component|dffs\(0) & (!\inst65|lpm_ff_component|dffs\(0) & !\inst65|lpm_ff_component|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst64|lpm_ff_component|dffs\(0),
	datac => \inst65|lpm_ff_component|dffs\(0),
	datad => \inst65|lpm_ff_component|dffs\(1),
	combout => \inst7|inst42~0_combout\);

-- Location: LCCOMB_X32_Y29_N18
\inst7|inst38~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst38~0_combout\ = (\inst65|lpm_ff_component|dffs\(2) & (!\inst65|lpm_ff_component|dffs\(3) & \inst7|inst42~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst65|lpm_ff_component|dffs\(2),
	datac => \inst65|lpm_ff_component|dffs\(3),
	datad => \inst7|inst42~0_combout\,
	combout => \inst7|inst38~0_combout\);

-- Location: LCFF_X62_Y28_N1
\inst7|Reg4|lpm_ff_component|dffs[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg4|lpm_ff_component|dffs[15]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg4|lpm_ff_component|dffs\(15));

-- Location: LCCOMB_X62_Y28_N18
\inst7|Reg4|lpm_ff_component|dffs[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg4|lpm_ff_component|dffs[14]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(14),
	combout => \inst7|Reg4|lpm_ff_component|dffs[14]~feeder_combout\);

-- Location: LCFF_X62_Y28_N19
\inst7|Reg4|lpm_ff_component|dffs[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg4|lpm_ff_component|dffs[14]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg4|lpm_ff_component|dffs\(14));

-- Location: LCCOMB_X62_Y28_N4
\inst7|Reg4|lpm_ff_component|dffs[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg4|lpm_ff_component|dffs[13]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(13),
	combout => \inst7|Reg4|lpm_ff_component|dffs[13]~feeder_combout\);

-- Location: LCFF_X62_Y28_N5
\inst7|Reg4|lpm_ff_component|dffs[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg4|lpm_ff_component|dffs[13]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg4|lpm_ff_component|dffs\(13));

-- Location: LCFF_X62_Y28_N23
\inst7|Reg4|lpm_ff_component|dffs[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(12),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg4|lpm_ff_component|dffs\(12));

-- Location: LCFF_X62_Y28_N17
\inst7|Reg4|lpm_ff_component|dffs[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(11),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg4|lpm_ff_component|dffs\(11));

-- Location: LCCOMB_X62_Y28_N2
\inst7|Reg4|lpm_ff_component|dffs[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg4|lpm_ff_component|dffs[10]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(10),
	combout => \inst7|Reg4|lpm_ff_component|dffs[10]~feeder_combout\);

-- Location: LCFF_X62_Y28_N3
\inst7|Reg4|lpm_ff_component|dffs[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg4|lpm_ff_component|dffs[10]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg4|lpm_ff_component|dffs\(10));

-- Location: LCFF_X62_Y28_N21
\inst7|Reg4|lpm_ff_component|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(9),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg4|lpm_ff_component|dffs\(9));

-- Location: LCFF_X62_Y28_N31
\inst7|Reg4|lpm_ff_component|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(8),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg4|lpm_ff_component|dffs\(8));

-- Location: LCFF_X62_Y28_N25
\inst7|Reg4|lpm_ff_component|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(7),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg4|lpm_ff_component|dffs\(7));

-- Location: LCFF_X62_Y28_N27
\inst7|Reg4|lpm_ff_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(6),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg4|lpm_ff_component|dffs\(6));

-- Location: LCFF_X62_Y28_N29
\inst7|Reg4|lpm_ff_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(5),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg4|lpm_ff_component|dffs\(5));

-- Location: LCCOMB_X62_Y28_N6
\inst7|Reg4|lpm_ff_component|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg4|lpm_ff_component|dffs[4]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(4),
	combout => \inst7|Reg4|lpm_ff_component|dffs[4]~feeder_combout\);

-- Location: LCFF_X62_Y28_N7
\inst7|Reg4|lpm_ff_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg4|lpm_ff_component|dffs[4]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg4|lpm_ff_component|dffs\(4));

-- Location: LCFF_X62_Y28_N9
\inst7|Reg4|lpm_ff_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(3),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg4|lpm_ff_component|dffs\(3));

-- Location: LCFF_X62_Y28_N11
\inst7|Reg4|lpm_ff_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(2),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg4|lpm_ff_component|dffs\(2));

-- Location: LCFF_X62_Y28_N13
\inst7|Reg4|lpm_ff_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(1),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg4|lpm_ff_component|dffs\(1));

-- Location: LCCOMB_X62_Y28_N14
\inst7|Reg4|lpm_ff_component|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg4|lpm_ff_component|dffs[0]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(0),
	combout => \inst7|Reg4|lpm_ff_component|dffs[0]~feeder_combout\);

-- Location: LCFF_X62_Y28_N15
\inst7|Reg4|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg4|lpm_ff_component|dffs[0]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg4|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X61_Y27_N16
\inst7|Reg5|lpm_ff_component|dffs[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg5|lpm_ff_component|dffs[15]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(15),
	combout => \inst7|Reg5|lpm_ff_component|dffs[15]~feeder_combout\);

-- Location: LCCOMB_X32_Y29_N26
\inst7|inst37~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst37~0_combout\ = (!\inst65|lpm_ff_component|dffs\(3) & (\inst65|lpm_ff_component|dffs\(2) & (\inst7|inst41~4_combout\ & !\inst65|lpm_ff_component|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|lpm_ff_component|dffs\(3),
	datab => \inst65|lpm_ff_component|dffs\(2),
	datac => \inst7|inst41~4_combout\,
	datad => \inst65|lpm_ff_component|dffs\(1),
	combout => \inst7|inst37~0_combout\);

-- Location: LCFF_X61_Y27_N17
\inst7|Reg5|lpm_ff_component|dffs[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg5|lpm_ff_component|dffs[15]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg5|lpm_ff_component|dffs\(15));

-- Location: LCFF_X61_Y27_N19
\inst7|Reg5|lpm_ff_component|dffs[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(14),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg5|lpm_ff_component|dffs\(14));

-- Location: LCFF_X61_Y27_N21
\inst7|Reg5|lpm_ff_component|dffs[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(13),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg5|lpm_ff_component|dffs\(13));

-- Location: LCFF_X61_Y27_N7
\inst7|Reg5|lpm_ff_component|dffs[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(12),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg5|lpm_ff_component|dffs\(12));

-- Location: LCFF_X61_Y27_N1
\inst7|Reg5|lpm_ff_component|dffs[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(11),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg5|lpm_ff_component|dffs\(11));

-- Location: LCCOMB_X61_Y27_N10
\inst7|Reg5|lpm_ff_component|dffs[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg5|lpm_ff_component|dffs[10]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(10),
	combout => \inst7|Reg5|lpm_ff_component|dffs[10]~feeder_combout\);

-- Location: LCFF_X61_Y27_N11
\inst7|Reg5|lpm_ff_component|dffs[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg5|lpm_ff_component|dffs[10]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg5|lpm_ff_component|dffs\(10));

-- Location: LCFF_X61_Y27_N13
\inst7|Reg5|lpm_ff_component|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(9),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg5|lpm_ff_component|dffs\(9));

-- Location: LCFF_X61_Y27_N31
\inst7|Reg5|lpm_ff_component|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(8),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg5|lpm_ff_component|dffs\(8));

-- Location: LCFF_X61_Y27_N25
\inst7|Reg5|lpm_ff_component|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(7),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg5|lpm_ff_component|dffs\(7));

-- Location: LCCOMB_X61_Y27_N26
\inst7|Reg5|lpm_ff_component|dffs[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg5|lpm_ff_component|dffs[6]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(6),
	combout => \inst7|Reg5|lpm_ff_component|dffs[6]~feeder_combout\);

-- Location: LCFF_X61_Y27_N27
\inst7|Reg5|lpm_ff_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg5|lpm_ff_component|dffs[6]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg5|lpm_ff_component|dffs\(6));

-- Location: LCFF_X61_Y27_N29
\inst7|Reg5|lpm_ff_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(5),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg5|lpm_ff_component|dffs\(5));

-- Location: LCCOMB_X61_Y27_N14
\inst7|Reg5|lpm_ff_component|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg5|lpm_ff_component|dffs[4]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(4),
	combout => \inst7|Reg5|lpm_ff_component|dffs[4]~feeder_combout\);

-- Location: LCFF_X61_Y27_N15
\inst7|Reg5|lpm_ff_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg5|lpm_ff_component|dffs[4]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg5|lpm_ff_component|dffs\(4));

-- Location: LCCOMB_X61_Y27_N8
\inst7|Reg5|lpm_ff_component|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg5|lpm_ff_component|dffs[3]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(3),
	combout => \inst7|Reg5|lpm_ff_component|dffs[3]~feeder_combout\);

-- Location: LCFF_X61_Y27_N9
\inst7|Reg5|lpm_ff_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg5|lpm_ff_component|dffs[3]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg5|lpm_ff_component|dffs\(3));

-- Location: LCCOMB_X61_Y27_N2
\inst7|Reg5|lpm_ff_component|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg5|lpm_ff_component|dffs[2]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(2),
	combout => \inst7|Reg5|lpm_ff_component|dffs[2]~feeder_combout\);

-- Location: LCFF_X61_Y27_N3
\inst7|Reg5|lpm_ff_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg5|lpm_ff_component|dffs[2]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg5|lpm_ff_component|dffs\(2));

-- Location: LCCOMB_X61_Y27_N4
\inst7|Reg5|lpm_ff_component|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg5|lpm_ff_component|dffs[1]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(1),
	combout => \inst7|Reg5|lpm_ff_component|dffs[1]~feeder_combout\);

-- Location: LCFF_X61_Y27_N5
\inst7|Reg5|lpm_ff_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg5|lpm_ff_component|dffs[1]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg5|lpm_ff_component|dffs\(1));

-- Location: LCCOMB_X61_Y27_N22
\inst7|Reg5|lpm_ff_component|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg5|lpm_ff_component|dffs[0]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(0),
	combout => \inst7|Reg5|lpm_ff_component|dffs[0]~feeder_combout\);

-- Location: LCFF_X61_Y27_N23
\inst7|Reg5|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg5|lpm_ff_component|dffs[0]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg5|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X62_Y27_N8
\inst7|Reg8|lpm_ff_component|dffs[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg8|lpm_ff_component|dffs[15]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(15),
	combout => \inst7|Reg8|lpm_ff_component|dffs[15]~feeder_combout\);

-- Location: LCCOMB_X31_Y29_N16
\inst7|inst42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst42~combout\ = (\inst65|lpm_ff_component|dffs\(3) & (!\inst65|lpm_ff_component|dffs\(2) & \inst7|inst42~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst65|lpm_ff_component|dffs\(3),
	datac => \inst65|lpm_ff_component|dffs\(2),
	datad => \inst7|inst42~0_combout\,
	combout => \inst7|inst42~combout\);

-- Location: LCFF_X62_Y27_N9
\inst7|Reg8|lpm_ff_component|dffs[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg8|lpm_ff_component|dffs[15]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst42~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg8|lpm_ff_component|dffs\(15));

-- Location: LCCOMB_X62_Y27_N2
\inst7|Reg8|lpm_ff_component|dffs[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg8|lpm_ff_component|dffs[14]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(14),
	combout => \inst7|Reg8|lpm_ff_component|dffs[14]~feeder_combout\);

-- Location: LCFF_X62_Y27_N3
\inst7|Reg8|lpm_ff_component|dffs[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg8|lpm_ff_component|dffs[14]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst42~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg8|lpm_ff_component|dffs\(14));

-- Location: LCCOMB_X62_Y27_N12
\inst7|Reg8|lpm_ff_component|dffs[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg8|lpm_ff_component|dffs[13]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(13),
	combout => \inst7|Reg8|lpm_ff_component|dffs[13]~feeder_combout\);

-- Location: LCFF_X62_Y27_N13
\inst7|Reg8|lpm_ff_component|dffs[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg8|lpm_ff_component|dffs[13]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst42~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg8|lpm_ff_component|dffs\(13));

-- Location: LCFF_X62_Y27_N23
\inst7|Reg8|lpm_ff_component|dffs[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(12),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst42~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg8|lpm_ff_component|dffs\(12));

-- Location: LCFF_X62_Y27_N1
\inst7|Reg8|lpm_ff_component|dffs[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(11),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst42~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg8|lpm_ff_component|dffs\(11));

-- Location: LCFF_X62_Y27_N19
\inst7|Reg8|lpm_ff_component|dffs[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(10),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst42~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg8|lpm_ff_component|dffs\(10));

-- Location: LCFF_X62_Y27_N21
\inst7|Reg8|lpm_ff_component|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(9),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst42~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg8|lpm_ff_component|dffs\(9));

-- Location: LCCOMB_X62_Y27_N30
\inst7|Reg8|lpm_ff_component|dffs[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg8|lpm_ff_component|dffs[8]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(8),
	combout => \inst7|Reg8|lpm_ff_component|dffs[8]~feeder_combout\);

-- Location: LCFF_X62_Y27_N31
\inst7|Reg8|lpm_ff_component|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg8|lpm_ff_component|dffs[8]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst42~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg8|lpm_ff_component|dffs\(8));

-- Location: LCFF_X62_Y27_N17
\inst7|Reg8|lpm_ff_component|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(7),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst42~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg8|lpm_ff_component|dffs\(7));

-- Location: LCCOMB_X62_Y27_N26
\inst7|Reg8|lpm_ff_component|dffs[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg8|lpm_ff_component|dffs[6]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(6),
	combout => \inst7|Reg8|lpm_ff_component|dffs[6]~feeder_combout\);

-- Location: LCFF_X62_Y27_N27
\inst7|Reg8|lpm_ff_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg8|lpm_ff_component|dffs[6]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst42~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg8|lpm_ff_component|dffs\(6));

-- Location: LCFF_X62_Y27_N5
\inst7|Reg8|lpm_ff_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(5),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst42~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg8|lpm_ff_component|dffs\(5));

-- Location: LCFF_X62_Y27_N15
\inst7|Reg8|lpm_ff_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(4),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst42~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg8|lpm_ff_component|dffs\(4));

-- Location: LCFF_X62_Y27_N25
\inst7|Reg8|lpm_ff_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(3),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst42~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg8|lpm_ff_component|dffs\(3));

-- Location: LCFF_X62_Y27_N11
\inst7|Reg8|lpm_ff_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(2),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst42~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg8|lpm_ff_component|dffs\(2));

-- Location: LCFF_X62_Y27_N29
\inst7|Reg8|lpm_ff_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(1),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst42~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg8|lpm_ff_component|dffs\(1));

-- Location: LCCOMB_X62_Y27_N6
\inst7|Reg8|lpm_ff_component|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg8|lpm_ff_component|dffs[0]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(0),
	combout => \inst7|Reg8|lpm_ff_component|dffs[0]~feeder_combout\);

-- Location: LCFF_X62_Y27_N7
\inst7|Reg8|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg8|lpm_ff_component|dffs[0]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst42~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg8|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X60_Y27_N8
\inst7|Reg9|lpm_ff_component|dffs[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg9|lpm_ff_component|dffs[15]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(15),
	combout => \inst7|Reg9|lpm_ff_component|dffs[15]~feeder_combout\);

-- Location: LCCOMB_X32_Y29_N24
\inst7|inst43~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst43~0_combout\ = (\inst65|lpm_ff_component|dffs\(3) & (!\inst65|lpm_ff_component|dffs\(2) & (\inst7|inst41~4_combout\ & !\inst65|lpm_ff_component|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|lpm_ff_component|dffs\(3),
	datab => \inst65|lpm_ff_component|dffs\(2),
	datac => \inst7|inst41~4_combout\,
	datad => \inst65|lpm_ff_component|dffs\(1),
	combout => \inst7|inst43~0_combout\);

-- Location: LCFF_X60_Y27_N9
\inst7|Reg9|lpm_ff_component|dffs[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg9|lpm_ff_component|dffs[15]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg9|lpm_ff_component|dffs\(15));

-- Location: LCFF_X60_Y27_N11
\inst7|Reg9|lpm_ff_component|dffs[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(14),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg9|lpm_ff_component|dffs\(14));

-- Location: LCCOMB_X60_Y27_N12
\inst7|Reg9|lpm_ff_component|dffs[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg9|lpm_ff_component|dffs[13]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(13),
	combout => \inst7|Reg9|lpm_ff_component|dffs[13]~feeder_combout\);

-- Location: LCFF_X60_Y27_N13
\inst7|Reg9|lpm_ff_component|dffs[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg9|lpm_ff_component|dffs[13]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg9|lpm_ff_component|dffs\(13));

-- Location: LCCOMB_X60_Y27_N22
\inst7|Reg9|lpm_ff_component|dffs[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg9|lpm_ff_component|dffs[12]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(12),
	combout => \inst7|Reg9|lpm_ff_component|dffs[12]~feeder_combout\);

-- Location: LCFF_X60_Y27_N23
\inst7|Reg9|lpm_ff_component|dffs[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg9|lpm_ff_component|dffs[12]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg9|lpm_ff_component|dffs\(12));

-- Location: LCCOMB_X60_Y27_N16
\inst7|Reg9|lpm_ff_component|dffs[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg9|lpm_ff_component|dffs[11]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(11),
	combout => \inst7|Reg9|lpm_ff_component|dffs[11]~feeder_combout\);

-- Location: LCFF_X60_Y27_N17
\inst7|Reg9|lpm_ff_component|dffs[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg9|lpm_ff_component|dffs[11]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg9|lpm_ff_component|dffs\(11));

-- Location: LCFF_X60_Y27_N19
\inst7|Reg9|lpm_ff_component|dffs[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(10),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg9|lpm_ff_component|dffs\(10));

-- Location: LCCOMB_X60_Y27_N4
\inst7|Reg9|lpm_ff_component|dffs[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg9|lpm_ff_component|dffs[9]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(9),
	combout => \inst7|Reg9|lpm_ff_component|dffs[9]~feeder_combout\);

-- Location: LCFF_X60_Y27_N5
\inst7|Reg9|lpm_ff_component|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg9|lpm_ff_component|dffs[9]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg9|lpm_ff_component|dffs\(9));

-- Location: LCFF_X60_Y27_N31
\inst7|Reg9|lpm_ff_component|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(8),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg9|lpm_ff_component|dffs\(8));

-- Location: LCCOMB_X60_Y27_N0
\inst7|Reg9|lpm_ff_component|dffs[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg9|lpm_ff_component|dffs[7]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(7),
	combout => \inst7|Reg9|lpm_ff_component|dffs[7]~feeder_combout\);

-- Location: LCFF_X60_Y27_N1
\inst7|Reg9|lpm_ff_component|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg9|lpm_ff_component|dffs[7]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg9|lpm_ff_component|dffs\(7));

-- Location: LCFF_X60_Y27_N3
\inst7|Reg9|lpm_ff_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(6),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg9|lpm_ff_component|dffs\(6));

-- Location: LCFF_X60_Y27_N21
\inst7|Reg9|lpm_ff_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(5),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg9|lpm_ff_component|dffs\(5));

-- Location: LCCOMB_X60_Y27_N14
\inst7|Reg9|lpm_ff_component|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg9|lpm_ff_component|dffs[4]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(4),
	combout => \inst7|Reg9|lpm_ff_component|dffs[4]~feeder_combout\);

-- Location: LCFF_X60_Y27_N15
\inst7|Reg9|lpm_ff_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg9|lpm_ff_component|dffs[4]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg9|lpm_ff_component|dffs\(4));

-- Location: LCCOMB_X60_Y27_N24
\inst7|Reg9|lpm_ff_component|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg9|lpm_ff_component|dffs[3]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(3),
	combout => \inst7|Reg9|lpm_ff_component|dffs[3]~feeder_combout\);

-- Location: LCFF_X60_Y27_N25
\inst7|Reg9|lpm_ff_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg9|lpm_ff_component|dffs[3]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg9|lpm_ff_component|dffs\(3));

-- Location: LCFF_X60_Y27_N27
\inst7|Reg9|lpm_ff_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(2),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg9|lpm_ff_component|dffs\(2));

-- Location: LCCOMB_X60_Y27_N28
\inst7|Reg9|lpm_ff_component|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Reg9|lpm_ff_component|dffs[1]~feeder_combout\ = \inst45|lpm_ff_component|dffs\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|lpm_ff_component|dffs\(1),
	combout => \inst7|Reg9|lpm_ff_component|dffs[1]~feeder_combout\);

-- Location: LCFF_X60_Y27_N29
\inst7|Reg9|lpm_ff_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst7|Reg9|lpm_ff_component|dffs[1]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \inst7|inst43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg9|lpm_ff_component|dffs\(1));

-- Location: LCFF_X60_Y27_N7
\inst7|Reg9|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst45|lpm_ff_component|dffs\(0),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \inst7|inst43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Reg9|lpm_ff_component|dffs\(0));

-- Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reset);

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\n_val~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_n_val);

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ID_reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ID_reset);

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\deassert~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst67|ALT_INV_deassert~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_deassert);

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst72|lpm_ff_component|dffs\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR(23));

-- Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst72|lpm_ff_component|dffs\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR(22));

-- Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst72|lpm_ff_component|dffs\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR(21));

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst72|lpm_ff_component|dffs\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR(20));

-- Location: PIN_AE6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR(19));

-- Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR(18));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR(17));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst72|lpm_ff_component|dffs\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR(16));

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR(15));

-- Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR(14));

-- Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR(13));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst72|lpm_ff_component|dffs\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR(12));

-- Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR(11));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR(10));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst72|lpm_ff_component|dffs\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR(9));

-- Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst72|lpm_ff_component|dffs\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR(8));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR(7));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst72|lpm_ff_component|dffs\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR(6));

-- Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst72|lpm_ff_component|dffs\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR(5));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst72|lpm_ff_component|dffs\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR(4));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst72|lpm_ff_component|dffs\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR(3));

-- Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR(2));

-- Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst72|lpm_ff_component|dffs\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR(1));

-- Location: PIN_AD2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR(0));

-- Location: PIN_AB1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\flush~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_flush);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_instr_addr[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst82|LPM_MUX_component|auto_generated|result_node[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_instr_addr(15));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_instr_addr[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst82|LPM_MUX_component|auto_generated|result_node[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_instr_addr(14));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_instr_addr[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst82|LPM_MUX_component|auto_generated|result_node[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_instr_addr(13));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_instr_addr[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst82|LPM_MUX_component|auto_generated|result_node[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_instr_addr(12));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_instr_addr[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst82|LPM_MUX_component|auto_generated|result_node[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_instr_addr(11));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_instr_addr[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst82|LPM_MUX_component|auto_generated|result_node[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_instr_addr(10));

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_instr_addr[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst82|LPM_MUX_component|auto_generated|result_node[9]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_instr_addr(9));

-- Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_instr_addr[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst82|LPM_MUX_component|auto_generated|result_node[8]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_instr_addr(8));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_instr_addr[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst82|LPM_MUX_component|auto_generated|result_node[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_instr_addr(7));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_instr_addr[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst82|LPM_MUX_component|auto_generated|result_node[6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_instr_addr(6));

-- Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_instr_addr[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst82|LPM_MUX_component|auto_generated|result_node[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_instr_addr(5));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_instr_addr[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst82|LPM_MUX_component|auto_generated|result_node[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_instr_addr(4));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_instr_addr[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst82|LPM_MUX_component|auto_generated|result_node[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_instr_addr(3));

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_instr_addr[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst82|LPM_MUX_component|auto_generated|result_node[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_instr_addr(2));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_instr_addr[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst82|LPM_MUX_component|auto_generated|result_node[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_instr_addr(1));

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_instr_addr[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst82|LPM_MUX_component|auto_generated|result_node[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_instr_addr(0));

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\br_addr[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst74|lpm_add_sub_component|auto_generated|result[15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_br_addr(15));

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\br_addr[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst74|lpm_add_sub_component|auto_generated|result[14]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_br_addr(14));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\br_addr[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst74|lpm_add_sub_component|auto_generated|result[13]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_br_addr(13));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\br_addr[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst74|lpm_add_sub_component|auto_generated|result[12]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_br_addr(12));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\br_addr[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst74|lpm_add_sub_component|auto_generated|result[11]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_br_addr(11));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\br_addr[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst74|lpm_add_sub_component|auto_generated|result[10]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_br_addr(10));

-- Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\br_addr[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst74|lpm_add_sub_component|auto_generated|result[9]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_br_addr(9));

-- Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\br_addr[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst74|lpm_add_sub_component|auto_generated|result[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_br_addr(8));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\br_addr[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst74|lpm_add_sub_component|auto_generated|result[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_br_addr(7));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\br_addr[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst74|lpm_add_sub_component|auto_generated|result[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_br_addr(6));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\br_addr[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst74|lpm_add_sub_component|auto_generated|result[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_br_addr(5));

-- Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\br_addr[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst74|lpm_add_sub_component|auto_generated|result[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_br_addr(4));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\br_addr[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst74|lpm_add_sub_component|auto_generated|result[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_br_addr(3));

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\br_addr[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst74|lpm_add_sub_component|auto_generated|result[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_br_addr(2));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\br_addr[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst74|lpm_add_sub_component|auto_generated|result[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_br_addr(1));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\br_addr[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst29|lpm_ff_component|dffs\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_br_addr(0));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out_mem[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst33|lpm_ff_component|dffs\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out_mem(15));

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out_mem[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst33|lpm_ff_component|dffs\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out_mem(14));

-- Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out_mem[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst33|lpm_ff_component|dffs\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out_mem(13));

-- Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out_mem[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst33|lpm_ff_component|dffs\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out_mem(12));

-- Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out_mem[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst33|lpm_ff_component|dffs\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out_mem(11));

-- Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out_mem[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst33|lpm_ff_component|dffs\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out_mem(10));

-- Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out_mem[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst33|lpm_ff_component|dffs\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out_mem(9));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out_mem[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst33|lpm_ff_component|dffs\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out_mem(8));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out_mem[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst33|lpm_ff_component|dffs\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out_mem(7));

-- Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out_mem[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst33|lpm_ff_component|dffs\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out_mem(6));

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out_mem[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst33|lpm_ff_component|dffs\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out_mem(5));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out_mem[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst33|lpm_ff_component|dffs\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out_mem(4));

-- Location: PIN_J9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out_mem[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst33|lpm_ff_component|dffs\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out_mem(3));

-- Location: PIN_AC10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out_mem[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst33|lpm_ff_component|dffs\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out_mem(2));

-- Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out_mem[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst33|lpm_ff_component|dffs\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out_mem(1));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out_mem[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst33|lpm_ff_component|dffs\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out_mem(0));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst33|lpm_ff_component|dffs\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_addr(15));

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst33|lpm_ff_component|dffs\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_addr(14));

-- Location: PIN_U26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst33|lpm_ff_component|dffs\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_addr(13));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst33|lpm_ff_component|dffs\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_addr(12));

-- Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst33|lpm_ff_component|dffs\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_addr(11));

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst33|lpm_ff_component|dffs\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_addr(10));

-- Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst33|lpm_ff_component|dffs\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_addr(9));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst33|lpm_ff_component|dffs\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_addr(8));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst33|lpm_ff_component|dffs\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_addr(7));

-- Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst33|lpm_ff_component|dffs\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_addr(6));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst33|lpm_ff_component|dffs\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_addr(5));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst33|lpm_ff_component|dffs\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_addr(4));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst33|lpm_ff_component|dffs\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_addr(3));

-- Location: PIN_AE9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst33|lpm_ff_component|dffs\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_addr(2));

-- Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst33|lpm_ff_component|dffs\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_addr(1));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst33|lpm_ff_component|dffs\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_addr(0));

-- Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_write_mem~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst59|lpm_ff_component|dffs\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_write_mem);

-- Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\forwardB[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst71|forwardB[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_forwardB(1));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\forwardB[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst71|forwardB[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_forwardB(0));

-- Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRexe[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst18|lpm_ff_component|dffs\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRexe(23));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRexe[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst18|lpm_ff_component|dffs\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRexe(22));

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRexe[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst17|lpm_ff_component|dffs\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRexe(21));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRexe[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst18|lpm_ff_component|dffs\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRexe(20));

-- Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRexe[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRexe(19));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRexe[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRexe(18));

-- Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRexe[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRexe(17));

-- Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRexe[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst18|lpm_ff_component|dffs\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRexe(16));

-- Location: PIN_AC7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRexe[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRexe(15));

-- Location: PIN_AD3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRexe[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRexe(14));

-- Location: PIN_AD5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRexe[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRexe(13));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRexe[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst18|lpm_ff_component|dffs\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRexe(12));

-- Location: PIN_V6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRexe[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRexe(11));

-- Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRexe[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRexe(10));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRexe[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst18|lpm_ff_component|dffs\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRexe(9));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRexe[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst18|lpm_ff_component|dffs\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRexe(8));

-- Location: PIN_AC20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRexe[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRexe(7));

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRexe[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst17|lpm_ff_component|dffs\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRexe(6));

-- Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRexe[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst17|lpm_ff_component|dffs\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRexe(5));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRexe[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst17|lpm_ff_component|dffs\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRexe(4));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRexe[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst17|lpm_ff_component|dffs\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRexe(3));

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRexe[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRexe(2));

-- Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRexe[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst17|lpm_ff_component|dffs\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRexe(1));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRexe[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRexe(0));

-- Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_select[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst8|jump~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_select(1));

-- Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_select[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_select(0));

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\z_val~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_z_val);

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\flag_enable_exe~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_flag_enable_exe);

-- Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\v_val~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_v_val);

-- Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c_val~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c_val);

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\execute~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst72|lpm_ff_component|dffs\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_execute);

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\z_out~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst12|ALT_INV_inst10~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_z_out);

-- Location: PIN_Y11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\br_exe~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_br_exe);

-- Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\jmp_exe~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst8|jump~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_jmp_exe);

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cond[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cond(3));

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cond[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cond(2));

-- Location: PIN_AC23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cond[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cond(1));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cond[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst72|lpm_ff_component|dffs\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cond(0));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst37|HEX_DISPLAY|lpm_ff_component|dffs\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst37|HEX_DISPLAY|lpm_ff_component|dffs\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(5));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst37|HEX_DISPLAY|lpm_ff_component|dffs\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(4));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst37|HEX_DISPLAY|lpm_ff_component|dffs\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(3));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst37|HEX_DISPLAY|lpm_ff_component|dffs\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(2));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst37|HEX_DISPLAY|lpm_ff_component|dffs\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(1));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst37|HEX_DISPLAY|lpm_ff_component|dffs\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(0));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRmem[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst41|lpm_ff_component|dffs\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRmem(23));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRmem[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst41|lpm_ff_component|dffs\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRmem(22));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRmem[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst41|lpm_ff_component|dffs\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRmem(21));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRmem[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst41|lpm_ff_component|dffs\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRmem(20));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRmem[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRmem(19));

-- Location: PIN_AE3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRmem[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRmem(18));

-- Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRmem[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRmem(17));

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRmem[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst41|lpm_ff_component|dffs\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRmem(16));

-- Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRmem[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRmem(15));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRmem[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRmem(14));

-- Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRmem[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRmem(13));

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRmem[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst41|lpm_ff_component|dffs\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRmem(12));

-- Location: PIN_AD6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRmem[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRmem(11));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRmem[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRmem(10));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRmem[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst41|lpm_ff_component|dffs\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRmem(9));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRmem[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst41|lpm_ff_component|dffs\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRmem(8));

-- Location: PIN_AE21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRmem[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRmem(7));

-- Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRmem[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst41|lpm_ff_component|dffs\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRmem(6));

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRmem[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst41|lpm_ff_component|dffs\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRmem(5));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRmem[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst41|lpm_ff_component|dffs\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRmem(4));

-- Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRmem[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst41|lpm_ff_component|dffs\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRmem(3));

-- Location: PIN_AE25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRmem[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRmem(2));

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRmem[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst41|lpm_ff_component|dffs\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRmem(1));

-- Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRmem[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRmem(0));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst37|LED|lpm_ff_component|dffs\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(7));

-- Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst37|LED|lpm_ff_component|dffs\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(6));

-- Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst37|LED|lpm_ff_component|dffs\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(5));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst37|LED|lpm_ff_component|dffs\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(4));

-- Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst37|LED|lpm_ff_component|dffs\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(3));

-- Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst37|LED|lpm_ff_component|dffs\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(2));

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst37|LED|lpm_ff_component|dffs\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(1));

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst37|LED|lpm_ff_component|dffs\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(0));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst34|lpm_ff_component|dffs\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_data(15));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst34|lpm_ff_component|dffs\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_data(14));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst34|lpm_ff_component|dffs\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_data(13));

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst34|lpm_ff_component|dffs\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_data(12));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst34|lpm_ff_component|dffs\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_data(11));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst34|lpm_ff_component|dffs\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_data(10));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst34|lpm_ff_component|dffs\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_data(9));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst34|lpm_ff_component|dffs\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_data(8));

-- Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst34|lpm_ff_component|dffs\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_data(7));

-- Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst34|lpm_ff_component|dffs\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_data(6));

-- Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst34|lpm_ff_component|dffs\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_data(5));

-- Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst34|lpm_ff_component|dffs\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_data(4));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst34|lpm_ff_component|dffs\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_data(3));

-- Location: PIN_AE10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst34|lpm_ff_component|dffs\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_data(2));

-- Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst34|lpm_ff_component|dffs\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_data(1));

-- Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst34|lpm_ff_component|dffs\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_data(0));

-- Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memout[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst44|LPM_MUX_component|auto_generated|result_node[23]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memout(23));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memout[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst44|LPM_MUX_component|auto_generated|result_node[22]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memout(22));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memout[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst44|LPM_MUX_component|auto_generated|result_node[21]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memout(21));

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memout[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst44|LPM_MUX_component|auto_generated|result_node[20]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memout(20));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memout[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst44|LPM_MUX_component|auto_generated|result_node[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memout(19));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memout[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst44|LPM_MUX_component|auto_generated|result_node[18]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memout(18));

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memout[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst44|LPM_MUX_component|auto_generated|result_node[17]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memout(17));

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memout[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst44|LPM_MUX_component|auto_generated|result_node[16]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memout(16));

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memout[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst44|LPM_MUX_component|auto_generated|result_node[15]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memout(15));

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memout[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst44|LPM_MUX_component|auto_generated|result_node[14]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memout(14));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memout[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst44|LPM_MUX_component|auto_generated|result_node[13]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memout(13));

-- Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memout[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst44|LPM_MUX_component|auto_generated|result_node[12]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memout(12));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memout[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst44|LPM_MUX_component|auto_generated|result_node[11]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memout(11));

-- Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memout[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst44|LPM_MUX_component|auto_generated|result_node[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memout(10));

-- Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memout[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst44|LPM_MUX_component|auto_generated|result_node[9]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memout(9));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memout[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst44|LPM_MUX_component|auto_generated|result_node[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memout(8));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memout[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst44|LPM_MUX_component|auto_generated|result_node[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memout(7));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memout[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst44|LPM_MUX_component|auto_generated|result_node[6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memout(6));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memout[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst44|LPM_MUX_component|auto_generated|result_node[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memout(5));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memout[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst44|LPM_MUX_component|auto_generated|result_node[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memout(4));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memout[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst44|LPM_MUX_component|auto_generated|result_node[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memout(3));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memout[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst44|LPM_MUX_component|auto_generated|result_node[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memout(2));

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memout[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst44|LPM_MUX_component|auto_generated|result_node[1]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memout(1));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memout[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst44|LPM_MUX_component|auto_generated|result_node[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memout(0));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\muxymem[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst46|lpm_mux_component|auto_generated|result_node[15]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_muxymem(15));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\muxymem[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst46|lpm_mux_component|auto_generated|result_node[14]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_muxymem(14));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\muxymem[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst46|lpm_mux_component|auto_generated|result_node[13]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_muxymem(13));

-- Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\muxymem[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst46|lpm_mux_component|auto_generated|result_node[12]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_muxymem(12));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\muxymem[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst46|lpm_mux_component|auto_generated|result_node[11]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_muxymem(11));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\muxymem[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst46|lpm_mux_component|auto_generated|result_node[10]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_muxymem(10));

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\muxymem[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst46|lpm_mux_component|auto_generated|result_node[9]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_muxymem(9));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\muxymem[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst46|lpm_mux_component|auto_generated|result_node[8]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_muxymem(8));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\muxymem[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst46|lpm_mux_component|auto_generated|result_node[7]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_muxymem(7));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\muxymem[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst46|lpm_mux_component|auto_generated|result_node[6]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_muxymem(6));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\muxymem[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst46|lpm_mux_component|auto_generated|result_node[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_muxymem(5));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\muxymem[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst46|lpm_mux_component|auto_generated|result_node[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_muxymem(4));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\muxymem[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst46|lpm_mux_component|auto_generated|result_node[3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_muxymem(3));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\muxymem[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst46|lpm_mux_component|auto_generated|result_node[2]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_muxymem(2));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\muxymem[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst46|lpm_mux_component|auto_generated|result_node[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_muxymem(1));

-- Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\muxymem[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst46|lpm_mux_component|auto_generated|result_node[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_muxymem(0));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\op_code[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst72|lpm_ff_component|dffs\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_op_code(3));

-- Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\op_code[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst72|lpm_ff_component|dffs\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_op_code(2));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\op_code[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst72|lpm_ff_component|dffs\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_op_code(1));

-- Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\op_code[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst72|lpm_ff_component|dffs\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_op_code(0));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\opx[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst72|lpm_ff_component|dffs\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_opx(2));

-- Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\opx[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_opx(1));

-- Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\opx[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst72|lpm_ff_component|dffs\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_opx(0));

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r1[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg1|lpm_ff_component|dffs\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r1(15));

-- Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r1[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg1|lpm_ff_component|dffs\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r1(14));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r1[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg1|lpm_ff_component|dffs\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r1(13));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r1[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg1|lpm_ff_component|dffs\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r1(12));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r1[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg1|lpm_ff_component|dffs\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r1(11));

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r1[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg1|lpm_ff_component|dffs\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r1(10));

-- Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r1[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg1|lpm_ff_component|dffs\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r1(9));

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r1[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg1|lpm_ff_component|dffs\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r1(8));

-- Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r1[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg1|lpm_ff_component|dffs\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r1(7));

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg1|lpm_ff_component|dffs\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r1(6));

-- Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg1|lpm_ff_component|dffs\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r1(5));

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg1|lpm_ff_component|dffs\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r1(4));

-- Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg1|lpm_ff_component|dffs\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r1(3));

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg1|lpm_ff_component|dffs\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r1(2));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg1|lpm_ff_component|dffs\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r1(1));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg1|lpm_ff_component|dffs\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r1(0));

-- Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r15[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg15|lpm_ff_component|dffs\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r15(15));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r15[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg15|lpm_ff_component|dffs\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r15(14));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r15[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg15|lpm_ff_component|dffs\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r15(13));

-- Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r15[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg15|lpm_ff_component|dffs\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r15(12));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r15[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg15|lpm_ff_component|dffs\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r15(11));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r15[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg15|lpm_ff_component|dffs\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r15(10));

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r15[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg15|lpm_ff_component|dffs\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r15(9));

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r15[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg15|lpm_ff_component|dffs\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r15(8));

-- Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r15[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg15|lpm_ff_component|dffs\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r15(7));

-- Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r15[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg15|lpm_ff_component|dffs\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r15(6));

-- Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r15[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg15|lpm_ff_component|dffs\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r15(5));

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r15[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg15|lpm_ff_component|dffs\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r15(4));

-- Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r15[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg15|lpm_ff_component|dffs\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r15(3));

-- Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r15[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg15|lpm_ff_component|dffs\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r15(2));

-- Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r15[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg15|lpm_ff_component|dffs\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r15(1));

-- Location: PIN_V24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r15[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg15|lpm_ff_component|dffs\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r15(0));

-- Location: PIN_AC16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r2[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg2|lpm_ff_component|dffs\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r2(15));

-- Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r2[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg2|lpm_ff_component|dffs\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r2(14));

-- Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r2[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg2|lpm_ff_component|dffs\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r2(13));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r2[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg2|lpm_ff_component|dffs\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r2(12));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r2[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg2|lpm_ff_component|dffs\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r2(11));

-- Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r2[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg2|lpm_ff_component|dffs\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r2(10));

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r2[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg2|lpm_ff_component|dffs\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r2(9));

-- Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r2[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg2|lpm_ff_component|dffs\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r2(8));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r2[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg2|lpm_ff_component|dffs\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r2(7));

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg2|lpm_ff_component|dffs\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r2(6));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg2|lpm_ff_component|dffs\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r2(5));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg2|lpm_ff_component|dffs\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r2(4));

-- Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg2|lpm_ff_component|dffs\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r2(3));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg2|lpm_ff_component|dffs\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r2(2));

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg2|lpm_ff_component|dffs\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r2(1));

-- Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg2|lpm_ff_component|dffs\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r2(0));

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r3[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg3|lpm_ff_component|dffs\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r3(15));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r3[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg3|lpm_ff_component|dffs\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r3(14));

-- Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r3[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg3|lpm_ff_component|dffs\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r3(13));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r3[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg3|lpm_ff_component|dffs\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r3(12));

-- Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r3[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg3|lpm_ff_component|dffs\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r3(11));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r3[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg3|lpm_ff_component|dffs\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r3(10));

-- Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r3[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg3|lpm_ff_component|dffs\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r3(9));

-- Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r3[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg3|lpm_ff_component|dffs\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r3(8));

-- Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r3[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg3|lpm_ff_component|dffs\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r3(7));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r3[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg3|lpm_ff_component|dffs\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r3(6));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r3[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg3|lpm_ff_component|dffs\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r3(5));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r3[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg3|lpm_ff_component|dffs\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r3(4));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r3[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg3|lpm_ff_component|dffs\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r3(3));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r3[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg3|lpm_ff_component|dffs\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r3(2));

-- Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r3[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg3|lpm_ff_component|dffs\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r3(1));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r3[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg3|lpm_ff_component|dffs\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r3(0));

-- Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r4[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg4|lpm_ff_component|dffs\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r4(15));

-- Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r4[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg4|lpm_ff_component|dffs\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r4(14));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r4[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg4|lpm_ff_component|dffs\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r4(13));

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r4[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg4|lpm_ff_component|dffs\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r4(12));

-- Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r4[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg4|lpm_ff_component|dffs\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r4(11));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r4[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg4|lpm_ff_component|dffs\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r4(10));

-- Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r4[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg4|lpm_ff_component|dffs\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r4(9));

-- Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r4[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg4|lpm_ff_component|dffs\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r4(8));

-- Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r4[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg4|lpm_ff_component|dffs\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r4(7));

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r4[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg4|lpm_ff_component|dffs\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r4(6));

-- Location: PIN_T19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r4[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg4|lpm_ff_component|dffs\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r4(5));

-- Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r4[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg4|lpm_ff_component|dffs\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r4(4));

-- Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r4[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg4|lpm_ff_component|dffs\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r4(3));

-- Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r4[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg4|lpm_ff_component|dffs\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r4(2));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r4[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg4|lpm_ff_component|dffs\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r4(1));

-- Location: PIN_T17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r4[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg4|lpm_ff_component|dffs\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r4(0));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r5[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg5|lpm_ff_component|dffs\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r5(15));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r5[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg5|lpm_ff_component|dffs\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r5(14));

-- Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r5[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg5|lpm_ff_component|dffs\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r5(13));

-- Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r5[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg5|lpm_ff_component|dffs\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r5(12));

-- Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r5[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg5|lpm_ff_component|dffs\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r5(11));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r5[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg5|lpm_ff_component|dffs\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r5(10));

-- Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r5[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg5|lpm_ff_component|dffs\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r5(9));

-- Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r5[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg5|lpm_ff_component|dffs\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r5(8));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r5[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg5|lpm_ff_component|dffs\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r5(7));

-- Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r5[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg5|lpm_ff_component|dffs\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r5(6));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r5[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg5|lpm_ff_component|dffs\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r5(5));

-- Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r5[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg5|lpm_ff_component|dffs\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r5(4));

-- Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r5[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg5|lpm_ff_component|dffs\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r5(3));

-- Location: PIN_W23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r5[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg5|lpm_ff_component|dffs\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r5(2));

-- Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r5[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg5|lpm_ff_component|dffs\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r5(1));

-- Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r5[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg5|lpm_ff_component|dffs\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r5(0));

-- Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r8[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg8|lpm_ff_component|dffs\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r8(15));

-- Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r8[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg8|lpm_ff_component|dffs\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r8(14));

-- Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r8[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg8|lpm_ff_component|dffs\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r8(13));

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r8[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg8|lpm_ff_component|dffs\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r8(12));

-- Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r8[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg8|lpm_ff_component|dffs\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r8(11));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r8[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg8|lpm_ff_component|dffs\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r8(10));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r8[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg8|lpm_ff_component|dffs\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r8(9));

-- Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r8[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg8|lpm_ff_component|dffs\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r8(8));

-- Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r8[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg8|lpm_ff_component|dffs\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r8(7));

-- Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r8[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg8|lpm_ff_component|dffs\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r8(6));

-- Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r8[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg8|lpm_ff_component|dffs\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r8(5));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r8[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg8|lpm_ff_component|dffs\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r8(4));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r8[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg8|lpm_ff_component|dffs\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r8(3));

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r8[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg8|lpm_ff_component|dffs\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r8(2));

-- Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r8[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg8|lpm_ff_component|dffs\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r8(1));

-- Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r8[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg8|lpm_ff_component|dffs\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r8(0));

-- Location: PIN_AF21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r9[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg9|lpm_ff_component|dffs\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r9(15));

-- Location: PIN_V26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r9[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg9|lpm_ff_component|dffs\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r9(14));

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r9[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg9|lpm_ff_component|dffs\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r9(13));

-- Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r9[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg9|lpm_ff_component|dffs\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r9(12));

-- Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r9[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg9|lpm_ff_component|dffs\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r9(11));

-- Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r9[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg9|lpm_ff_component|dffs\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r9(10));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r9[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg9|lpm_ff_component|dffs\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r9(9));

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r9[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg9|lpm_ff_component|dffs\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r9(8));

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r9[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg9|lpm_ff_component|dffs\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r9(7));

-- Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r9[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg9|lpm_ff_component|dffs\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r9(6));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r9[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg9|lpm_ff_component|dffs\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r9(5));

-- Location: PIN_V25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r9[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg9|lpm_ff_component|dffs\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r9(4));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r9[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg9|lpm_ff_component|dffs\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r9(3));

-- Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r9[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg9|lpm_ff_component|dffs\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r9(2));

-- Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r9[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg9|lpm_ff_component|dffs\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r9(1));

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r9[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Reg9|lpm_ff_component|dffs\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r9(0));

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regD[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst22|lpm_ff_component|dffs\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regD(3));

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regD[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst5|lpm_mux_component|auto_generated|result_node\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regD(2));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regD[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst5|lpm_mux_component|auto_generated|result_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regD(1));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\regD[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst5|lpm_mux_component|auto_generated|result_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_regD(0));

-- Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\WBreg[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst65|lpm_ff_component|dffs\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_WBreg(3));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\WBreg[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst65|lpm_ff_component|dffs\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_WBreg(2));

-- Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\WBreg[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst65|lpm_ff_component|dffs\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_WBreg(1));

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\WBreg[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst65|lpm_ff_component|dffs\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_WBreg(0));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\yselect[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst23|lpm_ff_component|dffs\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_yselect(1));

-- Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\yselect[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst23|lpm_ff_component|dffs\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_yselect(0));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\yselect_mem[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst51|lpm_ff_component|dffs\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_yselect_mem(1));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\yselect_mem[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst51|lpm_ff_component|dffs\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_yselect_mem(0));
END structure;


