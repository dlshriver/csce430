-- Copyright (C) 1991-2010 Altera Corporation
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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 9.1 Build 350 03/24/2010 Service Pack 2 SJ Full Version"

-- DATE "03/05/2014 17:54:36"

-- 
-- Device: Altera EP2S15F484C3 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY STRATIXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE STRATIXII.STRATIXII_COMPONENTS.ALL;

ENTITY 	SixteenRegisterFile IS
    PORT (
	Reset : IN std_logic;
	Enable : IN std_logic;
	Clock : IN std_logic;
	RegD : IN std_logic_vector(3 DOWNTO 0);
	RegT : IN std_logic_vector(3 DOWNTO 0);
	RegS : IN std_logic_vector(3 DOWNTO 0);
	DataD : IN std_logic_vector(15 DOWNTO 0);
	DataS : OUT std_logic_vector(15 DOWNTO 0);
	DataT : OUT std_logic_vector(15 DOWNTO 0)
	);
END SixteenRegisterFile;

-- Design Ports Information
-- DataS[0]	=>  Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DataS[1]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DataS[2]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DataS[3]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DataS[4]	=>  Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DataS[5]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DataS[6]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DataS[7]	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DataS[8]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- DataS[9]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DataS[10]	=>  Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DataS[11]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- DataS[12]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DataS[13]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- DataS[14]	=>  Location: PIN_Y11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DataS[15]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- DataT[0]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DataT[1]	=>  Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DataT[2]	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DataT[3]	=>  Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DataT[4]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DataT[5]	=>  Location: PIN_U6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DataT[6]	=>  Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DataT[7]	=>  Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DataT[8]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
-- DataT[9]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DataT[10]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DataT[11]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DataT[12]	=>  Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DataT[13]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DataT[14]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DataT[15]	=>  Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegS[2]	=>  Location: PIN_W20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RegS[3]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RegS[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RegS[0]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RegT[2]	=>  Location: PIN_AB7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RegT[3]	=>  Location: PIN_R15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RegT[1]	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RegT[0]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DataD[0]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Clock	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RegD[2]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RegD[1]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RegD[0]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Enable	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RegD[3]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DataD[1]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DataD[2]	=>  Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DataD[3]	=>  Location: PIN_P20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DataD[4]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DataD[5]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DataD[6]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DataD[7]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DataD[8]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DataD[9]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DataD[10]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DataD[11]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DataD[12]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DataD[13]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DataD[14]	=>  Location: PIN_N7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DataD[15]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default

ARCHITECTURE structure OF SixteenRegisterFile IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Enable : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_RegD : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_RegT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_RegS : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DataD : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_DataS : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_DataT : std_logic_vector(15 DOWNTO 0);
SIGNAL \Clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~combout\ : std_logic;
SIGNAL \Clock~clkctrl_outclk\ : std_logic;
SIGNAL \Reset~combout\ : std_logic;
SIGNAL \Reset~clkctrl_outclk\ : std_logic;
SIGNAL \Enable~combout\ : std_logic;
SIGNAL \Decoder|Mux7~6_combout\ : std_logic;
SIGNAL \Decoder|Mux7~5_combout\ : std_logic;
SIGNAL \Decoder|Mux7~3_combout\ : std_logic;
SIGNAL \Decoder|Mux7~4_combout\ : std_logic;
SIGNAL \Mux1|Mux15~1_combout\ : std_logic;
SIGNAL \Decoder|Mux7~2_combout\ : std_logic;
SIGNAL \Decoder|Mux7~0_combout\ : std_logic;
SIGNAL \Decoder|Mux7~1_combout\ : std_logic;
SIGNAL \Mux1|Mux15~0_combout\ : std_logic;
SIGNAL \Decoder|Mux7~10_combout\ : std_logic;
SIGNAL \Decoder|Mux7~8_combout\ : std_logic;
SIGNAL \Decoder|Mux7~7_combout\ : std_logic;
SIGNAL \Mux1|Mux15~2_combout\ : std_logic;
SIGNAL \Decoder|Mux7~13_combout\ : std_logic;
SIGNAL \Decoder|Mux7~14_combout\ : std_logic;
SIGNAL \Decoder|Mux7~11_combout\ : std_logic;
SIGNAL \Mux1|Mux15~3_combout\ : std_logic;
SIGNAL \Mux1|Mux15~4_combout\ : std_logic;
SIGNAL \Mux1|Mux14~3_combout\ : std_logic;
SIGNAL \Mux1|Mux14~0_combout\ : std_logic;
SIGNAL \Decoder|Mux7~9_combout\ : std_logic;
SIGNAL \Mux1|Mux14~2_combout\ : std_logic;
SIGNAL \Mux1|Mux14~1_combout\ : std_logic;
SIGNAL \Mux1|Mux14~4_combout\ : std_logic;
SIGNAL \Mux1|Mux13~1_combout\ : std_logic;
SIGNAL \Mux1|Mux13~3_combout\ : std_logic;
SIGNAL \Mux1|Mux13~2_combout\ : std_logic;
SIGNAL \Mux1|Mux13~0_combout\ : std_logic;
SIGNAL \Mux1|Mux13~4_combout\ : std_logic;
SIGNAL \Mux1|Mux12~2_combout\ : std_logic;
SIGNAL \Mux1|Mux12~1_combout\ : std_logic;
SIGNAL \Mux1|Mux12~0_combout\ : std_logic;
SIGNAL \Decoder|Mux7~12_combout\ : std_logic;
SIGNAL \Mux1|Mux12~3_combout\ : std_logic;
SIGNAL \Mux1|Mux12~4_combout\ : std_logic;
SIGNAL \Mux1|Mux11~1_combout\ : std_logic;
SIGNAL \Mux1|Mux11~2_combout\ : std_logic;
SIGNAL \Mux1|Mux11~0_combout\ : std_logic;
SIGNAL \Mux1|Mux11~3_combout\ : std_logic;
SIGNAL \Mux1|Mux11~4_combout\ : std_logic;
SIGNAL \Mux1|Mux10~0_combout\ : std_logic;
SIGNAL \Mux1|Mux10~2_combout\ : std_logic;
SIGNAL \Mux1|Mux10~1_combout\ : std_logic;
SIGNAL \Mux1|Mux10~3_combout\ : std_logic;
SIGNAL \Mux1|Mux10~4_combout\ : std_logic;
SIGNAL \Mux1|Mux9~1_combout\ : std_logic;
SIGNAL \Mux1|Mux9~3_combout\ : std_logic;
SIGNAL \Mux1|Mux9~0_combout\ : std_logic;
SIGNAL \Mux1|Mux9~2_combout\ : std_logic;
SIGNAL \Mux1|Mux9~4_combout\ : std_logic;
SIGNAL \Mux1|Mux8~1_combout\ : std_logic;
SIGNAL \Mux1|Mux8~2_combout\ : std_logic;
SIGNAL \Mux1|Mux8~3_combout\ : std_logic;
SIGNAL \Mux1|Mux8~0_combout\ : std_logic;
SIGNAL \Mux1|Mux8~4_combout\ : std_logic;
SIGNAL \Mux1|Mux7~0_combout\ : std_logic;
SIGNAL \RegM13|output[8]~feeder_combout\ : std_logic;
SIGNAL \Mux1|Mux7~2_combout\ : std_logic;
SIGNAL \Mux1|Mux7~1_combout\ : std_logic;
SIGNAL \Mux1|Mux7~3_combout\ : std_logic;
SIGNAL \Mux1|Mux7~4_combout\ : std_logic;
SIGNAL \RegF6|output[9]~feeder_combout\ : std_logic;
SIGNAL \Mux1|Mux6~1_combout\ : std_logic;
SIGNAL \Mux1|Mux6~2_combout\ : std_logic;
SIGNAL \Mux1|Mux6~0_combout\ : std_logic;
SIGNAL \RegG7|output[9]~feeder_combout\ : std_logic;
SIGNAL \Mux1|Mux6~3_combout\ : std_logic;
SIGNAL \Mux1|Mux6~4_combout\ : std_logic;
SIGNAL \Mux1|Mux5~1_combout\ : std_logic;
SIGNAL \Mux1|Mux5~3_combout\ : std_logic;
SIGNAL \Mux1|Mux5~0_combout\ : std_logic;
SIGNAL \RegM13|output[10]~feeder_combout\ : std_logic;
SIGNAL \RegE5|output[10]~feeder_combout\ : std_logic;
SIGNAL \Mux1|Mux5~2_combout\ : std_logic;
SIGNAL \Mux1|Mux5~4_combout\ : std_logic;
SIGNAL \Mux1|Mux4~0_combout\ : std_logic;
SIGNAL \Mux1|Mux4~3_combout\ : std_logic;
SIGNAL \Mux1|Mux4~2_combout\ : std_logic;
SIGNAL \Mux1|Mux4~1_combout\ : std_logic;
SIGNAL \Mux1|Mux4~4_combout\ : std_logic;
SIGNAL \Mux1|Mux3~1_combout\ : std_logic;
SIGNAL \Mux1|Mux3~2_combout\ : std_logic;
SIGNAL \Mux1|Mux3~0_combout\ : std_logic;
SIGNAL \RegO15|output[12]~feeder_combout\ : std_logic;
SIGNAL \Mux1|Mux3~3_combout\ : std_logic;
SIGNAL \Mux1|Mux3~4_combout\ : std_logic;
SIGNAL \Mux1|Mux2~0_combout\ : std_logic;
SIGNAL \Mux1|Mux2~1_combout\ : std_logic;
SIGNAL \Mux1|Mux2~2_combout\ : std_logic;
SIGNAL \Mux1|Mux2~3_combout\ : std_logic;
SIGNAL \Mux1|Mux2~4_combout\ : std_logic;
SIGNAL \Mux1|Mux1~1_combout\ : std_logic;
SIGNAL \RegE5|output[14]~feeder_combout\ : std_logic;
SIGNAL \Mux1|Mux1~2_combout\ : std_logic;
SIGNAL \Mux1|Mux1~0_combout\ : std_logic;
SIGNAL \Mux1|Mux1~3_combout\ : std_logic;
SIGNAL \Mux1|Mux1~4_combout\ : std_logic;
SIGNAL \Mux1|Mux0~3_combout\ : std_logic;
SIGNAL \Mux1|Mux0~1_combout\ : std_logic;
SIGNAL \Mux1|Mux0~0_combout\ : std_logic;
SIGNAL \RegE5|output[15]~feeder_combout\ : std_logic;
SIGNAL \Mux1|Mux0~2_combout\ : std_logic;
SIGNAL \Mux1|Mux0~4_combout\ : std_logic;
SIGNAL \Mux2|Mux15~2_combout\ : std_logic;
SIGNAL \Mux2|Mux15~1_combout\ : std_logic;
SIGNAL \Mux2|Mux15~3_combout\ : std_logic;
SIGNAL \Mux2|Mux15~0_combout\ : std_logic;
SIGNAL \Mux2|Mux15~4_combout\ : std_logic;
SIGNAL \Mux2|Mux14~3_combout\ : std_logic;
SIGNAL \Mux2|Mux14~1_combout\ : std_logic;
SIGNAL \Mux2|Mux14~2_combout\ : std_logic;
SIGNAL \Mux2|Mux14~0_combout\ : std_logic;
SIGNAL \Mux2|Mux14~4_combout\ : std_logic;
SIGNAL \Mux2|Mux13~3_combout\ : std_logic;
SIGNAL \Mux2|Mux13~2_combout\ : std_logic;
SIGNAL \Mux2|Mux13~1_combout\ : std_logic;
SIGNAL \Mux2|Mux13~0_combout\ : std_logic;
SIGNAL \Mux2|Mux13~4_combout\ : std_logic;
SIGNAL \Mux2|Mux12~2_combout\ : std_logic;
SIGNAL \Mux2|Mux12~1_combout\ : std_logic;
SIGNAL \Mux2|Mux12~3_combout\ : std_logic;
SIGNAL \Mux2|Mux12~0_combout\ : std_logic;
SIGNAL \Mux2|Mux12~4_combout\ : std_logic;
SIGNAL \Mux2|Mux11~3_combout\ : std_logic;
SIGNAL \Mux2|Mux11~0_combout\ : std_logic;
SIGNAL \Mux2|Mux11~1_combout\ : std_logic;
SIGNAL \Mux2|Mux11~2_combout\ : std_logic;
SIGNAL \Mux2|Mux11~4_combout\ : std_logic;
SIGNAL \Mux2|Mux10~2_combout\ : std_logic;
SIGNAL \Mux2|Mux10~0_combout\ : std_logic;
SIGNAL \Mux2|Mux10~3_combout\ : std_logic;
SIGNAL \RegF6|output[5]~feeder_combout\ : std_logic;
SIGNAL \Mux2|Mux10~1_combout\ : std_logic;
SIGNAL \Mux2|Mux10~4_combout\ : std_logic;
SIGNAL \Mux2|Mux9~1_combout\ : std_logic;
SIGNAL \Mux2|Mux9~2_combout\ : std_logic;
SIGNAL \Mux2|Mux9~0_combout\ : std_logic;
SIGNAL \Mux2|Mux9~3_combout\ : std_logic;
SIGNAL \Mux2|Mux9~4_combout\ : std_logic;
SIGNAL \Mux2|Mux8~3_combout\ : std_logic;
SIGNAL \Mux2|Mux8~0_combout\ : std_logic;
SIGNAL \Mux2|Mux8~2_combout\ : std_logic;
SIGNAL \Mux2|Mux8~1_combout\ : std_logic;
SIGNAL \Mux2|Mux8~4_combout\ : std_logic;
SIGNAL \Mux2|Mux7~3_combout\ : std_logic;
SIGNAL \Mux2|Mux7~0_combout\ : std_logic;
SIGNAL \Mux2|Mux7~1_combout\ : std_logic;
SIGNAL \Mux2|Mux7~2_combout\ : std_logic;
SIGNAL \Mux2|Mux7~4_combout\ : std_logic;
SIGNAL \Mux2|Mux6~2_combout\ : std_logic;
SIGNAL \Mux2|Mux6~1_combout\ : std_logic;
SIGNAL \Mux2|Mux6~3_combout\ : std_logic;
SIGNAL \Mux2|Mux6~0_combout\ : std_logic;
SIGNAL \Mux2|Mux6~4_combout\ : std_logic;
SIGNAL \Mux2|Mux5~2_combout\ : std_logic;
SIGNAL \Mux2|Mux5~1_combout\ : std_logic;
SIGNAL \Mux2|Mux5~3_combout\ : std_logic;
SIGNAL \Mux2|Mux5~0_combout\ : std_logic;
SIGNAL \Mux2|Mux5~4_combout\ : std_logic;
SIGNAL \Mux2|Mux4~0_combout\ : std_logic;
SIGNAL \Mux2|Mux4~1_combout\ : std_logic;
SIGNAL \Mux2|Mux4~3_combout\ : std_logic;
SIGNAL \Mux2|Mux4~2_combout\ : std_logic;
SIGNAL \Mux2|Mux4~4_combout\ : std_logic;
SIGNAL \Mux2|Mux3~1_combout\ : std_logic;
SIGNAL \Mux2|Mux3~2_combout\ : std_logic;
SIGNAL \Mux2|Mux3~3_combout\ : std_logic;
SIGNAL \Mux2|Mux3~0_combout\ : std_logic;
SIGNAL \Mux2|Mux3~4_combout\ : std_logic;
SIGNAL \Mux2|Mux2~3_combout\ : std_logic;
SIGNAL \Mux2|Mux2~1_combout\ : std_logic;
SIGNAL \Mux2|Mux2~2_combout\ : std_logic;
SIGNAL \Mux2|Mux2~0_combout\ : std_logic;
SIGNAL \Mux2|Mux2~4_combout\ : std_logic;
SIGNAL \Mux2|Mux1~2_combout\ : std_logic;
SIGNAL \Mux2|Mux1~0_combout\ : std_logic;
SIGNAL \Mux2|Mux1~3_combout\ : std_logic;
SIGNAL \Mux2|Mux1~1_combout\ : std_logic;
SIGNAL \Mux2|Mux1~4_combout\ : std_logic;
SIGNAL \Mux2|Mux0~0_combout\ : std_logic;
SIGNAL \Mux2|Mux0~2_combout\ : std_logic;
SIGNAL \Mux2|Mux0~1_combout\ : std_logic;
SIGNAL \Mux2|Mux0~3_combout\ : std_logic;
SIGNAL \Mux2|Mux0~4_combout\ : std_logic;
SIGNAL \RegA1|output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \DataD~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RegD~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegS~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegT~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegO15|output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RegN14|output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RegM13|output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RegL12|output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RegK11|output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RegJ10|output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RegI9|output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RegH8|output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RegG7|output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RegF6|output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RegE5|output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RegD4|output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RegC3|output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RegB2|output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RegC3|ALT_INV_output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RegK11|ALT_INV_output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RegH8|ALT_INV_output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RegD4|ALT_INV_output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RegL12|ALT_INV_output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Mux1|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \RegB2|ALT_INV_output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RegJ10|ALT_INV_output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RegF6|ALT_INV_output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RegN14|ALT_INV_output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Mux1|ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \RegA1|ALT_INV_output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RegI9|ALT_INV_output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RegE5|ALT_INV_output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RegM13|ALT_INV_output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Mux1|ALT_INV_Mux15~2_combout\ : std_logic;
SIGNAL \RegG7|ALT_INV_output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RegO15|ALT_INV_output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Mux1|ALT_INV_Mux15~3_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux14~2_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux14~3_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux13~2_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux13~3_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux12~2_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux12~3_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux11~2_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux11~3_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux10~2_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux10~3_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux9~2_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux9~3_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux8~2_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux8~3_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux7~3_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux6~3_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux5~3_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux4~3_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux3~3_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux2~3_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux1~3_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux15~2_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux15~3_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux14~2_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux14~3_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux13~2_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux13~3_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux12~2_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux12~3_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux11~2_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux11~3_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux10~2_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux10~3_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux9~2_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux9~3_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux8~2_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux8~3_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux7~3_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux6~3_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux5~3_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux4~3_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux3~3_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux2~3_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux1~3_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \Mux2|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \ALT_INV_RegS~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_RegT~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_RegD~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Enable~combout\ : std_logic;
SIGNAL \ALT_INV_DataD~combout\ : std_logic_vector(15 DOWNTO 5);

BEGIN

ww_Reset <= Reset;
ww_Enable <= Enable;
ww_Clock <= Clock;
ww_RegD <= RegD;
ww_RegT <= RegT;
ww_RegS <= RegS;
ww_DataD <= DataD;
DataS <= ww_DataS;
DataT <= ww_DataT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Clock~combout\);

\Reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Reset~combout\);
\RegC3|ALT_INV_output\(0) <= NOT \RegC3|output\(0);
\RegK11|ALT_INV_output\(0) <= NOT \RegK11|output\(0);
\RegH8|ALT_INV_output\(0) <= NOT \RegH8|output\(0);
\RegD4|ALT_INV_output\(0) <= NOT \RegD4|output\(0);
\RegL12|ALT_INV_output\(0) <= NOT \RegL12|output\(0);
\Mux1|ALT_INV_Mux15~0_combout\ <= NOT \Mux1|Mux15~0_combout\;
\RegB2|ALT_INV_output\(0) <= NOT \RegB2|output\(0);
\RegJ10|ALT_INV_output\(0) <= NOT \RegJ10|output\(0);
\RegF6|ALT_INV_output\(0) <= NOT \RegF6|output\(0);
\RegN14|ALT_INV_output\(0) <= NOT \RegN14|output\(0);
\Mux1|ALT_INV_Mux15~1_combout\ <= NOT \Mux1|Mux15~1_combout\;
\RegA1|ALT_INV_output\(0) <= NOT \RegA1|output\(0);
\RegI9|ALT_INV_output\(0) <= NOT \RegI9|output\(0);
\RegE5|ALT_INV_output\(0) <= NOT \RegE5|output\(0);
\RegM13|ALT_INV_output\(0) <= NOT \RegM13|output\(0);
\Mux1|ALT_INV_Mux15~2_combout\ <= NOT \Mux1|Mux15~2_combout\;
\RegG7|ALT_INV_output\(0) <= NOT \RegG7|output\(0);
\RegO15|ALT_INV_output\(0) <= NOT \RegO15|output\(0);
\Mux1|ALT_INV_Mux15~3_combout\ <= NOT \Mux1|Mux15~3_combout\;
\RegH8|ALT_INV_output\(1) <= NOT \RegH8|output\(1);
\RegD4|ALT_INV_output\(1) <= NOT \RegD4|output\(1);
\RegL12|ALT_INV_output\(1) <= NOT \RegL12|output\(1);
\Mux1|ALT_INV_Mux14~0_combout\ <= NOT \Mux1|Mux14~0_combout\;
\RegB2|ALT_INV_output\(1) <= NOT \RegB2|output\(1);
\RegJ10|ALT_INV_output\(1) <= NOT \RegJ10|output\(1);
\RegF6|ALT_INV_output\(1) <= NOT \RegF6|output\(1);
\RegN14|ALT_INV_output\(1) <= NOT \RegN14|output\(1);
\Mux1|ALT_INV_Mux14~1_combout\ <= NOT \Mux1|Mux14~1_combout\;
\RegA1|ALT_INV_output\(1) <= NOT \RegA1|output\(1);
\RegI9|ALT_INV_output\(1) <= NOT \RegI9|output\(1);
\RegE5|ALT_INV_output\(1) <= NOT \RegE5|output\(1);
\RegM13|ALT_INV_output\(1) <= NOT \RegM13|output\(1);
\Mux1|ALT_INV_Mux14~2_combout\ <= NOT \Mux1|Mux14~2_combout\;
\RegC3|ALT_INV_output\(1) <= NOT \RegC3|output\(1);
\RegK11|ALT_INV_output\(1) <= NOT \RegK11|output\(1);
\RegG7|ALT_INV_output\(1) <= NOT \RegG7|output\(1);
\RegO15|ALT_INV_output\(1) <= NOT \RegO15|output\(1);
\Mux1|ALT_INV_Mux14~3_combout\ <= NOT \Mux1|Mux14~3_combout\;
\RegH8|ALT_INV_output\(2) <= NOT \RegH8|output\(2);
\RegD4|ALT_INV_output\(2) <= NOT \RegD4|output\(2);
\RegL12|ALT_INV_output\(2) <= NOT \RegL12|output\(2);
\Mux1|ALT_INV_Mux13~0_combout\ <= NOT \Mux1|Mux13~0_combout\;
\RegB2|ALT_INV_output\(2) <= NOT \RegB2|output\(2);
\RegJ10|ALT_INV_output\(2) <= NOT \RegJ10|output\(2);
\RegF6|ALT_INV_output\(2) <= NOT \RegF6|output\(2);
\RegN14|ALT_INV_output\(2) <= NOT \RegN14|output\(2);
\Mux1|ALT_INV_Mux13~1_combout\ <= NOT \Mux1|Mux13~1_combout\;
\RegA1|ALT_INV_output\(2) <= NOT \RegA1|output\(2);
\RegI9|ALT_INV_output\(2) <= NOT \RegI9|output\(2);
\RegE5|ALT_INV_output\(2) <= NOT \RegE5|output\(2);
\RegM13|ALT_INV_output\(2) <= NOT \RegM13|output\(2);
\Mux1|ALT_INV_Mux13~2_combout\ <= NOT \Mux1|Mux13~2_combout\;
\RegC3|ALT_INV_output\(2) <= NOT \RegC3|output\(2);
\RegK11|ALT_INV_output\(2) <= NOT \RegK11|output\(2);
\RegG7|ALT_INV_output\(2) <= NOT \RegG7|output\(2);
\RegO15|ALT_INV_output\(2) <= NOT \RegO15|output\(2);
\Mux1|ALT_INV_Mux13~3_combout\ <= NOT \Mux1|Mux13~3_combout\;
\RegH8|ALT_INV_output\(3) <= NOT \RegH8|output\(3);
\RegD4|ALT_INV_output\(3) <= NOT \RegD4|output\(3);
\RegL12|ALT_INV_output\(3) <= NOT \RegL12|output\(3);
\Mux1|ALT_INV_Mux12~0_combout\ <= NOT \Mux1|Mux12~0_combout\;
\RegB2|ALT_INV_output\(3) <= NOT \RegB2|output\(3);
\RegJ10|ALT_INV_output\(3) <= NOT \RegJ10|output\(3);
\RegF6|ALT_INV_output\(3) <= NOT \RegF6|output\(3);
\RegN14|ALT_INV_output\(3) <= NOT \RegN14|output\(3);
\Mux1|ALT_INV_Mux12~1_combout\ <= NOT \Mux1|Mux12~1_combout\;
\RegA1|ALT_INV_output\(3) <= NOT \RegA1|output\(3);
\RegI9|ALT_INV_output\(3) <= NOT \RegI9|output\(3);
\RegE5|ALT_INV_output\(3) <= NOT \RegE5|output\(3);
\RegM13|ALT_INV_output\(3) <= NOT \RegM13|output\(3);
\Mux1|ALT_INV_Mux12~2_combout\ <= NOT \Mux1|Mux12~2_combout\;
\RegC3|ALT_INV_output\(3) <= NOT \RegC3|output\(3);
\RegK11|ALT_INV_output\(3) <= NOT \RegK11|output\(3);
\RegG7|ALT_INV_output\(3) <= NOT \RegG7|output\(3);
\RegO15|ALT_INV_output\(3) <= NOT \RegO15|output\(3);
\Mux1|ALT_INV_Mux12~3_combout\ <= NOT \Mux1|Mux12~3_combout\;
\RegH8|ALT_INV_output\(4) <= NOT \RegH8|output\(4);
\RegD4|ALT_INV_output\(4) <= NOT \RegD4|output\(4);
\RegL12|ALT_INV_output\(4) <= NOT \RegL12|output\(4);
\Mux1|ALT_INV_Mux11~0_combout\ <= NOT \Mux1|Mux11~0_combout\;
\RegB2|ALT_INV_output\(4) <= NOT \RegB2|output\(4);
\RegJ10|ALT_INV_output\(4) <= NOT \RegJ10|output\(4);
\RegF6|ALT_INV_output\(4) <= NOT \RegF6|output\(4);
\RegN14|ALT_INV_output\(4) <= NOT \RegN14|output\(4);
\Mux1|ALT_INV_Mux11~1_combout\ <= NOT \Mux1|Mux11~1_combout\;
\RegA1|ALT_INV_output\(4) <= NOT \RegA1|output\(4);
\RegI9|ALT_INV_output\(4) <= NOT \RegI9|output\(4);
\RegE5|ALT_INV_output\(4) <= NOT \RegE5|output\(4);
\RegM13|ALT_INV_output\(4) <= NOT \RegM13|output\(4);
\Mux1|ALT_INV_Mux11~2_combout\ <= NOT \Mux1|Mux11~2_combout\;
\RegC3|ALT_INV_output\(4) <= NOT \RegC3|output\(4);
\RegK11|ALT_INV_output\(4) <= NOT \RegK11|output\(4);
\RegG7|ALT_INV_output\(4) <= NOT \RegG7|output\(4);
\RegO15|ALT_INV_output\(4) <= NOT \RegO15|output\(4);
\Mux1|ALT_INV_Mux11~3_combout\ <= NOT \Mux1|Mux11~3_combout\;
\RegH8|ALT_INV_output\(5) <= NOT \RegH8|output\(5);
\RegD4|ALT_INV_output\(5) <= NOT \RegD4|output\(5);
\RegL12|ALT_INV_output\(5) <= NOT \RegL12|output\(5);
\Mux1|ALT_INV_Mux10~0_combout\ <= NOT \Mux1|Mux10~0_combout\;
\RegB2|ALT_INV_output\(5) <= NOT \RegB2|output\(5);
\RegJ10|ALT_INV_output\(5) <= NOT \RegJ10|output\(5);
\RegF6|ALT_INV_output\(5) <= NOT \RegF6|output\(5);
\RegN14|ALT_INV_output\(5) <= NOT \RegN14|output\(5);
\Mux1|ALT_INV_Mux10~1_combout\ <= NOT \Mux1|Mux10~1_combout\;
\RegA1|ALT_INV_output\(5) <= NOT \RegA1|output\(5);
\RegI9|ALT_INV_output\(5) <= NOT \RegI9|output\(5);
\RegE5|ALT_INV_output\(5) <= NOT \RegE5|output\(5);
\RegM13|ALT_INV_output\(5) <= NOT \RegM13|output\(5);
\Mux1|ALT_INV_Mux10~2_combout\ <= NOT \Mux1|Mux10~2_combout\;
\RegC3|ALT_INV_output\(5) <= NOT \RegC3|output\(5);
\RegK11|ALT_INV_output\(5) <= NOT \RegK11|output\(5);
\RegG7|ALT_INV_output\(5) <= NOT \RegG7|output\(5);
\RegO15|ALT_INV_output\(5) <= NOT \RegO15|output\(5);
\Mux1|ALT_INV_Mux10~3_combout\ <= NOT \Mux1|Mux10~3_combout\;
\RegH8|ALT_INV_output\(6) <= NOT \RegH8|output\(6);
\RegD4|ALT_INV_output\(6) <= NOT \RegD4|output\(6);
\RegL12|ALT_INV_output\(6) <= NOT \RegL12|output\(6);
\Mux1|ALT_INV_Mux9~0_combout\ <= NOT \Mux1|Mux9~0_combout\;
\RegB2|ALT_INV_output\(6) <= NOT \RegB2|output\(6);
\RegJ10|ALT_INV_output\(6) <= NOT \RegJ10|output\(6);
\RegF6|ALT_INV_output\(6) <= NOT \RegF6|output\(6);
\RegN14|ALT_INV_output\(6) <= NOT \RegN14|output\(6);
\Mux1|ALT_INV_Mux9~1_combout\ <= NOT \Mux1|Mux9~1_combout\;
\RegA1|ALT_INV_output\(6) <= NOT \RegA1|output\(6);
\RegI9|ALT_INV_output\(6) <= NOT \RegI9|output\(6);
\RegE5|ALT_INV_output\(6) <= NOT \RegE5|output\(6);
\RegM13|ALT_INV_output\(6) <= NOT \RegM13|output\(6);
\Mux1|ALT_INV_Mux9~2_combout\ <= NOT \Mux1|Mux9~2_combout\;
\RegC3|ALT_INV_output\(6) <= NOT \RegC3|output\(6);
\RegK11|ALT_INV_output\(6) <= NOT \RegK11|output\(6);
\RegG7|ALT_INV_output\(6) <= NOT \RegG7|output\(6);
\RegO15|ALT_INV_output\(6) <= NOT \RegO15|output\(6);
\Mux1|ALT_INV_Mux9~3_combout\ <= NOT \Mux1|Mux9~3_combout\;
\RegH8|ALT_INV_output\(7) <= NOT \RegH8|output\(7);
\RegD4|ALT_INV_output\(7) <= NOT \RegD4|output\(7);
\RegL12|ALT_INV_output\(7) <= NOT \RegL12|output\(7);
\Mux1|ALT_INV_Mux8~0_combout\ <= NOT \Mux1|Mux8~0_combout\;
\RegB2|ALT_INV_output\(7) <= NOT \RegB2|output\(7);
\RegJ10|ALT_INV_output\(7) <= NOT \RegJ10|output\(7);
\RegF6|ALT_INV_output\(7) <= NOT \RegF6|output\(7);
\RegN14|ALT_INV_output\(7) <= NOT \RegN14|output\(7);
\Mux1|ALT_INV_Mux8~1_combout\ <= NOT \Mux1|Mux8~1_combout\;
\RegA1|ALT_INV_output\(7) <= NOT \RegA1|output\(7);
\RegI9|ALT_INV_output\(7) <= NOT \RegI9|output\(7);
\RegE5|ALT_INV_output\(7) <= NOT \RegE5|output\(7);
\RegM13|ALT_INV_output\(7) <= NOT \RegM13|output\(7);
\Mux1|ALT_INV_Mux8~2_combout\ <= NOT \Mux1|Mux8~2_combout\;
\RegC3|ALT_INV_output\(7) <= NOT \RegC3|output\(7);
\RegK11|ALT_INV_output\(7) <= NOT \RegK11|output\(7);
\RegG7|ALT_INV_output\(7) <= NOT \RegG7|output\(7);
\RegO15|ALT_INV_output\(7) <= NOT \RegO15|output\(7);
\Mux1|ALT_INV_Mux8~3_combout\ <= NOT \Mux1|Mux8~3_combout\;
\RegH8|ALT_INV_output\(8) <= NOT \RegH8|output\(8);
\RegD4|ALT_INV_output\(8) <= NOT \RegD4|output\(8);
\RegL12|ALT_INV_output\(8) <= NOT \RegL12|output\(8);
\Mux1|ALT_INV_Mux7~0_combout\ <= NOT \Mux1|Mux7~0_combout\;
\RegB2|ALT_INV_output\(8) <= NOT \RegB2|output\(8);
\RegJ10|ALT_INV_output\(8) <= NOT \RegJ10|output\(8);
\RegF6|ALT_INV_output\(8) <= NOT \RegF6|output\(8);
\RegN14|ALT_INV_output\(8) <= NOT \RegN14|output\(8);
\Mux1|ALT_INV_Mux7~1_combout\ <= NOT \Mux1|Mux7~1_combout\;
\RegA1|ALT_INV_output\(8) <= NOT \RegA1|output\(8);
\RegI9|ALT_INV_output\(8) <= NOT \RegI9|output\(8);
\RegE5|ALT_INV_output\(8) <= NOT \RegE5|output\(8);
\RegM13|ALT_INV_output\(8) <= NOT \RegM13|output\(8);
\Mux1|ALT_INV_Mux7~2_combout\ <= NOT \Mux1|Mux7~2_combout\;
\RegC3|ALT_INV_output\(8) <= NOT \RegC3|output\(8);
\RegK11|ALT_INV_output\(8) <= NOT \RegK11|output\(8);
\RegG7|ALT_INV_output\(8) <= NOT \RegG7|output\(8);
\RegO15|ALT_INV_output\(8) <= NOT \RegO15|output\(8);
\Mux1|ALT_INV_Mux7~3_combout\ <= NOT \Mux1|Mux7~3_combout\;
\RegH8|ALT_INV_output\(9) <= NOT \RegH8|output\(9);
\RegD4|ALT_INV_output\(9) <= NOT \RegD4|output\(9);
\RegL12|ALT_INV_output\(9) <= NOT \RegL12|output\(9);
\Mux1|ALT_INV_Mux6~0_combout\ <= NOT \Mux1|Mux6~0_combout\;
\RegB2|ALT_INV_output\(9) <= NOT \RegB2|output\(9);
\RegJ10|ALT_INV_output\(9) <= NOT \RegJ10|output\(9);
\RegF6|ALT_INV_output\(9) <= NOT \RegF6|output\(9);
\RegN14|ALT_INV_output\(9) <= NOT \RegN14|output\(9);
\Mux1|ALT_INV_Mux6~1_combout\ <= NOT \Mux1|Mux6~1_combout\;
\RegA1|ALT_INV_output\(9) <= NOT \RegA1|output\(9);
\RegI9|ALT_INV_output\(9) <= NOT \RegI9|output\(9);
\RegE5|ALT_INV_output\(9) <= NOT \RegE5|output\(9);
\RegM13|ALT_INV_output\(9) <= NOT \RegM13|output\(9);
\Mux1|ALT_INV_Mux6~2_combout\ <= NOT \Mux1|Mux6~2_combout\;
\RegC3|ALT_INV_output\(9) <= NOT \RegC3|output\(9);
\RegK11|ALT_INV_output\(9) <= NOT \RegK11|output\(9);
\RegG7|ALT_INV_output\(9) <= NOT \RegG7|output\(9);
\RegO15|ALT_INV_output\(9) <= NOT \RegO15|output\(9);
\Mux1|ALT_INV_Mux6~3_combout\ <= NOT \Mux1|Mux6~3_combout\;
\RegH8|ALT_INV_output\(10) <= NOT \RegH8|output\(10);
\RegD4|ALT_INV_output\(10) <= NOT \RegD4|output\(10);
\RegL12|ALT_INV_output\(10) <= NOT \RegL12|output\(10);
\Mux1|ALT_INV_Mux5~0_combout\ <= NOT \Mux1|Mux5~0_combout\;
\RegB2|ALT_INV_output\(10) <= NOT \RegB2|output\(10);
\RegJ10|ALT_INV_output\(10) <= NOT \RegJ10|output\(10);
\RegF6|ALT_INV_output\(10) <= NOT \RegF6|output\(10);
\RegN14|ALT_INV_output\(10) <= NOT \RegN14|output\(10);
\Mux1|ALT_INV_Mux5~1_combout\ <= NOT \Mux1|Mux5~1_combout\;
\RegA1|ALT_INV_output\(10) <= NOT \RegA1|output\(10);
\RegI9|ALT_INV_output\(10) <= NOT \RegI9|output\(10);
\RegE5|ALT_INV_output\(10) <= NOT \RegE5|output\(10);
\RegM13|ALT_INV_output\(10) <= NOT \RegM13|output\(10);
\Mux1|ALT_INV_Mux5~2_combout\ <= NOT \Mux1|Mux5~2_combout\;
\RegC3|ALT_INV_output\(10) <= NOT \RegC3|output\(10);
\RegK11|ALT_INV_output\(10) <= NOT \RegK11|output\(10);
\RegG7|ALT_INV_output\(10) <= NOT \RegG7|output\(10);
\RegO15|ALT_INV_output\(10) <= NOT \RegO15|output\(10);
\Mux1|ALT_INV_Mux5~3_combout\ <= NOT \Mux1|Mux5~3_combout\;
\RegH8|ALT_INV_output\(11) <= NOT \RegH8|output\(11);
\RegD4|ALT_INV_output\(11) <= NOT \RegD4|output\(11);
\RegL12|ALT_INV_output\(11) <= NOT \RegL12|output\(11);
\Mux1|ALT_INV_Mux4~0_combout\ <= NOT \Mux1|Mux4~0_combout\;
\RegB2|ALT_INV_output\(11) <= NOT \RegB2|output\(11);
\RegJ10|ALT_INV_output\(11) <= NOT \RegJ10|output\(11);
\RegF6|ALT_INV_output\(11) <= NOT \RegF6|output\(11);
\RegN14|ALT_INV_output\(11) <= NOT \RegN14|output\(11);
\Mux1|ALT_INV_Mux4~1_combout\ <= NOT \Mux1|Mux4~1_combout\;
\RegA1|ALT_INV_output\(11) <= NOT \RegA1|output\(11);
\RegI9|ALT_INV_output\(11) <= NOT \RegI9|output\(11);
\RegE5|ALT_INV_output\(11) <= NOT \RegE5|output\(11);
\RegM13|ALT_INV_output\(11) <= NOT \RegM13|output\(11);
\Mux1|ALT_INV_Mux4~2_combout\ <= NOT \Mux1|Mux4~2_combout\;
\RegC3|ALT_INV_output\(11) <= NOT \RegC3|output\(11);
\RegK11|ALT_INV_output\(11) <= NOT \RegK11|output\(11);
\RegG7|ALT_INV_output\(11) <= NOT \RegG7|output\(11);
\RegO15|ALT_INV_output\(11) <= NOT \RegO15|output\(11);
\Mux1|ALT_INV_Mux4~3_combout\ <= NOT \Mux1|Mux4~3_combout\;
\RegH8|ALT_INV_output\(12) <= NOT \RegH8|output\(12);
\RegD4|ALT_INV_output\(12) <= NOT \RegD4|output\(12);
\RegL12|ALT_INV_output\(12) <= NOT \RegL12|output\(12);
\Mux1|ALT_INV_Mux3~0_combout\ <= NOT \Mux1|Mux3~0_combout\;
\RegB2|ALT_INV_output\(12) <= NOT \RegB2|output\(12);
\RegJ10|ALT_INV_output\(12) <= NOT \RegJ10|output\(12);
\RegF6|ALT_INV_output\(12) <= NOT \RegF6|output\(12);
\RegN14|ALT_INV_output\(12) <= NOT \RegN14|output\(12);
\Mux1|ALT_INV_Mux3~1_combout\ <= NOT \Mux1|Mux3~1_combout\;
\RegA1|ALT_INV_output\(12) <= NOT \RegA1|output\(12);
\RegI9|ALT_INV_output\(12) <= NOT \RegI9|output\(12);
\RegE5|ALT_INV_output\(12) <= NOT \RegE5|output\(12);
\RegM13|ALT_INV_output\(12) <= NOT \RegM13|output\(12);
\Mux1|ALT_INV_Mux3~2_combout\ <= NOT \Mux1|Mux3~2_combout\;
\RegC3|ALT_INV_output\(12) <= NOT \RegC3|output\(12);
\RegK11|ALT_INV_output\(12) <= NOT \RegK11|output\(12);
\RegG7|ALT_INV_output\(12) <= NOT \RegG7|output\(12);
\RegO15|ALT_INV_output\(12) <= NOT \RegO15|output\(12);
\Mux1|ALT_INV_Mux3~3_combout\ <= NOT \Mux1|Mux3~3_combout\;
\RegH8|ALT_INV_output\(13) <= NOT \RegH8|output\(13);
\RegD4|ALT_INV_output\(13) <= NOT \RegD4|output\(13);
\RegL12|ALT_INV_output\(13) <= NOT \RegL12|output\(13);
\Mux1|ALT_INV_Mux2~0_combout\ <= NOT \Mux1|Mux2~0_combout\;
\RegB2|ALT_INV_output\(13) <= NOT \RegB2|output\(13);
\RegJ10|ALT_INV_output\(13) <= NOT \RegJ10|output\(13);
\RegF6|ALT_INV_output\(13) <= NOT \RegF6|output\(13);
\RegN14|ALT_INV_output\(13) <= NOT \RegN14|output\(13);
\Mux1|ALT_INV_Mux2~1_combout\ <= NOT \Mux1|Mux2~1_combout\;
\RegA1|ALT_INV_output\(13) <= NOT \RegA1|output\(13);
\RegI9|ALT_INV_output\(13) <= NOT \RegI9|output\(13);
\RegE5|ALT_INV_output\(13) <= NOT \RegE5|output\(13);
\RegM13|ALT_INV_output\(13) <= NOT \RegM13|output\(13);
\Mux1|ALT_INV_Mux2~2_combout\ <= NOT \Mux1|Mux2~2_combout\;
\RegC3|ALT_INV_output\(13) <= NOT \RegC3|output\(13);
\RegK11|ALT_INV_output\(13) <= NOT \RegK11|output\(13);
\RegG7|ALT_INV_output\(13) <= NOT \RegG7|output\(13);
\RegO15|ALT_INV_output\(13) <= NOT \RegO15|output\(13);
\Mux1|ALT_INV_Mux2~3_combout\ <= NOT \Mux1|Mux2~3_combout\;
\RegH8|ALT_INV_output\(14) <= NOT \RegH8|output\(14);
\RegD4|ALT_INV_output\(14) <= NOT \RegD4|output\(14);
\RegL12|ALT_INV_output\(14) <= NOT \RegL12|output\(14);
\Mux1|ALT_INV_Mux1~0_combout\ <= NOT \Mux1|Mux1~0_combout\;
\RegB2|ALT_INV_output\(14) <= NOT \RegB2|output\(14);
\RegJ10|ALT_INV_output\(14) <= NOT \RegJ10|output\(14);
\RegF6|ALT_INV_output\(14) <= NOT \RegF6|output\(14);
\RegN14|ALT_INV_output\(14) <= NOT \RegN14|output\(14);
\Mux1|ALT_INV_Mux1~1_combout\ <= NOT \Mux1|Mux1~1_combout\;
\RegA1|ALT_INV_output\(14) <= NOT \RegA1|output\(14);
\RegI9|ALT_INV_output\(14) <= NOT \RegI9|output\(14);
\RegE5|ALT_INV_output\(14) <= NOT \RegE5|output\(14);
\RegM13|ALT_INV_output\(14) <= NOT \RegM13|output\(14);
\Mux1|ALT_INV_Mux1~2_combout\ <= NOT \Mux1|Mux1~2_combout\;
\RegC3|ALT_INV_output\(14) <= NOT \RegC3|output\(14);
\RegK11|ALT_INV_output\(14) <= NOT \RegK11|output\(14);
\RegG7|ALT_INV_output\(14) <= NOT \RegG7|output\(14);
\RegO15|ALT_INV_output\(14) <= NOT \RegO15|output\(14);
\Mux1|ALT_INV_Mux1~3_combout\ <= NOT \Mux1|Mux1~3_combout\;
\RegH8|ALT_INV_output\(15) <= NOT \RegH8|output\(15);
\RegD4|ALT_INV_output\(15) <= NOT \RegD4|output\(15);
\RegL12|ALT_INV_output\(15) <= NOT \RegL12|output\(15);
\Mux1|ALT_INV_Mux0~0_combout\ <= NOT \Mux1|Mux0~0_combout\;
\RegB2|ALT_INV_output\(15) <= NOT \RegB2|output\(15);
\RegJ10|ALT_INV_output\(15) <= NOT \RegJ10|output\(15);
\RegF6|ALT_INV_output\(15) <= NOT \RegF6|output\(15);
\RegN14|ALT_INV_output\(15) <= NOT \RegN14|output\(15);
\Mux1|ALT_INV_Mux0~1_combout\ <= NOT \Mux1|Mux0~1_combout\;
\RegA1|ALT_INV_output\(15) <= NOT \RegA1|output\(15);
\RegI9|ALT_INV_output\(15) <= NOT \RegI9|output\(15);
\RegE5|ALT_INV_output\(15) <= NOT \RegE5|output\(15);
\RegM13|ALT_INV_output\(15) <= NOT \RegM13|output\(15);
\Mux1|ALT_INV_Mux0~2_combout\ <= NOT \Mux1|Mux0~2_combout\;
\RegC3|ALT_INV_output\(15) <= NOT \RegC3|output\(15);
\RegK11|ALT_INV_output\(15) <= NOT \RegK11|output\(15);
\RegG7|ALT_INV_output\(15) <= NOT \RegG7|output\(15);
\RegO15|ALT_INV_output\(15) <= NOT \RegO15|output\(15);
\Mux1|ALT_INV_Mux0~3_combout\ <= NOT \Mux1|Mux0~3_combout\;
\Mux2|ALT_INV_Mux15~0_combout\ <= NOT \Mux2|Mux15~0_combout\;
\Mux2|ALT_INV_Mux15~1_combout\ <= NOT \Mux2|Mux15~1_combout\;
\Mux2|ALT_INV_Mux15~2_combout\ <= NOT \Mux2|Mux15~2_combout\;
\Mux2|ALT_INV_Mux15~3_combout\ <= NOT \Mux2|Mux15~3_combout\;
\Mux2|ALT_INV_Mux14~0_combout\ <= NOT \Mux2|Mux14~0_combout\;
\Mux2|ALT_INV_Mux14~1_combout\ <= NOT \Mux2|Mux14~1_combout\;
\Mux2|ALT_INV_Mux14~2_combout\ <= NOT \Mux2|Mux14~2_combout\;
\Mux2|ALT_INV_Mux14~3_combout\ <= NOT \Mux2|Mux14~3_combout\;
\Mux2|ALT_INV_Mux13~0_combout\ <= NOT \Mux2|Mux13~0_combout\;
\Mux2|ALT_INV_Mux13~1_combout\ <= NOT \Mux2|Mux13~1_combout\;
\Mux2|ALT_INV_Mux13~2_combout\ <= NOT \Mux2|Mux13~2_combout\;
\Mux2|ALT_INV_Mux13~3_combout\ <= NOT \Mux2|Mux13~3_combout\;
\Mux2|ALT_INV_Mux12~0_combout\ <= NOT \Mux2|Mux12~0_combout\;
\Mux2|ALT_INV_Mux12~1_combout\ <= NOT \Mux2|Mux12~1_combout\;
\Mux2|ALT_INV_Mux12~2_combout\ <= NOT \Mux2|Mux12~2_combout\;
\Mux2|ALT_INV_Mux12~3_combout\ <= NOT \Mux2|Mux12~3_combout\;
\Mux2|ALT_INV_Mux11~0_combout\ <= NOT \Mux2|Mux11~0_combout\;
\Mux2|ALT_INV_Mux11~1_combout\ <= NOT \Mux2|Mux11~1_combout\;
\Mux2|ALT_INV_Mux11~2_combout\ <= NOT \Mux2|Mux11~2_combout\;
\Mux2|ALT_INV_Mux11~3_combout\ <= NOT \Mux2|Mux11~3_combout\;
\Mux2|ALT_INV_Mux10~0_combout\ <= NOT \Mux2|Mux10~0_combout\;
\Mux2|ALT_INV_Mux10~1_combout\ <= NOT \Mux2|Mux10~1_combout\;
\Mux2|ALT_INV_Mux10~2_combout\ <= NOT \Mux2|Mux10~2_combout\;
\Mux2|ALT_INV_Mux10~3_combout\ <= NOT \Mux2|Mux10~3_combout\;
\Mux2|ALT_INV_Mux9~0_combout\ <= NOT \Mux2|Mux9~0_combout\;
\Mux2|ALT_INV_Mux9~1_combout\ <= NOT \Mux2|Mux9~1_combout\;
\Mux2|ALT_INV_Mux9~2_combout\ <= NOT \Mux2|Mux9~2_combout\;
\Mux2|ALT_INV_Mux9~3_combout\ <= NOT \Mux2|Mux9~3_combout\;
\Mux2|ALT_INV_Mux8~0_combout\ <= NOT \Mux2|Mux8~0_combout\;
\Mux2|ALT_INV_Mux8~1_combout\ <= NOT \Mux2|Mux8~1_combout\;
\Mux2|ALT_INV_Mux8~2_combout\ <= NOT \Mux2|Mux8~2_combout\;
\Mux2|ALT_INV_Mux8~3_combout\ <= NOT \Mux2|Mux8~3_combout\;
\Mux2|ALT_INV_Mux7~0_combout\ <= NOT \Mux2|Mux7~0_combout\;
\Mux2|ALT_INV_Mux7~1_combout\ <= NOT \Mux2|Mux7~1_combout\;
\Mux2|ALT_INV_Mux7~2_combout\ <= NOT \Mux2|Mux7~2_combout\;
\Mux2|ALT_INV_Mux7~3_combout\ <= NOT \Mux2|Mux7~3_combout\;
\Mux2|ALT_INV_Mux6~0_combout\ <= NOT \Mux2|Mux6~0_combout\;
\Mux2|ALT_INV_Mux6~1_combout\ <= NOT \Mux2|Mux6~1_combout\;
\Mux2|ALT_INV_Mux6~2_combout\ <= NOT \Mux2|Mux6~2_combout\;
\Mux2|ALT_INV_Mux6~3_combout\ <= NOT \Mux2|Mux6~3_combout\;
\Mux2|ALT_INV_Mux5~0_combout\ <= NOT \Mux2|Mux5~0_combout\;
\Mux2|ALT_INV_Mux5~1_combout\ <= NOT \Mux2|Mux5~1_combout\;
\Mux2|ALT_INV_Mux5~2_combout\ <= NOT \Mux2|Mux5~2_combout\;
\Mux2|ALT_INV_Mux5~3_combout\ <= NOT \Mux2|Mux5~3_combout\;
\Mux2|ALT_INV_Mux4~0_combout\ <= NOT \Mux2|Mux4~0_combout\;
\Mux2|ALT_INV_Mux4~1_combout\ <= NOT \Mux2|Mux4~1_combout\;
\Mux2|ALT_INV_Mux4~2_combout\ <= NOT \Mux2|Mux4~2_combout\;
\Mux2|ALT_INV_Mux4~3_combout\ <= NOT \Mux2|Mux4~3_combout\;
\Mux2|ALT_INV_Mux3~0_combout\ <= NOT \Mux2|Mux3~0_combout\;
\Mux2|ALT_INV_Mux3~1_combout\ <= NOT \Mux2|Mux3~1_combout\;
\Mux2|ALT_INV_Mux3~2_combout\ <= NOT \Mux2|Mux3~2_combout\;
\Mux2|ALT_INV_Mux3~3_combout\ <= NOT \Mux2|Mux3~3_combout\;
\Mux2|ALT_INV_Mux2~0_combout\ <= NOT \Mux2|Mux2~0_combout\;
\Mux2|ALT_INV_Mux2~1_combout\ <= NOT \Mux2|Mux2~1_combout\;
\Mux2|ALT_INV_Mux2~2_combout\ <= NOT \Mux2|Mux2~2_combout\;
\Mux2|ALT_INV_Mux2~3_combout\ <= NOT \Mux2|Mux2~3_combout\;
\Mux2|ALT_INV_Mux1~0_combout\ <= NOT \Mux2|Mux1~0_combout\;
\Mux2|ALT_INV_Mux1~1_combout\ <= NOT \Mux2|Mux1~1_combout\;
\Mux2|ALT_INV_Mux1~2_combout\ <= NOT \Mux2|Mux1~2_combout\;
\Mux2|ALT_INV_Mux1~3_combout\ <= NOT \Mux2|Mux1~3_combout\;
\Mux2|ALT_INV_Mux0~0_combout\ <= NOT \Mux2|Mux0~0_combout\;
\Mux2|ALT_INV_Mux0~1_combout\ <= NOT \Mux2|Mux0~1_combout\;
\Mux2|ALT_INV_Mux0~2_combout\ <= NOT \Mux2|Mux0~2_combout\;
\Mux2|ALT_INV_Mux0~3_combout\ <= NOT \Mux2|Mux0~3_combout\;
\ALT_INV_RegS~combout\(2) <= NOT \RegS~combout\(2);
\ALT_INV_RegS~combout\(3) <= NOT \RegS~combout\(3);
\ALT_INV_RegS~combout\(1) <= NOT \RegS~combout\(1);
\ALT_INV_RegS~combout\(0) <= NOT \RegS~combout\(0);
\ALT_INV_RegT~combout\(2) <= NOT \RegT~combout\(2);
\ALT_INV_RegT~combout\(3) <= NOT \RegT~combout\(3);
\ALT_INV_RegT~combout\(1) <= NOT \RegT~combout\(1);
\ALT_INV_RegT~combout\(0) <= NOT \RegT~combout\(0);
\ALT_INV_RegD~combout\(2) <= NOT \RegD~combout\(2);
\ALT_INV_RegD~combout\(1) <= NOT \RegD~combout\(1);
\ALT_INV_RegD~combout\(0) <= NOT \RegD~combout\(0);
\ALT_INV_Enable~combout\ <= NOT \Enable~combout\;
\ALT_INV_RegD~combout\(3) <= NOT \RegD~combout\(3);
\ALT_INV_DataD~combout\(5) <= NOT \DataD~combout\(5);
\ALT_INV_DataD~combout\(8) <= NOT \DataD~combout\(8);
\ALT_INV_DataD~combout\(9) <= NOT \DataD~combout\(9);
\ALT_INV_DataD~combout\(10) <= NOT \DataD~combout\(10);
\ALT_INV_DataD~combout\(12) <= NOT \DataD~combout\(12);
\ALT_INV_DataD~combout\(14) <= NOT \DataD~combout\(14);
\ALT_INV_DataD~combout\(15) <= NOT \DataD~combout\(15);

-- Location: LCFF_X6_Y6_N9
\RegE5|output[0]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(0),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegE5|output\(0));

-- Location: LCFF_X22_Y8_N9
\RegF6|output[2]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(2),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegF6|output\(2));

-- Location: LCFF_X14_Y10_N1
\RegM13|output[5]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(5),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegM13|output\(5));

-- Location: LCFF_X6_Y6_N15
\RegE5|output[7]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(7),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegE5|output\(7));

-- Location: LCFF_X34_Y15_N15
\RegO15|output[11]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(11),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegO15|output\(11));

-- Location: LCFF_X26_Y20_N15
\RegL12|output[12]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(12),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegL12|output\(12));

-- Location: LCFF_X34_Y15_N19
\RegO15|output[14]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(14),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegO15|output\(14));

-- Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clock~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Clock,
	combout => \Clock~combout\);

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RegD[0]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RegD(0),
	combout => \RegD~combout\(0));

-- Location: CLKCTRL_G3
\Clock~clkctrl\ : stratixii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~clkctrl_outclk\);

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DataD[0]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DataD(0),
	combout => \DataD~combout\(0));

-- Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reset~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Reset,
	combout => \Reset~combout\);

-- Location: CLKCTRL_G1
\Reset~clkctrl\ : stratixii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock")
-- pragma translate_on
PORT MAP (
	inclk => \Reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset~clkctrl_outclk\);

-- Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RegD[3]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RegD(3),
	combout => \RegD~combout\(3));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RegD[1]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RegD(1),
	combout => \RegD~combout\(1));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RegD[2]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RegD(2),
	combout => \RegD~combout\(2));

-- Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Enable~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Enable,
	combout => \Enable~combout\);

-- Location: LCCOMB_X9_Y15_N12
\Decoder|Mux7~6\ : stratixii_lcell_comb
-- Equation(s):
-- \Decoder|Mux7~6_combout\ = ( \Enable~combout\ & ( (!\RegD~combout\(0) & (\RegD~combout\(3) & (\RegD~combout\(1) & \RegD~combout\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegD~combout\(0),
	datab => \ALT_INV_RegD~combout\(3),
	datac => \ALT_INV_RegD~combout\(1),
	datad => \ALT_INV_RegD~combout\(2),
	dataf => \ALT_INV_Enable~combout\,
	combout => \Decoder|Mux7~6_combout\);

-- Location: LCFF_X15_Y20_N3
\RegN14|output[0]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(0),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegN14|output\(0));

-- Location: LCCOMB_X9_Y15_N14
\Decoder|Mux7~5\ : stratixii_lcell_comb
-- Equation(s):
-- \Decoder|Mux7~5_combout\ = ( \Enable~combout\ & ( (!\RegD~combout\(0) & (!\RegD~combout\(3) & (\RegD~combout\(2) & \RegD~combout\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegD~combout\(0),
	datab => \ALT_INV_RegD~combout\(3),
	datac => \ALT_INV_RegD~combout\(2),
	datad => \ALT_INV_RegD~combout\(1),
	dataf => \ALT_INV_Enable~combout\,
	combout => \Decoder|Mux7~5_combout\);

-- Location: LCFF_X22_Y8_N19
\RegF6|output[0]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(0),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegF6|output\(0));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RegS[3]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RegS(3),
	combout => \RegS~combout\(3));

-- Location: LCCOMB_X9_Y15_N10
\Decoder|Mux7~3\ : stratixii_lcell_comb
-- Equation(s):
-- \Decoder|Mux7~3_combout\ = ( \Enable~combout\ & ( (!\RegD~combout\(0) & (!\RegD~combout\(3) & (!\RegD~combout\(2) & \RegD~combout\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegD~combout\(0),
	datab => \ALT_INV_RegD~combout\(3),
	datac => \ALT_INV_RegD~combout\(2),
	datad => \ALT_INV_RegD~combout\(1),
	dataf => \ALT_INV_Enable~combout\,
	combout => \Decoder|Mux7~3_combout\);

-- Location: LCFF_X15_Y20_N1
\RegB2|output[0]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(0),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB2|output\(0));

-- Location: LCCOMB_X9_Y15_N8
\Decoder|Mux7~4\ : stratixii_lcell_comb
-- Equation(s):
-- \Decoder|Mux7~4_combout\ = ( \Enable~combout\ & ( (!\RegD~combout\(0) & (\RegD~combout\(3) & (\RegD~combout\(1) & !\RegD~combout\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegD~combout\(0),
	datab => \ALT_INV_RegD~combout\(3),
	datac => \ALT_INV_RegD~combout\(1),
	datad => \ALT_INV_RegD~combout\(2),
	dataf => \ALT_INV_Enable~combout\,
	combout => \Decoder|Mux7~4_combout\);

-- Location: LCFF_X15_Y20_N5
\RegJ10|output[0]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(0),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegJ10|output\(0));

-- Location: LCCOMB_X15_Y20_N0
\Mux1|Mux15~1\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux15~1_combout\ = ( \RegB2|output\(0) & ( \RegJ10|output\(0) & ( (!\RegS~combout\(2)) # ((!\RegS~combout\(3) & ((\RegF6|output\(0)))) # (\RegS~combout\(3) & (\RegN14|output\(0)))) ) ) ) # ( !\RegB2|output\(0) & ( \RegJ10|output\(0) & ( 
-- (!\RegS~combout\(2) & (((\RegS~combout\(3))))) # (\RegS~combout\(2) & ((!\RegS~combout\(3) & ((\RegF6|output\(0)))) # (\RegS~combout\(3) & (\RegN14|output\(0))))) ) ) ) # ( \RegB2|output\(0) & ( !\RegJ10|output\(0) & ( (!\RegS~combout\(2) & 
-- (((!\RegS~combout\(3))))) # (\RegS~combout\(2) & ((!\RegS~combout\(3) & ((\RegF6|output\(0)))) # (\RegS~combout\(3) & (\RegN14|output\(0))))) ) ) ) # ( !\RegB2|output\(0) & ( !\RegJ10|output\(0) & ( (\RegS~combout\(2) & ((!\RegS~combout\(3) & 
-- ((\RegF6|output\(0)))) # (\RegS~combout\(3) & (\RegN14|output\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001101011110001000100000101101110111010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegS~combout\(2),
	datab => \RegN14|ALT_INV_output\(0),
	datac => \RegF6|ALT_INV_output\(0),
	datad => \ALT_INV_RegS~combout\(3),
	datae => \RegB2|ALT_INV_output\(0),
	dataf => \RegJ10|ALT_INV_output\(0),
	combout => \Mux1|Mux15~1_combout\);

-- Location: PIN_W20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RegS[2]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RegS(2),
	combout => \RegS~combout\(2));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RegS[1]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RegS(1),
	combout => \RegS~combout\(1));

-- Location: LCCOMB_X9_Y15_N4
\Decoder|Mux7~2\ : stratixii_lcell_comb
-- Equation(s):
-- \Decoder|Mux7~2_combout\ = ( \Enable~combout\ & ( (!\RegD~combout\(0) & (\RegD~combout\(3) & (!\RegD~combout\(1) & \RegD~combout\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegD~combout\(0),
	datab => \ALT_INV_RegD~combout\(3),
	datac => \ALT_INV_RegD~combout\(1),
	datad => \ALT_INV_RegD~combout\(2),
	dataf => \ALT_INV_Enable~combout\,
	combout => \Decoder|Mux7~2_combout\);

-- Location: LCFF_X5_Y8_N21
\RegL12|output[0]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(0),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegL12|output\(0));

-- Location: LCCOMB_X9_Y15_N18
\Decoder|Mux7~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Decoder|Mux7~0_combout\ = ( \Enable~combout\ & ( (!\RegD~combout\(0) & (\RegD~combout\(3) & (!\RegD~combout\(2) & !\RegD~combout\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegD~combout\(0),
	datab => \ALT_INV_RegD~combout\(3),
	datac => \ALT_INV_RegD~combout\(2),
	datad => \ALT_INV_RegD~combout\(1),
	dataf => \ALT_INV_Enable~combout\,
	combout => \Decoder|Mux7~0_combout\);

-- Location: LCFF_X5_Y8_N19
\RegH8|output[0]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(0),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegH8|output\(0));

-- Location: LCCOMB_X9_Y15_N6
\Decoder|Mux7~1\ : stratixii_lcell_comb
-- Equation(s):
-- \Decoder|Mux7~1_combout\ = ( \Enable~combout\ & ( (!\RegD~combout\(0) & (!\RegD~combout\(3) & (\RegD~combout\(2) & !\RegD~combout\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegD~combout\(0),
	datab => \ALT_INV_RegD~combout\(3),
	datac => \ALT_INV_RegD~combout\(2),
	datad => \ALT_INV_RegD~combout\(1),
	dataf => \ALT_INV_Enable~combout\,
	combout => \Decoder|Mux7~1_combout\);

-- Location: LCFF_X5_Y8_N23
\RegD4|output[0]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(0),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegD4|output\(0));

-- Location: LCCOMB_X5_Y8_N18
\Mux1|Mux15~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux15~0_combout\ = ( \RegH8|output\(0) & ( \RegD4|output\(0) & ( (!\RegS~combout\(3) & (((\RegS~combout\(1))) # (\RegS~combout\(2)))) # (\RegS~combout\(3) & ((!\RegS~combout\(2)) # ((\RegL12|output\(0))))) ) ) ) # ( !\RegH8|output\(0) & ( 
-- \RegD4|output\(0) & ( (\RegS~combout\(2) & ((!\RegS~combout\(3)) # (\RegL12|output\(0)))) ) ) ) # ( \RegH8|output\(0) & ( !\RegD4|output\(0) & ( (!\RegS~combout\(3) & (!\RegS~combout\(2) & (\RegS~combout\(1)))) # (\RegS~combout\(3) & ((!\RegS~combout\(2)) 
-- # ((\RegL12|output\(0))))) ) ) ) # ( !\RegH8|output\(0) & ( !\RegD4|output\(0) & ( (\RegS~combout\(3) & (\RegS~combout\(2) & \RegL12|output\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001010011000101110100100010001100110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegS~combout\(3),
	datab => \ALT_INV_RegS~combout\(2),
	datac => \ALT_INV_RegS~combout\(1),
	datad => \RegL12|ALT_INV_output\(0),
	datae => \RegH8|ALT_INV_output\(0),
	dataf => \RegD4|ALT_INV_output\(0),
	combout => \Mux1|Mux15~0_combout\);

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RegS[0]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RegS(0),
	combout => \RegS~combout\(0));

-- Location: LCCOMB_X9_Y15_N22
\Decoder|Mux7~10\ : stratixii_lcell_comb
-- Equation(s):
-- \Decoder|Mux7~10_combout\ = ( \Enable~combout\ & ( (\RegD~combout\(0) & (\RegD~combout\(3) & (\RegD~combout\(2) & !\RegD~combout\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegD~combout\(0),
	datab => \ALT_INV_RegD~combout\(3),
	datac => \ALT_INV_RegD~combout\(2),
	datad => \ALT_INV_RegD~combout\(1),
	dataf => \ALT_INV_Enable~combout\,
	combout => \Decoder|Mux7~10_combout\);

-- Location: LCFF_X14_Y10_N19
\RegM13|output[0]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(0),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegM13|output\(0));

-- Location: LCCOMB_X9_Y15_N2
\Decoder|Mux7~8\ : stratixii_lcell_comb
-- Equation(s):
-- \Decoder|Mux7~8_combout\ = ( \Enable~combout\ & ( (\RegD~combout\(0) & (\RegD~combout\(3) & (!\RegD~combout\(2) & !\RegD~combout\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegD~combout\(0),
	datab => \ALT_INV_RegD~combout\(3),
	datac => \ALT_INV_RegD~combout\(2),
	datad => \ALT_INV_RegD~combout\(1),
	dataf => \ALT_INV_Enable~combout\,
	combout => \Decoder|Mux7~8_combout\);

-- Location: LCFF_X6_Y6_N23
\RegI9|output[0]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(0),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegI9|output\(0));

-- Location: LCCOMB_X9_Y15_N0
\Decoder|Mux7~7\ : stratixii_lcell_comb
-- Equation(s):
-- \Decoder|Mux7~7_combout\ = ( \Enable~combout\ & ( (\RegD~combout\(0) & (!\RegD~combout\(3) & (!\RegD~combout\(1) & !\RegD~combout\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegD~combout\(0),
	datab => \ALT_INV_RegD~combout\(3),
	datac => \ALT_INV_RegD~combout\(1),
	datad => \ALT_INV_RegD~combout\(2),
	dataf => \ALT_INV_Enable~combout\,
	combout => \Decoder|Mux7~7_combout\);

-- Location: LCFF_X6_Y6_N17
\RegA1|output[0]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(0),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA1|output\(0));

-- Location: LCCOMB_X6_Y6_N16
\Mux1|Mux15~2\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux15~2_combout\ = ( \RegA1|output\(0) & ( \RegS~combout\(2) & ( (!\RegS~combout\(3) & (\RegE5|output\(0))) # (\RegS~combout\(3) & ((\RegM13|output\(0)))) ) ) ) # ( !\RegA1|output\(0) & ( \RegS~combout\(2) & ( (!\RegS~combout\(3) & 
-- (\RegE5|output\(0))) # (\RegS~combout\(3) & ((\RegM13|output\(0)))) ) ) ) # ( \RegA1|output\(0) & ( !\RegS~combout\(2) & ( (!\RegS~combout\(3)) # (\RegI9|output\(0)) ) ) ) # ( !\RegA1|output\(0) & ( !\RegS~combout\(2) & ( (\RegI9|output\(0) & 
-- \RegS~combout\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegE5|ALT_INV_output\(0),
	datab => \RegM13|ALT_INV_output\(0),
	datac => \RegI9|ALT_INV_output\(0),
	datad => \ALT_INV_RegS~combout\(3),
	datae => \RegA1|ALT_INV_output\(0),
	dataf => \ALT_INV_RegS~combout\(2),
	combout => \Mux1|Mux15~2_combout\);

-- Location: LCCOMB_X9_Y15_N28
\Decoder|Mux7~13\ : stratixii_lcell_comb
-- Equation(s):
-- \Decoder|Mux7~13_combout\ = ( \RegD~combout\(1) & ( \RegD~combout\(2) & ( (\RegD~combout\(0) & (!\RegD~combout\(3) & \Enable~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegD~combout\(0),
	datab => \ALT_INV_RegD~combout\(3),
	datac => \ALT_INV_Enable~combout\,
	datae => \ALT_INV_RegD~combout\(1),
	dataf => \ALT_INV_RegD~combout\(2),
	combout => \Decoder|Mux7~13_combout\);

-- Location: LCFF_X19_Y17_N3
\RegG7|output[0]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(0),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegG7|output\(0));

-- Location: LCCOMB_X9_Y15_N16
\Decoder|Mux7~14\ : stratixii_lcell_comb
-- Equation(s):
-- \Decoder|Mux7~14_combout\ = ( \RegD~combout\(2) & ( (\RegD~combout\(0) & (\RegD~combout\(3) & (\Enable~combout\ & \RegD~combout\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegD~combout\(0),
	datab => \ALT_INV_RegD~combout\(3),
	datac => \ALT_INV_Enable~combout\,
	datad => \ALT_INV_RegD~combout\(1),
	dataf => \ALT_INV_RegD~combout\(2),
	combout => \Decoder|Mux7~14_combout\);

-- Location: LCFF_X14_Y16_N5
\RegO15|output[0]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(0),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegO15|output\(0));

-- Location: LCCOMB_X9_Y15_N24
\Decoder|Mux7~11\ : stratixii_lcell_comb
-- Equation(s):
-- \Decoder|Mux7~11_combout\ = ( \Enable~combout\ & ( (\RegD~combout\(0) & (!\RegD~combout\(3) & (\RegD~combout\(1) & !\RegD~combout\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegD~combout\(0),
	datab => \ALT_INV_RegD~combout\(3),
	datac => \ALT_INV_RegD~combout\(1),
	datad => \ALT_INV_RegD~combout\(2),
	dataf => \ALT_INV_Enable~combout\,
	combout => \Decoder|Mux7~11_combout\);

-- Location: LCFF_X14_Y16_N17
\RegC3|output[0]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(0),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegC3|output\(0));

-- Location: LCCOMB_X14_Y16_N16
\Mux1|Mux15~3\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux15~3_combout\ = ( \RegC3|output\(0) & ( \RegS~combout\(3) & ( (!\RegS~combout\(2) & (\RegK11|output\(0))) # (\RegS~combout\(2) & ((\RegO15|output\(0)))) ) ) ) # ( !\RegC3|output\(0) & ( \RegS~combout\(3) & ( (!\RegS~combout\(2) & 
-- (\RegK11|output\(0))) # (\RegS~combout\(2) & ((\RegO15|output\(0)))) ) ) ) # ( \RegC3|output\(0) & ( !\RegS~combout\(3) & ( (!\RegS~combout\(2)) # (\RegG7|output\(0)) ) ) ) # ( !\RegC3|output\(0) & ( !\RegS~combout\(3) & ( (\RegS~combout\(2) & 
-- \RegG7|output\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegK11|ALT_INV_output\(0),
	datab => \ALT_INV_RegS~combout\(2),
	datac => \RegG7|ALT_INV_output\(0),
	datad => \RegO15|ALT_INV_output\(0),
	datae => \RegC3|ALT_INV_output\(0),
	dataf => \ALT_INV_RegS~combout\(3),
	combout => \Mux1|Mux15~3_combout\);

-- Location: LCCOMB_X5_Y8_N8
\Mux1|Mux15~4\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux15~4_combout\ = ( \RegS~combout\(1) & ( \Mux1|Mux15~3_combout\ & ( (\RegS~combout\(0)) # (\Mux1|Mux15~1_combout\) ) ) ) # ( !\RegS~combout\(1) & ( \Mux1|Mux15~3_combout\ & ( (!\RegS~combout\(0) & (\Mux1|Mux15~0_combout\)) # (\RegS~combout\(0) & 
-- ((\Mux1|Mux15~2_combout\))) ) ) ) # ( \RegS~combout\(1) & ( !\Mux1|Mux15~3_combout\ & ( (\Mux1|Mux15~1_combout\ & !\RegS~combout\(0)) ) ) ) # ( !\RegS~combout\(1) & ( !\Mux1|Mux15~3_combout\ & ( (!\RegS~combout\(0) & (\Mux1|Mux15~0_combout\)) # 
-- (\RegS~combout\(0) & ((\Mux1|Mux15~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111010100000101000000110000001111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1|ALT_INV_Mux15~1_combout\,
	datab => \Mux1|ALT_INV_Mux15~0_combout\,
	datac => \ALT_INV_RegS~combout\(0),
	datad => \Mux1|ALT_INV_Mux15~2_combout\,
	datae => \ALT_INV_RegS~combout\(1),
	dataf => \Mux1|ALT_INV_Mux15~3_combout\,
	combout => \Mux1|Mux15~4_combout\);

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DataD[1]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DataD(1),
	combout => \DataD~combout\(1));

-- Location: LCFF_X14_Y16_N19
\RegO15|output[1]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(1),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegO15|output\(1));

-- Location: LCFF_X14_Y16_N9
\RegC3|output[1]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(1),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegC3|output\(1));

-- Location: LCFF_X19_Y17_N23
\RegG7|output[1]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(1),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegG7|output\(1));

-- Location: LCCOMB_X14_Y16_N8
\Mux1|Mux14~3\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux14~3_combout\ = ( \RegC3|output\(1) & ( \RegG7|output\(1) & ( (!\RegS~combout\(3)) # ((!\RegS~combout\(2) & (\RegK11|output\(1))) # (\RegS~combout\(2) & ((\RegO15|output\(1))))) ) ) ) # ( !\RegC3|output\(1) & ( \RegG7|output\(1) & ( 
-- (!\RegS~combout\(2) & (\RegK11|output\(1) & (\RegS~combout\(3)))) # (\RegS~combout\(2) & (((!\RegS~combout\(3)) # (\RegO15|output\(1))))) ) ) ) # ( \RegC3|output\(1) & ( !\RegG7|output\(1) & ( (!\RegS~combout\(2) & (((!\RegS~combout\(3))) # 
-- (\RegK11|output\(1)))) # (\RegS~combout\(2) & (((\RegS~combout\(3) & \RegO15|output\(1))))) ) ) ) # ( !\RegC3|output\(1) & ( !\RegG7|output\(1) & ( (\RegS~combout\(3) & ((!\RegS~combout\(2) & (\RegK11|output\(1))) # (\RegS~combout\(2) & 
-- ((\RegO15|output\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111110001001100011100110100001101111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegK11|ALT_INV_output\(1),
	datab => \ALT_INV_RegS~combout\(2),
	datac => \ALT_INV_RegS~combout\(3),
	datad => \RegO15|ALT_INV_output\(1),
	datae => \RegC3|ALT_INV_output\(1),
	dataf => \RegG7|ALT_INV_output\(1),
	combout => \Mux1|Mux14~3_combout\);

-- Location: LCFF_X5_Y8_N17
\RegL12|output[1]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(1),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegL12|output\(1));

-- Location: LCFF_X5_Y8_N15
\RegH8|output[1]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(1),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegH8|output\(1));

-- Location: LCFF_X5_Y8_N1
\RegD4|output[1]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(1),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegD4|output\(1));

-- Location: LCCOMB_X5_Y8_N14
\Mux1|Mux14~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux14~0_combout\ = ( \RegH8|output\(1) & ( \RegD4|output\(1) & ( (!\RegS~combout\(3) & (((\RegS~combout\(1))) # (\RegS~combout\(2)))) # (\RegS~combout\(3) & ((!\RegS~combout\(2)) # ((\RegL12|output\(1))))) ) ) ) # ( !\RegH8|output\(1) & ( 
-- \RegD4|output\(1) & ( (\RegS~combout\(2) & ((!\RegS~combout\(3)) # (\RegL12|output\(1)))) ) ) ) # ( \RegH8|output\(1) & ( !\RegD4|output\(1) & ( (!\RegS~combout\(3) & (!\RegS~combout\(2) & (\RegS~combout\(1)))) # (\RegS~combout\(3) & ((!\RegS~combout\(2)) 
-- # ((\RegL12|output\(1))))) ) ) ) # ( !\RegH8|output\(1) & ( !\RegD4|output\(1) & ( (\RegS~combout\(3) & (\RegS~combout\(2) & \RegL12|output\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001010011000101110100100010001100110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegS~combout\(3),
	datab => \ALT_INV_RegS~combout\(2),
	datac => \ALT_INV_RegS~combout\(1),
	datad => \RegL12|ALT_INV_output\(1),
	datae => \RegH8|ALT_INV_output\(1),
	dataf => \RegD4|ALT_INV_output\(1),
	combout => \Mux1|Mux14~0_combout\);

-- Location: LCFF_X6_Y6_N11
\RegI9|output[1]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(1),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegI9|output\(1));

-- Location: LCCOMB_X9_Y15_N20
\Decoder|Mux7~9\ : stratixii_lcell_comb
-- Equation(s):
-- \Decoder|Mux7~9_combout\ = ( \Enable~combout\ & ( (\RegD~combout\(0) & (!\RegD~combout\(3) & (!\RegD~combout\(1) & \RegD~combout\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegD~combout\(0),
	datab => \ALT_INV_RegD~combout\(3),
	datac => \ALT_INV_RegD~combout\(1),
	datad => \ALT_INV_RegD~combout\(2),
	dataf => \ALT_INV_Enable~combout\,
	combout => \Decoder|Mux7~9_combout\);

-- Location: LCFF_X6_Y6_N29
\RegE5|output[1]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(1),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegE5|output\(1));

-- Location: LCFF_X6_Y6_N31
\RegA1|output[1]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(1),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA1|output\(1));

-- Location: LCFF_X14_Y10_N5
\RegM13|output[1]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(1),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegM13|output\(1));

-- Location: LCCOMB_X6_Y6_N30
\Mux1|Mux14~2\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux14~2_combout\ = ( \RegA1|output\(1) & ( \RegM13|output\(1) & ( (!\RegS~combout\(2) & (((!\RegS~combout\(3))) # (\RegI9|output\(1)))) # (\RegS~combout\(2) & (((\RegE5|output\(1)) # (\RegS~combout\(3))))) ) ) ) # ( !\RegA1|output\(1) & ( 
-- \RegM13|output\(1) & ( (!\RegS~combout\(2) & (\RegI9|output\(1) & (\RegS~combout\(3)))) # (\RegS~combout\(2) & (((\RegE5|output\(1)) # (\RegS~combout\(3))))) ) ) ) # ( \RegA1|output\(1) & ( !\RegM13|output\(1) & ( (!\RegS~combout\(2) & 
-- (((!\RegS~combout\(3))) # (\RegI9|output\(1)))) # (\RegS~combout\(2) & (((!\RegS~combout\(3) & \RegE5|output\(1))))) ) ) ) # ( !\RegA1|output\(1) & ( !\RegM13|output\(1) & ( (!\RegS~combout\(2) & (\RegI9|output\(1) & (\RegS~combout\(3)))) # 
-- (\RegS~combout\(2) & (((!\RegS~combout\(3) & \RegE5|output\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010101000101111001000000111010101111010011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegS~combout\(2),
	datab => \RegI9|ALT_INV_output\(1),
	datac => \ALT_INV_RegS~combout\(3),
	datad => \RegE5|ALT_INV_output\(1),
	datae => \RegA1|ALT_INV_output\(1),
	dataf => \RegM13|ALT_INV_output\(1),
	combout => \Mux1|Mux14~2_combout\);

-- Location: LCFF_X15_Y20_N7
\RegN14|output[1]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(1),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegN14|output\(1));

-- Location: LCFF_X22_Y8_N23
\RegF6|output[1]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(1),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegF6|output\(1));

-- Location: LCFF_X15_Y20_N27
\RegB2|output[1]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(1),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB2|output\(1));

-- Location: LCFF_X15_Y20_N31
\RegJ10|output[1]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(1),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegJ10|output\(1));

-- Location: LCCOMB_X15_Y20_N26
\Mux1|Mux14~1\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux14~1_combout\ = ( \RegB2|output\(1) & ( \RegJ10|output\(1) & ( (!\RegS~combout\(2)) # ((!\RegS~combout\(3) & ((\RegF6|output\(1)))) # (\RegS~combout\(3) & (\RegN14|output\(1)))) ) ) ) # ( !\RegB2|output\(1) & ( \RegJ10|output\(1) & ( 
-- (!\RegS~combout\(2) & (\RegS~combout\(3))) # (\RegS~combout\(2) & ((!\RegS~combout\(3) & ((\RegF6|output\(1)))) # (\RegS~combout\(3) & (\RegN14|output\(1))))) ) ) ) # ( \RegB2|output\(1) & ( !\RegJ10|output\(1) & ( (!\RegS~combout\(2) & 
-- (!\RegS~combout\(3))) # (\RegS~combout\(2) & ((!\RegS~combout\(3) & ((\RegF6|output\(1)))) # (\RegS~combout\(3) & (\RegN14|output\(1))))) ) ) ) # ( !\RegB2|output\(1) & ( !\RegJ10|output\(1) & ( (\RegS~combout\(2) & ((!\RegS~combout\(3) & 
-- ((\RegF6|output\(1)))) # (\RegS~combout\(3) & (\RegN14|output\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegS~combout\(2),
	datab => \ALT_INV_RegS~combout\(3),
	datac => \RegN14|ALT_INV_output\(1),
	datad => \RegF6|ALT_INV_output\(1),
	datae => \RegB2|ALT_INV_output\(1),
	dataf => \RegJ10|ALT_INV_output\(1),
	combout => \Mux1|Mux14~1_combout\);

-- Location: LCCOMB_X5_Y8_N4
\Mux1|Mux14~4\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux14~4_combout\ = ( \Mux1|Mux14~2_combout\ & ( \Mux1|Mux14~1_combout\ & ( (!\RegS~combout\(1) & (((\Mux1|Mux14~0_combout\) # (\RegS~combout\(0))))) # (\RegS~combout\(1) & (((!\RegS~combout\(0))) # (\Mux1|Mux14~3_combout\))) ) ) ) # ( 
-- !\Mux1|Mux14~2_combout\ & ( \Mux1|Mux14~1_combout\ & ( (!\RegS~combout\(1) & (((!\RegS~combout\(0) & \Mux1|Mux14~0_combout\)))) # (\RegS~combout\(1) & (((!\RegS~combout\(0))) # (\Mux1|Mux14~3_combout\))) ) ) ) # ( \Mux1|Mux14~2_combout\ & ( 
-- !\Mux1|Mux14~1_combout\ & ( (!\RegS~combout\(1) & (((\Mux1|Mux14~0_combout\) # (\RegS~combout\(0))))) # (\RegS~combout\(1) & (\Mux1|Mux14~3_combout\ & (\RegS~combout\(0)))) ) ) ) # ( !\Mux1|Mux14~2_combout\ & ( !\Mux1|Mux14~1_combout\ & ( 
-- (!\RegS~combout\(1) & (((!\RegS~combout\(0) & \Mux1|Mux14~0_combout\)))) # (\RegS~combout\(1) & (\Mux1|Mux14~3_combout\ & (\RegS~combout\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000001000011011100110100110001111100010011110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1|ALT_INV_Mux14~3_combout\,
	datab => \ALT_INV_RegS~combout\(1),
	datac => \ALT_INV_RegS~combout\(0),
	datad => \Mux1|ALT_INV_Mux14~0_combout\,
	datae => \Mux1|ALT_INV_Mux14~2_combout\,
	dataf => \Mux1|ALT_INV_Mux14~1_combout\,
	combout => \Mux1|Mux14~4_combout\);

-- Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DataD[2]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DataD(2),
	combout => \DataD~combout\(2));

-- Location: LCFF_X15_Y20_N23
\RegJ10|output[2]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(2),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegJ10|output\(2));

-- Location: LCFF_X15_Y20_N29
\RegN14|output[2]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(2),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegN14|output\(2));

-- Location: LCFF_X15_Y20_N17
\RegB2|output[2]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(2),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB2|output\(2));

-- Location: LCCOMB_X15_Y20_N16
\Mux1|Mux13~1\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux13~1_combout\ = ( \RegB2|output\(2) & ( \RegS~combout\(3) & ( (!\RegS~combout\(2) & (\RegJ10|output\(2))) # (\RegS~combout\(2) & ((\RegN14|output\(2)))) ) ) ) # ( !\RegB2|output\(2) & ( \RegS~combout\(3) & ( (!\RegS~combout\(2) & 
-- (\RegJ10|output\(2))) # (\RegS~combout\(2) & ((\RegN14|output\(2)))) ) ) ) # ( \RegB2|output\(2) & ( !\RegS~combout\(3) & ( (!\RegS~combout\(2)) # (\RegF6|output\(2)) ) ) ) # ( !\RegB2|output\(2) & ( !\RegS~combout\(3) & ( (\RegF6|output\(2) & 
-- \RegS~combout\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegF6|ALT_INV_output\(2),
	datab => \RegJ10|ALT_INV_output\(2),
	datac => \ALT_INV_RegS~combout\(2),
	datad => \RegN14|ALT_INV_output\(2),
	datae => \RegB2|ALT_INV_output\(2),
	dataf => \ALT_INV_RegS~combout\(3),
	combout => \Mux1|Mux13~1_combout\);

-- Location: LCFF_X19_Y17_N25
\RegG7|output[2]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(2),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegG7|output\(2));

-- Location: LCFF_X14_Y16_N3
\RegC3|output[2]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(2),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegC3|output\(2));

-- Location: LCFF_X14_Y16_N11
\RegO15|output[2]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(2),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegO15|output\(2));

-- Location: LCCOMB_X14_Y16_N2
\Mux1|Mux13~3\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux13~3_combout\ = ( \RegC3|output\(2) & ( \RegO15|output\(2) & ( (!\RegS~combout\(2) & (((!\RegS~combout\(3))) # (\RegK11|output\(2)))) # (\RegS~combout\(2) & (((\RegS~combout\(3)) # (\RegG7|output\(2))))) ) ) ) # ( !\RegC3|output\(2) & ( 
-- \RegO15|output\(2) & ( (!\RegS~combout\(2) & (\RegK11|output\(2) & ((\RegS~combout\(3))))) # (\RegS~combout\(2) & (((\RegS~combout\(3)) # (\RegG7|output\(2))))) ) ) ) # ( \RegC3|output\(2) & ( !\RegO15|output\(2) & ( (!\RegS~combout\(2) & 
-- (((!\RegS~combout\(3))) # (\RegK11|output\(2)))) # (\RegS~combout\(2) & (((\RegG7|output\(2) & !\RegS~combout\(3))))) ) ) ) # ( !\RegC3|output\(2) & ( !\RegO15|output\(2) & ( (!\RegS~combout\(2) & (\RegK11|output\(2) & ((\RegS~combout\(3))))) # 
-- (\RegS~combout\(2) & (((\RegG7|output\(2) & !\RegS~combout\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100110011110100010000000011011101111100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegK11|ALT_INV_output\(2),
	datab => \ALT_INV_RegS~combout\(2),
	datac => \RegG7|ALT_INV_output\(2),
	datad => \ALT_INV_RegS~combout\(3),
	datae => \RegC3|ALT_INV_output\(2),
	dataf => \RegO15|ALT_INV_output\(2),
	combout => \Mux1|Mux13~3_combout\);

-- Location: LCFF_X14_Y10_N9
\RegM13|output[2]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(2),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegM13|output\(2));

-- Location: LCFF_X6_Y6_N3
\RegA1|output[2]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(2),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA1|output\(2));

-- Location: LCFF_X6_Y6_N5
\RegI9|output[2]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(2),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegI9|output\(2));

-- Location: LCCOMB_X6_Y6_N2
\Mux1|Mux13~2\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux13~2_combout\ = ( \RegA1|output\(2) & ( \RegI9|output\(2) & ( (!\RegS~combout\(2)) # ((!\RegS~combout\(3) & (\RegE5|output\(2))) # (\RegS~combout\(3) & ((\RegM13|output\(2))))) ) ) ) # ( !\RegA1|output\(2) & ( \RegI9|output\(2) & ( 
-- (!\RegS~combout\(3) & (\RegE5|output\(2) & ((\RegS~combout\(2))))) # (\RegS~combout\(3) & (((!\RegS~combout\(2)) # (\RegM13|output\(2))))) ) ) ) # ( \RegA1|output\(2) & ( !\RegI9|output\(2) & ( (!\RegS~combout\(3) & (((!\RegS~combout\(2))) # 
-- (\RegE5|output\(2)))) # (\RegS~combout\(3) & (((\RegM13|output\(2) & \RegS~combout\(2))))) ) ) ) # ( !\RegA1|output\(2) & ( !\RegI9|output\(2) & ( (\RegS~combout\(2) & ((!\RegS~combout\(3) & (\RegE5|output\(2))) # (\RegS~combout\(3) & 
-- ((\RegM13|output\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011111100000101001100001111010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegE5|ALT_INV_output\(2),
	datab => \RegM13|ALT_INV_output\(2),
	datac => \ALT_INV_RegS~combout\(3),
	datad => \ALT_INV_RegS~combout\(2),
	datae => \RegA1|ALT_INV_output\(2),
	dataf => \RegI9|ALT_INV_output\(2),
	combout => \Mux1|Mux13~2_combout\);

-- Location: LCFF_X3_Y24_N5
\RegD4|output[2]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(2),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegD4|output\(2));

-- Location: LCFF_X3_Y24_N1
\RegH8|output[2]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(2),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegH8|output\(2));

-- Location: LCFF_X5_Y8_N13
\RegL12|output[2]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(2),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegL12|output\(2));

-- Location: LCCOMB_X3_Y24_N0
\Mux1|Mux13~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux13~0_combout\ = ( \RegH8|output\(2) & ( \RegL12|output\(2) & ( ((!\RegS~combout\(2) & (\RegS~combout\(1))) # (\RegS~combout\(2) & ((\RegD4|output\(2))))) # (\RegS~combout\(3)) ) ) ) # ( !\RegH8|output\(2) & ( \RegL12|output\(2) & ( 
-- (\RegS~combout\(2) & ((\RegD4|output\(2)) # (\RegS~combout\(3)))) ) ) ) # ( \RegH8|output\(2) & ( !\RegL12|output\(2) & ( (!\RegS~combout\(3) & ((!\RegS~combout\(2) & (\RegS~combout\(1))) # (\RegS~combout\(2) & ((\RegD4|output\(2)))))) # 
-- (\RegS~combout\(3) & (!\RegS~combout\(2))) ) ) ) # ( !\RegH8|output\(2) & ( !\RegL12|output\(2) & ( (!\RegS~combout\(3) & (\RegS~combout\(2) & \RegD4|output\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010010011000110111000010001001100110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegS~combout\(3),
	datab => \ALT_INV_RegS~combout\(2),
	datac => \ALT_INV_RegS~combout\(1),
	datad => \RegD4|ALT_INV_output\(2),
	datae => \RegH8|ALT_INV_output\(2),
	dataf => \RegL12|ALT_INV_output\(2),
	combout => \Mux1|Mux13~0_combout\);

-- Location: LCCOMB_X15_Y20_N8
\Mux1|Mux13~4\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux13~4_combout\ = ( \Mux1|Mux13~2_combout\ & ( \Mux1|Mux13~0_combout\ & ( (!\RegS~combout\(1)) # ((!\RegS~combout\(0) & (\Mux1|Mux13~1_combout\)) # (\RegS~combout\(0) & ((\Mux1|Mux13~3_combout\)))) ) ) ) # ( !\Mux1|Mux13~2_combout\ & ( 
-- \Mux1|Mux13~0_combout\ & ( (!\RegS~combout\(0) & ((!\RegS~combout\(1)) # ((\Mux1|Mux13~1_combout\)))) # (\RegS~combout\(0) & (\RegS~combout\(1) & ((\Mux1|Mux13~3_combout\)))) ) ) ) # ( \Mux1|Mux13~2_combout\ & ( !\Mux1|Mux13~0_combout\ & ( 
-- (!\RegS~combout\(0) & (\RegS~combout\(1) & (\Mux1|Mux13~1_combout\))) # (\RegS~combout\(0) & ((!\RegS~combout\(1)) # ((\Mux1|Mux13~3_combout\)))) ) ) ) # ( !\Mux1|Mux13~2_combout\ & ( !\Mux1|Mux13~0_combout\ & ( (\RegS~combout\(1) & ((!\RegS~combout\(0) & 
-- (\Mux1|Mux13~1_combout\)) # (\RegS~combout\(0) & ((\Mux1|Mux13~3_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegS~combout\(0),
	datab => \ALT_INV_RegS~combout\(1),
	datac => \Mux1|ALT_INV_Mux13~1_combout\,
	datad => \Mux1|ALT_INV_Mux13~3_combout\,
	datae => \Mux1|ALT_INV_Mux13~2_combout\,
	dataf => \Mux1|ALT_INV_Mux13~0_combout\,
	combout => \Mux1|Mux13~4_combout\);

-- Location: PIN_P20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DataD[3]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DataD(3),
	combout => \DataD~combout\(3));

-- Location: LCFF_X14_Y10_N31
\RegM13|output[3]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(3),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegM13|output\(3));

-- Location: LCFF_X6_Y6_N19
\RegE5|output[3]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(3),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegE5|output\(3));

-- Location: LCFF_X6_Y6_N25
\RegA1|output[3]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(3),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA1|output\(3));

-- Location: LCCOMB_X6_Y6_N24
\Mux1|Mux12~2\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux12~2_combout\ = ( \RegA1|output\(3) & ( \RegS~combout\(2) & ( (!\RegS~combout\(3) & ((\RegE5|output\(3)))) # (\RegS~combout\(3) & (\RegM13|output\(3))) ) ) ) # ( !\RegA1|output\(3) & ( \RegS~combout\(2) & ( (!\RegS~combout\(3) & 
-- ((\RegE5|output\(3)))) # (\RegS~combout\(3) & (\RegM13|output\(3))) ) ) ) # ( \RegA1|output\(3) & ( !\RegS~combout\(2) & ( (!\RegS~combout\(3)) # (\RegI9|output\(3)) ) ) ) # ( !\RegA1|output\(3) & ( !\RegS~combout\(2) & ( (\RegI9|output\(3) & 
-- \RegS~combout\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegI9|ALT_INV_output\(3),
	datab => \ALT_INV_RegS~combout\(3),
	datac => \RegM13|ALT_INV_output\(3),
	datad => \RegE5|ALT_INV_output\(3),
	datae => \RegA1|ALT_INV_output\(3),
	dataf => \ALT_INV_RegS~combout\(2),
	combout => \Mux1|Mux12~2_combout\);

-- Location: LCFF_X15_Y20_N25
\RegN14|output[3]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(3),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegN14|output\(3));

-- Location: LCFF_X11_Y16_N17
\RegJ10|output[3]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(3),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegJ10|output\(3));

-- Location: LCFF_X1_Y2_N9
\RegB2|output[3]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(3),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB2|output\(3));

-- Location: LCFF_X11_Y16_N19
\RegF6|output[3]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(3),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegF6|output\(3));

-- Location: LCCOMB_X1_Y2_N8
\Mux1|Mux12~1\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux12~1_combout\ = ( \RegB2|output\(3) & ( \RegF6|output\(3) & ( (!\RegS~combout\(3)) # ((!\RegS~combout\(2) & ((\RegJ10|output\(3)))) # (\RegS~combout\(2) & (\RegN14|output\(3)))) ) ) ) # ( !\RegB2|output\(3) & ( \RegF6|output\(3) & ( 
-- (!\RegS~combout\(3) & (\RegS~combout\(2))) # (\RegS~combout\(3) & ((!\RegS~combout\(2) & ((\RegJ10|output\(3)))) # (\RegS~combout\(2) & (\RegN14|output\(3))))) ) ) ) # ( \RegB2|output\(3) & ( !\RegF6|output\(3) & ( (!\RegS~combout\(3) & 
-- (!\RegS~combout\(2))) # (\RegS~combout\(3) & ((!\RegS~combout\(2) & ((\RegJ10|output\(3)))) # (\RegS~combout\(2) & (\RegN14|output\(3))))) ) ) ) # ( !\RegB2|output\(3) & ( !\RegF6|output\(3) & ( (\RegS~combout\(3) & ((!\RegS~combout\(2) & 
-- ((\RegJ10|output\(3)))) # (\RegS~combout\(2) & (\RegN14|output\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegS~combout\(3),
	datab => \ALT_INV_RegS~combout\(2),
	datac => \RegN14|ALT_INV_output\(3),
	datad => \RegJ10|ALT_INV_output\(3),
	datae => \RegB2|ALT_INV_output\(3),
	dataf => \RegF6|ALT_INV_output\(3),
	combout => \Mux1|Mux12~1_combout\);

-- Location: LCFF_X1_Y2_N5
\RegD4|output[3]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(3),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegD4|output\(3));

-- Location: LCFF_X1_Y2_N1
\RegH8|output[3]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(3),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegH8|output\(3));

-- Location: LCFF_X5_Y8_N7
\RegL12|output[3]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(3),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegL12|output\(3));

-- Location: LCCOMB_X1_Y2_N0
\Mux1|Mux12~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux12~0_combout\ = ( \RegH8|output\(3) & ( \RegL12|output\(3) & ( ((!\RegS~combout\(2) & (\RegS~combout\(1))) # (\RegS~combout\(2) & ((\RegD4|output\(3))))) # (\RegS~combout\(3)) ) ) ) # ( !\RegH8|output\(3) & ( \RegL12|output\(3) & ( 
-- (\RegS~combout\(2) & ((\RegD4|output\(3)) # (\RegS~combout\(3)))) ) ) ) # ( \RegH8|output\(3) & ( !\RegL12|output\(3) & ( (!\RegS~combout\(2) & (((\RegS~combout\(3))) # (\RegS~combout\(1)))) # (\RegS~combout\(2) & (((!\RegS~combout\(3) & 
-- \RegD4|output\(3))))) ) ) ) # ( !\RegH8|output\(3) & ( !\RegL12|output\(3) & ( (\RegS~combout\(2) & (!\RegS~combout\(3) & \RegD4|output\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000010011000111110000000011001100110100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegS~combout\(1),
	datab => \ALT_INV_RegS~combout\(2),
	datac => \ALT_INV_RegS~combout\(3),
	datad => \RegD4|ALT_INV_output\(3),
	datae => \RegH8|ALT_INV_output\(3),
	dataf => \RegL12|ALT_INV_output\(3),
	combout => \Mux1|Mux12~0_combout\);

-- Location: LCFF_X14_Y16_N1
\RegO15|output[3]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(3),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegO15|output\(3));

-- Location: LCFF_X14_Y16_N27
\RegC3|output[3]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(3),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegC3|output\(3));

-- Location: LCCOMB_X9_Y15_N26
\Decoder|Mux7~12\ : stratixii_lcell_comb
-- Equation(s):
-- \Decoder|Mux7~12_combout\ = ( \Enable~combout\ & ( (\RegD~combout\(0) & (\RegD~combout\(3) & (!\RegD~combout\(2) & \RegD~combout\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegD~combout\(0),
	datab => \ALT_INV_RegD~combout\(3),
	datac => \ALT_INV_RegD~combout\(2),
	datad => \ALT_INV_RegD~combout\(1),
	dataf => \ALT_INV_Enable~combout\,
	combout => \Decoder|Mux7~12_combout\);

-- Location: LCFF_X14_Y16_N15
\RegK11|output[3]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(3),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegK11|output\(3));

-- Location: LCCOMB_X14_Y16_N26
\Mux1|Mux12~3\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux12~3_combout\ = ( \RegC3|output\(3) & ( \RegK11|output\(3) & ( (!\RegS~combout\(2)) # ((!\RegS~combout\(3) & (\RegG7|output\(3))) # (\RegS~combout\(3) & ((\RegO15|output\(3))))) ) ) ) # ( !\RegC3|output\(3) & ( \RegK11|output\(3) & ( 
-- (!\RegS~combout\(2) & (((\RegS~combout\(3))))) # (\RegS~combout\(2) & ((!\RegS~combout\(3) & (\RegG7|output\(3))) # (\RegS~combout\(3) & ((\RegO15|output\(3)))))) ) ) ) # ( \RegC3|output\(3) & ( !\RegK11|output\(3) & ( (!\RegS~combout\(2) & 
-- (((!\RegS~combout\(3))))) # (\RegS~combout\(2) & ((!\RegS~combout\(3) & (\RegG7|output\(3))) # (\RegS~combout\(3) & ((\RegO15|output\(3)))))) ) ) ) # ( !\RegC3|output\(3) & ( !\RegK11|output\(3) & ( (\RegS~combout\(2) & ((!\RegS~combout\(3) & 
-- (\RegG7|output\(3))) # (\RegS~combout\(3) & ((\RegO15|output\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011110111010000001100010001110011111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegG7|ALT_INV_output\(3),
	datab => \ALT_INV_RegS~combout\(2),
	datac => \RegO15|ALT_INV_output\(3),
	datad => \ALT_INV_RegS~combout\(3),
	datae => \RegC3|ALT_INV_output\(3),
	dataf => \RegK11|ALT_INV_output\(3),
	combout => \Mux1|Mux12~3_combout\);

-- Location: LCCOMB_X1_Y2_N30
\Mux1|Mux12~4\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux12~4_combout\ = ( \Mux1|Mux12~0_combout\ & ( \Mux1|Mux12~3_combout\ & ( (!\RegS~combout\(0) & ((!\RegS~combout\(1)) # ((\Mux1|Mux12~1_combout\)))) # (\RegS~combout\(0) & (((\Mux1|Mux12~2_combout\)) # (\RegS~combout\(1)))) ) ) ) # ( 
-- !\Mux1|Mux12~0_combout\ & ( \Mux1|Mux12~3_combout\ & ( (!\RegS~combout\(0) & (\RegS~combout\(1) & ((\Mux1|Mux12~1_combout\)))) # (\RegS~combout\(0) & (((\Mux1|Mux12~2_combout\)) # (\RegS~combout\(1)))) ) ) ) # ( \Mux1|Mux12~0_combout\ & ( 
-- !\Mux1|Mux12~3_combout\ & ( (!\RegS~combout\(0) & ((!\RegS~combout\(1)) # ((\Mux1|Mux12~1_combout\)))) # (\RegS~combout\(0) & (!\RegS~combout\(1) & (\Mux1|Mux12~2_combout\))) ) ) ) # ( !\Mux1|Mux12~0_combout\ & ( !\Mux1|Mux12~3_combout\ & ( 
-- (!\RegS~combout\(0) & (\RegS~combout\(1) & ((\Mux1|Mux12~1_combout\)))) # (\RegS~combout\(0) & (!\RegS~combout\(1) & (\Mux1|Mux12~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100011001010111000010101001101111001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegS~combout\(0),
	datab => \ALT_INV_RegS~combout\(1),
	datac => \Mux1|ALT_INV_Mux12~2_combout\,
	datad => \Mux1|ALT_INV_Mux12~1_combout\,
	datae => \Mux1|ALT_INV_Mux12~0_combout\,
	dataf => \Mux1|ALT_INV_Mux12~3_combout\,
	combout => \Mux1|Mux12~4_combout\);

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DataD[4]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DataD(4),
	combout => \DataD~combout\(4));

-- Location: LCFF_X15_Y20_N15
\RegN14|output[4]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(4),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegN14|output\(4));

-- Location: LCFF_X14_Y23_N3
\RegB2|output[4]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(4),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB2|output\(4));

-- Location: LCFF_X11_Y16_N9
\RegF6|output[4]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(4),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegF6|output\(4));

-- Location: LCCOMB_X14_Y23_N2
\Mux1|Mux11~1\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux11~1_combout\ = ( \RegB2|output\(4) & ( \RegF6|output\(4) & ( (!\RegS~combout\(3)) # ((!\RegS~combout\(2) & (\RegJ10|output\(4))) # (\RegS~combout\(2) & ((\RegN14|output\(4))))) ) ) ) # ( !\RegB2|output\(4) & ( \RegF6|output\(4) & ( 
-- (!\RegS~combout\(2) & (\RegJ10|output\(4) & ((\RegS~combout\(3))))) # (\RegS~combout\(2) & (((!\RegS~combout\(3)) # (\RegN14|output\(4))))) ) ) ) # ( \RegB2|output\(4) & ( !\RegF6|output\(4) & ( (!\RegS~combout\(2) & (((!\RegS~combout\(3))) # 
-- (\RegJ10|output\(4)))) # (\RegS~combout\(2) & (((\RegN14|output\(4) & \RegS~combout\(3))))) ) ) ) # ( !\RegB2|output\(4) & ( !\RegF6|output\(4) & ( (\RegS~combout\(3) & ((!\RegS~combout\(2) & (\RegJ10|output\(4))) # (\RegS~combout\(2) & 
-- ((\RegN14|output\(4)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111110011000100011100110011010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegJ10|ALT_INV_output\(4),
	datab => \ALT_INV_RegS~combout\(2),
	datac => \RegN14|ALT_INV_output\(4),
	datad => \ALT_INV_RegS~combout\(3),
	datae => \RegB2|ALT_INV_output\(4),
	dataf => \RegF6|ALT_INV_output\(4),
	combout => \Mux1|Mux11~1_combout\);

-- Location: LCFF_X6_Y6_N1
\RegE5|output[4]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(4),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegE5|output\(4));

-- Location: LCFF_X14_Y10_N23
\RegM13|output[4]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(4),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegM13|output\(4));

-- Location: LCFF_X14_Y10_N7
\RegA1|output[4]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(4),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA1|output\(4));

-- Location: LCCOMB_X14_Y10_N6
\Mux1|Mux11~2\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux11~2_combout\ = ( \RegA1|output\(4) & ( \RegS~combout\(2) & ( (!\RegS~combout\(3) & (\RegE5|output\(4))) # (\RegS~combout\(3) & ((\RegM13|output\(4)))) ) ) ) # ( !\RegA1|output\(4) & ( \RegS~combout\(2) & ( (!\RegS~combout\(3) & 
-- (\RegE5|output\(4))) # (\RegS~combout\(3) & ((\RegM13|output\(4)))) ) ) ) # ( \RegA1|output\(4) & ( !\RegS~combout\(2) & ( (!\RegS~combout\(3)) # (\RegI9|output\(4)) ) ) ) # ( !\RegA1|output\(4) & ( !\RegS~combout\(2) & ( (\RegI9|output\(4) & 
-- \RegS~combout\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegI9|ALT_INV_output\(4),
	datab => \RegE5|ALT_INV_output\(4),
	datac => \ALT_INV_RegS~combout\(3),
	datad => \RegM13|ALT_INV_output\(4),
	datae => \RegA1|ALT_INV_output\(4),
	dataf => \ALT_INV_RegS~combout\(2),
	combout => \Mux1|Mux11~2_combout\);

-- Location: LCFF_X5_Y8_N27
\RegL12|output[4]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(4),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegL12|output\(4));

-- Location: LCFF_X1_Y2_N17
\RegH8|output[4]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(4),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegH8|output\(4));

-- Location: LCFF_X1_Y2_N21
\RegD4|output[4]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(4),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegD4|output\(4));

-- Location: LCCOMB_X1_Y2_N16
\Mux1|Mux11~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux11~0_combout\ = ( \RegH8|output\(4) & ( \RegD4|output\(4) & ( (!\RegS~combout\(2) & (((\RegS~combout\(3))) # (\RegS~combout\(1)))) # (\RegS~combout\(2) & (((!\RegS~combout\(3)) # (\RegL12|output\(4))))) ) ) ) # ( !\RegH8|output\(4) & ( 
-- \RegD4|output\(4) & ( (\RegS~combout\(2) & ((!\RegS~combout\(3)) # (\RegL12|output\(4)))) ) ) ) # ( \RegH8|output\(4) & ( !\RegD4|output\(4) & ( (!\RegS~combout\(2) & (((\RegS~combout\(3))) # (\RegS~combout\(1)))) # (\RegS~combout\(2) & 
-- (((\RegS~combout\(3) & \RegL12|output\(4))))) ) ) ) # ( !\RegH8|output\(4) & ( !\RegD4|output\(4) & ( (\RegS~combout\(2) & (\RegS~combout\(3) & \RegL12|output\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011010011000100111100110000001100110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegS~combout\(1),
	datab => \ALT_INV_RegS~combout\(2),
	datac => \ALT_INV_RegS~combout\(3),
	datad => \RegL12|ALT_INV_output\(4),
	datae => \RegH8|ALT_INV_output\(4),
	dataf => \RegD4|ALT_INV_output\(4),
	combout => \Mux1|Mux11~0_combout\);

-- Location: LCFF_X19_Y17_N13
\RegK11|output[4]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(4),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegK11|output\(4));

-- Location: LCFF_X19_Y17_N1
\RegC3|output[4]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(4),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegC3|output\(4));

-- Location: LCFF_X19_Y17_N17
\RegG7|output[4]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(4),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegG7|output\(4));

-- Location: LCCOMB_X19_Y17_N0
\Mux1|Mux11~3\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux11~3_combout\ = ( \RegC3|output\(4) & ( \RegG7|output\(4) & ( (!\RegS~combout\(3)) # ((!\RegS~combout\(2) & ((\RegK11|output\(4)))) # (\RegS~combout\(2) & (\RegO15|output\(4)))) ) ) ) # ( !\RegC3|output\(4) & ( \RegG7|output\(4) & ( 
-- (!\RegS~combout\(2) & (((\RegK11|output\(4) & \RegS~combout\(3))))) # (\RegS~combout\(2) & (((!\RegS~combout\(3))) # (\RegO15|output\(4)))) ) ) ) # ( \RegC3|output\(4) & ( !\RegG7|output\(4) & ( (!\RegS~combout\(2) & (((!\RegS~combout\(3)) # 
-- (\RegK11|output\(4))))) # (\RegS~combout\(2) & (\RegO15|output\(4) & ((\RegS~combout\(3))))) ) ) ) # ( !\RegC3|output\(4) & ( !\RegG7|output\(4) & ( (\RegS~combout\(3) & ((!\RegS~combout\(2) & ((\RegK11|output\(4)))) # (\RegS~combout\(2) & 
-- (\RegO15|output\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101110011000001110100110011000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegO15|ALT_INV_output\(4),
	datab => \ALT_INV_RegS~combout\(2),
	datac => \RegK11|ALT_INV_output\(4),
	datad => \ALT_INV_RegS~combout\(3),
	datae => \RegC3|ALT_INV_output\(4),
	dataf => \RegG7|ALT_INV_output\(4),
	combout => \Mux1|Mux11~3_combout\);

-- Location: LCCOMB_X1_Y2_N26
\Mux1|Mux11~4\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux11~4_combout\ = ( \RegS~combout\(1) & ( \Mux1|Mux11~3_combout\ & ( (\Mux1|Mux11~1_combout\) # (\RegS~combout\(0)) ) ) ) # ( !\RegS~combout\(1) & ( \Mux1|Mux11~3_combout\ & ( (!\RegS~combout\(0) & ((\Mux1|Mux11~0_combout\))) # (\RegS~combout\(0) & 
-- (\Mux1|Mux11~2_combout\)) ) ) ) # ( \RegS~combout\(1) & ( !\Mux1|Mux11~3_combout\ & ( (!\RegS~combout\(0) & \Mux1|Mux11~1_combout\) ) ) ) # ( !\RegS~combout\(1) & ( !\Mux1|Mux11~3_combout\ & ( (!\RegS~combout\(0) & ((\Mux1|Mux11~0_combout\))) # 
-- (\RegS~combout\(0) & (\Mux1|Mux11~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111001000100010001000000101101011110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegS~combout\(0),
	datab => \Mux1|ALT_INV_Mux11~1_combout\,
	datac => \Mux1|ALT_INV_Mux11~2_combout\,
	datad => \Mux1|ALT_INV_Mux11~0_combout\,
	datae => \ALT_INV_RegS~combout\(1),
	dataf => \Mux1|ALT_INV_Mux11~3_combout\,
	combout => \Mux1|Mux11~4_combout\);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DataD[5]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DataD(5),
	combout => \DataD~combout\(5));

-- Location: LCFF_X5_Y8_N11
\RegL12|output[5]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(5),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegL12|output\(5));

-- Location: LCFF_X14_Y22_N19
\RegH8|output[5]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(5),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegH8|output\(5));

-- Location: LCFF_X14_Y22_N21
\RegD4|output[5]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(5),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegD4|output\(5));

-- Location: LCCOMB_X14_Y22_N18
\Mux1|Mux10~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux10~0_combout\ = ( \RegH8|output\(5) & ( \RegD4|output\(5) & ( (!\RegS~combout\(3) & (((\RegS~combout\(2)) # (\RegS~combout\(1))))) # (\RegS~combout\(3) & (((!\RegS~combout\(2))) # (\RegL12|output\(5)))) ) ) ) # ( !\RegH8|output\(5) & ( 
-- \RegD4|output\(5) & ( (\RegS~combout\(2) & ((!\RegS~combout\(3)) # (\RegL12|output\(5)))) ) ) ) # ( \RegH8|output\(5) & ( !\RegD4|output\(5) & ( (!\RegS~combout\(3) & (((\RegS~combout\(1) & !\RegS~combout\(2))))) # (\RegS~combout\(3) & 
-- (((!\RegS~combout\(2))) # (\RegL12|output\(5)))) ) ) ) # ( !\RegH8|output\(5) & ( !\RegD4|output\(5) & ( (\RegS~combout\(3) & (\RegL12|output\(5) & \RegS~combout\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001010111110001000100000000101110110101111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegS~combout\(3),
	datab => \RegL12|ALT_INV_output\(5),
	datac => \ALT_INV_RegS~combout\(1),
	datad => \ALT_INV_RegS~combout\(2),
	datae => \RegH8|ALT_INV_output\(5),
	dataf => \RegD4|ALT_INV_output\(5),
	combout => \Mux1|Mux10~0_combout\);

-- Location: LCFF_X6_Y6_N27
\RegE5|output[5]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(5),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegE5|output\(5));

-- Location: LCFF_X14_Y10_N25
\RegI9|output[5]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(5),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegI9|output\(5));

-- Location: LCFF_X14_Y10_N11
\RegA1|output[5]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(5),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA1|output\(5));

-- Location: LCCOMB_X14_Y10_N10
\Mux1|Mux10~2\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux10~2_combout\ = ( \RegA1|output\(5) & ( \RegS~combout\(3) & ( (!\RegS~combout\(2) & ((\RegI9|output\(5)))) # (\RegS~combout\(2) & (\RegM13|output\(5))) ) ) ) # ( !\RegA1|output\(5) & ( \RegS~combout\(3) & ( (!\RegS~combout\(2) & 
-- ((\RegI9|output\(5)))) # (\RegS~combout\(2) & (\RegM13|output\(5))) ) ) ) # ( \RegA1|output\(5) & ( !\RegS~combout\(3) & ( (!\RegS~combout\(2)) # (\RegE5|output\(5)) ) ) ) # ( !\RegA1|output\(5) & ( !\RegS~combout\(3) & ( (\RegE5|output\(5) & 
-- \RegS~combout\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegM13|ALT_INV_output\(5),
	datab => \RegE5|ALT_INV_output\(5),
	datac => \RegI9|ALT_INV_output\(5),
	datad => \ALT_INV_RegS~combout\(2),
	datae => \RegA1|ALT_INV_output\(5),
	dataf => \ALT_INV_RegS~combout\(3),
	combout => \Mux1|Mux10~2_combout\);

-- Location: LCFF_X11_Y16_N11
\RegJ10|output[5]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(5),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegJ10|output\(5));

-- Location: LCFF_X14_Y23_N5
\RegB2|output[5]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(5),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB2|output\(5));

-- Location: LCFF_X15_Y20_N21
\RegN14|output[5]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(5),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegN14|output\(5));

-- Location: LCCOMB_X14_Y23_N4
\Mux1|Mux10~1\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux10~1_combout\ = ( \RegB2|output\(5) & ( \RegN14|output\(5) & ( (!\RegS~combout\(2) & (((!\RegS~combout\(3)) # (\RegJ10|output\(5))))) # (\RegS~combout\(2) & (((\RegS~combout\(3))) # (\RegF6|output\(5)))) ) ) ) # ( !\RegB2|output\(5) & ( 
-- \RegN14|output\(5) & ( (!\RegS~combout\(2) & (((\RegS~combout\(3) & \RegJ10|output\(5))))) # (\RegS~combout\(2) & (((\RegS~combout\(3))) # (\RegF6|output\(5)))) ) ) ) # ( \RegB2|output\(5) & ( !\RegN14|output\(5) & ( (!\RegS~combout\(2) & 
-- (((!\RegS~combout\(3)) # (\RegJ10|output\(5))))) # (\RegS~combout\(2) & (\RegF6|output\(5) & (!\RegS~combout\(3)))) ) ) ) # ( !\RegB2|output\(5) & ( !\RegN14|output\(5) & ( (!\RegS~combout\(2) & (((\RegS~combout\(3) & \RegJ10|output\(5))))) # 
-- (\RegS~combout\(2) & (\RegF6|output\(5) & (!\RegS~combout\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100110100001101110000010011000111111101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegF6|ALT_INV_output\(5),
	datab => \ALT_INV_RegS~combout\(2),
	datac => \ALT_INV_RegS~combout\(3),
	datad => \RegJ10|ALT_INV_output\(5),
	datae => \RegB2|ALT_INV_output\(5),
	dataf => \RegN14|ALT_INV_output\(5),
	combout => \Mux1|Mux10~1_combout\);

-- Location: LCFF_X14_Y16_N29
\RegO15|output[5]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(5),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegO15|output\(5));

-- Location: LCFF_X11_Y16_N31
\RegG7|output[5]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(5),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegG7|output\(5));

-- Location: LCFF_X26_Y14_N5
\RegK11|output[5]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(5),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegK11|output\(5));

-- Location: LCFF_X26_Y14_N17
\RegC3|output[5]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(5),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegC3|output\(5));

-- Location: LCCOMB_X26_Y14_N16
\Mux1|Mux10~3\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux10~3_combout\ = ( \RegC3|output\(5) & ( \RegS~combout\(3) & ( (!\RegS~combout\(2) & ((\RegK11|output\(5)))) # (\RegS~combout\(2) & (\RegO15|output\(5))) ) ) ) # ( !\RegC3|output\(5) & ( \RegS~combout\(3) & ( (!\RegS~combout\(2) & 
-- ((\RegK11|output\(5)))) # (\RegS~combout\(2) & (\RegO15|output\(5))) ) ) ) # ( \RegC3|output\(5) & ( !\RegS~combout\(3) & ( (!\RegS~combout\(2)) # (\RegG7|output\(5)) ) ) ) # ( !\RegC3|output\(5) & ( !\RegS~combout\(3) & ( (\RegS~combout\(2) & 
-- \RegG7|output\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegS~combout\(2),
	datab => \RegO15|ALT_INV_output\(5),
	datac => \RegG7|ALT_INV_output\(5),
	datad => \RegK11|ALT_INV_output\(5),
	datae => \RegC3|ALT_INV_output\(5),
	dataf => \ALT_INV_RegS~combout\(3),
	combout => \Mux1|Mux10~3_combout\);

-- Location: LCCOMB_X14_Y22_N24
\Mux1|Mux10~4\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux10~4_combout\ = ( \Mux1|Mux10~1_combout\ & ( \Mux1|Mux10~3_combout\ & ( ((!\RegS~combout\(0) & (\Mux1|Mux10~0_combout\)) # (\RegS~combout\(0) & ((\Mux1|Mux10~2_combout\)))) # (\RegS~combout\(1)) ) ) ) # ( !\Mux1|Mux10~1_combout\ & ( 
-- \Mux1|Mux10~3_combout\ & ( (!\RegS~combout\(0) & (\Mux1|Mux10~0_combout\ & ((!\RegS~combout\(1))))) # (\RegS~combout\(0) & (((\RegS~combout\(1)) # (\Mux1|Mux10~2_combout\)))) ) ) ) # ( \Mux1|Mux10~1_combout\ & ( !\Mux1|Mux10~3_combout\ & ( 
-- (!\RegS~combout\(0) & (((\RegS~combout\(1))) # (\Mux1|Mux10~0_combout\))) # (\RegS~combout\(0) & (((\Mux1|Mux10~2_combout\ & !\RegS~combout\(1))))) ) ) ) # ( !\Mux1|Mux10~1_combout\ & ( !\Mux1|Mux10~3_combout\ & ( (!\RegS~combout\(1) & 
-- ((!\RegS~combout\(0) & (\Mux1|Mux10~0_combout\)) # (\RegS~combout\(0) & ((\Mux1|Mux10~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100111111000001010011000011110101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1|ALT_INV_Mux10~0_combout\,
	datab => \Mux1|ALT_INV_Mux10~2_combout\,
	datac => \ALT_INV_RegS~combout\(0),
	datad => \ALT_INV_RegS~combout\(1),
	datae => \Mux1|ALT_INV_Mux10~1_combout\,
	dataf => \Mux1|ALT_INV_Mux10~3_combout\,
	combout => \Mux1|Mux10~4_combout\);

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DataD[6]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DataD(6),
	combout => \DataD~combout\(6));

-- Location: LCFF_X22_Y8_N15
\RegF6|output[6]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(6),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegF6|output\(6));

-- Location: LCFF_X15_Y20_N19
\RegN14|output[6]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(6),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegN14|output\(6));

-- Location: LCFF_X22_Y8_N1
\RegJ10|output[6]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(6),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegJ10|output\(6));

-- Location: LCFF_X22_Y8_N13
\RegB2|output[6]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(6),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB2|output\(6));

-- Location: LCCOMB_X22_Y8_N12
\Mux1|Mux9~1\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux9~1_combout\ = ( \RegB2|output\(6) & ( \RegS~combout\(2) & ( (!\RegS~combout\(3) & (\RegF6|output\(6))) # (\RegS~combout\(3) & ((\RegN14|output\(6)))) ) ) ) # ( !\RegB2|output\(6) & ( \RegS~combout\(2) & ( (!\RegS~combout\(3) & 
-- (\RegF6|output\(6))) # (\RegS~combout\(3) & ((\RegN14|output\(6)))) ) ) ) # ( \RegB2|output\(6) & ( !\RegS~combout\(2) & ( (!\RegS~combout\(3)) # (\RegJ10|output\(6)) ) ) ) # ( !\RegB2|output\(6) & ( !\RegS~combout\(2) & ( (\RegS~combout\(3) & 
-- \RegJ10|output\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegS~combout\(3),
	datab => \RegF6|ALT_INV_output\(6),
	datac => \RegN14|ALT_INV_output\(6),
	datad => \RegJ10|ALT_INV_output\(6),
	datae => \RegB2|ALT_INV_output\(6),
	dataf => \ALT_INV_RegS~combout\(2),
	combout => \Mux1|Mux9~1_combout\);

-- Location: LCFF_X26_Y14_N25
\RegG7|output[6]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(6),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegG7|output\(6));

-- Location: LCFF_X26_Y14_N15
\RegK11|output[6]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(6),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegK11|output\(6));

-- Location: LCFF_X26_Y14_N27
\RegC3|output[6]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(6),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegC3|output\(6));

-- Location: LCFF_X14_Y16_N23
\RegO15|output[6]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(6),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegO15|output\(6));

-- Location: LCCOMB_X26_Y14_N26
\Mux1|Mux9~3\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux9~3_combout\ = ( \RegC3|output\(6) & ( \RegO15|output\(6) & ( (!\RegS~combout\(3) & (((!\RegS~combout\(2))) # (\RegG7|output\(6)))) # (\RegS~combout\(3) & (((\RegS~combout\(2)) # (\RegK11|output\(6))))) ) ) ) # ( !\RegC3|output\(6) & ( 
-- \RegO15|output\(6) & ( (!\RegS~combout\(3) & (\RegG7|output\(6) & ((\RegS~combout\(2))))) # (\RegS~combout\(3) & (((\RegS~combout\(2)) # (\RegK11|output\(6))))) ) ) ) # ( \RegC3|output\(6) & ( !\RegO15|output\(6) & ( (!\RegS~combout\(3) & 
-- (((!\RegS~combout\(2))) # (\RegG7|output\(6)))) # (\RegS~combout\(3) & (((\RegK11|output\(6) & !\RegS~combout\(2))))) ) ) ) # ( !\RegC3|output\(6) & ( !\RegO15|output\(6) & ( (!\RegS~combout\(3) & (\RegG7|output\(6) & ((\RegS~combout\(2))))) # 
-- (\RegS~combout\(3) & (((\RegK11|output\(6) & !\RegS~combout\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100010101011110010001000000101011101111010111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegS~combout\(3),
	datab => \RegG7|ALT_INV_output\(6),
	datac => \RegK11|ALT_INV_output\(6),
	datad => \ALT_INV_RegS~combout\(2),
	datae => \RegC3|ALT_INV_output\(6),
	dataf => \RegO15|ALT_INV_output\(6),
	combout => \Mux1|Mux9~3_combout\);

-- Location: LCFF_X5_Y8_N31
\RegL12|output[6]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(6),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegL12|output\(6));

-- Location: LCFF_X3_Y24_N9
\RegH8|output[6]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(6),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegH8|output\(6));

-- Location: LCCOMB_X3_Y24_N8
\Mux1|Mux9~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux9~0_combout\ = ( \RegH8|output\(6) & ( \RegS~combout\(3) & ( (!\RegS~combout\(2)) # (\RegL12|output\(6)) ) ) ) # ( !\RegH8|output\(6) & ( \RegS~combout\(3) & ( (\RegS~combout\(2) & \RegL12|output\(6)) ) ) ) # ( \RegH8|output\(6) & ( 
-- !\RegS~combout\(3) & ( (!\RegS~combout\(2) & ((\RegS~combout\(1)))) # (\RegS~combout\(2) & (\RegD4|output\(6))) ) ) ) # ( !\RegH8|output\(6) & ( !\RegS~combout\(3) & ( (\RegD4|output\(6) & \RegS~combout\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100011101110100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegD4|ALT_INV_output\(6),
	datab => \ALT_INV_RegS~combout\(2),
	datac => \RegL12|ALT_INV_output\(6),
	datad => \ALT_INV_RegS~combout\(1),
	datae => \RegH8|ALT_INV_output\(6),
	dataf => \ALT_INV_RegS~combout\(3),
	combout => \Mux1|Mux9~0_combout\);

-- Location: LCFF_X6_Y6_N7
\RegE5|output[6]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(6),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegE5|output\(6));

-- Location: LCFF_X14_Y10_N13
\RegM13|output[6]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(6),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegM13|output\(6));

-- Location: LCFF_X14_Y10_N15
\RegA1|output[6]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(6),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA1|output\(6));

-- Location: LCCOMB_X14_Y10_N14
\Mux1|Mux9~2\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux9~2_combout\ = ( \RegA1|output\(6) & ( \RegS~combout\(2) & ( (!\RegS~combout\(3) & (\RegE5|output\(6))) # (\RegS~combout\(3) & ((\RegM13|output\(6)))) ) ) ) # ( !\RegA1|output\(6) & ( \RegS~combout\(2) & ( (!\RegS~combout\(3) & 
-- (\RegE5|output\(6))) # (\RegS~combout\(3) & ((\RegM13|output\(6)))) ) ) ) # ( \RegA1|output\(6) & ( !\RegS~combout\(2) & ( (!\RegS~combout\(3)) # (\RegI9|output\(6)) ) ) ) # ( !\RegA1|output\(6) & ( !\RegS~combout\(2) & ( (\RegI9|output\(6) & 
-- \RegS~combout\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegI9|ALT_INV_output\(6),
	datab => \ALT_INV_RegS~combout\(3),
	datac => \RegE5|ALT_INV_output\(6),
	datad => \RegM13|ALT_INV_output\(6),
	datae => \RegA1|ALT_INV_output\(6),
	dataf => \ALT_INV_RegS~combout\(2),
	combout => \Mux1|Mux9~2_combout\);

-- Location: LCCOMB_X14_Y22_N28
\Mux1|Mux9~4\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux9~4_combout\ = ( \Mux1|Mux9~2_combout\ & ( \RegS~combout\(0) & ( (!\RegS~combout\(1)) # (\Mux1|Mux9~3_combout\) ) ) ) # ( !\Mux1|Mux9~2_combout\ & ( \RegS~combout\(0) & ( (\RegS~combout\(1) & \Mux1|Mux9~3_combout\) ) ) ) # ( \Mux1|Mux9~2_combout\ 
-- & ( !\RegS~combout\(0) & ( (!\RegS~combout\(1) & ((\Mux1|Mux9~0_combout\))) # (\RegS~combout\(1) & (\Mux1|Mux9~1_combout\)) ) ) ) # ( !\Mux1|Mux9~2_combout\ & ( !\RegS~combout\(0) & ( (!\RegS~combout\(1) & ((\Mux1|Mux9~0_combout\))) # (\RegS~combout\(1) & 
-- (\Mux1|Mux9~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1|ALT_INV_Mux9~1_combout\,
	datab => \ALT_INV_RegS~combout\(1),
	datac => \Mux1|ALT_INV_Mux9~3_combout\,
	datad => \Mux1|ALT_INV_Mux9~0_combout\,
	datae => \Mux1|ALT_INV_Mux9~2_combout\,
	dataf => \ALT_INV_RegS~combout\(0),
	combout => \Mux1|Mux9~4_combout\);

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DataD[7]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DataD(7),
	combout => \DataD~combout\(7));

-- Location: LCFF_X15_Y20_N11
\RegN14|output[7]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(7),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegN14|output\(7));

-- Location: LCFF_X22_Y8_N3
\RegF6|output[7]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(7),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegF6|output\(7));

-- Location: LCFF_X22_Y8_N5
\RegJ10|output[7]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(7),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegJ10|output\(7));

-- Location: LCFF_X22_Y8_N17
\RegB2|output[7]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(7),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB2|output\(7));

-- Location: LCCOMB_X22_Y8_N16
\Mux1|Mux8~1\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux8~1_combout\ = ( \RegB2|output\(7) & ( \RegS~combout\(2) & ( (!\RegS~combout\(3) & ((\RegF6|output\(7)))) # (\RegS~combout\(3) & (\RegN14|output\(7))) ) ) ) # ( !\RegB2|output\(7) & ( \RegS~combout\(2) & ( (!\RegS~combout\(3) & 
-- ((\RegF6|output\(7)))) # (\RegS~combout\(3) & (\RegN14|output\(7))) ) ) ) # ( \RegB2|output\(7) & ( !\RegS~combout\(2) & ( (!\RegS~combout\(3)) # (\RegJ10|output\(7)) ) ) ) # ( !\RegB2|output\(7) & ( !\RegS~combout\(2) & ( (\RegS~combout\(3) & 
-- \RegJ10|output\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegS~combout\(3),
	datab => \RegN14|ALT_INV_output\(7),
	datac => \RegF6|ALT_INV_output\(7),
	datad => \RegJ10|ALT_INV_output\(7),
	datae => \RegB2|ALT_INV_output\(7),
	dataf => \ALT_INV_RegS~combout\(2),
	combout => \Mux1|Mux8~1_combout\);

-- Location: LCFF_X14_Y10_N27
\RegM13|output[7]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(7),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegM13|output\(7));

-- Location: LCFF_X14_Y10_N29
\RegA1|output[7]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(7),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA1|output\(7));

-- Location: LCFF_X14_Y10_N17
\RegI9|output[7]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(7),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegI9|output\(7));

-- Location: LCCOMB_X14_Y10_N28
\Mux1|Mux8~2\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux8~2_combout\ = ( \RegA1|output\(7) & ( \RegI9|output\(7) & ( (!\RegS~combout\(2)) # ((!\RegS~combout\(3) & (\RegE5|output\(7))) # (\RegS~combout\(3) & ((\RegM13|output\(7))))) ) ) ) # ( !\RegA1|output\(7) & ( \RegI9|output\(7) & ( 
-- (!\RegS~combout\(3) & (\RegE5|output\(7) & ((\RegS~combout\(2))))) # (\RegS~combout\(3) & (((!\RegS~combout\(2)) # (\RegM13|output\(7))))) ) ) ) # ( \RegA1|output\(7) & ( !\RegI9|output\(7) & ( (!\RegS~combout\(3) & (((!\RegS~combout\(2))) # 
-- (\RegE5|output\(7)))) # (\RegS~combout\(3) & (((\RegM13|output\(7) & \RegS~combout\(2))))) ) ) ) # ( !\RegA1|output\(7) & ( !\RegI9|output\(7) & ( (\RegS~combout\(2) & ((!\RegS~combout\(3) & (\RegE5|output\(7))) # (\RegS~combout\(3) & 
-- ((\RegM13|output\(7)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011111100000101001100001111010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegE5|ALT_INV_output\(7),
	datab => \RegM13|ALT_INV_output\(7),
	datac => \ALT_INV_RegS~combout\(3),
	datad => \ALT_INV_RegS~combout\(2),
	datae => \RegA1|ALT_INV_output\(7),
	dataf => \RegI9|ALT_INV_output\(7),
	combout => \Mux1|Mux8~2_combout\);

-- Location: LCFF_X14_Y16_N13
\RegO15|output[7]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(7),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegO15|output\(7));

-- Location: LCFF_X26_Y14_N23
\RegK11|output[7]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(7),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegK11|output\(7));

-- Location: LCFF_X26_Y14_N13
\RegG7|output[7]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(7),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegG7|output\(7));

-- Location: LCFF_X26_Y14_N3
\RegC3|output[7]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(7),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegC3|output\(7));

-- Location: LCCOMB_X26_Y14_N2
\Mux1|Mux8~3\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux8~3_combout\ = ( \RegC3|output\(7) & ( \RegS~combout\(3) & ( (!\RegS~combout\(2) & ((\RegK11|output\(7)))) # (\RegS~combout\(2) & (\RegO15|output\(7))) ) ) ) # ( !\RegC3|output\(7) & ( \RegS~combout\(3) & ( (!\RegS~combout\(2) & 
-- ((\RegK11|output\(7)))) # (\RegS~combout\(2) & (\RegO15|output\(7))) ) ) ) # ( \RegC3|output\(7) & ( !\RegS~combout\(3) & ( (!\RegS~combout\(2)) # (\RegG7|output\(7)) ) ) ) # ( !\RegC3|output\(7) & ( !\RegS~combout\(3) & ( (\RegS~combout\(2) & 
-- \RegG7|output\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegS~combout\(2),
	datab => \RegO15|ALT_INV_output\(7),
	datac => \RegK11|ALT_INV_output\(7),
	datad => \RegG7|ALT_INV_output\(7),
	datae => \RegC3|ALT_INV_output\(7),
	dataf => \ALT_INV_RegS~combout\(3),
	combout => \Mux1|Mux8~3_combout\);

-- Location: LCFF_X14_Y22_N1
\RegL12|output[7]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(7),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegL12|output\(7));

-- Location: LCFF_X9_Y18_N19
\RegH8|output[7]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(7),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegH8|output\(7));

-- Location: LCFF_X3_Y24_N17
\RegD4|output[7]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(7),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegD4|output\(7));

-- Location: LCCOMB_X9_Y18_N18
\Mux1|Mux8~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux8~0_combout\ = ( \RegH8|output\(7) & ( \RegD4|output\(7) & ( (!\RegS~combout\(3) & (((\RegS~combout\(1))) # (\RegS~combout\(2)))) # (\RegS~combout\(3) & ((!\RegS~combout\(2)) # ((\RegL12|output\(7))))) ) ) ) # ( !\RegH8|output\(7) & ( 
-- \RegD4|output\(7) & ( (\RegS~combout\(2) & ((!\RegS~combout\(3)) # (\RegL12|output\(7)))) ) ) ) # ( \RegH8|output\(7) & ( !\RegD4|output\(7) & ( (!\RegS~combout\(3) & (!\RegS~combout\(2) & (\RegS~combout\(1)))) # (\RegS~combout\(3) & ((!\RegS~combout\(2)) 
-- # ((\RegL12|output\(7))))) ) ) ) # ( !\RegH8|output\(7) & ( !\RegD4|output\(7) & ( (\RegS~combout\(3) & (\RegS~combout\(2) & \RegL12|output\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001010011000101110100100010001100110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegS~combout\(3),
	datab => \ALT_INV_RegS~combout\(2),
	datac => \ALT_INV_RegS~combout\(1),
	datad => \RegL12|ALT_INV_output\(7),
	datae => \RegH8|ALT_INV_output\(7),
	dataf => \RegD4|ALT_INV_output\(7),
	combout => \Mux1|Mux8~0_combout\);

-- Location: LCCOMB_X22_Y8_N24
\Mux1|Mux8~4\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux8~4_combout\ = ( \Mux1|Mux8~3_combout\ & ( \Mux1|Mux8~0_combout\ & ( (!\RegS~combout\(1) & (((!\RegS~combout\(0)) # (\Mux1|Mux8~2_combout\)))) # (\RegS~combout\(1) & (((\RegS~combout\(0))) # (\Mux1|Mux8~1_combout\))) ) ) ) # ( 
-- !\Mux1|Mux8~3_combout\ & ( \Mux1|Mux8~0_combout\ & ( (!\RegS~combout\(1) & (((!\RegS~combout\(0)) # (\Mux1|Mux8~2_combout\)))) # (\RegS~combout\(1) & (\Mux1|Mux8~1_combout\ & (!\RegS~combout\(0)))) ) ) ) # ( \Mux1|Mux8~3_combout\ & ( 
-- !\Mux1|Mux8~0_combout\ & ( (!\RegS~combout\(1) & (((\RegS~combout\(0) & \Mux1|Mux8~2_combout\)))) # (\RegS~combout\(1) & (((\RegS~combout\(0))) # (\Mux1|Mux8~1_combout\))) ) ) ) # ( !\Mux1|Mux8~3_combout\ & ( !\Mux1|Mux8~0_combout\ & ( (!\RegS~combout\(1) 
-- & (((\RegS~combout\(0) & \Mux1|Mux8~2_combout\)))) # (\RegS~combout\(1) & (\Mux1|Mux8~1_combout\ & (!\RegS~combout\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100000100110001111111010000110111001101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1|ALT_INV_Mux8~1_combout\,
	datab => \ALT_INV_RegS~combout\(1),
	datac => \ALT_INV_RegS~combout\(0),
	datad => \Mux1|ALT_INV_Mux8~2_combout\,
	datae => \Mux1|ALT_INV_Mux8~3_combout\,
	dataf => \Mux1|ALT_INV_Mux8~0_combout\,
	combout => \Mux1|Mux8~4_combout\);

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DataD[8]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DataD(8),
	combout => \DataD~combout\(8));

-- Location: LCFF_X9_Y18_N21
\RegH8|output[8]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(8),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegH8|output\(8));

-- Location: LCFF_X14_Y22_N31
\RegL12|output[8]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(8),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegL12|output\(8));

-- Location: LCCOMB_X9_Y18_N20
\Mux1|Mux7~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux7~0_combout\ = ( \RegH8|output\(8) & ( \RegL12|output\(8) & ( ((!\RegS~combout\(2) & ((\RegS~combout\(1)))) # (\RegS~combout\(2) & (\RegD4|output\(8)))) # (\RegS~combout\(3)) ) ) ) # ( !\RegH8|output\(8) & ( \RegL12|output\(8) & ( 
-- (\RegS~combout\(2) & ((\RegS~combout\(3)) # (\RegD4|output\(8)))) ) ) ) # ( \RegH8|output\(8) & ( !\RegL12|output\(8) & ( (!\RegS~combout\(2) & (((\RegS~combout\(1)) # (\RegS~combout\(3))))) # (\RegS~combout\(2) & (\RegD4|output\(8) & 
-- (!\RegS~combout\(3)))) ) ) ) # ( !\RegH8|output\(8) & ( !\RegL12|output\(8) & ( (\RegD4|output\(8) & (\RegS~combout\(2) & !\RegS~combout\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000111001101110000010011000100110001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegD4|ALT_INV_output\(8),
	datab => \ALT_INV_RegS~combout\(2),
	datac => \ALT_INV_RegS~combout\(3),
	datad => \ALT_INV_RegS~combout\(1),
	datae => \RegH8|ALT_INV_output\(8),
	dataf => \RegL12|ALT_INV_output\(8),
	combout => \Mux1|Mux7~0_combout\);

-- Location: LCCOMB_X27_Y26_N6
\RegM13|output[8]~feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \RegM13|output[8]~feeder_combout\ = ( \DataD~combout\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DataD~combout\(8),
	combout => \RegM13|output[8]~feeder_combout\);

-- Location: LCFF_X27_Y26_N7
\RegM13|output[8]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \RegM13|output[8]~feeder_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Decoder|Mux7~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegM13|output\(8));

-- Location: LCFF_X17_Y19_N17
\RegI9|output[8]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(8),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegI9|output\(8));

-- Location: LCFF_X27_Y26_N19
\RegA1|output[8]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(8),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA1|output\(8));

-- Location: LCFF_X27_Y26_N5
\RegE5|output[8]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(8),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegE5|output\(8));

-- Location: LCCOMB_X27_Y26_N18
\Mux1|Mux7~2\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux7~2_combout\ = ( \RegA1|output\(8) & ( \RegE5|output\(8) & ( (!\RegS~combout\(3)) # ((!\RegS~combout\(2) & ((\RegI9|output\(8)))) # (\RegS~combout\(2) & (\RegM13|output\(8)))) ) ) ) # ( !\RegA1|output\(8) & ( \RegE5|output\(8) & ( 
-- (!\RegS~combout\(3) & (((\RegS~combout\(2))))) # (\RegS~combout\(3) & ((!\RegS~combout\(2) & ((\RegI9|output\(8)))) # (\RegS~combout\(2) & (\RegM13|output\(8))))) ) ) ) # ( \RegA1|output\(8) & ( !\RegE5|output\(8) & ( (!\RegS~combout\(3) & 
-- (((!\RegS~combout\(2))))) # (\RegS~combout\(3) & ((!\RegS~combout\(2) & ((\RegI9|output\(8)))) # (\RegS~combout\(2) & (\RegM13|output\(8))))) ) ) ) # ( !\RegA1|output\(8) & ( !\RegE5|output\(8) & ( (\RegS~combout\(3) & ((!\RegS~combout\(2) & 
-- ((\RegI9|output\(8)))) # (\RegS~combout\(2) & (\RegM13|output\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001101000011111000100001011010110111010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegS~combout\(3),
	datab => \RegM13|ALT_INV_output\(8),
	datac => \ALT_INV_RegS~combout\(2),
	datad => \RegI9|ALT_INV_output\(8),
	datae => \RegA1|ALT_INV_output\(8),
	dataf => \RegE5|ALT_INV_output\(8),
	combout => \Mux1|Mux7~2_combout\);

-- Location: LCFF_X11_Y16_N3
\RegJ10|output[8]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(8),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegJ10|output\(8));

-- Location: LCFF_X11_Y16_N1
\RegF6|output[8]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(8),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegF6|output\(8));

-- Location: LCFF_X14_Y23_N25
\RegB2|output[8]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(8),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB2|output\(8));

-- Location: LCFF_X14_Y23_N15
\RegN14|output[8]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(8),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegN14|output\(8));

-- Location: LCCOMB_X14_Y23_N24
\Mux1|Mux7~1\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux7~1_combout\ = ( \RegB2|output\(8) & ( \RegN14|output\(8) & ( (!\RegS~combout\(3) & ((!\RegS~combout\(2)) # ((\RegF6|output\(8))))) # (\RegS~combout\(3) & (((\RegJ10|output\(8))) # (\RegS~combout\(2)))) ) ) ) # ( !\RegB2|output\(8) & ( 
-- \RegN14|output\(8) & ( (!\RegS~combout\(3) & (\RegS~combout\(2) & ((\RegF6|output\(8))))) # (\RegS~combout\(3) & (((\RegJ10|output\(8))) # (\RegS~combout\(2)))) ) ) ) # ( \RegB2|output\(8) & ( !\RegN14|output\(8) & ( (!\RegS~combout\(3) & 
-- ((!\RegS~combout\(2)) # ((\RegF6|output\(8))))) # (\RegS~combout\(3) & (!\RegS~combout\(2) & (\RegJ10|output\(8)))) ) ) ) # ( !\RegB2|output\(8) & ( !\RegN14|output\(8) & ( (!\RegS~combout\(3) & (\RegS~combout\(2) & ((\RegF6|output\(8))))) # 
-- (\RegS~combout\(3) & (!\RegS~combout\(2) & (\RegJ10|output\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100011001010111000010101001101111001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegS~combout\(3),
	datab => \ALT_INV_RegS~combout\(2),
	datac => \RegJ10|ALT_INV_output\(8),
	datad => \RegF6|ALT_INV_output\(8),
	datae => \RegB2|ALT_INV_output\(8),
	dataf => \RegN14|ALT_INV_output\(8),
	combout => \Mux1|Mux7~1_combout\);

-- Location: LCFF_X34_Y15_N27
\RegO15|output[8]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(8),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegO15|output\(8));

-- Location: LCFF_X11_Y16_N7
\RegG7|output[8]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(8),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegG7|output\(8));

-- Location: LCFF_X34_Y15_N1
\RegC3|output[8]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(8),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegC3|output\(8));

-- Location: LCCOMB_X34_Y15_N0
\Mux1|Mux7~3\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux7~3_combout\ = ( \RegC3|output\(8) & ( \RegS~combout\(3) & ( (!\RegS~combout\(2) & (\RegK11|output\(8))) # (\RegS~combout\(2) & ((\RegO15|output\(8)))) ) ) ) # ( !\RegC3|output\(8) & ( \RegS~combout\(3) & ( (!\RegS~combout\(2) & 
-- (\RegK11|output\(8))) # (\RegS~combout\(2) & ((\RegO15|output\(8)))) ) ) ) # ( \RegC3|output\(8) & ( !\RegS~combout\(3) & ( (!\RegS~combout\(2)) # (\RegG7|output\(8)) ) ) ) # ( !\RegC3|output\(8) & ( !\RegS~combout\(3) & ( (\RegG7|output\(8) & 
-- \RegS~combout\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegK11|ALT_INV_output\(8),
	datab => \RegO15|ALT_INV_output\(8),
	datac => \RegG7|ALT_INV_output\(8),
	datad => \ALT_INV_RegS~combout\(2),
	datae => \RegC3|ALT_INV_output\(8),
	dataf => \ALT_INV_RegS~combout\(3),
	combout => \Mux1|Mux7~3_combout\);

-- Location: LCCOMB_X34_Y15_N30
\Mux1|Mux7~4\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux7~4_combout\ = ( \Mux1|Mux7~1_combout\ & ( \Mux1|Mux7~3_combout\ & ( ((!\RegS~combout\(0) & (\Mux1|Mux7~0_combout\)) # (\RegS~combout\(0) & ((\Mux1|Mux7~2_combout\)))) # (\RegS~combout\(1)) ) ) ) # ( !\Mux1|Mux7~1_combout\ & ( 
-- \Mux1|Mux7~3_combout\ & ( (!\RegS~combout\(0) & (\Mux1|Mux7~0_combout\ & ((!\RegS~combout\(1))))) # (\RegS~combout\(0) & (((\RegS~combout\(1)) # (\Mux1|Mux7~2_combout\)))) ) ) ) # ( \Mux1|Mux7~1_combout\ & ( !\Mux1|Mux7~3_combout\ & ( (!\RegS~combout\(0) 
-- & (((\RegS~combout\(1))) # (\Mux1|Mux7~0_combout\))) # (\RegS~combout\(0) & (((\Mux1|Mux7~2_combout\ & !\RegS~combout\(1))))) ) ) ) # ( !\Mux1|Mux7~1_combout\ & ( !\Mux1|Mux7~3_combout\ & ( (!\RegS~combout\(1) & ((!\RegS~combout\(0) & 
-- (\Mux1|Mux7~0_combout\)) # (\RegS~combout\(0) & ((\Mux1|Mux7~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001111100110001000111001100110100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1|ALT_INV_Mux7~0_combout\,
	datab => \ALT_INV_RegS~combout\(0),
	datac => \Mux1|ALT_INV_Mux7~2_combout\,
	datad => \ALT_INV_RegS~combout\(1),
	datae => \Mux1|ALT_INV_Mux7~1_combout\,
	dataf => \Mux1|ALT_INV_Mux7~3_combout\,
	combout => \Mux1|Mux7~4_combout\);

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DataD[9]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DataD(9),
	combout => \DataD~combout\(9));

-- Location: LCCOMB_X11_Y16_N24
\RegF6|output[9]~feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \RegF6|output[9]~feeder_combout\ = \DataD~combout\(9)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DataD~combout\(9),
	combout => \RegF6|output[9]~feeder_combout\);

-- Location: LCFF_X11_Y16_N25
\RegF6|output[9]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \RegF6|output[9]~feeder_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Decoder|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegF6|output\(9));

-- Location: LCFF_X11_Y16_N5
\RegJ10|output[9]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(9),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegJ10|output\(9));

-- Location: LCFF_X14_Y23_N19
\RegB2|output[9]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(9),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB2|output\(9));

-- Location: LCFF_X14_Y23_N27
\RegN14|output[9]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(9),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegN14|output\(9));

-- Location: LCCOMB_X14_Y23_N18
\Mux1|Mux6~1\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux6~1_combout\ = ( \RegB2|output\(9) & ( \RegN14|output\(9) & ( (!\RegS~combout\(3) & ((!\RegS~combout\(2)) # ((\RegF6|output\(9))))) # (\RegS~combout\(3) & (((\RegJ10|output\(9))) # (\RegS~combout\(2)))) ) ) ) # ( !\RegB2|output\(9) & ( 
-- \RegN14|output\(9) & ( (!\RegS~combout\(3) & (\RegS~combout\(2) & (\RegF6|output\(9)))) # (\RegS~combout\(3) & (((\RegJ10|output\(9))) # (\RegS~combout\(2)))) ) ) ) # ( \RegB2|output\(9) & ( !\RegN14|output\(9) & ( (!\RegS~combout\(3) & 
-- ((!\RegS~combout\(2)) # ((\RegF6|output\(9))))) # (\RegS~combout\(3) & (!\RegS~combout\(2) & ((\RegJ10|output\(9))))) ) ) ) # ( !\RegB2|output\(9) & ( !\RegN14|output\(9) & ( (!\RegS~combout\(3) & (\RegS~combout\(2) & (\RegF6|output\(9)))) # 
-- (\RegS~combout\(3) & (!\RegS~combout\(2) & ((\RegJ10|output\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110100010101100111000010011010101111001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegS~combout\(3),
	datab => \ALT_INV_RegS~combout\(2),
	datac => \RegF6|ALT_INV_output\(9),
	datad => \RegJ10|ALT_INV_output\(9),
	datae => \RegB2|ALT_INV_output\(9),
	dataf => \RegN14|ALT_INV_output\(9),
	combout => \Mux1|Mux6~1_combout\);

-- Location: LCFF_X27_Y26_N15
\RegM13|output[9]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(9),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegM13|output\(9));

-- Location: LCFF_X27_Y26_N25
\RegA1|output[9]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(9),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA1|output\(9));

-- Location: LCFF_X27_Y26_N27
\RegE5|output[9]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(9),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegE5|output\(9));

-- Location: LCCOMB_X27_Y26_N24
\Mux1|Mux6~2\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux6~2_combout\ = ( \RegA1|output\(9) & ( \RegE5|output\(9) & ( (!\RegS~combout\(3)) # ((!\RegS~combout\(2) & (\RegI9|output\(9))) # (\RegS~combout\(2) & ((\RegM13|output\(9))))) ) ) ) # ( !\RegA1|output\(9) & ( \RegE5|output\(9) & ( 
-- (!\RegS~combout\(2) & (\RegI9|output\(9) & (\RegS~combout\(3)))) # (\RegS~combout\(2) & (((!\RegS~combout\(3)) # (\RegM13|output\(9))))) ) ) ) # ( \RegA1|output\(9) & ( !\RegE5|output\(9) & ( (!\RegS~combout\(2) & (((!\RegS~combout\(3))) # 
-- (\RegI9|output\(9)))) # (\RegS~combout\(2) & (((\RegS~combout\(3) & \RegM13|output\(9))))) ) ) ) # ( !\RegA1|output\(9) & ( !\RegE5|output\(9) & ( (\RegS~combout\(3) & ((!\RegS~combout\(2) & (\RegI9|output\(9))) # (\RegS~combout\(2) & 
-- ((\RegM13|output\(9)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111110001001100011100110100001101111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegI9|ALT_INV_output\(9),
	datab => \ALT_INV_RegS~combout\(2),
	datac => \ALT_INV_RegS~combout\(3),
	datad => \RegM13|ALT_INV_output\(9),
	datae => \RegA1|ALT_INV_output\(9),
	dataf => \RegE5|ALT_INV_output\(9),
	combout => \Mux1|Mux6~2_combout\);

-- Location: LCFF_X9_Y18_N1
\RegD4|output[9]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(9),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegD4|output\(9));

-- Location: LCFF_X9_Y18_N29
\RegH8|output[9]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(9),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegH8|output\(9));

-- Location: LCCOMB_X9_Y18_N28
\Mux1|Mux6~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux6~0_combout\ = ( \RegH8|output\(9) & ( \RegS~combout\(1) & ( (!\RegS~combout\(2)) # ((!\RegS~combout\(3) & ((\RegD4|output\(9)))) # (\RegS~combout\(3) & (\RegL12|output\(9)))) ) ) ) # ( !\RegH8|output\(9) & ( \RegS~combout\(1) & ( 
-- (\RegS~combout\(2) & ((!\RegS~combout\(3) & ((\RegD4|output\(9)))) # (\RegS~combout\(3) & (\RegL12|output\(9))))) ) ) ) # ( \RegH8|output\(9) & ( !\RegS~combout\(1) & ( (!\RegS~combout\(2) & (((\RegS~combout\(3))))) # (\RegS~combout\(2) & 
-- ((!\RegS~combout\(3) & ((\RegD4|output\(9)))) # (\RegS~combout\(3) & (\RegL12|output\(9))))) ) ) ) # ( !\RegH8|output\(9) & ( !\RegS~combout\(1) & ( (\RegS~combout\(2) & ((!\RegS~combout\(3) & ((\RegD4|output\(9)))) # (\RegS~combout\(3) & 
-- (\RegL12|output\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001000011010011110100000001001100011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegL12|ALT_INV_output\(9),
	datab => \ALT_INV_RegS~combout\(2),
	datac => \ALT_INV_RegS~combout\(3),
	datad => \RegD4|ALT_INV_output\(9),
	datae => \RegH8|ALT_INV_output\(9),
	dataf => \ALT_INV_RegS~combout\(1),
	combout => \Mux1|Mux6~0_combout\);

-- Location: LCFF_X34_Y15_N21
\RegK11|output[9]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(9),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegK11|output\(9));

-- Location: LCFF_X34_Y15_N3
\RegO15|output[9]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(9),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegO15|output\(9));

-- Location: LCFF_X34_Y15_N17
\RegC3|output[9]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(9),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegC3|output\(9));

-- Location: LCCOMB_X11_Y16_N26
\RegG7|output[9]~feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \RegG7|output[9]~feeder_combout\ = \DataD~combout\(9)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DataD~combout\(9),
	combout => \RegG7|output[9]~feeder_combout\);

-- Location: LCFF_X11_Y16_N27
\RegG7|output[9]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \RegG7|output[9]~feeder_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Decoder|Mux7~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegG7|output\(9));

-- Location: LCCOMB_X34_Y15_N16
\Mux1|Mux6~3\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux6~3_combout\ = ( \RegC3|output\(9) & ( \RegG7|output\(9) & ( (!\RegS~combout\(3)) # ((!\RegS~combout\(2) & (\RegK11|output\(9))) # (\RegS~combout\(2) & ((\RegO15|output\(9))))) ) ) ) # ( !\RegC3|output\(9) & ( \RegG7|output\(9) & ( 
-- (!\RegS~combout\(3) & (((\RegS~combout\(2))))) # (\RegS~combout\(3) & ((!\RegS~combout\(2) & (\RegK11|output\(9))) # (\RegS~combout\(2) & ((\RegO15|output\(9)))))) ) ) ) # ( \RegC3|output\(9) & ( !\RegG7|output\(9) & ( (!\RegS~combout\(3) & 
-- (((!\RegS~combout\(2))))) # (\RegS~combout\(3) & ((!\RegS~combout\(2) & (\RegK11|output\(9))) # (\RegS~combout\(2) & ((\RegO15|output\(9)))))) ) ) ) # ( !\RegC3|output\(9) & ( !\RegG7|output\(9) & ( (\RegS~combout\(3) & ((!\RegS~combout\(2) & 
-- (\RegK11|output\(9))) # (\RegS~combout\(2) & ((\RegO15|output\(9)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101101110110000010100010001101011111011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegS~combout\(3),
	datab => \RegK11|ALT_INV_output\(9),
	datac => \RegO15|ALT_INV_output\(9),
	datad => \ALT_INV_RegS~combout\(2),
	datae => \RegC3|ALT_INV_output\(9),
	dataf => \RegG7|ALT_INV_output\(9),
	combout => \Mux1|Mux6~3_combout\);

-- Location: LCCOMB_X34_Y15_N8
\Mux1|Mux6~4\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux6~4_combout\ = ( \Mux1|Mux6~0_combout\ & ( \Mux1|Mux6~3_combout\ & ( (!\RegS~combout\(0) & (((!\RegS~combout\(1))) # (\Mux1|Mux6~1_combout\))) # (\RegS~combout\(0) & (((\Mux1|Mux6~2_combout\) # (\RegS~combout\(1))))) ) ) ) # ( 
-- !\Mux1|Mux6~0_combout\ & ( \Mux1|Mux6~3_combout\ & ( (!\RegS~combout\(0) & (\Mux1|Mux6~1_combout\ & (\RegS~combout\(1)))) # (\RegS~combout\(0) & (((\Mux1|Mux6~2_combout\) # (\RegS~combout\(1))))) ) ) ) # ( \Mux1|Mux6~0_combout\ & ( !\Mux1|Mux6~3_combout\ 
-- & ( (!\RegS~combout\(0) & (((!\RegS~combout\(1))) # (\Mux1|Mux6~1_combout\))) # (\RegS~combout\(0) & (((!\RegS~combout\(1) & \Mux1|Mux6~2_combout\)))) ) ) ) # ( !\Mux1|Mux6~0_combout\ & ( !\Mux1|Mux6~3_combout\ & ( (!\RegS~combout\(0) & 
-- (\Mux1|Mux6~1_combout\ & (\RegS~combout\(1)))) # (\RegS~combout\(0) & (((!\RegS~combout\(1) & \Mux1|Mux6~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100110001001111010000000111001101111100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1|ALT_INV_Mux6~1_combout\,
	datab => \ALT_INV_RegS~combout\(0),
	datac => \ALT_INV_RegS~combout\(1),
	datad => \Mux1|ALT_INV_Mux6~2_combout\,
	datae => \Mux1|ALT_INV_Mux6~0_combout\,
	dataf => \Mux1|ALT_INV_Mux6~3_combout\,
	combout => \Mux1|Mux6~4_combout\);

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DataD[10]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DataD(10),
	combout => \DataD~combout\(10));

-- Location: LCFF_X11_Y16_N15
\RegF6|output[10]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(10),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegF6|output\(10));

-- Location: LCFF_X14_Y23_N21
\RegB2|output[10]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(10),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB2|output\(10));

-- Location: LCFF_X14_Y23_N17
\RegN14|output[10]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(10),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegN14|output\(10));

-- Location: LCCOMB_X14_Y23_N20
\Mux1|Mux5~1\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux5~1_combout\ = ( \RegB2|output\(10) & ( \RegN14|output\(10) & ( (!\RegS~combout\(2) & (((!\RegS~combout\(3))) # (\RegJ10|output\(10)))) # (\RegS~combout\(2) & (((\RegF6|output\(10)) # (\RegS~combout\(3))))) ) ) ) # ( !\RegB2|output\(10) & ( 
-- \RegN14|output\(10) & ( (!\RegS~combout\(2) & (\RegJ10|output\(10) & (\RegS~combout\(3)))) # (\RegS~combout\(2) & (((\RegF6|output\(10)) # (\RegS~combout\(3))))) ) ) ) # ( \RegB2|output\(10) & ( !\RegN14|output\(10) & ( (!\RegS~combout\(2) & 
-- (((!\RegS~combout\(3))) # (\RegJ10|output\(10)))) # (\RegS~combout\(2) & (((!\RegS~combout\(3) & \RegF6|output\(10))))) ) ) ) # ( !\RegB2|output\(10) & ( !\RegN14|output\(10) & ( (!\RegS~combout\(2) & (\RegJ10|output\(10) & (\RegS~combout\(3)))) # 
-- (\RegS~combout\(2) & (((!\RegS~combout\(3) & \RegF6|output\(10))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100110001001111010000000111001101111100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegJ10|ALT_INV_output\(10),
	datab => \ALT_INV_RegS~combout\(2),
	datac => \ALT_INV_RegS~combout\(3),
	datad => \RegF6|ALT_INV_output\(10),
	datae => \RegB2|ALT_INV_output\(10),
	dataf => \RegN14|ALT_INV_output\(10),
	combout => \Mux1|Mux5~1_combout\);

-- Location: LCFF_X26_Y14_N29
\RegK11|output[10]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(10),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegK11|output\(10));

-- Location: LCFF_X26_Y14_N21
\RegG7|output[10]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(10),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegG7|output\(10));

-- Location: LCFF_X34_Y15_N29
\RegO15|output[10]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(10),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegO15|output\(10));

-- Location: LCFF_X26_Y14_N9
\RegC3|output[10]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(10),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegC3|output\(10));

-- Location: LCCOMB_X26_Y14_N8
\Mux1|Mux5~3\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux5~3_combout\ = ( \RegC3|output\(10) & ( \RegS~combout\(3) & ( (!\RegS~combout\(2) & (\RegK11|output\(10))) # (\RegS~combout\(2) & ((\RegO15|output\(10)))) ) ) ) # ( !\RegC3|output\(10) & ( \RegS~combout\(3) & ( (!\RegS~combout\(2) & 
-- (\RegK11|output\(10))) # (\RegS~combout\(2) & ((\RegO15|output\(10)))) ) ) ) # ( \RegC3|output\(10) & ( !\RegS~combout\(3) & ( (!\RegS~combout\(2)) # (\RegG7|output\(10)) ) ) ) # ( !\RegC3|output\(10) & ( !\RegS~combout\(3) & ( (\RegS~combout\(2) & 
-- \RegG7|output\(10)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegS~combout\(2),
	datab => \RegK11|ALT_INV_output\(10),
	datac => \RegG7|ALT_INV_output\(10),
	datad => \RegO15|ALT_INV_output\(10),
	datae => \RegC3|ALT_INV_output\(10),
	dataf => \ALT_INV_RegS~combout\(3),
	combout => \Mux1|Mux5~3_combout\);

-- Location: LCFF_X26_Y20_N1
\RegH8|output[10]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(10),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegH8|output\(10));

-- Location: LCFF_X14_Y22_N9
\RegL12|output[10]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(10),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegL12|output\(10));

-- Location: LCCOMB_X26_Y20_N0
\Mux1|Mux5~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux5~0_combout\ = ( \RegH8|output\(10) & ( \RegL12|output\(10) & ( ((!\RegS~combout\(2) & ((\RegS~combout\(1)))) # (\RegS~combout\(2) & (\RegD4|output\(10)))) # (\RegS~combout\(3)) ) ) ) # ( !\RegH8|output\(10) & ( \RegL12|output\(10) & ( 
-- (\RegS~combout\(2) & ((\RegS~combout\(3)) # (\RegD4|output\(10)))) ) ) ) # ( \RegH8|output\(10) & ( !\RegL12|output\(10) & ( (!\RegS~combout\(2) & (((\RegS~combout\(1)) # (\RegS~combout\(3))))) # (\RegS~combout\(2) & (\RegD4|output\(10) & 
-- (!\RegS~combout\(3)))) ) ) ) # ( !\RegH8|output\(10) & ( !\RegL12|output\(10) & ( (\RegD4|output\(10) & (\RegS~combout\(2) & !\RegS~combout\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000111001101110000010011000100110001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegD4|ALT_INV_output\(10),
	datab => \ALT_INV_RegS~combout\(2),
	datac => \ALT_INV_RegS~combout\(3),
	datad => \ALT_INV_RegS~combout\(1),
	datae => \RegH8|ALT_INV_output\(10),
	dataf => \RegL12|ALT_INV_output\(10),
	combout => \Mux1|Mux5~0_combout\);

-- Location: LCFF_X17_Y19_N9
\RegI9|output[10]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(10),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegI9|output\(10));

-- Location: LCCOMB_X27_Y26_N2
\RegM13|output[10]~feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \RegM13|output[10]~feeder_combout\ = \DataD~combout\(10)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DataD~combout\(10),
	combout => \RegM13|output[10]~feeder_combout\);

-- Location: LCFF_X27_Y26_N3
\RegM13|output[10]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \RegM13|output[10]~feeder_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Decoder|Mux7~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegM13|output\(10));

-- Location: LCFF_X27_Y26_N13
\RegA1|output[10]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(10),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA1|output\(10));

-- Location: LCCOMB_X27_Y26_N0
\RegE5|output[10]~feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \RegE5|output[10]~feeder_combout\ = \DataD~combout\(10)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DataD~combout\(10),
	combout => \RegE5|output[10]~feeder_combout\);

-- Location: LCFF_X27_Y26_N1
\RegE5|output[10]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \RegE5|output[10]~feeder_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Decoder|Mux7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegE5|output\(10));

-- Location: LCCOMB_X27_Y26_N12
\Mux1|Mux5~2\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux5~2_combout\ = ( \RegA1|output\(10) & ( \RegE5|output\(10) & ( (!\RegS~combout\(3)) # ((!\RegS~combout\(2) & (\RegI9|output\(10))) # (\RegS~combout\(2) & ((\RegM13|output\(10))))) ) ) ) # ( !\RegA1|output\(10) & ( \RegE5|output\(10) & ( 
-- (!\RegS~combout\(3) & (((\RegS~combout\(2))))) # (\RegS~combout\(3) & ((!\RegS~combout\(2) & (\RegI9|output\(10))) # (\RegS~combout\(2) & ((\RegM13|output\(10)))))) ) ) ) # ( \RegA1|output\(10) & ( !\RegE5|output\(10) & ( (!\RegS~combout\(3) & 
-- (((!\RegS~combout\(2))))) # (\RegS~combout\(3) & ((!\RegS~combout\(2) & (\RegI9|output\(10))) # (\RegS~combout\(2) & ((\RegM13|output\(10)))))) ) ) ) # ( !\RegA1|output\(10) & ( !\RegE5|output\(10) & ( (\RegS~combout\(3) & ((!\RegS~combout\(2) & 
-- (\RegI9|output\(10))) # (\RegS~combout\(2) & ((\RegM13|output\(10)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101101110110000010100010001101011111011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegS~combout\(3),
	datab => \RegI9|ALT_INV_output\(10),
	datac => \RegM13|ALT_INV_output\(10),
	datad => \ALT_INV_RegS~combout\(2),
	datae => \RegA1|ALT_INV_output\(10),
	dataf => \RegE5|ALT_INV_output\(10),
	combout => \Mux1|Mux5~2_combout\);

-- Location: LCCOMB_X26_Y20_N24
\Mux1|Mux5~4\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux5~4_combout\ = ( \Mux1|Mux5~0_combout\ & ( \Mux1|Mux5~2_combout\ & ( (!\RegS~combout\(1)) # ((!\RegS~combout\(0) & (\Mux1|Mux5~1_combout\)) # (\RegS~combout\(0) & ((\Mux1|Mux5~3_combout\)))) ) ) ) # ( !\Mux1|Mux5~0_combout\ & ( 
-- \Mux1|Mux5~2_combout\ & ( (!\RegS~combout\(1) & (((\RegS~combout\(0))))) # (\RegS~combout\(1) & ((!\RegS~combout\(0) & (\Mux1|Mux5~1_combout\)) # (\RegS~combout\(0) & ((\Mux1|Mux5~3_combout\))))) ) ) ) # ( \Mux1|Mux5~0_combout\ & ( !\Mux1|Mux5~2_combout\ 
-- & ( (!\RegS~combout\(1) & (((!\RegS~combout\(0))))) # (\RegS~combout\(1) & ((!\RegS~combout\(0) & (\Mux1|Mux5~1_combout\)) # (\RegS~combout\(0) & ((\Mux1|Mux5~3_combout\))))) ) ) ) # ( !\Mux1|Mux5~0_combout\ & ( !\Mux1|Mux5~2_combout\ & ( 
-- (\RegS~combout\(1) & ((!\RegS~combout\(0) & (\Mux1|Mux5~1_combout\)) # (\RegS~combout\(0) & ((\Mux1|Mux5~3_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011110100001101001100011100000111111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1|ALT_INV_Mux5~1_combout\,
	datab => \ALT_INV_RegS~combout\(1),
	datac => \ALT_INV_RegS~combout\(0),
	datad => \Mux1|ALT_INV_Mux5~3_combout\,
	datae => \Mux1|ALT_INV_Mux5~0_combout\,
	dataf => \Mux1|ALT_INV_Mux5~2_combout\,
	combout => \Mux1|Mux5~4_combout\);

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DataD[11]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DataD(11),
	combout => \DataD~combout\(11));

-- Location: LCFF_X14_Y22_N3
\RegD4|output[11]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(11),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegD4|output\(11));

-- Location: LCFF_X14_Y22_N7
\RegH8|output[11]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(11),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegH8|output\(11));

-- Location: LCFF_X14_Y22_N15
\RegL12|output[11]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(11),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegL12|output\(11));

-- Location: LCCOMB_X14_Y22_N6
\Mux1|Mux4~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux4~0_combout\ = ( \RegH8|output\(11) & ( \RegL12|output\(11) & ( ((!\RegS~combout\(2) & ((\RegS~combout\(1)))) # (\RegS~combout\(2) & (\RegD4|output\(11)))) # (\RegS~combout\(3)) ) ) ) # ( !\RegH8|output\(11) & ( \RegL12|output\(11) & ( 
-- (\RegS~combout\(2) & ((\RegS~combout\(3)) # (\RegD4|output\(11)))) ) ) ) # ( \RegH8|output\(11) & ( !\RegL12|output\(11) & ( (!\RegS~combout\(2) & (((\RegS~combout\(3)) # (\RegS~combout\(1))))) # (\RegS~combout\(2) & (\RegD4|output\(11) & 
-- ((!\RegS~combout\(3))))) ) ) ) # ( !\RegH8|output\(11) & ( !\RegL12|output\(11) & ( (\RegS~combout\(2) & (\RegD4|output\(11) & !\RegS~combout\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000110111010101000010001010101010001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegS~combout\(2),
	datab => \RegD4|ALT_INV_output\(11),
	datac => \ALT_INV_RegS~combout\(1),
	datad => \ALT_INV_RegS~combout\(3),
	datae => \RegH8|ALT_INV_output\(11),
	dataf => \RegL12|ALT_INV_output\(11),
	combout => \Mux1|Mux4~0_combout\);

-- Location: LCFF_X26_Y14_N31
\RegG7|output[11]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(11),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegG7|output\(11));

-- Location: LCFF_X15_Y14_N17
\RegC3|output[11]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(11),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegC3|output\(11));

-- Location: LCFF_X15_Y14_N21
\RegK11|output[11]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(11),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegK11|output\(11));

-- Location: LCCOMB_X15_Y14_N16
\Mux1|Mux4~3\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux4~3_combout\ = ( \RegC3|output\(11) & ( \RegK11|output\(11) & ( (!\RegS~combout\(2)) # ((!\RegS~combout\(3) & ((\RegG7|output\(11)))) # (\RegS~combout\(3) & (\RegO15|output\(11)))) ) ) ) # ( !\RegC3|output\(11) & ( \RegK11|output\(11) & ( 
-- (!\RegS~combout\(3) & (((\RegS~combout\(2) & \RegG7|output\(11))))) # (\RegS~combout\(3) & (((!\RegS~combout\(2))) # (\RegO15|output\(11)))) ) ) ) # ( \RegC3|output\(11) & ( !\RegK11|output\(11) & ( (!\RegS~combout\(3) & (((!\RegS~combout\(2)) # 
-- (\RegG7|output\(11))))) # (\RegS~combout\(3) & (\RegO15|output\(11) & (\RegS~combout\(2)))) ) ) ) # ( !\RegC3|output\(11) & ( !\RegK11|output\(11) & ( (\RegS~combout\(2) & ((!\RegS~combout\(3) & ((\RegG7|output\(11)))) # (\RegS~combout\(3) & 
-- (\RegO15|output\(11))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101110000011100110100110001001111011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegO15|ALT_INV_output\(11),
	datab => \ALT_INV_RegS~combout\(3),
	datac => \ALT_INV_RegS~combout\(2),
	datad => \RegG7|ALT_INV_output\(11),
	datae => \RegC3|ALT_INV_output\(11),
	dataf => \RegK11|ALT_INV_output\(11),
	combout => \Mux1|Mux4~3_combout\);

-- Location: LCFF_X27_Y26_N23
\RegM13|output[11]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(11),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegM13|output\(11));

-- Location: LCFF_X13_Y25_N25
\RegI9|output[11]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(11),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegI9|output\(11));

-- Location: LCFF_X27_Y26_N21
\RegA1|output[11]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(11),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA1|output\(11));

-- Location: LCCOMB_X27_Y26_N20
\Mux1|Mux4~2\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux4~2_combout\ = ( \RegA1|output\(11) & ( \RegS~combout\(2) & ( (!\RegS~combout\(3) & (\RegE5|output\(11))) # (\RegS~combout\(3) & ((\RegM13|output\(11)))) ) ) ) # ( !\RegA1|output\(11) & ( \RegS~combout\(2) & ( (!\RegS~combout\(3) & 
-- (\RegE5|output\(11))) # (\RegS~combout\(3) & ((\RegM13|output\(11)))) ) ) ) # ( \RegA1|output\(11) & ( !\RegS~combout\(2) & ( (!\RegS~combout\(3)) # (\RegI9|output\(11)) ) ) ) # ( !\RegA1|output\(11) & ( !\RegS~combout\(2) & ( (\RegS~combout\(3) & 
-- \RegI9|output\(11)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegE5|ALT_INV_output\(11),
	datab => \RegM13|ALT_INV_output\(11),
	datac => \ALT_INV_RegS~combout\(3),
	datad => \RegI9|ALT_INV_output\(11),
	datae => \RegA1|ALT_INV_output\(11),
	dataf => \ALT_INV_RegS~combout\(2),
	combout => \Mux1|Mux4~2_combout\);

-- Location: LCFF_X14_Y23_N23
\RegN14|output[11]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(11),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegN14|output\(11));

-- Location: LCFF_X13_Y25_N23
\RegF6|output[11]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(11),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegF6|output\(11));

-- Location: LCFF_X14_Y23_N11
\RegB2|output[11]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(11),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB2|output\(11));

-- Location: LCFF_X13_Y25_N3
\RegJ10|output[11]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(11),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegJ10|output\(11));

-- Location: LCCOMB_X14_Y23_N10
\Mux1|Mux4~1\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux4~1_combout\ = ( \RegB2|output\(11) & ( \RegJ10|output\(11) & ( (!\RegS~combout\(2)) # ((!\RegS~combout\(3) & ((\RegF6|output\(11)))) # (\RegS~combout\(3) & (\RegN14|output\(11)))) ) ) ) # ( !\RegB2|output\(11) & ( \RegJ10|output\(11) & ( 
-- (!\RegS~combout\(3) & (\RegS~combout\(2) & ((\RegF6|output\(11))))) # (\RegS~combout\(3) & ((!\RegS~combout\(2)) # ((\RegN14|output\(11))))) ) ) ) # ( \RegB2|output\(11) & ( !\RegJ10|output\(11) & ( (!\RegS~combout\(3) & ((!\RegS~combout\(2)) # 
-- ((\RegF6|output\(11))))) # (\RegS~combout\(3) & (\RegS~combout\(2) & (\RegN14|output\(11)))) ) ) ) # ( !\RegB2|output\(11) & ( !\RegJ10|output\(11) & ( (\RegS~combout\(2) & ((!\RegS~combout\(3) & ((\RegF6|output\(11)))) # (\RegS~combout\(3) & 
-- (\RegN14|output\(11))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011100010011010101101000101011001111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegS~combout\(3),
	datab => \ALT_INV_RegS~combout\(2),
	datac => \RegN14|ALT_INV_output\(11),
	datad => \RegF6|ALT_INV_output\(11),
	datae => \RegB2|ALT_INV_output\(11),
	dataf => \RegJ10|ALT_INV_output\(11),
	combout => \Mux1|Mux4~1_combout\);

-- Location: LCCOMB_X14_Y22_N12
\Mux1|Mux4~4\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux4~4_combout\ = ( \Mux1|Mux4~2_combout\ & ( \Mux1|Mux4~1_combout\ & ( (!\RegS~combout\(1) & (((\RegS~combout\(0))) # (\Mux1|Mux4~0_combout\))) # (\RegS~combout\(1) & (((!\RegS~combout\(0)) # (\Mux1|Mux4~3_combout\)))) ) ) ) # ( 
-- !\Mux1|Mux4~2_combout\ & ( \Mux1|Mux4~1_combout\ & ( (!\RegS~combout\(1) & (\Mux1|Mux4~0_combout\ & (!\RegS~combout\(0)))) # (\RegS~combout\(1) & (((!\RegS~combout\(0)) # (\Mux1|Mux4~3_combout\)))) ) ) ) # ( \Mux1|Mux4~2_combout\ & ( 
-- !\Mux1|Mux4~1_combout\ & ( (!\RegS~combout\(1) & (((\RegS~combout\(0))) # (\Mux1|Mux4~0_combout\))) # (\RegS~combout\(1) & (((\RegS~combout\(0) & \Mux1|Mux4~3_combout\)))) ) ) ) # ( !\Mux1|Mux4~2_combout\ & ( !\Mux1|Mux4~1_combout\ & ( (!\RegS~combout\(1) 
-- & (\Mux1|Mux4~0_combout\ & (!\RegS~combout\(0)))) # (\RegS~combout\(1) & (((\RegS~combout\(0) & \Mux1|Mux4~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000011010011000100111101110000011100110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1|ALT_INV_Mux4~0_combout\,
	datab => \ALT_INV_RegS~combout\(1),
	datac => \ALT_INV_RegS~combout\(0),
	datad => \Mux1|ALT_INV_Mux4~3_combout\,
	datae => \Mux1|ALT_INV_Mux4~2_combout\,
	dataf => \Mux1|ALT_INV_Mux4~1_combout\,
	combout => \Mux1|Mux4~4_combout\);

-- Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DataD[12]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DataD(12),
	combout => \DataD~combout\(12));

-- Location: LCFF_X13_Y25_N1
\RegF6|output[12]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(12),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegF6|output\(12));

-- Location: LCFF_X3_Y24_N13
\RegB2|output[12]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(12),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB2|output\(12));

-- Location: LCFF_X14_Y23_N9
\RegN14|output[12]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(12),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegN14|output\(12));

-- Location: LCCOMB_X3_Y24_N12
\Mux1|Mux3~1\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux3~1_combout\ = ( \RegB2|output\(12) & ( \RegN14|output\(12) & ( (!\RegS~combout\(2) & (((!\RegS~combout\(3))) # (\RegJ10|output\(12)))) # (\RegS~combout\(2) & (((\RegF6|output\(12)) # (\RegS~combout\(3))))) ) ) ) # ( !\RegB2|output\(12) & ( 
-- \RegN14|output\(12) & ( (!\RegS~combout\(2) & (\RegJ10|output\(12) & (\RegS~combout\(3)))) # (\RegS~combout\(2) & (((\RegF6|output\(12)) # (\RegS~combout\(3))))) ) ) ) # ( \RegB2|output\(12) & ( !\RegN14|output\(12) & ( (!\RegS~combout\(2) & 
-- (((!\RegS~combout\(3))) # (\RegJ10|output\(12)))) # (\RegS~combout\(2) & (((!\RegS~combout\(3) & \RegF6|output\(12))))) ) ) ) # ( !\RegB2|output\(12) & ( !\RegN14|output\(12) & ( (!\RegS~combout\(2) & (\RegJ10|output\(12) & (\RegS~combout\(3)))) # 
-- (\RegS~combout\(2) & (((!\RegS~combout\(3) & \RegF6|output\(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100110001001111010000000111001101111100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegJ10|ALT_INV_output\(12),
	datab => \ALT_INV_RegS~combout\(2),
	datac => \ALT_INV_RegS~combout\(3),
	datad => \RegF6|ALT_INV_output\(12),
	datae => \RegB2|ALT_INV_output\(12),
	dataf => \RegN14|ALT_INV_output\(12),
	combout => \Mux1|Mux3~1_combout\);

-- Location: LCFF_X1_Y16_N19
\RegE5|output[12]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(12),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegE5|output\(12));

-- Location: LCFF_X13_Y25_N17
\RegI9|output[12]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(12),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegI9|output\(12));

-- Location: LCFF_X27_Y26_N9
\RegA1|output[12]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(12),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA1|output\(12));

-- Location: LCCOMB_X27_Y26_N8
\Mux1|Mux3~2\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux3~2_combout\ = ( \RegA1|output\(12) & ( \RegS~combout\(2) & ( (!\RegS~combout\(3) & ((\RegE5|output\(12)))) # (\RegS~combout\(3) & (\RegM13|output\(12))) ) ) ) # ( !\RegA1|output\(12) & ( \RegS~combout\(2) & ( (!\RegS~combout\(3) & 
-- ((\RegE5|output\(12)))) # (\RegS~combout\(3) & (\RegM13|output\(12))) ) ) ) # ( \RegA1|output\(12) & ( !\RegS~combout\(2) & ( (!\RegS~combout\(3)) # (\RegI9|output\(12)) ) ) ) # ( !\RegA1|output\(12) & ( !\RegS~combout\(2) & ( (\RegI9|output\(12) & 
-- \RegS~combout\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegM13|ALT_INV_output\(12),
	datab => \RegE5|ALT_INV_output\(12),
	datac => \RegI9|ALT_INV_output\(12),
	datad => \ALT_INV_RegS~combout\(3),
	datae => \RegA1|ALT_INV_output\(12),
	dataf => \ALT_INV_RegS~combout\(2),
	combout => \Mux1|Mux3~2_combout\);

-- Location: LCFF_X3_Y24_N25
\RegD4|output[12]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(12),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegD4|output\(12));

-- Location: LCFF_X3_Y24_N21
\RegH8|output[12]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(12),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegH8|output\(12));

-- Location: LCCOMB_X3_Y24_N20
\Mux1|Mux3~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux3~0_combout\ = ( \RegH8|output\(12) & ( \RegS~combout\(3) & ( (!\RegS~combout\(2)) # (\RegL12|output\(12)) ) ) ) # ( !\RegH8|output\(12) & ( \RegS~combout\(3) & ( (\RegL12|output\(12) & \RegS~combout\(2)) ) ) ) # ( \RegH8|output\(12) & ( 
-- !\RegS~combout\(3) & ( (!\RegS~combout\(2) & ((\RegS~combout\(1)))) # (\RegS~combout\(2) & (\RegD4|output\(12))) ) ) ) # ( !\RegH8|output\(12) & ( !\RegS~combout\(3) & ( (\RegD4|output\(12) & \RegS~combout\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000011110011001100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegL12|ALT_INV_output\(12),
	datab => \RegD4|ALT_INV_output\(12),
	datac => \ALT_INV_RegS~combout\(1),
	datad => \ALT_INV_RegS~combout\(2),
	datae => \RegH8|ALT_INV_output\(12),
	dataf => \ALT_INV_RegS~combout\(3),
	combout => \Mux1|Mux3~0_combout\);

-- Location: LCFF_X19_Y17_N5
\RegG7|output[12]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(12),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegG7|output\(12));

-- Location: LCFF_X19_Y17_N19
\RegC3|output[12]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(12),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegC3|output\(12));

-- Location: LCCOMB_X34_Y15_N24
\RegO15|output[12]~feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \RegO15|output[12]~feeder_combout\ = ( \DataD~combout\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DataD~combout\(12),
	combout => \RegO15|output[12]~feeder_combout\);

-- Location: LCFF_X34_Y15_N25
\RegO15|output[12]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \RegO15|output[12]~feeder_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Decoder|Mux7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegO15|output\(12));

-- Location: LCCOMB_X19_Y17_N18
\Mux1|Mux3~3\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux3~3_combout\ = ( \RegC3|output\(12) & ( \RegO15|output\(12) & ( (!\RegS~combout\(2) & (((!\RegS~combout\(3))) # (\RegK11|output\(12)))) # (\RegS~combout\(2) & (((\RegG7|output\(12)) # (\RegS~combout\(3))))) ) ) ) # ( !\RegC3|output\(12) & ( 
-- \RegO15|output\(12) & ( (!\RegS~combout\(2) & (\RegK11|output\(12) & (\RegS~combout\(3)))) # (\RegS~combout\(2) & (((\RegG7|output\(12)) # (\RegS~combout\(3))))) ) ) ) # ( \RegC3|output\(12) & ( !\RegO15|output\(12) & ( (!\RegS~combout\(2) & 
-- (((!\RegS~combout\(3))) # (\RegK11|output\(12)))) # (\RegS~combout\(2) & (((!\RegS~combout\(3) & \RegG7|output\(12))))) ) ) ) # ( !\RegC3|output\(12) & ( !\RegO15|output\(12) & ( (!\RegS~combout\(2) & (\RegK11|output\(12) & (\RegS~combout\(3)))) # 
-- (\RegS~combout\(2) & (((!\RegS~combout\(3) & \RegG7|output\(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100110001001111010000000111001101111100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegK11|ALT_INV_output\(12),
	datab => \ALT_INV_RegS~combout\(2),
	datac => \ALT_INV_RegS~combout\(3),
	datad => \RegG7|ALT_INV_output\(12),
	datae => \RegC3|ALT_INV_output\(12),
	dataf => \RegO15|ALT_INV_output\(12),
	combout => \Mux1|Mux3~3_combout\);

-- Location: LCCOMB_X19_Y17_N10
\Mux1|Mux3~4\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux3~4_combout\ = ( \Mux1|Mux3~3_combout\ & ( \RegS~combout\(0) & ( (\RegS~combout\(1)) # (\Mux1|Mux3~2_combout\) ) ) ) # ( !\Mux1|Mux3~3_combout\ & ( \RegS~combout\(0) & ( (\Mux1|Mux3~2_combout\ & !\RegS~combout\(1)) ) ) ) # ( \Mux1|Mux3~3_combout\ 
-- & ( !\RegS~combout\(0) & ( (!\RegS~combout\(1) & ((\Mux1|Mux3~0_combout\))) # (\RegS~combout\(1) & (\Mux1|Mux3~1_combout\)) ) ) ) # ( !\Mux1|Mux3~3_combout\ & ( !\RegS~combout\(0) & ( (!\RegS~combout\(1) & ((\Mux1|Mux3~0_combout\))) # (\RegS~combout\(1) & 
-- (\Mux1|Mux3~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1|ALT_INV_Mux3~1_combout\,
	datab => \Mux1|ALT_INV_Mux3~2_combout\,
	datac => \Mux1|ALT_INV_Mux3~0_combout\,
	datad => \ALT_INV_RegS~combout\(1),
	datae => \Mux1|ALT_INV_Mux3~3_combout\,
	dataf => \ALT_INV_RegS~combout\(0),
	combout => \Mux1|Mux3~4_combout\);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DataD[13]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DataD(13),
	combout => \DataD~combout\(13));

-- Location: LCFF_X26_Y20_N19
\RegH8|output[13]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(13),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegH8|output\(13));

-- Location: LCFF_X26_Y20_N17
\RegL12|output[13]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(13),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegL12|output\(13));

-- Location: LCCOMB_X26_Y20_N18
\Mux1|Mux2~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux2~0_combout\ = ( \RegH8|output\(13) & ( \RegL12|output\(13) & ( ((!\RegS~combout\(2) & ((\RegS~combout\(1)))) # (\RegS~combout\(2) & (\RegD4|output\(13)))) # (\RegS~combout\(3)) ) ) ) # ( !\RegH8|output\(13) & ( \RegL12|output\(13) & ( 
-- (\RegS~combout\(2) & ((\RegS~combout\(3)) # (\RegD4|output\(13)))) ) ) ) # ( \RegH8|output\(13) & ( !\RegL12|output\(13) & ( (!\RegS~combout\(2) & (((\RegS~combout\(3)) # (\RegS~combout\(1))))) # (\RegS~combout\(2) & (\RegD4|output\(13) & 
-- ((!\RegS~combout\(3))))) ) ) ) # ( !\RegH8|output\(13) & ( !\RegL12|output\(13) & ( (\RegD4|output\(13) & (\RegS~combout\(2) & !\RegS~combout\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000111011100110000010001001100110001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegD4|ALT_INV_output\(13),
	datab => \ALT_INV_RegS~combout\(2),
	datac => \ALT_INV_RegS~combout\(1),
	datad => \ALT_INV_RegS~combout\(3),
	datae => \RegH8|ALT_INV_output\(13),
	dataf => \RegL12|ALT_INV_output\(13),
	combout => \Mux1|Mux2~0_combout\);

-- Location: LCFF_X14_Y23_N13
\RegJ10|output[13]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(13),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegJ10|output\(13));

-- Location: LCFF_X14_Y23_N31
\RegN14|output[13]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(13),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegN14|output\(13));

-- Location: LCFF_X14_Y23_N29
\RegB2|output[13]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(13),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB2|output\(13));

-- Location: LCFF_X13_Y25_N21
\RegF6|output[13]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(13),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegF6|output\(13));

-- Location: LCCOMB_X14_Y23_N28
\Mux1|Mux2~1\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux2~1_combout\ = ( \RegB2|output\(13) & ( \RegF6|output\(13) & ( (!\RegS~combout\(3)) # ((!\RegS~combout\(2) & (\RegJ10|output\(13))) # (\RegS~combout\(2) & ((\RegN14|output\(13))))) ) ) ) # ( !\RegB2|output\(13) & ( \RegF6|output\(13) & ( 
-- (!\RegS~combout\(3) & (\RegS~combout\(2))) # (\RegS~combout\(3) & ((!\RegS~combout\(2) & (\RegJ10|output\(13))) # (\RegS~combout\(2) & ((\RegN14|output\(13)))))) ) ) ) # ( \RegB2|output\(13) & ( !\RegF6|output\(13) & ( (!\RegS~combout\(3) & 
-- (!\RegS~combout\(2))) # (\RegS~combout\(3) & ((!\RegS~combout\(2) & (\RegJ10|output\(13))) # (\RegS~combout\(2) & ((\RegN14|output\(13)))))) ) ) ) # ( !\RegB2|output\(13) & ( !\RegF6|output\(13) & ( (\RegS~combout\(3) & ((!\RegS~combout\(2) & 
-- (\RegJ10|output\(13))) # (\RegS~combout\(2) & ((\RegN14|output\(13)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101100011001001110100100110001101111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegS~combout\(3),
	datab => \ALT_INV_RegS~combout\(2),
	datac => \RegJ10|ALT_INV_output\(13),
	datad => \RegN14|ALT_INV_output\(13),
	datae => \RegB2|ALT_INV_output\(13),
	dataf => \RegF6|ALT_INV_output\(13),
	combout => \Mux1|Mux2~1_combout\);

-- Location: LCFF_X27_Y26_N17
\RegM13|output[13]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(13),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegM13|output\(13));

-- Location: LCFF_X27_Y26_N29
\RegA1|output[13]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(13),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA1|output\(13));

-- Location: LCFF_X27_Y26_N31
\RegE5|output[13]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(13),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegE5|output\(13));

-- Location: LCCOMB_X27_Y26_N28
\Mux1|Mux2~2\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux2~2_combout\ = ( \RegA1|output\(13) & ( \RegE5|output\(13) & ( (!\RegS~combout\(3)) # ((!\RegS~combout\(2) & (\RegI9|output\(13))) # (\RegS~combout\(2) & ((\RegM13|output\(13))))) ) ) ) # ( !\RegA1|output\(13) & ( \RegE5|output\(13) & ( 
-- (!\RegS~combout\(2) & (\RegI9|output\(13) & ((\RegS~combout\(3))))) # (\RegS~combout\(2) & (((!\RegS~combout\(3)) # (\RegM13|output\(13))))) ) ) ) # ( \RegA1|output\(13) & ( !\RegE5|output\(13) & ( (!\RegS~combout\(2) & (((!\RegS~combout\(3))) # 
-- (\RegI9|output\(13)))) # (\RegS~combout\(2) & (((\RegM13|output\(13) & \RegS~combout\(3))))) ) ) ) # ( !\RegA1|output\(13) & ( !\RegE5|output\(13) & ( (\RegS~combout\(3) & ((!\RegS~combout\(2) & (\RegI9|output\(13))) # (\RegS~combout\(2) & 
-- ((\RegM13|output\(13)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111110011000100011100110011010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegI9|ALT_INV_output\(13),
	datab => \ALT_INV_RegS~combout\(2),
	datac => \RegM13|ALT_INV_output\(13),
	datad => \ALT_INV_RegS~combout\(3),
	datae => \RegA1|ALT_INV_output\(13),
	dataf => \RegE5|ALT_INV_output\(13),
	combout => \Mux1|Mux2~2_combout\);

-- Location: LCFF_X15_Y14_N13
\RegK11|output[13]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(13),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegK11|output\(13));

-- Location: LCFF_X26_Y14_N19
\RegG7|output[13]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(13),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegG7|output\(13));

-- Location: LCFF_X15_Y14_N25
\RegC3|output[13]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(13),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegC3|output\(13));

-- Location: LCFF_X34_Y15_N5
\RegO15|output[13]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(13),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegO15|output\(13));

-- Location: LCCOMB_X15_Y14_N24
\Mux1|Mux2~3\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux2~3_combout\ = ( \RegC3|output\(13) & ( \RegO15|output\(13) & ( (!\RegS~combout\(2) & ((!\RegS~combout\(3)) # ((\RegK11|output\(13))))) # (\RegS~combout\(2) & (((\RegG7|output\(13))) # (\RegS~combout\(3)))) ) ) ) # ( !\RegC3|output\(13) & ( 
-- \RegO15|output\(13) & ( (!\RegS~combout\(2) & (\RegS~combout\(3) & (\RegK11|output\(13)))) # (\RegS~combout\(2) & (((\RegG7|output\(13))) # (\RegS~combout\(3)))) ) ) ) # ( \RegC3|output\(13) & ( !\RegO15|output\(13) & ( (!\RegS~combout\(2) & 
-- ((!\RegS~combout\(3)) # ((\RegK11|output\(13))))) # (\RegS~combout\(2) & (!\RegS~combout\(3) & ((\RegG7|output\(13))))) ) ) ) # ( !\RegC3|output\(13) & ( !\RegO15|output\(13) & ( (!\RegS~combout\(2) & (\RegS~combout\(3) & (\RegK11|output\(13)))) # 
-- (\RegS~combout\(2) & (!\RegS~combout\(3) & ((\RegG7|output\(13))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110100010101100111000010011010101111001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegS~combout\(2),
	datab => \ALT_INV_RegS~combout\(3),
	datac => \RegK11|ALT_INV_output\(13),
	datad => \RegG7|ALT_INV_output\(13),
	datae => \RegC3|ALT_INV_output\(13),
	dataf => \RegO15|ALT_INV_output\(13),
	combout => \Mux1|Mux2~3_combout\);

-- Location: LCCOMB_X26_Y20_N22
\Mux1|Mux2~4\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux2~4_combout\ = ( \Mux1|Mux2~3_combout\ & ( \RegS~combout\(1) & ( (\RegS~combout\(0)) # (\Mux1|Mux2~1_combout\) ) ) ) # ( !\Mux1|Mux2~3_combout\ & ( \RegS~combout\(1) & ( (\Mux1|Mux2~1_combout\ & !\RegS~combout\(0)) ) ) ) # ( \Mux1|Mux2~3_combout\ 
-- & ( !\RegS~combout\(1) & ( (!\RegS~combout\(0) & (\Mux1|Mux2~0_combout\)) # (\RegS~combout\(0) & ((\Mux1|Mux2~2_combout\))) ) ) ) # ( !\Mux1|Mux2~3_combout\ & ( !\RegS~combout\(1) & ( (!\RegS~combout\(0) & (\Mux1|Mux2~0_combout\)) # (\RegS~combout\(0) & 
-- ((\Mux1|Mux2~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1|ALT_INV_Mux2~0_combout\,
	datab => \Mux1|ALT_INV_Mux2~1_combout\,
	datac => \Mux1|ALT_INV_Mux2~2_combout\,
	datad => \ALT_INV_RegS~combout\(0),
	datae => \Mux1|ALT_INV_Mux2~3_combout\,
	dataf => \ALT_INV_RegS~combout\(1),
	combout => \Mux1|Mux2~4_combout\);

-- Location: PIN_N7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DataD[14]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DataD(14),
	combout => \DataD~combout\(14));

-- Location: LCFF_X14_Y23_N1
\RegN14|output[14]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(14),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegN14|output\(14));

-- Location: LCFF_X13_Y25_N9
\RegJ10|output[14]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(14),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegJ10|output\(14));

-- Location: LCFF_X9_Y18_N5
\RegB2|output[14]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(14),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB2|output\(14));

-- Location: LCFF_X13_Y25_N7
\RegF6|output[14]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(14),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegF6|output\(14));

-- Location: LCCOMB_X9_Y18_N4
\Mux1|Mux1~1\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux1~1_combout\ = ( \RegB2|output\(14) & ( \RegF6|output\(14) & ( (!\RegS~combout\(3)) # ((!\RegS~combout\(2) & ((\RegJ10|output\(14)))) # (\RegS~combout\(2) & (\RegN14|output\(14)))) ) ) ) # ( !\RegB2|output\(14) & ( \RegF6|output\(14) & ( 
-- (!\RegS~combout\(3) & (\RegS~combout\(2))) # (\RegS~combout\(3) & ((!\RegS~combout\(2) & ((\RegJ10|output\(14)))) # (\RegS~combout\(2) & (\RegN14|output\(14))))) ) ) ) # ( \RegB2|output\(14) & ( !\RegF6|output\(14) & ( (!\RegS~combout\(3) & 
-- (!\RegS~combout\(2))) # (\RegS~combout\(3) & ((!\RegS~combout\(2) & ((\RegJ10|output\(14)))) # (\RegS~combout\(2) & (\RegN14|output\(14))))) ) ) ) # ( !\RegB2|output\(14) & ( !\RegF6|output\(14) & ( (\RegS~combout\(3) & ((!\RegS~combout\(2) & 
-- ((\RegJ10|output\(14)))) # (\RegS~combout\(2) & (\RegN14|output\(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegS~combout\(3),
	datab => \ALT_INV_RegS~combout\(2),
	datac => \RegN14|ALT_INV_output\(14),
	datad => \RegJ10|ALT_INV_output\(14),
	datae => \RegB2|ALT_INV_output\(14),
	dataf => \RegF6|ALT_INV_output\(14),
	combout => \Mux1|Mux1~1_combout\);

-- Location: LCFF_X17_Y19_N23
\RegM13|output[14]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(14),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegM13|output\(14));

-- Location: LCCOMB_X1_Y16_N20
\RegE5|output[14]~feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \RegE5|output[14]~feeder_combout\ = ( \DataD~combout\(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DataD~combout\(14),
	combout => \RegE5|output[14]~feeder_combout\);

-- Location: LCFF_X1_Y16_N21
\RegE5|output[14]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \RegE5|output[14]~feeder_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Decoder|Mux7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegE5|output\(14));

-- Location: LCFF_X17_Y19_N3
\RegA1|output[14]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(14),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA1|output\(14));

-- Location: LCFF_X17_Y19_N21
\RegI9|output[14]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(14),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegI9|output\(14));

-- Location: LCCOMB_X17_Y19_N2
\Mux1|Mux1~2\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux1~2_combout\ = ( \RegA1|output\(14) & ( \RegI9|output\(14) & ( (!\RegS~combout\(2)) # ((!\RegS~combout\(3) & ((\RegE5|output\(14)))) # (\RegS~combout\(3) & (\RegM13|output\(14)))) ) ) ) # ( !\RegA1|output\(14) & ( \RegI9|output\(14) & ( 
-- (!\RegS~combout\(3) & (((\RegE5|output\(14) & \RegS~combout\(2))))) # (\RegS~combout\(3) & (((!\RegS~combout\(2))) # (\RegM13|output\(14)))) ) ) ) # ( \RegA1|output\(14) & ( !\RegI9|output\(14) & ( (!\RegS~combout\(3) & (((!\RegS~combout\(2)) # 
-- (\RegE5|output\(14))))) # (\RegS~combout\(3) & (\RegM13|output\(14) & ((\RegS~combout\(2))))) ) ) ) # ( !\RegA1|output\(14) & ( !\RegI9|output\(14) & ( (\RegS~combout\(2) & ((!\RegS~combout\(3) & ((\RegE5|output\(14)))) # (\RegS~combout\(3) & 
-- (\RegM13|output\(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011101010100001101101010101000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegS~combout\(3),
	datab => \RegM13|ALT_INV_output\(14),
	datac => \RegE5|ALT_INV_output\(14),
	datad => \ALT_INV_RegS~combout\(2),
	datae => \RegA1|ALT_INV_output\(14),
	dataf => \RegI9|ALT_INV_output\(14),
	combout => \Mux1|Mux1~2_combout\);

-- Location: LCFF_X18_Y25_N23
\RegD4|output[14]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(14),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegD4|output\(14));

-- Location: LCFF_X18_Y25_N1
\RegH8|output[14]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(14),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegH8|output\(14));

-- Location: LCCOMB_X18_Y25_N0
\Mux1|Mux1~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux1~0_combout\ = ( \RegH8|output\(14) & ( \RegS~combout\(3) & ( (!\RegS~combout\(2)) # (\RegL12|output\(14)) ) ) ) # ( !\RegH8|output\(14) & ( \RegS~combout\(3) & ( (\RegL12|output\(14) & \RegS~combout\(2)) ) ) ) # ( \RegH8|output\(14) & ( 
-- !\RegS~combout\(3) & ( (!\RegS~combout\(2) & ((\RegS~combout\(1)))) # (\RegS~combout\(2) & (\RegD4|output\(14))) ) ) ) # ( !\RegH8|output\(14) & ( !\RegS~combout\(3) & ( (\RegD4|output\(14) & \RegS~combout\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000011110011001100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegL12|ALT_INV_output\(14),
	datab => \RegD4|ALT_INV_output\(14),
	datac => \ALT_INV_RegS~combout\(1),
	datad => \ALT_INV_RegS~combout\(2),
	datae => \RegH8|ALT_INV_output\(14),
	dataf => \ALT_INV_RegS~combout\(3),
	combout => \Mux1|Mux1~0_combout\);

-- Location: LCFF_X15_Y14_N1
\RegK11|output[14]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(14),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegK11|output\(14));

-- Location: LCFF_X31_Y18_N1
\RegC3|output[14]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(14),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegC3|output\(14));

-- Location: LCFF_X26_Y14_N7
\RegG7|output[14]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(14),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegG7|output\(14));

-- Location: LCCOMB_X31_Y18_N0
\Mux1|Mux1~3\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux1~3_combout\ = ( \RegC3|output\(14) & ( \RegG7|output\(14) & ( (!\RegS~combout\(3)) # ((!\RegS~combout\(2) & ((\RegK11|output\(14)))) # (\RegS~combout\(2) & (\RegO15|output\(14)))) ) ) ) # ( !\RegC3|output\(14) & ( \RegG7|output\(14) & ( 
-- (!\RegS~combout\(3) & (((\RegS~combout\(2))))) # (\RegS~combout\(3) & ((!\RegS~combout\(2) & ((\RegK11|output\(14)))) # (\RegS~combout\(2) & (\RegO15|output\(14))))) ) ) ) # ( \RegC3|output\(14) & ( !\RegG7|output\(14) & ( (!\RegS~combout\(3) & 
-- (((!\RegS~combout\(2))))) # (\RegS~combout\(3) & ((!\RegS~combout\(2) & ((\RegK11|output\(14)))) # (\RegS~combout\(2) & (\RegO15|output\(14))))) ) ) ) # ( !\RegC3|output\(14) & ( !\RegG7|output\(14) & ( (\RegS~combout\(3) & ((!\RegS~combout\(2) & 
-- ((\RegK11|output\(14)))) # (\RegS~combout\(2) & (\RegO15|output\(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001110000011111000100001101001111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegO15|ALT_INV_output\(14),
	datab => \ALT_INV_RegS~combout\(3),
	datac => \ALT_INV_RegS~combout\(2),
	datad => \RegK11|ALT_INV_output\(14),
	datae => \RegC3|ALT_INV_output\(14),
	dataf => \RegG7|ALT_INV_output\(14),
	combout => \Mux1|Mux1~3_combout\);

-- Location: LCCOMB_X18_Y25_N8
\Mux1|Mux1~4\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux1~4_combout\ = ( \RegS~combout\(0) & ( \Mux1|Mux1~3_combout\ & ( (\RegS~combout\(1)) # (\Mux1|Mux1~2_combout\) ) ) ) # ( !\RegS~combout\(0) & ( \Mux1|Mux1~3_combout\ & ( (!\RegS~combout\(1) & ((\Mux1|Mux1~0_combout\))) # (\RegS~combout\(1) & 
-- (\Mux1|Mux1~1_combout\)) ) ) ) # ( \RegS~combout\(0) & ( !\Mux1|Mux1~3_combout\ & ( (\Mux1|Mux1~2_combout\ & !\RegS~combout\(1)) ) ) ) # ( !\RegS~combout\(0) & ( !\Mux1|Mux1~3_combout\ & ( (!\RegS~combout\(1) & ((\Mux1|Mux1~0_combout\))) # 
-- (\RegS~combout\(1) & (\Mux1|Mux1~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101001100000011000000000101111101010011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1|ALT_INV_Mux1~1_combout\,
	datab => \Mux1|ALT_INV_Mux1~2_combout\,
	datac => \ALT_INV_RegS~combout\(1),
	datad => \Mux1|ALT_INV_Mux1~0_combout\,
	datae => \ALT_INV_RegS~combout\(0),
	dataf => \Mux1|ALT_INV_Mux1~3_combout\,
	combout => \Mux1|Mux1~4_combout\);

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DataD[15]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DataD(15),
	combout => \DataD~combout\(15));

-- Location: LCFF_X34_Y15_N23
\RegO15|output[15]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(15),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegO15|output\(15));

-- Location: LCFF_X26_Y14_N1
\RegG7|output[15]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(15),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegG7|output\(15));

-- Location: LCFF_X15_Y14_N29
\RegK11|output[15]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(15),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegK11|output\(15));

-- Location: LCFF_X15_Y14_N9
\RegC3|output[15]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(15),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegC3|output\(15));

-- Location: LCCOMB_X15_Y14_N8
\Mux1|Mux0~3\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux0~3_combout\ = ( \RegC3|output\(15) & ( \RegS~combout\(3) & ( (!\RegS~combout\(2) & ((\RegK11|output\(15)))) # (\RegS~combout\(2) & (\RegO15|output\(15))) ) ) ) # ( !\RegC3|output\(15) & ( \RegS~combout\(3) & ( (!\RegS~combout\(2) & 
-- ((\RegK11|output\(15)))) # (\RegS~combout\(2) & (\RegO15|output\(15))) ) ) ) # ( \RegC3|output\(15) & ( !\RegS~combout\(3) & ( (!\RegS~combout\(2)) # (\RegG7|output\(15)) ) ) ) # ( !\RegC3|output\(15) & ( !\RegS~combout\(3) & ( (\RegS~combout\(2) & 
-- \RegG7|output\(15)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegS~combout\(2),
	datab => \RegO15|ALT_INV_output\(15),
	datac => \RegG7|ALT_INV_output\(15),
	datad => \RegK11|ALT_INV_output\(15),
	datae => \RegC3|ALT_INV_output\(15),
	dataf => \ALT_INV_RegS~combout\(3),
	combout => \Mux1|Mux0~3_combout\);

-- Location: LCFF_X13_Y25_N19
\RegF6|output[15]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(15),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegF6|output\(15));

-- Location: LCFF_X9_Y18_N9
\RegB2|output[15]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(15),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB2|output\(15));

-- Location: LCFF_X15_Y14_N5
\RegJ10|output[15]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(15),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegJ10|output\(15));

-- Location: LCCOMB_X9_Y18_N8
\Mux1|Mux0~1\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux0~1_combout\ = ( \RegB2|output\(15) & ( \RegJ10|output\(15) & ( (!\RegS~combout\(2)) # ((!\RegS~combout\(3) & ((\RegF6|output\(15)))) # (\RegS~combout\(3) & (\RegN14|output\(15)))) ) ) ) # ( !\RegB2|output\(15) & ( \RegJ10|output\(15) & ( 
-- (!\RegS~combout\(2) & (((\RegS~combout\(3))))) # (\RegS~combout\(2) & ((!\RegS~combout\(3) & ((\RegF6|output\(15)))) # (\RegS~combout\(3) & (\RegN14|output\(15))))) ) ) ) # ( \RegB2|output\(15) & ( !\RegJ10|output\(15) & ( (!\RegS~combout\(2) & 
-- (((!\RegS~combout\(3))))) # (\RegS~combout\(2) & ((!\RegS~combout\(3) & ((\RegF6|output\(15)))) # (\RegS~combout\(3) & (\RegN14|output\(15))))) ) ) ) # ( !\RegB2|output\(15) & ( !\RegJ10|output\(15) & ( (\RegS~combout\(2) & ((!\RegS~combout\(3) & 
-- ((\RegF6|output\(15)))) # (\RegS~combout\(3) & (\RegN14|output\(15))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001110000011111000100001101001111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegN14|ALT_INV_output\(15),
	datab => \ALT_INV_RegS~combout\(2),
	datac => \ALT_INV_RegS~combout\(3),
	datad => \RegF6|ALT_INV_output\(15),
	datae => \RegB2|ALT_INV_output\(15),
	dataf => \RegJ10|ALT_INV_output\(15),
	combout => \Mux1|Mux0~1_combout\);

-- Location: LCFF_X18_Y25_N17
\RegD4|output[15]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(15),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegD4|output\(15));

-- Location: LCFF_X18_Y25_N13
\RegH8|output[15]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(15),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegH8|output\(15));

-- Location: LCFF_X26_Y20_N21
\RegL12|output[15]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(15),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegL12|output\(15));

-- Location: LCCOMB_X18_Y25_N12
\Mux1|Mux0~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux0~0_combout\ = ( \RegH8|output\(15) & ( \RegL12|output\(15) & ( ((!\RegS~combout\(2) & (\RegS~combout\(1))) # (\RegS~combout\(2) & ((\RegD4|output\(15))))) # (\RegS~combout\(3)) ) ) ) # ( !\RegH8|output\(15) & ( \RegL12|output\(15) & ( 
-- (\RegS~combout\(2) & ((\RegS~combout\(3)) # (\RegD4|output\(15)))) ) ) ) # ( \RegH8|output\(15) & ( !\RegL12|output\(15) & ( (!\RegS~combout\(3) & ((!\RegS~combout\(2) & (\RegS~combout\(1))) # (\RegS~combout\(2) & ((\RegD4|output\(15)))))) # 
-- (\RegS~combout\(3) & (((!\RegS~combout\(2))))) ) ) ) # ( !\RegH8|output\(15) & ( !\RegL12|output\(15) & ( (\RegD4|output\(15) & (!\RegS~combout\(3) & \RegS~combout\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000010111110011000000000000001111110101111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegS~combout\(1),
	datab => \RegD4|ALT_INV_output\(15),
	datac => \ALT_INV_RegS~combout\(3),
	datad => \ALT_INV_RegS~combout\(2),
	datae => \RegH8|ALT_INV_output\(15),
	dataf => \RegL12|ALT_INV_output\(15),
	combout => \Mux1|Mux0~0_combout\);

-- Location: LCFF_X17_Y19_N1
\RegM13|output[15]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(15),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegM13|output\(15));

-- Location: LCCOMB_X1_Y16_N16
\RegE5|output[15]~feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \RegE5|output[15]~feeder_combout\ = ( \DataD~combout\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DataD~combout\(15),
	combout => \RegE5|output[15]~feeder_combout\);

-- Location: LCFF_X1_Y16_N17
\RegE5|output[15]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \RegE5|output[15]~feeder_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Decoder|Mux7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegE5|output\(15));

-- Location: LCFF_X18_Y25_N5
\RegI9|output[15]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(15),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegI9|output\(15));

-- Location: LCFF_X17_Y19_N31
\RegA1|output[15]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(15),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA1|output\(15));

-- Location: LCCOMB_X17_Y19_N30
\Mux1|Mux0~2\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux0~2_combout\ = ( \RegA1|output\(15) & ( \RegS~combout\(3) & ( (!\RegS~combout\(2) & ((\RegI9|output\(15)))) # (\RegS~combout\(2) & (\RegM13|output\(15))) ) ) ) # ( !\RegA1|output\(15) & ( \RegS~combout\(3) & ( (!\RegS~combout\(2) & 
-- ((\RegI9|output\(15)))) # (\RegS~combout\(2) & (\RegM13|output\(15))) ) ) ) # ( \RegA1|output\(15) & ( !\RegS~combout\(3) & ( (!\RegS~combout\(2)) # (\RegE5|output\(15)) ) ) ) # ( !\RegA1|output\(15) & ( !\RegS~combout\(3) & ( (\RegS~combout\(2) & 
-- \RegE5|output\(15)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegS~combout\(2),
	datab => \RegM13|ALT_INV_output\(15),
	datac => \RegE5|ALT_INV_output\(15),
	datad => \RegI9|ALT_INV_output\(15),
	datae => \RegA1|ALT_INV_output\(15),
	dataf => \ALT_INV_RegS~combout\(3),
	combout => \Mux1|Mux0~2_combout\);

-- Location: LCCOMB_X18_Y25_N26
\Mux1|Mux0~4\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1|Mux0~4_combout\ = ( \Mux1|Mux0~0_combout\ & ( \Mux1|Mux0~2_combout\ & ( (!\RegS~combout\(1)) # ((!\RegS~combout\(0) & ((\Mux1|Mux0~1_combout\))) # (\RegS~combout\(0) & (\Mux1|Mux0~3_combout\))) ) ) ) # ( !\Mux1|Mux0~0_combout\ & ( 
-- \Mux1|Mux0~2_combout\ & ( (!\RegS~combout\(1) & (((\RegS~combout\(0))))) # (\RegS~combout\(1) & ((!\RegS~combout\(0) & ((\Mux1|Mux0~1_combout\))) # (\RegS~combout\(0) & (\Mux1|Mux0~3_combout\)))) ) ) ) # ( \Mux1|Mux0~0_combout\ & ( !\Mux1|Mux0~2_combout\ 
-- & ( (!\RegS~combout\(1) & (((!\RegS~combout\(0))))) # (\RegS~combout\(1) & ((!\RegS~combout\(0) & ((\Mux1|Mux0~1_combout\))) # (\RegS~combout\(0) & (\Mux1|Mux0~3_combout\)))) ) ) ) # ( !\Mux1|Mux0~0_combout\ & ( !\Mux1|Mux0~2_combout\ & ( 
-- (\RegS~combout\(1) & ((!\RegS~combout\(0) & ((\Mux1|Mux0~1_combout\))) # (\RegS~combout\(0) & (\Mux1|Mux0~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001101011110001000100000101101110111010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegS~combout\(1),
	datab => \Mux1|ALT_INV_Mux0~3_combout\,
	datac => \Mux1|ALT_INV_Mux0~1_combout\,
	datad => \ALT_INV_RegS~combout\(0),
	datae => \Mux1|ALT_INV_Mux0~0_combout\,
	dataf => \Mux1|ALT_INV_Mux0~2_combout\,
	combout => \Mux1|Mux0~4_combout\);

-- Location: PIN_R15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RegT[3]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RegT(3),
	combout => \RegT~combout\(3));

-- Location: PIN_AB7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RegT[2]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RegT(2),
	combout => \RegT~combout\(2));

-- Location: LCCOMB_X6_Y6_N22
\Mux2|Mux15~2\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux15~2_combout\ = ( \RegI9|output\(0) & ( \RegA1|output\(0) & ( (!\RegT~combout\(2)) # ((!\RegT~combout\(3) & (\RegE5|output\(0))) # (\RegT~combout\(3) & ((\RegM13|output\(0))))) ) ) ) # ( !\RegI9|output\(0) & ( \RegA1|output\(0) & ( 
-- (!\RegT~combout\(3) & (((!\RegT~combout\(2))) # (\RegE5|output\(0)))) # (\RegT~combout\(3) & (((\RegM13|output\(0) & \RegT~combout\(2))))) ) ) ) # ( \RegI9|output\(0) & ( !\RegA1|output\(0) & ( (!\RegT~combout\(3) & (\RegE5|output\(0) & 
-- ((\RegT~combout\(2))))) # (\RegT~combout\(3) & (((!\RegT~combout\(2)) # (\RegM13|output\(0))))) ) ) ) # ( !\RegI9|output\(0) & ( !\RegA1|output\(0) & ( (\RegT~combout\(2) & ((!\RegT~combout\(3) & (\RegE5|output\(0))) # (\RegT~combout\(3) & 
-- ((\RegM13|output\(0)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111001100110100011111001100010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegE5|ALT_INV_output\(0),
	datab => \ALT_INV_RegT~combout\(3),
	datac => \RegM13|ALT_INV_output\(0),
	datad => \ALT_INV_RegT~combout\(2),
	datae => \RegI9|ALT_INV_output\(0),
	dataf => \RegA1|ALT_INV_output\(0),
	combout => \Mux2|Mux15~2_combout\);

-- Location: LCCOMB_X15_Y20_N4
\Mux2|Mux15~1\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux15~1_combout\ = ( \RegJ10|output\(0) & ( \RegT~combout\(3) & ( (!\RegT~combout\(2)) # (\RegN14|output\(0)) ) ) ) # ( !\RegJ10|output\(0) & ( \RegT~combout\(3) & ( (\RegT~combout\(2) & \RegN14|output\(0)) ) ) ) # ( \RegJ10|output\(0) & ( 
-- !\RegT~combout\(3) & ( (!\RegT~combout\(2) & (\RegB2|output\(0))) # (\RegT~combout\(2) & ((\RegF6|output\(0)))) ) ) ) # ( !\RegJ10|output\(0) & ( !\RegT~combout\(3) & ( (!\RegT~combout\(2) & (\RegB2|output\(0))) # (\RegT~combout\(2) & 
-- ((\RegF6|output\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000010101011010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegT~combout\(2),
	datab => \RegB2|ALT_INV_output\(0),
	datac => \RegF6|ALT_INV_output\(0),
	datad => \RegN14|ALT_INV_output\(0),
	datae => \RegJ10|ALT_INV_output\(0),
	dataf => \ALT_INV_RegT~combout\(3),
	combout => \Mux2|Mux15~1_combout\);

-- Location: LCFF_X14_Y16_N7
\RegK11|output[0]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(0),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegK11|output\(0));

-- Location: LCCOMB_X14_Y16_N6
\Mux2|Mux15~3\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux15~3_combout\ = ( \RegK11|output\(0) & ( \RegC3|output\(0) & ( (!\RegT~combout\(2)) # ((!\RegT~combout\(3) & (\RegG7|output\(0))) # (\RegT~combout\(3) & ((\RegO15|output\(0))))) ) ) ) # ( !\RegK11|output\(0) & ( \RegC3|output\(0) & ( 
-- (!\RegT~combout\(3) & (((!\RegT~combout\(2))) # (\RegG7|output\(0)))) # (\RegT~combout\(3) & (((\RegO15|output\(0) & \RegT~combout\(2))))) ) ) ) # ( \RegK11|output\(0) & ( !\RegC3|output\(0) & ( (!\RegT~combout\(3) & (\RegG7|output\(0) & 
-- ((\RegT~combout\(2))))) # (\RegT~combout\(3) & (((!\RegT~combout\(2)) # (\RegO15|output\(0))))) ) ) ) # ( !\RegK11|output\(0) & ( !\RegC3|output\(0) & ( (\RegT~combout\(2) & ((!\RegT~combout\(3) & (\RegG7|output\(0))) # (\RegT~combout\(3) & 
-- ((\RegO15|output\(0)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000011110101001111110000010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegG7|ALT_INV_output\(0),
	datab => \RegO15|ALT_INV_output\(0),
	datac => \ALT_INV_RegT~combout\(3),
	datad => \ALT_INV_RegT~combout\(2),
	datae => \RegK11|ALT_INV_output\(0),
	dataf => \RegC3|ALT_INV_output\(0),
	combout => \Mux2|Mux15~3_combout\);

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RegT[0]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RegT(0),
	combout => \RegT~combout\(0));

-- Location: LCCOMB_X5_Y8_N22
\Mux2|Mux15~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux15~0_combout\ = ( \RegD4|output\(0) & ( \RegL12|output\(0) & ( ((\RegH8|output\(0) & ((\RegT~combout\(3)) # (\RegT~combout\(1))))) # (\RegT~combout\(2)) ) ) ) # ( !\RegD4|output\(0) & ( \RegL12|output\(0) & ( (!\RegT~combout\(2) & 
-- (\RegH8|output\(0) & ((\RegT~combout\(3)) # (\RegT~combout\(1))))) # (\RegT~combout\(2) & (((\RegT~combout\(3))))) ) ) ) # ( \RegD4|output\(0) & ( !\RegL12|output\(0) & ( (!\RegT~combout\(2) & (\RegH8|output\(0) & ((\RegT~combout\(3)) # 
-- (\RegT~combout\(1))))) # (\RegT~combout\(2) & (((!\RegT~combout\(3))))) ) ) ) # ( !\RegD4|output\(0) & ( !\RegL12|output\(0) & ( (\RegH8|output\(0) & (!\RegT~combout\(2) & ((\RegT~combout\(3)) # (\RegT~combout\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000000000001111100110000000111001100110000011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegT~combout\(1),
	datab => \ALT_INV_RegT~combout\(3),
	datac => \RegH8|ALT_INV_output\(0),
	datad => \ALT_INV_RegT~combout\(2),
	datae => \RegD4|ALT_INV_output\(0),
	dataf => \RegL12|ALT_INV_output\(0),
	combout => \Mux2|Mux15~0_combout\);

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RegT[1]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RegT(1),
	combout => \RegT~combout\(1));

-- Location: LCCOMB_X5_Y8_N24
\Mux2|Mux15~4\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux15~4_combout\ = ( \Mux2|Mux15~0_combout\ & ( \RegT~combout\(1) & ( (!\RegT~combout\(0) & (\Mux2|Mux15~1_combout\)) # (\RegT~combout\(0) & ((\Mux2|Mux15~3_combout\))) ) ) ) # ( !\Mux2|Mux15~0_combout\ & ( \RegT~combout\(1) & ( (!\RegT~combout\(0) 
-- & (\Mux2|Mux15~1_combout\)) # (\RegT~combout\(0) & ((\Mux2|Mux15~3_combout\))) ) ) ) # ( \Mux2|Mux15~0_combout\ & ( !\RegT~combout\(1) & ( (!\RegT~combout\(0)) # (\Mux2|Mux15~2_combout\) ) ) ) # ( !\Mux2|Mux15~0_combout\ & ( !\RegT~combout\(1) & ( 
-- (\Mux2|Mux15~2_combout\ & \RegT~combout\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|ALT_INV_Mux15~2_combout\,
	datab => \Mux2|ALT_INV_Mux15~1_combout\,
	datac => \Mux2|ALT_INV_Mux15~3_combout\,
	datad => \ALT_INV_RegT~combout\(0),
	datae => \Mux2|ALT_INV_Mux15~0_combout\,
	dataf => \ALT_INV_RegT~combout\(1),
	combout => \Mux2|Mux15~4_combout\);

-- Location: LCFF_X14_Y16_N31
\RegK11|output[1]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(1),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegK11|output\(1));

-- Location: LCCOMB_X14_Y16_N30
\Mux2|Mux14~3\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux14~3_combout\ = ( \RegK11|output\(1) & ( \RegG7|output\(1) & ( (!\RegT~combout\(3) & (((\RegT~combout\(2))) # (\RegC3|output\(1)))) # (\RegT~combout\(3) & (((!\RegT~combout\(2)) # (\RegO15|output\(1))))) ) ) ) # ( !\RegK11|output\(1) & ( 
-- \RegG7|output\(1) & ( (!\RegT~combout\(3) & (((\RegT~combout\(2))) # (\RegC3|output\(1)))) # (\RegT~combout\(3) & (((\RegO15|output\(1) & \RegT~combout\(2))))) ) ) ) # ( \RegK11|output\(1) & ( !\RegG7|output\(1) & ( (!\RegT~combout\(3) & 
-- (\RegC3|output\(1) & ((!\RegT~combout\(2))))) # (\RegT~combout\(3) & (((!\RegT~combout\(2)) # (\RegO15|output\(1))))) ) ) ) # ( !\RegK11|output\(1) & ( !\RegG7|output\(1) & ( (!\RegT~combout\(3) & (\RegC3|output\(1) & ((!\RegT~combout\(2))))) # 
-- (\RegT~combout\(3) & (((\RegO15|output\(1) & \RegT~combout\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000011010111110000001101010000111100110101111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegC3|ALT_INV_output\(1),
	datab => \RegO15|ALT_INV_output\(1),
	datac => \ALT_INV_RegT~combout\(3),
	datad => \ALT_INV_RegT~combout\(2),
	datae => \RegK11|ALT_INV_output\(1),
	dataf => \RegG7|ALT_INV_output\(1),
	combout => \Mux2|Mux14~3_combout\);

-- Location: LCCOMB_X15_Y20_N30
\Mux2|Mux14~1\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux14~1_combout\ = ( \RegJ10|output\(1) & ( \RegB2|output\(1) & ( (!\RegT~combout\(2)) # ((!\RegT~combout\(3) & ((\RegF6|output\(1)))) # (\RegT~combout\(3) & (\RegN14|output\(1)))) ) ) ) # ( !\RegJ10|output\(1) & ( \RegB2|output\(1) & ( 
-- (!\RegT~combout\(2) & (!\RegT~combout\(3))) # (\RegT~combout\(2) & ((!\RegT~combout\(3) & ((\RegF6|output\(1)))) # (\RegT~combout\(3) & (\RegN14|output\(1))))) ) ) ) # ( \RegJ10|output\(1) & ( !\RegB2|output\(1) & ( (!\RegT~combout\(2) & 
-- (\RegT~combout\(3))) # (\RegT~combout\(2) & ((!\RegT~combout\(3) & ((\RegF6|output\(1)))) # (\RegT~combout\(3) & (\RegN14|output\(1))))) ) ) ) # ( !\RegJ10|output\(1) & ( !\RegB2|output\(1) & ( (\RegT~combout\(2) & ((!\RegT~combout\(3) & 
-- ((\RegF6|output\(1)))) # (\RegT~combout\(3) & (\RegN14|output\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011110001001110011011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegT~combout\(2),
	datab => \ALT_INV_RegT~combout\(3),
	datac => \RegN14|ALT_INV_output\(1),
	datad => \RegF6|ALT_INV_output\(1),
	datae => \RegJ10|ALT_INV_output\(1),
	dataf => \RegB2|ALT_INV_output\(1),
	combout => \Mux2|Mux14~1_combout\);

-- Location: LCCOMB_X6_Y6_N10
\Mux2|Mux14~2\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux14~2_combout\ = ( \RegI9|output\(1) & ( \RegT~combout\(3) & ( (!\RegT~combout\(2)) # (\RegM13|output\(1)) ) ) ) # ( !\RegI9|output\(1) & ( \RegT~combout\(3) & ( (\RegM13|output\(1) & \RegT~combout\(2)) ) ) ) # ( \RegI9|output\(1) & ( 
-- !\RegT~combout\(3) & ( (!\RegT~combout\(2) & (\RegA1|output\(1))) # (\RegT~combout\(2) & ((\RegE5|output\(1)))) ) ) ) # ( !\RegI9|output\(1) & ( !\RegT~combout\(3) & ( (!\RegT~combout\(2) & (\RegA1|output\(1))) # (\RegT~combout\(2) & 
-- ((\RegE5|output\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegA1|ALT_INV_output\(1),
	datab => \RegM13|ALT_INV_output\(1),
	datac => \RegE5|ALT_INV_output\(1),
	datad => \ALT_INV_RegT~combout\(2),
	datae => \RegI9|ALT_INV_output\(1),
	dataf => \ALT_INV_RegT~combout\(3),
	combout => \Mux2|Mux14~2_combout\);

-- Location: LCCOMB_X5_Y8_N0
\Mux2|Mux14~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux14~0_combout\ = ( \RegD4|output\(1) & ( \RegT~combout\(1) & ( (!\RegT~combout\(2) & (((\RegH8|output\(1))))) # (\RegT~combout\(2) & (((!\RegT~combout\(3))) # (\RegL12|output\(1)))) ) ) ) # ( !\RegD4|output\(1) & ( \RegT~combout\(1) & ( 
-- (!\RegT~combout\(2) & (((\RegH8|output\(1))))) # (\RegT~combout\(2) & (\RegL12|output\(1) & (\RegT~combout\(3)))) ) ) ) # ( \RegD4|output\(1) & ( !\RegT~combout\(1) & ( (!\RegT~combout\(3) & (((\RegT~combout\(2))))) # (\RegT~combout\(3) & 
-- ((!\RegT~combout\(2) & ((\RegH8|output\(1)))) # (\RegT~combout\(2) & (\RegL12|output\(1))))) ) ) ) # ( !\RegD4|output\(1) & ( !\RegT~combout\(1) & ( (\RegT~combout\(3) & ((!\RegT~combout\(2) & ((\RegH8|output\(1)))) # (\RegT~combout\(2) & 
-- (\RegL12|output\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001000011010011110100000001111100010000110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegL12|ALT_INV_output\(1),
	datab => \ALT_INV_RegT~combout\(3),
	datac => \ALT_INV_RegT~combout\(2),
	datad => \RegH8|ALT_INV_output\(1),
	datae => \RegD4|ALT_INV_output\(1),
	dataf => \ALT_INV_RegT~combout\(1),
	combout => \Mux2|Mux14~0_combout\);

-- Location: LCCOMB_X5_Y8_N28
\Mux2|Mux14~4\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux14~4_combout\ = ( \Mux2|Mux14~0_combout\ & ( \RegT~combout\(0) & ( (!\RegT~combout\(1) & ((\Mux2|Mux14~2_combout\))) # (\RegT~combout\(1) & (\Mux2|Mux14~3_combout\)) ) ) ) # ( !\Mux2|Mux14~0_combout\ & ( \RegT~combout\(0) & ( (!\RegT~combout\(1) 
-- & ((\Mux2|Mux14~2_combout\))) # (\RegT~combout\(1) & (\Mux2|Mux14~3_combout\)) ) ) ) # ( \Mux2|Mux14~0_combout\ & ( !\RegT~combout\(0) & ( (!\RegT~combout\(1)) # (\Mux2|Mux14~1_combout\) ) ) ) # ( !\Mux2|Mux14~0_combout\ & ( !\RegT~combout\(0) & ( 
-- (\RegT~combout\(1) & \Mux2|Mux14~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegT~combout\(1),
	datab => \Mux2|ALT_INV_Mux14~3_combout\,
	datac => \Mux2|ALT_INV_Mux14~1_combout\,
	datad => \Mux2|ALT_INV_Mux14~2_combout\,
	datae => \Mux2|ALT_INV_Mux14~0_combout\,
	dataf => \ALT_INV_RegT~combout\(0),
	combout => \Mux2|Mux14~4_combout\);

-- Location: LCFF_X14_Y16_N21
\RegK11|output[2]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(2),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegK11|output\(2));

-- Location: LCCOMB_X14_Y16_N20
\Mux2|Mux13~3\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux13~3_combout\ = ( \RegK11|output\(2) & ( \RegO15|output\(2) & ( ((!\RegT~combout\(2) & ((\RegC3|output\(2)))) # (\RegT~combout\(2) & (\RegG7|output\(2)))) # (\RegT~combout\(3)) ) ) ) # ( !\RegK11|output\(2) & ( \RegO15|output\(2) & ( 
-- (!\RegT~combout\(2) & (((!\RegT~combout\(3) & \RegC3|output\(2))))) # (\RegT~combout\(2) & (((\RegT~combout\(3))) # (\RegG7|output\(2)))) ) ) ) # ( \RegK11|output\(2) & ( !\RegO15|output\(2) & ( (!\RegT~combout\(2) & (((\RegC3|output\(2)) # 
-- (\RegT~combout\(3))))) # (\RegT~combout\(2) & (\RegG7|output\(2) & (!\RegT~combout\(3)))) ) ) ) # ( !\RegK11|output\(2) & ( !\RegO15|output\(2) & ( (!\RegT~combout\(3) & ((!\RegT~combout\(2) & ((\RegC3|output\(2)))) # (\RegT~combout\(2) & 
-- (\RegG7|output\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000110101011101000010101101101010001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegT~combout\(2),
	datab => \RegG7|ALT_INV_output\(2),
	datac => \ALT_INV_RegT~combout\(3),
	datad => \RegC3|ALT_INV_output\(2),
	datae => \RegK11|ALT_INV_output\(2),
	dataf => \RegO15|ALT_INV_output\(2),
	combout => \Mux2|Mux13~3_combout\);

-- Location: LCFF_X6_Y6_N21
\RegE5|output[2]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(2),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegE5|output\(2));

-- Location: LCCOMB_X6_Y6_N4
\Mux2|Mux13~2\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux13~2_combout\ = ( \RegI9|output\(2) & ( \RegE5|output\(2) & ( (!\RegT~combout\(3) & (((\RegT~combout\(2))) # (\RegA1|output\(2)))) # (\RegT~combout\(3) & (((!\RegT~combout\(2)) # (\RegM13|output\(2))))) ) ) ) # ( !\RegI9|output\(2) & ( 
-- \RegE5|output\(2) & ( (!\RegT~combout\(3) & (((\RegT~combout\(2))) # (\RegA1|output\(2)))) # (\RegT~combout\(3) & (((\RegT~combout\(2) & \RegM13|output\(2))))) ) ) ) # ( \RegI9|output\(2) & ( !\RegE5|output\(2) & ( (!\RegT~combout\(3) & (\RegA1|output\(2) 
-- & (!\RegT~combout\(2)))) # (\RegT~combout\(3) & (((!\RegT~combout\(2)) # (\RegM13|output\(2))))) ) ) ) # ( !\RegI9|output\(2) & ( !\RegE5|output\(2) & ( (!\RegT~combout\(3) & (\RegA1|output\(2) & (!\RegT~combout\(2)))) # (\RegT~combout\(3) & 
-- (((\RegT~combout\(2) & \RegM13|output\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000011011100000111001101001100010011110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegA1|ALT_INV_output\(2),
	datab => \ALT_INV_RegT~combout\(3),
	datac => \ALT_INV_RegT~combout\(2),
	datad => \RegM13|ALT_INV_output\(2),
	datae => \RegI9|ALT_INV_output\(2),
	dataf => \RegE5|ALT_INV_output\(2),
	combout => \Mux2|Mux13~2_combout\);

-- Location: LCCOMB_X15_Y20_N22
\Mux2|Mux13~1\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux13~1_combout\ = ( \RegJ10|output\(2) & ( \RegB2|output\(2) & ( (!\RegT~combout\(2)) # ((!\RegT~combout\(3) & (\RegF6|output\(2))) # (\RegT~combout\(3) & ((\RegN14|output\(2))))) ) ) ) # ( !\RegJ10|output\(2) & ( \RegB2|output\(2) & ( 
-- (!\RegT~combout\(3) & (((!\RegT~combout\(2))) # (\RegF6|output\(2)))) # (\RegT~combout\(3) & (((\RegN14|output\(2) & \RegT~combout\(2))))) ) ) ) # ( \RegJ10|output\(2) & ( !\RegB2|output\(2) & ( (!\RegT~combout\(3) & (\RegF6|output\(2) & 
-- ((\RegT~combout\(2))))) # (\RegT~combout\(3) & (((!\RegT~combout\(2)) # (\RegN14|output\(2))))) ) ) ) # ( !\RegJ10|output\(2) & ( !\RegB2|output\(2) & ( (\RegT~combout\(2) & ((!\RegT~combout\(3) & (\RegF6|output\(2))) # (\RegT~combout\(3) & 
-- ((\RegN14|output\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111001100110100011111001100010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegF6|ALT_INV_output\(2),
	datab => \ALT_INV_RegT~combout\(3),
	datac => \RegN14|ALT_INV_output\(2),
	datad => \ALT_INV_RegT~combout\(2),
	datae => \RegJ10|ALT_INV_output\(2),
	dataf => \RegB2|ALT_INV_output\(2),
	combout => \Mux2|Mux13~1_combout\);

-- Location: LCCOMB_X3_Y24_N4
\Mux2|Mux13~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux13~0_combout\ = ( \RegD4|output\(2) & ( \RegT~combout\(1) & ( (!\RegT~combout\(2) & (\RegH8|output\(2))) # (\RegT~combout\(2) & (((!\RegT~combout\(3)) # (\RegL12|output\(2))))) ) ) ) # ( !\RegD4|output\(2) & ( \RegT~combout\(1) & ( 
-- (!\RegT~combout\(2) & (\RegH8|output\(2))) # (\RegT~combout\(2) & (((\RegL12|output\(2) & \RegT~combout\(3))))) ) ) ) # ( \RegD4|output\(2) & ( !\RegT~combout\(1) & ( (!\RegT~combout\(3) & (((\RegT~combout\(2))))) # (\RegT~combout\(3) & 
-- ((!\RegT~combout\(2) & (\RegH8|output\(2))) # (\RegT~combout\(2) & ((\RegL12|output\(2)))))) ) ) ) # ( !\RegD4|output\(2) & ( !\RegT~combout\(1) & ( (\RegT~combout\(3) & ((!\RegT~combout\(2) & (\RegH8|output\(2))) # (\RegT~combout\(2) & 
-- ((\RegL12|output\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011000001011111001101010101000000110101010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegH8|ALT_INV_output\(2),
	datab => \RegL12|ALT_INV_output\(2),
	datac => \ALT_INV_RegT~combout\(3),
	datad => \ALT_INV_RegT~combout\(2),
	datae => \RegD4|ALT_INV_output\(2),
	dataf => \ALT_INV_RegT~combout\(1),
	combout => \Mux2|Mux13~0_combout\);

-- Location: LCCOMB_X15_Y20_N12
\Mux2|Mux13~4\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux13~4_combout\ = ( \Mux2|Mux13~0_combout\ & ( \RegT~combout\(1) & ( (!\RegT~combout\(0) & ((\Mux2|Mux13~1_combout\))) # (\RegT~combout\(0) & (\Mux2|Mux13~3_combout\)) ) ) ) # ( !\Mux2|Mux13~0_combout\ & ( \RegT~combout\(1) & ( (!\RegT~combout\(0) 
-- & ((\Mux2|Mux13~1_combout\))) # (\RegT~combout\(0) & (\Mux2|Mux13~3_combout\)) ) ) ) # ( \Mux2|Mux13~0_combout\ & ( !\RegT~combout\(1) & ( (!\RegT~combout\(0)) # (\Mux2|Mux13~2_combout\) ) ) ) # ( !\Mux2|Mux13~0_combout\ & ( !\RegT~combout\(1) & ( 
-- (\Mux2|Mux13~2_combout\ & \RegT~combout\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|ALT_INV_Mux13~3_combout\,
	datab => \Mux2|ALT_INV_Mux13~2_combout\,
	datac => \Mux2|ALT_INV_Mux13~1_combout\,
	datad => \ALT_INV_RegT~combout\(0),
	datae => \Mux2|ALT_INV_Mux13~0_combout\,
	dataf => \ALT_INV_RegT~combout\(1),
	combout => \Mux2|Mux13~4_combout\);

-- Location: LCFF_X6_Y6_N13
\RegI9|output[3]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(3),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegI9|output\(3));

-- Location: LCCOMB_X6_Y6_N12
\Mux2|Mux12~2\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux12~2_combout\ = ( \RegI9|output\(3) & ( \RegT~combout\(3) & ( (!\RegT~combout\(2)) # (\RegM13|output\(3)) ) ) ) # ( !\RegI9|output\(3) & ( \RegT~combout\(3) & ( (\RegM13|output\(3) & \RegT~combout\(2)) ) ) ) # ( \RegI9|output\(3) & ( 
-- !\RegT~combout\(3) & ( (!\RegT~combout\(2) & ((\RegA1|output\(3)))) # (\RegT~combout\(2) & (\RegE5|output\(3))) ) ) ) # ( !\RegI9|output\(3) & ( !\RegT~combout\(3) & ( (!\RegT~combout\(2) & ((\RegA1|output\(3)))) # (\RegT~combout\(2) & 
-- (\RegE5|output\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegM13|ALT_INV_output\(3),
	datab => \RegE5|ALT_INV_output\(3),
	datac => \ALT_INV_RegT~combout\(2),
	datad => \RegA1|ALT_INV_output\(3),
	datae => \RegI9|ALT_INV_output\(3),
	dataf => \ALT_INV_RegT~combout\(3),
	combout => \Mux2|Mux12~2_combout\);

-- Location: LCCOMB_X11_Y16_N16
\Mux2|Mux12~1\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux12~1_combout\ = ( \RegJ10|output\(3) & ( \RegT~combout\(2) & ( (!\RegT~combout\(3) & ((\RegF6|output\(3)))) # (\RegT~combout\(3) & (\RegN14|output\(3))) ) ) ) # ( !\RegJ10|output\(3) & ( \RegT~combout\(2) & ( (!\RegT~combout\(3) & 
-- ((\RegF6|output\(3)))) # (\RegT~combout\(3) & (\RegN14|output\(3))) ) ) ) # ( \RegJ10|output\(3) & ( !\RegT~combout\(2) & ( (\RegT~combout\(3)) # (\RegB2|output\(3)) ) ) ) # ( !\RegJ10|output\(3) & ( !\RegT~combout\(2) & ( (\RegB2|output\(3) & 
-- !\RegT~combout\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegN14|ALT_INV_output\(3),
	datab => \RegB2|ALT_INV_output\(3),
	datac => \ALT_INV_RegT~combout\(3),
	datad => \RegF6|ALT_INV_output\(3),
	datae => \RegJ10|ALT_INV_output\(3),
	dataf => \ALT_INV_RegT~combout\(2),
	combout => \Mux2|Mux12~1_combout\);

-- Location: LCFF_X11_Y16_N21
\RegG7|output[3]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(3),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegG7|output\(3));

-- Location: LCCOMB_X14_Y16_N14
\Mux2|Mux12~3\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux12~3_combout\ = ( \RegK11|output\(3) & ( \RegG7|output\(3) & ( (!\RegT~combout\(3) & (((\RegT~combout\(2))) # (\RegC3|output\(3)))) # (\RegT~combout\(3) & (((!\RegT~combout\(2)) # (\RegO15|output\(3))))) ) ) ) # ( !\RegK11|output\(3) & ( 
-- \RegG7|output\(3) & ( (!\RegT~combout\(3) & (((\RegT~combout\(2))) # (\RegC3|output\(3)))) # (\RegT~combout\(3) & (((\RegO15|output\(3) & \RegT~combout\(2))))) ) ) ) # ( \RegK11|output\(3) & ( !\RegG7|output\(3) & ( (!\RegT~combout\(3) & 
-- (\RegC3|output\(3) & ((!\RegT~combout\(2))))) # (\RegT~combout\(3) & (((!\RegT~combout\(2)) # (\RegO15|output\(3))))) ) ) ) # ( !\RegK11|output\(3) & ( !\RegG7|output\(3) & ( (!\RegT~combout\(3) & (\RegC3|output\(3) & ((!\RegT~combout\(2))))) # 
-- (\RegT~combout\(3) & (((\RegO15|output\(3) & \RegT~combout\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000101011101110000010100100010101011110111011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegT~combout\(3),
	datab => \RegC3|ALT_INV_output\(3),
	datac => \RegO15|ALT_INV_output\(3),
	datad => \ALT_INV_RegT~combout\(2),
	datae => \RegK11|ALT_INV_output\(3),
	dataf => \RegG7|ALT_INV_output\(3),
	combout => \Mux2|Mux12~3_combout\);

-- Location: LCCOMB_X1_Y2_N4
\Mux2|Mux12~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux12~0_combout\ = ( \RegD4|output\(3) & ( \RegT~combout\(1) & ( (!\RegT~combout\(2) & (((\RegH8|output\(3))))) # (\RegT~combout\(2) & ((!\RegT~combout\(3)) # ((\RegL12|output\(3))))) ) ) ) # ( !\RegD4|output\(3) & ( \RegT~combout\(1) & ( 
-- (!\RegT~combout\(2) & (((\RegH8|output\(3))))) # (\RegT~combout\(2) & (\RegT~combout\(3) & (\RegL12|output\(3)))) ) ) ) # ( \RegD4|output\(3) & ( !\RegT~combout\(1) & ( (!\RegT~combout\(2) & (\RegT~combout\(3) & ((\RegH8|output\(3))))) # 
-- (\RegT~combout\(2) & ((!\RegT~combout\(3)) # ((\RegL12|output\(3))))) ) ) ) # ( !\RegD4|output\(3) & ( !\RegT~combout\(1) & ( (\RegT~combout\(3) & ((!\RegT~combout\(2) & ((\RegH8|output\(3)))) # (\RegT~combout\(2) & (\RegL12|output\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011100000001101010110100010111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegT~combout\(2),
	datab => \ALT_INV_RegT~combout\(3),
	datac => \RegL12|ALT_INV_output\(3),
	datad => \RegH8|ALT_INV_output\(3),
	datae => \RegD4|ALT_INV_output\(3),
	dataf => \ALT_INV_RegT~combout\(1),
	combout => \Mux2|Mux12~0_combout\);

-- Location: LCCOMB_X1_Y2_N14
\Mux2|Mux12~4\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux12~4_combout\ = ( \Mux2|Mux12~3_combout\ & ( \Mux2|Mux12~0_combout\ & ( (!\RegT~combout\(1) & (((!\RegT~combout\(0))) # (\Mux2|Mux12~2_combout\))) # (\RegT~combout\(1) & (((\RegT~combout\(0)) # (\Mux2|Mux12~1_combout\)))) ) ) ) # ( 
-- !\Mux2|Mux12~3_combout\ & ( \Mux2|Mux12~0_combout\ & ( (!\RegT~combout\(1) & (((!\RegT~combout\(0))) # (\Mux2|Mux12~2_combout\))) # (\RegT~combout\(1) & (((\Mux2|Mux12~1_combout\ & !\RegT~combout\(0))))) ) ) ) # ( \Mux2|Mux12~3_combout\ & ( 
-- !\Mux2|Mux12~0_combout\ & ( (!\RegT~combout\(1) & (\Mux2|Mux12~2_combout\ & ((\RegT~combout\(0))))) # (\RegT~combout\(1) & (((\RegT~combout\(0)) # (\Mux2|Mux12~1_combout\)))) ) ) ) # ( !\Mux2|Mux12~3_combout\ & ( !\Mux2|Mux12~0_combout\ & ( 
-- (!\RegT~combout\(1) & (\Mux2|Mux12~2_combout\ & ((\RegT~combout\(0))))) # (\RegT~combout\(1) & (((\Mux2|Mux12~1_combout\ & !\RegT~combout\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100010000001010111011110101111001000101010111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegT~combout\(1),
	datab => \Mux2|ALT_INV_Mux12~2_combout\,
	datac => \Mux2|ALT_INV_Mux12~1_combout\,
	datad => \ALT_INV_RegT~combout\(0),
	datae => \Mux2|ALT_INV_Mux12~3_combout\,
	dataf => \Mux2|ALT_INV_Mux12~0_combout\,
	combout => \Mux2|Mux12~4_combout\);

-- Location: LCFF_X14_Y16_N25
\RegO15|output[4]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(4),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegO15|output\(4));

-- Location: LCCOMB_X19_Y17_N12
\Mux2|Mux11~3\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux11~3_combout\ = ( \RegK11|output\(4) & ( \RegO15|output\(4) & ( ((!\RegT~combout\(2) & (\RegC3|output\(4))) # (\RegT~combout\(2) & ((\RegG7|output\(4))))) # (\RegT~combout\(3)) ) ) ) # ( !\RegK11|output\(4) & ( \RegO15|output\(4) & ( 
-- (!\RegT~combout\(3) & ((!\RegT~combout\(2) & (\RegC3|output\(4))) # (\RegT~combout\(2) & ((\RegG7|output\(4)))))) # (\RegT~combout\(3) & (((\RegT~combout\(2))))) ) ) ) # ( \RegK11|output\(4) & ( !\RegO15|output\(4) & ( (!\RegT~combout\(3) & 
-- ((!\RegT~combout\(2) & (\RegC3|output\(4))) # (\RegT~combout\(2) & ((\RegG7|output\(4)))))) # (\RegT~combout\(3) & (((!\RegT~combout\(2))))) ) ) ) # ( !\RegK11|output\(4) & ( !\RegO15|output\(4) & ( (!\RegT~combout\(3) & ((!\RegT~combout\(2) & 
-- (\RegC3|output\(4))) # (\RegT~combout\(2) & ((\RegG7|output\(4)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010011101110000101000100010010111110111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegT~combout\(3),
	datab => \RegC3|ALT_INV_output\(4),
	datac => \RegG7|ALT_INV_output\(4),
	datad => \ALT_INV_RegT~combout\(2),
	datae => \RegK11|ALT_INV_output\(4),
	dataf => \RegO15|ALT_INV_output\(4),
	combout => \Mux2|Mux11~3_combout\);

-- Location: LCCOMB_X1_Y2_N20
\Mux2|Mux11~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux11~0_combout\ = ( \RegD4|output\(4) & ( \RegT~combout\(1) & ( (!\RegT~combout\(2) & (((\RegH8|output\(4))))) # (\RegT~combout\(2) & ((!\RegT~combout\(3)) # ((\RegL12|output\(4))))) ) ) ) # ( !\RegD4|output\(4) & ( \RegT~combout\(1) & ( 
-- (!\RegT~combout\(2) & (((\RegH8|output\(4))))) # (\RegT~combout\(2) & (\RegT~combout\(3) & ((\RegL12|output\(4))))) ) ) ) # ( \RegD4|output\(4) & ( !\RegT~combout\(1) & ( (!\RegT~combout\(2) & (\RegT~combout\(3) & (\RegH8|output\(4)))) # 
-- (\RegT~combout\(2) & ((!\RegT~combout\(3)) # ((\RegL12|output\(4))))) ) ) ) # ( !\RegD4|output\(4) & ( !\RegT~combout\(1) & ( (\RegT~combout\(3) & ((!\RegT~combout\(2) & (\RegH8|output\(4))) # (\RegT~combout\(2) & ((\RegL12|output\(4)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011100001010000110110100111001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegT~combout\(2),
	datab => \ALT_INV_RegT~combout\(3),
	datac => \RegH8|ALT_INV_output\(4),
	datad => \RegL12|ALT_INV_output\(4),
	datae => \RegD4|ALT_INV_output\(4),
	dataf => \ALT_INV_RegT~combout\(1),
	combout => \Mux2|Mux11~0_combout\);

-- Location: LCFF_X11_Y16_N23
\RegJ10|output[4]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(4),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegJ10|output\(4));

-- Location: LCCOMB_X11_Y16_N22
\Mux2|Mux11~1\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux11~1_combout\ = ( \RegJ10|output\(4) & ( \RegT~combout\(2) & ( (!\RegT~combout\(3) & ((\RegF6|output\(4)))) # (\RegT~combout\(3) & (\RegN14|output\(4))) ) ) ) # ( !\RegJ10|output\(4) & ( \RegT~combout\(2) & ( (!\RegT~combout\(3) & 
-- ((\RegF6|output\(4)))) # (\RegT~combout\(3) & (\RegN14|output\(4))) ) ) ) # ( \RegJ10|output\(4) & ( !\RegT~combout\(2) & ( (\RegB2|output\(4)) # (\RegT~combout\(3)) ) ) ) # ( !\RegJ10|output\(4) & ( !\RegT~combout\(2) & ( (!\RegT~combout\(3) & 
-- \RegB2|output\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010010101011111111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegT~combout\(3),
	datab => \RegN14|ALT_INV_output\(4),
	datac => \RegF6|ALT_INV_output\(4),
	datad => \RegB2|ALT_INV_output\(4),
	datae => \RegJ10|ALT_INV_output\(4),
	dataf => \ALT_INV_RegT~combout\(2),
	combout => \Mux2|Mux11~1_combout\);

-- Location: LCFF_X14_Y10_N3
\RegI9|output[4]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(4),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegI9|output\(4));

-- Location: LCCOMB_X14_Y10_N2
\Mux2|Mux11~2\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux11~2_combout\ = ( \RegI9|output\(4) & ( \RegT~combout\(2) & ( (!\RegT~combout\(3) & (\RegE5|output\(4))) # (\RegT~combout\(3) & ((\RegM13|output\(4)))) ) ) ) # ( !\RegI9|output\(4) & ( \RegT~combout\(2) & ( (!\RegT~combout\(3) & 
-- (\RegE5|output\(4))) # (\RegT~combout\(3) & ((\RegM13|output\(4)))) ) ) ) # ( \RegI9|output\(4) & ( !\RegT~combout\(2) & ( (\RegA1|output\(4)) # (\RegT~combout\(3)) ) ) ) # ( !\RegI9|output\(4) & ( !\RegT~combout\(2) & ( (!\RegT~combout\(3) & 
-- \RegA1|output\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011101110111011100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegT~combout\(3),
	datab => \RegA1|ALT_INV_output\(4),
	datac => \RegE5|ALT_INV_output\(4),
	datad => \RegM13|ALT_INV_output\(4),
	datae => \RegI9|ALT_INV_output\(4),
	dataf => \ALT_INV_RegT~combout\(2),
	combout => \Mux2|Mux11~2_combout\);

-- Location: LCCOMB_X19_Y17_N28
\Mux2|Mux11~4\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux11~4_combout\ = ( \Mux2|Mux11~1_combout\ & ( \Mux2|Mux11~2_combout\ & ( (!\RegT~combout\(0) & (((\RegT~combout\(1)) # (\Mux2|Mux11~0_combout\)))) # (\RegT~combout\(0) & (((!\RegT~combout\(1))) # (\Mux2|Mux11~3_combout\))) ) ) ) # ( 
-- !\Mux2|Mux11~1_combout\ & ( \Mux2|Mux11~2_combout\ & ( (!\RegT~combout\(0) & (((\Mux2|Mux11~0_combout\ & !\RegT~combout\(1))))) # (\RegT~combout\(0) & (((!\RegT~combout\(1))) # (\Mux2|Mux11~3_combout\))) ) ) ) # ( \Mux2|Mux11~1_combout\ & ( 
-- !\Mux2|Mux11~2_combout\ & ( (!\RegT~combout\(0) & (((\RegT~combout\(1)) # (\Mux2|Mux11~0_combout\)))) # (\RegT~combout\(0) & (\Mux2|Mux11~3_combout\ & ((\RegT~combout\(1))))) ) ) ) # ( !\Mux2|Mux11~1_combout\ & ( !\Mux2|Mux11~2_combout\ & ( 
-- (!\RegT~combout\(0) & (((\Mux2|Mux11~0_combout\ & !\RegT~combout\(1))))) # (\RegT~combout\(0) & (\Mux2|Mux11~3_combout\ & ((\RegT~combout\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000010001000010101011101101011111000100010101111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegT~combout\(0),
	datab => \Mux2|ALT_INV_Mux11~3_combout\,
	datac => \Mux2|ALT_INV_Mux11~0_combout\,
	datad => \ALT_INV_RegT~combout\(1),
	datae => \Mux2|ALT_INV_Mux11~1_combout\,
	dataf => \Mux2|ALT_INV_Mux11~2_combout\,
	combout => \Mux2|Mux11~4_combout\);

-- Location: LCCOMB_X14_Y10_N24
\Mux2|Mux10~2\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux10~2_combout\ = ( \RegI9|output\(5) & ( \RegA1|output\(5) & ( (!\RegT~combout\(2)) # ((!\RegT~combout\(3) & ((\RegE5|output\(5)))) # (\RegT~combout\(3) & (\RegM13|output\(5)))) ) ) ) # ( !\RegI9|output\(5) & ( \RegA1|output\(5) & ( 
-- (!\RegT~combout\(3) & (((!\RegT~combout\(2)) # (\RegE5|output\(5))))) # (\RegT~combout\(3) & (\RegM13|output\(5) & ((\RegT~combout\(2))))) ) ) ) # ( \RegI9|output\(5) & ( !\RegA1|output\(5) & ( (!\RegT~combout\(3) & (((\RegE5|output\(5) & 
-- \RegT~combout\(2))))) # (\RegT~combout\(3) & (((!\RegT~combout\(2))) # (\RegM13|output\(5)))) ) ) ) # ( !\RegI9|output\(5) & ( !\RegA1|output\(5) & ( (\RegT~combout\(2) & ((!\RegT~combout\(3) & ((\RegE5|output\(5)))) # (\RegT~combout\(3) & 
-- (\RegM13|output\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101000011110011010111110000001101011111111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegM13|ALT_INV_output\(5),
	datab => \RegE5|ALT_INV_output\(5),
	datac => \ALT_INV_RegT~combout\(3),
	datad => \ALT_INV_RegT~combout\(2),
	datae => \RegI9|ALT_INV_output\(5),
	dataf => \RegA1|ALT_INV_output\(5),
	combout => \Mux2|Mux10~2_combout\);

-- Location: LCCOMB_X14_Y22_N20
\Mux2|Mux10~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux10~0_combout\ = ( \RegD4|output\(5) & ( \RegL12|output\(5) & ( ((\RegH8|output\(5) & ((\RegT~combout\(1)) # (\RegT~combout\(3))))) # (\RegT~combout\(2)) ) ) ) # ( !\RegD4|output\(5) & ( \RegL12|output\(5) & ( (!\RegT~combout\(2) & 
-- (\RegH8|output\(5) & ((\RegT~combout\(1)) # (\RegT~combout\(3))))) # (\RegT~combout\(2) & (\RegT~combout\(3))) ) ) ) # ( \RegD4|output\(5) & ( !\RegL12|output\(5) & ( (!\RegT~combout\(2) & (\RegH8|output\(5) & ((\RegT~combout\(1)) # (\RegT~combout\(3))))) 
-- # (\RegT~combout\(2) & (!\RegT~combout\(3))) ) ) ) # ( !\RegD4|output\(5) & ( !\RegL12|output\(5) & ( (\RegH8|output\(5) & (!\RegT~combout\(2) & ((\RegT~combout\(1)) # (\RegT~combout\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100000000000100111010101000010011010101010001001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegT~combout\(3),
	datab => \RegH8|ALT_INV_output\(5),
	datac => \ALT_INV_RegT~combout\(1),
	datad => \ALT_INV_RegT~combout\(2),
	datae => \RegD4|ALT_INV_output\(5),
	dataf => \RegL12|ALT_INV_output\(5),
	combout => \Mux2|Mux10~0_combout\);

-- Location: LCCOMB_X26_Y14_N4
\Mux2|Mux10~3\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux10~3_combout\ = ( \RegK11|output\(5) & ( \RegT~combout\(2) & ( (!\RegT~combout\(3) & (\RegG7|output\(5))) # (\RegT~combout\(3) & ((\RegO15|output\(5)))) ) ) ) # ( !\RegK11|output\(5) & ( \RegT~combout\(2) & ( (!\RegT~combout\(3) & 
-- (\RegG7|output\(5))) # (\RegT~combout\(3) & ((\RegO15|output\(5)))) ) ) ) # ( \RegK11|output\(5) & ( !\RegT~combout\(2) & ( (\RegC3|output\(5)) # (\RegT~combout\(3)) ) ) ) # ( !\RegK11|output\(5) & ( !\RegT~combout\(2) & ( (!\RegT~combout\(3) & 
-- \RegC3|output\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegG7|ALT_INV_output\(5),
	datab => \ALT_INV_RegT~combout\(3),
	datac => \RegC3|ALT_INV_output\(5),
	datad => \RegO15|ALT_INV_output\(5),
	datae => \RegK11|ALT_INV_output\(5),
	dataf => \ALT_INV_RegT~combout\(2),
	combout => \Mux2|Mux10~3_combout\);

-- Location: LCCOMB_X11_Y16_N28
\RegF6|output[5]~feeder\ : stratixii_lcell_comb
-- Equation(s):
-- \RegF6|output[5]~feeder_combout\ = ( \DataD~combout\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DataD~combout\(5),
	combout => \RegF6|output[5]~feeder_combout\);

-- Location: LCFF_X11_Y16_N29
\RegF6|output[5]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \RegF6|output[5]~feeder_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Decoder|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegF6|output\(5));

-- Location: LCCOMB_X11_Y16_N10
\Mux2|Mux10~1\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux10~1_combout\ = ( \RegJ10|output\(5) & ( \RegT~combout\(2) & ( (!\RegT~combout\(3) & ((\RegF6|output\(5)))) # (\RegT~combout\(3) & (\RegN14|output\(5))) ) ) ) # ( !\RegJ10|output\(5) & ( \RegT~combout\(2) & ( (!\RegT~combout\(3) & 
-- ((\RegF6|output\(5)))) # (\RegT~combout\(3) & (\RegN14|output\(5))) ) ) ) # ( \RegJ10|output\(5) & ( !\RegT~combout\(2) & ( (\RegB2|output\(5)) # (\RegT~combout\(3)) ) ) ) # ( !\RegJ10|output\(5) & ( !\RegT~combout\(2) & ( (!\RegT~combout\(3) & 
-- \RegB2|output\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010010101011111111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegT~combout\(3),
	datab => \RegN14|ALT_INV_output\(5),
	datac => \RegF6|ALT_INV_output\(5),
	datad => \RegB2|ALT_INV_output\(5),
	datae => \RegJ10|ALT_INV_output\(5),
	dataf => \ALT_INV_RegT~combout\(2),
	combout => \Mux2|Mux10~1_combout\);

-- Location: LCCOMB_X19_Y17_N20
\Mux2|Mux10~4\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux10~4_combout\ = ( \Mux2|Mux10~3_combout\ & ( \Mux2|Mux10~1_combout\ & ( ((!\RegT~combout\(0) & ((\Mux2|Mux10~0_combout\))) # (\RegT~combout\(0) & (\Mux2|Mux10~2_combout\))) # (\RegT~combout\(1)) ) ) ) # ( !\Mux2|Mux10~3_combout\ & ( 
-- \Mux2|Mux10~1_combout\ & ( (!\RegT~combout\(0) & (((\RegT~combout\(1)) # (\Mux2|Mux10~0_combout\)))) # (\RegT~combout\(0) & (\Mux2|Mux10~2_combout\ & ((!\RegT~combout\(1))))) ) ) ) # ( \Mux2|Mux10~3_combout\ & ( !\Mux2|Mux10~1_combout\ & ( 
-- (!\RegT~combout\(0) & (((\Mux2|Mux10~0_combout\ & !\RegT~combout\(1))))) # (\RegT~combout\(0) & (((\RegT~combout\(1))) # (\Mux2|Mux10~2_combout\))) ) ) ) # ( !\Mux2|Mux10~3_combout\ & ( !\Mux2|Mux10~1_combout\ & ( (!\RegT~combout\(1) & 
-- ((!\RegT~combout\(0) & ((\Mux2|Mux10~0_combout\))) # (\RegT~combout\(0) & (\Mux2|Mux10~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110110101010100011011101010100001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegT~combout\(0),
	datab => \Mux2|ALT_INV_Mux10~2_combout\,
	datac => \Mux2|ALT_INV_Mux10~0_combout\,
	datad => \ALT_INV_RegT~combout\(1),
	datae => \Mux2|ALT_INV_Mux10~3_combout\,
	dataf => \Mux2|ALT_INV_Mux10~1_combout\,
	combout => \Mux2|Mux10~4_combout\);

-- Location: LCCOMB_X22_Y8_N0
\Mux2|Mux9~1\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux9~1_combout\ = ( \RegJ10|output\(6) & ( \RegT~combout\(2) & ( (!\RegT~combout\(3) & ((\RegF6|output\(6)))) # (\RegT~combout\(3) & (\RegN14|output\(6))) ) ) ) # ( !\RegJ10|output\(6) & ( \RegT~combout\(2) & ( (!\RegT~combout\(3) & 
-- ((\RegF6|output\(6)))) # (\RegT~combout\(3) & (\RegN14|output\(6))) ) ) ) # ( \RegJ10|output\(6) & ( !\RegT~combout\(2) & ( (\RegT~combout\(3)) # (\RegB2|output\(6)) ) ) ) # ( !\RegJ10|output\(6) & ( !\RegT~combout\(2) & ( (\RegB2|output\(6) & 
-- !\RegT~combout\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011101110111011100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegB2|ALT_INV_output\(6),
	datab => \ALT_INV_RegT~combout\(3),
	datac => \RegN14|ALT_INV_output\(6),
	datad => \RegF6|ALT_INV_output\(6),
	datae => \RegJ10|ALT_INV_output\(6),
	dataf => \ALT_INV_RegT~combout\(2),
	combout => \Mux2|Mux9~1_combout\);

-- Location: LCFF_X14_Y10_N21
\RegI9|output[6]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(6),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegI9|output\(6));

-- Location: LCCOMB_X14_Y10_N20
\Mux2|Mux9~2\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux9~2_combout\ = ( \RegI9|output\(6) & ( \RegT~combout\(2) & ( (!\RegT~combout\(3) & ((\RegE5|output\(6)))) # (\RegT~combout\(3) & (\RegM13|output\(6))) ) ) ) # ( !\RegI9|output\(6) & ( \RegT~combout\(2) & ( (!\RegT~combout\(3) & 
-- ((\RegE5|output\(6)))) # (\RegT~combout\(3) & (\RegM13|output\(6))) ) ) ) # ( \RegI9|output\(6) & ( !\RegT~combout\(2) & ( (\RegA1|output\(6)) # (\RegT~combout\(3)) ) ) ) # ( !\RegI9|output\(6) & ( !\RegT~combout\(2) & ( (!\RegT~combout\(3) & 
-- \RegA1|output\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011101110111011100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegT~combout\(3),
	datab => \RegA1|ALT_INV_output\(6),
	datac => \RegM13|ALT_INV_output\(6),
	datad => \RegE5|ALT_INV_output\(6),
	datae => \RegI9|ALT_INV_output\(6),
	dataf => \ALT_INV_RegT~combout\(2),
	combout => \Mux2|Mux9~2_combout\);

-- Location: LCFF_X3_Y24_N31
\RegD4|output[6]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(6),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegD4|output\(6));

-- Location: LCCOMB_X3_Y24_N30
\Mux2|Mux9~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux9~0_combout\ = ( \RegD4|output\(6) & ( \RegT~combout\(1) & ( (!\RegT~combout\(2) & (((\RegH8|output\(6))))) # (\RegT~combout\(2) & (((!\RegT~combout\(3))) # (\RegL12|output\(6)))) ) ) ) # ( !\RegD4|output\(6) & ( \RegT~combout\(1) & ( 
-- (!\RegT~combout\(2) & (((\RegH8|output\(6))))) # (\RegT~combout\(2) & (\RegL12|output\(6) & (\RegT~combout\(3)))) ) ) ) # ( \RegD4|output\(6) & ( !\RegT~combout\(1) & ( (!\RegT~combout\(3) & (((\RegT~combout\(2))))) # (\RegT~combout\(3) & 
-- ((!\RegT~combout\(2) & ((\RegH8|output\(6)))) # (\RegT~combout\(2) & (\RegL12|output\(6))))) ) ) ) # ( !\RegD4|output\(6) & ( !\RegT~combout\(1) & ( (\RegT~combout\(3) & ((!\RegT~combout\(2) & ((\RegH8|output\(6)))) # (\RegT~combout\(2) & 
-- (\RegL12|output\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001000011010011110100000001111100010000110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegL12|ALT_INV_output\(6),
	datab => \ALT_INV_RegT~combout\(3),
	datac => \ALT_INV_RegT~combout\(2),
	datad => \RegH8|ALT_INV_output\(6),
	datae => \RegD4|ALT_INV_output\(6),
	dataf => \ALT_INV_RegT~combout\(1),
	combout => \Mux2|Mux9~0_combout\);

-- Location: LCCOMB_X26_Y14_N14
\Mux2|Mux9~3\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux9~3_combout\ = ( \RegK11|output\(6) & ( \RegT~combout\(2) & ( (!\RegT~combout\(3) & ((\RegG7|output\(6)))) # (\RegT~combout\(3) & (\RegO15|output\(6))) ) ) ) # ( !\RegK11|output\(6) & ( \RegT~combout\(2) & ( (!\RegT~combout\(3) & 
-- ((\RegG7|output\(6)))) # (\RegT~combout\(3) & (\RegO15|output\(6))) ) ) ) # ( \RegK11|output\(6) & ( !\RegT~combout\(2) & ( (\RegC3|output\(6)) # (\RegT~combout\(3)) ) ) ) # ( !\RegK11|output\(6) & ( !\RegT~combout\(2) & ( (!\RegT~combout\(3) & 
-- \RegC3|output\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100001100111111111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegO15|ALT_INV_output\(6),
	datab => \ALT_INV_RegT~combout\(3),
	datac => \RegG7|ALT_INV_output\(6),
	datad => \RegC3|ALT_INV_output\(6),
	datae => \RegK11|ALT_INV_output\(6),
	dataf => \ALT_INV_RegT~combout\(2),
	combout => \Mux2|Mux9~3_combout\);

-- Location: LCCOMB_X22_Y8_N10
\Mux2|Mux9~4\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux9~4_combout\ = ( \RegT~combout\(0) & ( \Mux2|Mux9~3_combout\ & ( (\RegT~combout\(1)) # (\Mux2|Mux9~2_combout\) ) ) ) # ( !\RegT~combout\(0) & ( \Mux2|Mux9~3_combout\ & ( (!\RegT~combout\(1) & ((\Mux2|Mux9~0_combout\))) # (\RegT~combout\(1) & 
-- (\Mux2|Mux9~1_combout\)) ) ) ) # ( \RegT~combout\(0) & ( !\Mux2|Mux9~3_combout\ & ( (\Mux2|Mux9~2_combout\ & !\RegT~combout\(1)) ) ) ) # ( !\RegT~combout\(0) & ( !\Mux2|Mux9~3_combout\ & ( (!\RegT~combout\(1) & ((\Mux2|Mux9~0_combout\))) # 
-- (\RegT~combout\(1) & (\Mux2|Mux9~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101001100000011000000000101111101010011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|ALT_INV_Mux9~1_combout\,
	datab => \Mux2|ALT_INV_Mux9~2_combout\,
	datac => \ALT_INV_RegT~combout\(1),
	datad => \Mux2|ALT_INV_Mux9~0_combout\,
	datae => \ALT_INV_RegT~combout\(0),
	dataf => \Mux2|ALT_INV_Mux9~3_combout\,
	combout => \Mux2|Mux9~4_combout\);

-- Location: LCCOMB_X26_Y14_N22
\Mux2|Mux8~3\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux8~3_combout\ = ( \RegK11|output\(7) & ( \RegT~combout\(2) & ( (!\RegT~combout\(3) & ((\RegG7|output\(7)))) # (\RegT~combout\(3) & (\RegO15|output\(7))) ) ) ) # ( !\RegK11|output\(7) & ( \RegT~combout\(2) & ( (!\RegT~combout\(3) & 
-- ((\RegG7|output\(7)))) # (\RegT~combout\(3) & (\RegO15|output\(7))) ) ) ) # ( \RegK11|output\(7) & ( !\RegT~combout\(2) & ( (\RegT~combout\(3)) # (\RegC3|output\(7)) ) ) ) # ( !\RegK11|output\(7) & ( !\RegT~combout\(2) & ( (\RegC3|output\(7) & 
-- !\RegT~combout\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011101110111011100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegC3|ALT_INV_output\(7),
	datab => \ALT_INV_RegT~combout\(3),
	datac => \RegO15|ALT_INV_output\(7),
	datad => \RegG7|ALT_INV_output\(7),
	datae => \RegK11|ALT_INV_output\(7),
	dataf => \ALT_INV_RegT~combout\(2),
	combout => \Mux2|Mux8~3_combout\);

-- Location: LCCOMB_X3_Y24_N16
\Mux2|Mux8~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux8~0_combout\ = ( \RegD4|output\(7) & ( \RegT~combout\(1) & ( (!\RegT~combout\(2) & (((\RegH8|output\(7))))) # (\RegT~combout\(2) & (((!\RegT~combout\(3))) # (\RegL12|output\(7)))) ) ) ) # ( !\RegD4|output\(7) & ( \RegT~combout\(1) & ( 
-- (!\RegT~combout\(2) & (((\RegH8|output\(7))))) # (\RegT~combout\(2) & (\RegL12|output\(7) & (\RegT~combout\(3)))) ) ) ) # ( \RegD4|output\(7) & ( !\RegT~combout\(1) & ( (!\RegT~combout\(3) & (((\RegT~combout\(2))))) # (\RegT~combout\(3) & 
-- ((!\RegT~combout\(2) & ((\RegH8|output\(7)))) # (\RegT~combout\(2) & (\RegL12|output\(7))))) ) ) ) # ( !\RegD4|output\(7) & ( !\RegT~combout\(1) & ( (\RegT~combout\(3) & ((!\RegT~combout\(2) & ((\RegH8|output\(7)))) # (\RegT~combout\(2) & 
-- (\RegL12|output\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001000000111101110100001111000100010000111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegL12|ALT_INV_output\(7),
	datab => \ALT_INV_RegT~combout\(3),
	datac => \RegH8|ALT_INV_output\(7),
	datad => \ALT_INV_RegT~combout\(2),
	datae => \RegD4|ALT_INV_output\(7),
	dataf => \ALT_INV_RegT~combout\(1),
	combout => \Mux2|Mux8~0_combout\);

-- Location: LCCOMB_X14_Y10_N16
\Mux2|Mux8~2\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux8~2_combout\ = ( \RegI9|output\(7) & ( \RegT~combout\(2) & ( (!\RegT~combout\(3) & (\RegE5|output\(7))) # (\RegT~combout\(3) & ((\RegM13|output\(7)))) ) ) ) # ( !\RegI9|output\(7) & ( \RegT~combout\(2) & ( (!\RegT~combout\(3) & 
-- (\RegE5|output\(7))) # (\RegT~combout\(3) & ((\RegM13|output\(7)))) ) ) ) # ( \RegI9|output\(7) & ( !\RegT~combout\(2) & ( (\RegA1|output\(7)) # (\RegT~combout\(3)) ) ) ) # ( !\RegI9|output\(7) & ( !\RegT~combout\(2) & ( (!\RegT~combout\(3) & 
-- \RegA1|output\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegE5|ALT_INV_output\(7),
	datab => \RegM13|ALT_INV_output\(7),
	datac => \ALT_INV_RegT~combout\(3),
	datad => \RegA1|ALT_INV_output\(7),
	datae => \RegI9|ALT_INV_output\(7),
	dataf => \ALT_INV_RegT~combout\(2),
	combout => \Mux2|Mux8~2_combout\);

-- Location: LCCOMB_X22_Y8_N4
\Mux2|Mux8~1\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux8~1_combout\ = ( \RegJ10|output\(7) & ( \RegT~combout\(2) & ( (!\RegT~combout\(3) & (\RegF6|output\(7))) # (\RegT~combout\(3) & ((\RegN14|output\(7)))) ) ) ) # ( !\RegJ10|output\(7) & ( \RegT~combout\(2) & ( (!\RegT~combout\(3) & 
-- (\RegF6|output\(7))) # (\RegT~combout\(3) & ((\RegN14|output\(7)))) ) ) ) # ( \RegJ10|output\(7) & ( !\RegT~combout\(2) & ( (\RegT~combout\(3)) # (\RegB2|output\(7)) ) ) ) # ( !\RegJ10|output\(7) & ( !\RegT~combout\(2) & ( (\RegB2|output\(7) & 
-- !\RegT~combout\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011101110111011100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegB2|ALT_INV_output\(7),
	datab => \ALT_INV_RegT~combout\(3),
	datac => \RegF6|ALT_INV_output\(7),
	datad => \RegN14|ALT_INV_output\(7),
	datae => \RegJ10|ALT_INV_output\(7),
	dataf => \ALT_INV_RegT~combout\(2),
	combout => \Mux2|Mux8~1_combout\);

-- Location: LCCOMB_X22_Y8_N28
\Mux2|Mux8~4\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux8~4_combout\ = ( \Mux2|Mux8~1_combout\ & ( \RegT~combout\(1) & ( (!\RegT~combout\(0)) # (\Mux2|Mux8~3_combout\) ) ) ) # ( !\Mux2|Mux8~1_combout\ & ( \RegT~combout\(1) & ( (\Mux2|Mux8~3_combout\ & \RegT~combout\(0)) ) ) ) # ( \Mux2|Mux8~1_combout\ 
-- & ( !\RegT~combout\(1) & ( (!\RegT~combout\(0) & (\Mux2|Mux8~0_combout\)) # (\RegT~combout\(0) & ((\Mux2|Mux8~2_combout\))) ) ) ) # ( !\Mux2|Mux8~1_combout\ & ( !\RegT~combout\(1) & ( (!\RegT~combout\(0) & (\Mux2|Mux8~0_combout\)) # (\RegT~combout\(0) & 
-- ((\Mux2|Mux8~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|ALT_INV_Mux8~3_combout\,
	datab => \Mux2|ALT_INV_Mux8~0_combout\,
	datac => \Mux2|ALT_INV_Mux8~2_combout\,
	datad => \ALT_INV_RegT~combout\(0),
	datae => \Mux2|ALT_INV_Mux8~1_combout\,
	dataf => \ALT_INV_RegT~combout\(1),
	combout => \Mux2|Mux8~4_combout\);

-- Location: LCFF_X34_Y15_N7
\RegK11|output[8]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(8),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegK11|output\(8));

-- Location: LCCOMB_X34_Y15_N6
\Mux2|Mux7~3\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux7~3_combout\ = ( \RegK11|output\(8) & ( \RegT~combout\(3) & ( (!\RegT~combout\(2)) # (\RegO15|output\(8)) ) ) ) # ( !\RegK11|output\(8) & ( \RegT~combout\(3) & ( (\RegT~combout\(2) & \RegO15|output\(8)) ) ) ) # ( \RegK11|output\(8) & ( 
-- !\RegT~combout\(3) & ( (!\RegT~combout\(2) & ((\RegC3|output\(8)))) # (\RegT~combout\(2) & (\RegG7|output\(8))) ) ) ) # ( !\RegK11|output\(8) & ( !\RegT~combout\(3) & ( (!\RegT~combout\(2) & ((\RegC3|output\(8)))) # (\RegT~combout\(2) & 
-- (\RegG7|output\(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegG7|ALT_INV_output\(8),
	datab => \ALT_INV_RegT~combout\(2),
	datac => \RegO15|ALT_INV_output\(8),
	datad => \RegC3|ALT_INV_output\(8),
	datae => \RegK11|ALT_INV_output\(8),
	dataf => \ALT_INV_RegT~combout\(3),
	combout => \Mux2|Mux7~3_combout\);

-- Location: LCFF_X9_Y18_N27
\RegD4|output[8]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(8),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegD4|output\(8));

-- Location: LCCOMB_X9_Y18_N26
\Mux2|Mux7~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux7~0_combout\ = ( \RegD4|output\(8) & ( \RegH8|output\(8) & ( (!\RegT~combout\(3) & (((\RegT~combout\(1))) # (\RegT~combout\(2)))) # (\RegT~combout\(3) & ((!\RegT~combout\(2)) # ((\RegL12|output\(8))))) ) ) ) # ( !\RegD4|output\(8) & ( 
-- \RegH8|output\(8) & ( (!\RegT~combout\(3) & (!\RegT~combout\(2) & (\RegT~combout\(1)))) # (\RegT~combout\(3) & ((!\RegT~combout\(2)) # ((\RegL12|output\(8))))) ) ) ) # ( \RegD4|output\(8) & ( !\RegH8|output\(8) & ( (\RegT~combout\(2) & 
-- ((!\RegT~combout\(3)) # (\RegL12|output\(8)))) ) ) ) # ( !\RegD4|output\(8) & ( !\RegH8|output\(8) & ( (\RegT~combout\(3) & (\RegT~combout\(2) & \RegL12|output\(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001001000100011001101001100010111010110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegT~combout\(3),
	datab => \ALT_INV_RegT~combout\(2),
	datac => \ALT_INV_RegT~combout\(1),
	datad => \RegL12|ALT_INV_output\(8),
	datae => \RegD4|ALT_INV_output\(8),
	dataf => \RegH8|ALT_INV_output\(8),
	combout => \Mux2|Mux7~0_combout\);

-- Location: LCCOMB_X11_Y16_N2
\Mux2|Mux7~1\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux7~1_combout\ = ( \RegJ10|output\(8) & ( \RegN14|output\(8) & ( ((!\RegT~combout\(2) & (\RegB2|output\(8))) # (\RegT~combout\(2) & ((\RegF6|output\(8))))) # (\RegT~combout\(3)) ) ) ) # ( !\RegJ10|output\(8) & ( \RegN14|output\(8) & ( 
-- (!\RegT~combout\(2) & (\RegB2|output\(8) & ((!\RegT~combout\(3))))) # (\RegT~combout\(2) & (((\RegT~combout\(3)) # (\RegF6|output\(8))))) ) ) ) # ( \RegJ10|output\(8) & ( !\RegN14|output\(8) & ( (!\RegT~combout\(2) & (((\RegT~combout\(3))) # 
-- (\RegB2|output\(8)))) # (\RegT~combout\(2) & (((\RegF6|output\(8) & !\RegT~combout\(3))))) ) ) ) # ( !\RegJ10|output\(8) & ( !\RegN14|output\(8) & ( (!\RegT~combout\(3) & ((!\RegT~combout\(2) & (\RegB2|output\(8))) # (\RegT~combout\(2) & 
-- ((\RegF6|output\(8)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001111100110001000111001100110100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegB2|ALT_INV_output\(8),
	datab => \ALT_INV_RegT~combout\(2),
	datac => \RegF6|ALT_INV_output\(8),
	datad => \ALT_INV_RegT~combout\(3),
	datae => \RegJ10|ALT_INV_output\(8),
	dataf => \RegN14|ALT_INV_output\(8),
	combout => \Mux2|Mux7~1_combout\);

-- Location: LCCOMB_X17_Y19_N16
\Mux2|Mux7~2\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux7~2_combout\ = ( \RegI9|output\(8) & ( \RegT~combout\(3) & ( (!\RegT~combout\(2)) # (\RegM13|output\(8)) ) ) ) # ( !\RegI9|output\(8) & ( \RegT~combout\(3) & ( (\RegM13|output\(8) & \RegT~combout\(2)) ) ) ) # ( \RegI9|output\(8) & ( 
-- !\RegT~combout\(3) & ( (!\RegT~combout\(2) & (\RegA1|output\(8))) # (\RegT~combout\(2) & ((\RegE5|output\(8)))) ) ) ) # ( !\RegI9|output\(8) & ( !\RegT~combout\(3) & ( (!\RegT~combout\(2) & (\RegA1|output\(8))) # (\RegT~combout\(2) & 
-- ((\RegE5|output\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegA1|ALT_INV_output\(8),
	datab => \RegM13|ALT_INV_output\(8),
	datac => \ALT_INV_RegT~combout\(2),
	datad => \RegE5|ALT_INV_output\(8),
	datae => \RegI9|ALT_INV_output\(8),
	dataf => \ALT_INV_RegT~combout\(3),
	combout => \Mux2|Mux7~2_combout\);

-- Location: LCCOMB_X22_Y8_N20
\Mux2|Mux7~4\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux7~4_combout\ = ( \Mux2|Mux7~2_combout\ & ( \RegT~combout\(1) & ( (!\RegT~combout\(0) & ((\Mux2|Mux7~1_combout\))) # (\RegT~combout\(0) & (\Mux2|Mux7~3_combout\)) ) ) ) # ( !\Mux2|Mux7~2_combout\ & ( \RegT~combout\(1) & ( (!\RegT~combout\(0) & 
-- ((\Mux2|Mux7~1_combout\))) # (\RegT~combout\(0) & (\Mux2|Mux7~3_combout\)) ) ) ) # ( \Mux2|Mux7~2_combout\ & ( !\RegT~combout\(1) & ( (\Mux2|Mux7~0_combout\) # (\RegT~combout\(0)) ) ) ) # ( !\Mux2|Mux7~2_combout\ & ( !\RegT~combout\(1) & ( 
-- (!\RegT~combout\(0) & \Mux2|Mux7~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|ALT_INV_Mux7~3_combout\,
	datab => \ALT_INV_RegT~combout\(0),
	datac => \Mux2|ALT_INV_Mux7~0_combout\,
	datad => \Mux2|ALT_INV_Mux7~1_combout\,
	datae => \Mux2|ALT_INV_Mux7~2_combout\,
	dataf => \ALT_INV_RegT~combout\(1),
	combout => \Mux2|Mux7~4_combout\);

-- Location: LCFF_X17_Y19_N7
\RegI9|output[9]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(9),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegI9|output\(9));

-- Location: LCCOMB_X17_Y19_N6
\Mux2|Mux6~2\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux6~2_combout\ = ( \RegI9|output\(9) & ( \RegT~combout\(3) & ( (!\RegT~combout\(2)) # (\RegM13|output\(9)) ) ) ) # ( !\RegI9|output\(9) & ( \RegT~combout\(3) & ( (\RegM13|output\(9) & \RegT~combout\(2)) ) ) ) # ( \RegI9|output\(9) & ( 
-- !\RegT~combout\(3) & ( (!\RegT~combout\(2) & ((\RegA1|output\(9)))) # (\RegT~combout\(2) & (\RegE5|output\(9))) ) ) ) # ( !\RegI9|output\(9) & ( !\RegT~combout\(3) & ( (!\RegT~combout\(2) & ((\RegA1|output\(9)))) # (\RegT~combout\(2) & 
-- (\RegE5|output\(9))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100000000000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegE5|ALT_INV_output\(9),
	datab => \RegA1|ALT_INV_output\(9),
	datac => \RegM13|ALT_INV_output\(9),
	datad => \ALT_INV_RegT~combout\(2),
	datae => \RegI9|ALT_INV_output\(9),
	dataf => \ALT_INV_RegT~combout\(3),
	combout => \Mux2|Mux6~2_combout\);

-- Location: LCCOMB_X11_Y16_N4
\Mux2|Mux6~1\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux6~1_combout\ = ( \RegJ10|output\(9) & ( \RegT~combout\(2) & ( (!\RegT~combout\(3) & ((\RegF6|output\(9)))) # (\RegT~combout\(3) & (\RegN14|output\(9))) ) ) ) # ( !\RegJ10|output\(9) & ( \RegT~combout\(2) & ( (!\RegT~combout\(3) & 
-- ((\RegF6|output\(9)))) # (\RegT~combout\(3) & (\RegN14|output\(9))) ) ) ) # ( \RegJ10|output\(9) & ( !\RegT~combout\(2) & ( (\RegB2|output\(9)) # (\RegT~combout\(3)) ) ) ) # ( !\RegJ10|output\(9) & ( !\RegT~combout\(2) & ( (!\RegT~combout\(3) & 
-- \RegB2|output\(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010010101011111111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegT~combout\(3),
	datab => \RegN14|ALT_INV_output\(9),
	datac => \RegF6|ALT_INV_output\(9),
	datad => \RegB2|ALT_INV_output\(9),
	datae => \RegJ10|ALT_INV_output\(9),
	dataf => \ALT_INV_RegT~combout\(2),
	combout => \Mux2|Mux6~1_combout\);

-- Location: LCCOMB_X34_Y15_N20
\Mux2|Mux6~3\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux6~3_combout\ = ( \RegK11|output\(9) & ( \RegT~combout\(3) & ( (!\RegT~combout\(2)) # (\RegO15|output\(9)) ) ) ) # ( !\RegK11|output\(9) & ( \RegT~combout\(3) & ( (\RegO15|output\(9) & \RegT~combout\(2)) ) ) ) # ( \RegK11|output\(9) & ( 
-- !\RegT~combout\(3) & ( (!\RegT~combout\(2) & (\RegC3|output\(9))) # (\RegT~combout\(2) & ((\RegG7|output\(9)))) ) ) ) # ( !\RegK11|output\(9) & ( !\RegT~combout\(3) & ( (!\RegT~combout\(2) & (\RegC3|output\(9))) # (\RegT~combout\(2) & 
-- ((\RegG7|output\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100000000000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegC3|ALT_INV_output\(9),
	datab => \RegG7|ALT_INV_output\(9),
	datac => \RegO15|ALT_INV_output\(9),
	datad => \ALT_INV_RegT~combout\(2),
	datae => \RegK11|ALT_INV_output\(9),
	dataf => \ALT_INV_RegT~combout\(3),
	combout => \Mux2|Mux6~3_combout\);

-- Location: LCFF_X14_Y22_N5
\RegL12|output[9]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(9),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegL12|output\(9));

-- Location: LCCOMB_X9_Y18_N0
\Mux2|Mux6~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux6~0_combout\ = ( \RegD4|output\(9) & ( \RegT~combout\(1) & ( (!\RegT~combout\(2) & (((\RegH8|output\(9))))) # (\RegT~combout\(2) & ((!\RegT~combout\(3)) # ((\RegL12|output\(9))))) ) ) ) # ( !\RegD4|output\(9) & ( \RegT~combout\(1) & ( 
-- (!\RegT~combout\(2) & (((\RegH8|output\(9))))) # (\RegT~combout\(2) & (\RegT~combout\(3) & (\RegL12|output\(9)))) ) ) ) # ( \RegD4|output\(9) & ( !\RegT~combout\(1) & ( (!\RegT~combout\(3) & (\RegT~combout\(2))) # (\RegT~combout\(3) & ((!\RegT~combout\(2) 
-- & ((\RegH8|output\(9)))) # (\RegT~combout\(2) & (\RegL12|output\(9))))) ) ) ) # ( !\RegD4|output\(9) & ( !\RegT~combout\(1) & ( (\RegT~combout\(3) & ((!\RegT~combout\(2) & ((\RegH8|output\(9)))) # (\RegT~combout\(2) & (\RegL12|output\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011100000001110011010010001111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegT~combout\(3),
	datab => \ALT_INV_RegT~combout\(2),
	datac => \RegL12|ALT_INV_output\(9),
	datad => \RegH8|ALT_INV_output\(9),
	datae => \RegD4|ALT_INV_output\(9),
	dataf => \ALT_INV_RegT~combout\(1),
	combout => \Mux2|Mux6~0_combout\);

-- Location: LCCOMB_X34_Y15_N12
\Mux2|Mux6~4\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux6~4_combout\ = ( \RegT~combout\(1) & ( \RegT~combout\(0) & ( \Mux2|Mux6~3_combout\ ) ) ) # ( !\RegT~combout\(1) & ( \RegT~combout\(0) & ( \Mux2|Mux6~2_combout\ ) ) ) # ( \RegT~combout\(1) & ( !\RegT~combout\(0) & ( \Mux2|Mux6~1_combout\ ) ) ) # ( 
-- !\RegT~combout\(1) & ( !\RegT~combout\(0) & ( \Mux2|Mux6~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|ALT_INV_Mux6~2_combout\,
	datab => \Mux2|ALT_INV_Mux6~1_combout\,
	datac => \Mux2|ALT_INV_Mux6~3_combout\,
	datad => \Mux2|ALT_INV_Mux6~0_combout\,
	datae => \ALT_INV_RegT~combout\(1),
	dataf => \ALT_INV_RegT~combout\(0),
	combout => \Mux2|Mux6~4_combout\);

-- Location: LCCOMB_X17_Y19_N8
\Mux2|Mux5~2\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux5~2_combout\ = ( \RegI9|output\(10) & ( \RegT~combout\(3) & ( (!\RegT~combout\(2)) # (\RegM13|output\(10)) ) ) ) # ( !\RegI9|output\(10) & ( \RegT~combout\(3) & ( (\RegT~combout\(2) & \RegM13|output\(10)) ) ) ) # ( \RegI9|output\(10) & ( 
-- !\RegT~combout\(3) & ( (!\RegT~combout\(2) & ((\RegA1|output\(10)))) # (\RegT~combout\(2) & (\RegE5|output\(10))) ) ) ) # ( !\RegI9|output\(10) & ( !\RegT~combout\(3) & ( (!\RegT~combout\(2) & ((\RegA1|output\(10)))) # (\RegT~combout\(2) & 
-- (\RegE5|output\(10))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100010001000100011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegT~combout\(2),
	datab => \RegM13|ALT_INV_output\(10),
	datac => \RegE5|ALT_INV_output\(10),
	datad => \RegA1|ALT_INV_output\(10),
	datae => \RegI9|ALT_INV_output\(10),
	dataf => \ALT_INV_RegT~combout\(3),
	combout => \Mux2|Mux5~2_combout\);

-- Location: LCFF_X11_Y16_N13
\RegJ10|output[10]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(10),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegJ10|output\(10));

-- Location: LCCOMB_X11_Y16_N12
\Mux2|Mux5~1\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux5~1_combout\ = ( \RegJ10|output\(10) & ( \RegF6|output\(10) & ( (!\RegT~combout\(3) & (((\RegT~combout\(2))) # (\RegB2|output\(10)))) # (\RegT~combout\(3) & (((!\RegT~combout\(2)) # (\RegN14|output\(10))))) ) ) ) # ( !\RegJ10|output\(10) & ( 
-- \RegF6|output\(10) & ( (!\RegT~combout\(3) & (((\RegT~combout\(2))) # (\RegB2|output\(10)))) # (\RegT~combout\(3) & (((\RegN14|output\(10) & \RegT~combout\(2))))) ) ) ) # ( \RegJ10|output\(10) & ( !\RegF6|output\(10) & ( (!\RegT~combout\(3) & 
-- (\RegB2|output\(10) & ((!\RegT~combout\(2))))) # (\RegT~combout\(3) & (((!\RegT~combout\(2)) # (\RegN14|output\(10))))) ) ) ) # ( !\RegJ10|output\(10) & ( !\RegF6|output\(10) & ( (!\RegT~combout\(3) & (\RegB2|output\(10) & ((!\RegT~combout\(2))))) # 
-- (\RegT~combout\(3) & (((\RegN14|output\(10) & \RegT~combout\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000011010111110000001101010000111100110101111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegB2|ALT_INV_output\(10),
	datab => \RegN14|ALT_INV_output\(10),
	datac => \ALT_INV_RegT~combout\(3),
	datad => \ALT_INV_RegT~combout\(2),
	datae => \RegJ10|ALT_INV_output\(10),
	dataf => \RegF6|ALT_INV_output\(10),
	combout => \Mux2|Mux5~1_combout\);

-- Location: LCCOMB_X26_Y14_N28
\Mux2|Mux5~3\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux5~3_combout\ = ( \RegK11|output\(10) & ( \RegO15|output\(10) & ( ((!\RegT~combout\(2) & (\RegC3|output\(10))) # (\RegT~combout\(2) & ((\RegG7|output\(10))))) # (\RegT~combout\(3)) ) ) ) # ( !\RegK11|output\(10) & ( \RegO15|output\(10) & ( 
-- (!\RegT~combout\(3) & ((!\RegT~combout\(2) & (\RegC3|output\(10))) # (\RegT~combout\(2) & ((\RegG7|output\(10)))))) # (\RegT~combout\(3) & (((\RegT~combout\(2))))) ) ) ) # ( \RegK11|output\(10) & ( !\RegO15|output\(10) & ( (!\RegT~combout\(3) & 
-- ((!\RegT~combout\(2) & (\RegC3|output\(10))) # (\RegT~combout\(2) & ((\RegG7|output\(10)))))) # (\RegT~combout\(3) & (((!\RegT~combout\(2))))) ) ) ) # ( !\RegK11|output\(10) & ( !\RegO15|output\(10) & ( (!\RegT~combout\(3) & ((!\RegT~combout\(2) & 
-- (\RegC3|output\(10))) # (\RegT~combout\(2) & ((\RegG7|output\(10)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100011101110000110001000100001111110111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegC3|ALT_INV_output\(10),
	datab => \ALT_INV_RegT~combout\(3),
	datac => \RegG7|ALT_INV_output\(10),
	datad => \ALT_INV_RegT~combout\(2),
	datae => \RegK11|ALT_INV_output\(10),
	dataf => \RegO15|ALT_INV_output\(10),
	combout => \Mux2|Mux5~3_combout\);

-- Location: LCFF_X26_Y20_N5
\RegD4|output[10]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(10),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegD4|output\(10));

-- Location: LCCOMB_X26_Y20_N4
\Mux2|Mux5~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux5~0_combout\ = ( \RegD4|output\(10) & ( \RegH8|output\(10) & ( (!\RegT~combout\(2) & (((\RegT~combout\(1))) # (\RegT~combout\(3)))) # (\RegT~combout\(2) & ((!\RegT~combout\(3)) # ((\RegL12|output\(10))))) ) ) ) # ( !\RegD4|output\(10) & ( 
-- \RegH8|output\(10) & ( (!\RegT~combout\(2) & (((\RegT~combout\(1))) # (\RegT~combout\(3)))) # (\RegT~combout\(2) & (\RegT~combout\(3) & ((\RegL12|output\(10))))) ) ) ) # ( \RegD4|output\(10) & ( !\RegH8|output\(10) & ( (\RegT~combout\(2) & 
-- ((!\RegT~combout\(3)) # (\RegL12|output\(10)))) ) ) ) # ( !\RegD4|output\(10) & ( !\RegH8|output\(10) & ( (\RegT~combout\(2) & (\RegT~combout\(3) & \RegL12|output\(10))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001010001000101010100101010001110110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegT~combout\(2),
	datab => \ALT_INV_RegT~combout\(3),
	datac => \ALT_INV_RegT~combout\(1),
	datad => \RegL12|ALT_INV_output\(10),
	datae => \RegD4|ALT_INV_output\(10),
	dataf => \RegH8|ALT_INV_output\(10),
	combout => \Mux2|Mux5~0_combout\);

-- Location: LCCOMB_X26_Y20_N8
\Mux2|Mux5~4\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux5~4_combout\ = ( \RegT~combout\(1) & ( \Mux2|Mux5~0_combout\ & ( (!\RegT~combout\(0) & (\Mux2|Mux5~1_combout\)) # (\RegT~combout\(0) & ((\Mux2|Mux5~3_combout\))) ) ) ) # ( !\RegT~combout\(1) & ( \Mux2|Mux5~0_combout\ & ( (!\RegT~combout\(0)) # 
-- (\Mux2|Mux5~2_combout\) ) ) ) # ( \RegT~combout\(1) & ( !\Mux2|Mux5~0_combout\ & ( (!\RegT~combout\(0) & (\Mux2|Mux5~1_combout\)) # (\RegT~combout\(0) & ((\Mux2|Mux5~3_combout\))) ) ) ) # ( !\RegT~combout\(1) & ( !\Mux2|Mux5~0_combout\ & ( 
-- (\Mux2|Mux5~2_combout\ & \RegT~combout\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000011000011111111011101110111010000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|ALT_INV_Mux5~2_combout\,
	datab => \ALT_INV_RegT~combout\(0),
	datac => \Mux2|ALT_INV_Mux5~1_combout\,
	datad => \Mux2|ALT_INV_Mux5~3_combout\,
	datae => \ALT_INV_RegT~combout\(1),
	dataf => \Mux2|ALT_INV_Mux5~0_combout\,
	combout => \Mux2|Mux5~4_combout\);

-- Location: LCCOMB_X14_Y22_N2
\Mux2|Mux4~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux4~0_combout\ = ( \RegD4|output\(11) & ( \RegT~combout\(3) & ( (!\RegT~combout\(2) & (\RegH8|output\(11))) # (\RegT~combout\(2) & ((\RegL12|output\(11)))) ) ) ) # ( !\RegD4|output\(11) & ( \RegT~combout\(3) & ( (!\RegT~combout\(2) & 
-- (\RegH8|output\(11))) # (\RegT~combout\(2) & ((\RegL12|output\(11)))) ) ) ) # ( \RegD4|output\(11) & ( !\RegT~combout\(3) & ( ((\RegH8|output\(11) & \RegT~combout\(1))) # (\RegT~combout\(2)) ) ) ) # ( !\RegD4|output\(11) & ( !\RegT~combout\(3) & ( 
-- (\RegH8|output\(11) & (!\RegT~combout\(2) & \RegT~combout\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000011110101111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegH8|ALT_INV_output\(11),
	datab => \RegL12|ALT_INV_output\(11),
	datac => \ALT_INV_RegT~combout\(2),
	datad => \ALT_INV_RegT~combout\(1),
	datae => \RegD4|ALT_INV_output\(11),
	dataf => \ALT_INV_RegT~combout\(3),
	combout => \Mux2|Mux4~0_combout\);

-- Location: LCCOMB_X13_Y25_N2
\Mux2|Mux4~1\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux4~1_combout\ = ( \RegJ10|output\(11) & ( \RegT~combout\(3) & ( (!\RegT~combout\(2)) # (\RegN14|output\(11)) ) ) ) # ( !\RegJ10|output\(11) & ( \RegT~combout\(3) & ( (\RegN14|output\(11) & \RegT~combout\(2)) ) ) ) # ( \RegJ10|output\(11) & ( 
-- !\RegT~combout\(3) & ( (!\RegT~combout\(2) & ((\RegB2|output\(11)))) # (\RegT~combout\(2) & (\RegF6|output\(11))) ) ) ) # ( !\RegJ10|output\(11) & ( !\RegT~combout\(3) & ( (!\RegT~combout\(2) & ((\RegB2|output\(11)))) # (\RegT~combout\(2) & 
-- (\RegF6|output\(11))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100000000000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegF6|ALT_INV_output\(11),
	datab => \RegB2|ALT_INV_output\(11),
	datac => \RegN14|ALT_INV_output\(11),
	datad => \ALT_INV_RegT~combout\(2),
	datae => \RegJ10|ALT_INV_output\(11),
	dataf => \ALT_INV_RegT~combout\(3),
	combout => \Mux2|Mux4~1_combout\);

-- Location: LCCOMB_X15_Y14_N20
\Mux2|Mux4~3\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux4~3_combout\ = ( \RegK11|output\(11) & ( \RegC3|output\(11) & ( (!\RegT~combout\(2)) # ((!\RegT~combout\(3) & ((\RegG7|output\(11)))) # (\RegT~combout\(3) & (\RegO15|output\(11)))) ) ) ) # ( !\RegK11|output\(11) & ( \RegC3|output\(11) & ( 
-- (!\RegT~combout\(2) & (((!\RegT~combout\(3))))) # (\RegT~combout\(2) & ((!\RegT~combout\(3) & ((\RegG7|output\(11)))) # (\RegT~combout\(3) & (\RegO15|output\(11))))) ) ) ) # ( \RegK11|output\(11) & ( !\RegC3|output\(11) & ( (!\RegT~combout\(2) & 
-- (((\RegT~combout\(3))))) # (\RegT~combout\(2) & ((!\RegT~combout\(3) & ((\RegG7|output\(11)))) # (\RegT~combout\(3) & (\RegO15|output\(11))))) ) ) ) # ( !\RegK11|output\(11) & ( !\RegC3|output\(11) & ( (\RegT~combout\(2) & ((!\RegT~combout\(3) & 
-- ((\RegG7|output\(11)))) # (\RegT~combout\(3) & (\RegO15|output\(11))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001000011010011110111000001111100011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegO15|ALT_INV_output\(11),
	datab => \ALT_INV_RegT~combout\(2),
	datac => \ALT_INV_RegT~combout\(3),
	datad => \RegG7|ALT_INV_output\(11),
	datae => \RegK11|ALT_INV_output\(11),
	dataf => \RegC3|ALT_INV_output\(11),
	combout => \Mux2|Mux4~3_combout\);

-- Location: LCFF_X27_Y26_N11
\RegE5|output[11]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(11),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegE5|output\(11));

-- Location: LCCOMB_X13_Y25_N24
\Mux2|Mux4~2\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux4~2_combout\ = ( \RegI9|output\(11) & ( \RegT~combout\(3) & ( (!\RegT~combout\(2)) # (\RegM13|output\(11)) ) ) ) # ( !\RegI9|output\(11) & ( \RegT~combout\(3) & ( (\RegT~combout\(2) & \RegM13|output\(11)) ) ) ) # ( \RegI9|output\(11) & ( 
-- !\RegT~combout\(3) & ( (!\RegT~combout\(2) & ((\RegA1|output\(11)))) # (\RegT~combout\(2) & (\RegE5|output\(11))) ) ) ) # ( !\RegI9|output\(11) & ( !\RegT~combout\(3) & ( (!\RegT~combout\(2) & ((\RegA1|output\(11)))) # (\RegT~combout\(2) & 
-- (\RegE5|output\(11))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegT~combout\(2),
	datab => \RegE5|ALT_INV_output\(11),
	datac => \RegM13|ALT_INV_output\(11),
	datad => \RegA1|ALT_INV_output\(11),
	datae => \RegI9|ALT_INV_output\(11),
	dataf => \ALT_INV_RegT~combout\(3),
	combout => \Mux2|Mux4~2_combout\);

-- Location: LCCOMB_X14_Y22_N10
\Mux2|Mux4~4\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux4~4_combout\ = ( \RegT~combout\(1) & ( \RegT~combout\(0) & ( \Mux2|Mux4~3_combout\ ) ) ) # ( !\RegT~combout\(1) & ( \RegT~combout\(0) & ( \Mux2|Mux4~2_combout\ ) ) ) # ( \RegT~combout\(1) & ( !\RegT~combout\(0) & ( \Mux2|Mux4~1_combout\ ) ) ) # ( 
-- !\RegT~combout\(1) & ( !\RegT~combout\(0) & ( \Mux2|Mux4~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|ALT_INV_Mux4~0_combout\,
	datab => \Mux2|ALT_INV_Mux4~1_combout\,
	datac => \Mux2|ALT_INV_Mux4~3_combout\,
	datad => \Mux2|ALT_INV_Mux4~2_combout\,
	datae => \ALT_INV_RegT~combout\(1),
	dataf => \ALT_INV_RegT~combout\(0),
	combout => \Mux2|Mux4~4_combout\);

-- Location: LCFF_X13_Y25_N29
\RegJ10|output[12]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(12),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegJ10|output\(12));

-- Location: LCCOMB_X13_Y25_N28
\Mux2|Mux3~1\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux3~1_combout\ = ( \RegJ10|output\(12) & ( \RegN14|output\(12) & ( ((!\RegT~combout\(2) & (\RegB2|output\(12))) # (\RegT~combout\(2) & ((\RegF6|output\(12))))) # (\RegT~combout\(3)) ) ) ) # ( !\RegJ10|output\(12) & ( \RegN14|output\(12) & ( 
-- (!\RegT~combout\(2) & (!\RegT~combout\(3) & (\RegB2|output\(12)))) # (\RegT~combout\(2) & (((\RegF6|output\(12))) # (\RegT~combout\(3)))) ) ) ) # ( \RegJ10|output\(12) & ( !\RegN14|output\(12) & ( (!\RegT~combout\(2) & (((\RegB2|output\(12))) # 
-- (\RegT~combout\(3)))) # (\RegT~combout\(2) & (!\RegT~combout\(3) & ((\RegF6|output\(12))))) ) ) ) # ( !\RegJ10|output\(12) & ( !\RegN14|output\(12) & ( (!\RegT~combout\(3) & ((!\RegT~combout\(2) & (\RegB2|output\(12))) # (\RegT~combout\(2) & 
-- ((\RegF6|output\(12)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001010100110111000011001010111010011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegT~combout\(2),
	datab => \ALT_INV_RegT~combout\(3),
	datac => \RegB2|ALT_INV_output\(12),
	datad => \RegF6|ALT_INV_output\(12),
	datae => \RegJ10|ALT_INV_output\(12),
	dataf => \RegN14|ALT_INV_output\(12),
	combout => \Mux2|Mux3~1_combout\);

-- Location: LCFF_X17_Y19_N29
\RegM13|output[12]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(12),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegM13|output\(12));

-- Location: LCCOMB_X13_Y25_N16
\Mux2|Mux3~2\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux3~2_combout\ = ( \RegI9|output\(12) & ( \RegT~combout\(3) & ( (!\RegT~combout\(2)) # (\RegM13|output\(12)) ) ) ) # ( !\RegI9|output\(12) & ( \RegT~combout\(3) & ( (\RegT~combout\(2) & \RegM13|output\(12)) ) ) ) # ( \RegI9|output\(12) & ( 
-- !\RegT~combout\(3) & ( (!\RegT~combout\(2) & (\RegA1|output\(12))) # (\RegT~combout\(2) & ((\RegE5|output\(12)))) ) ) ) # ( !\RegI9|output\(12) & ( !\RegT~combout\(3) & ( (!\RegT~combout\(2) & (\RegA1|output\(12))) # (\RegT~combout\(2) & 
-- ((\RegE5|output\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegA1|ALT_INV_output\(12),
	datab => \RegE5|ALT_INV_output\(12),
	datac => \ALT_INV_RegT~combout\(2),
	datad => \RegM13|ALT_INV_output\(12),
	datae => \RegI9|ALT_INV_output\(12),
	dataf => \ALT_INV_RegT~combout\(3),
	combout => \Mux2|Mux3~2_combout\);

-- Location: LCFF_X19_Y17_N7
\RegK11|output[12]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(12),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegK11|output\(12));

-- Location: LCCOMB_X19_Y17_N6
\Mux2|Mux3~3\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux3~3_combout\ = ( \RegK11|output\(12) & ( \RegO15|output\(12) & ( ((!\RegT~combout\(2) & ((\RegC3|output\(12)))) # (\RegT~combout\(2) & (\RegG7|output\(12)))) # (\RegT~combout\(3)) ) ) ) # ( !\RegK11|output\(12) & ( \RegO15|output\(12) & ( 
-- (!\RegT~combout\(2) & (((\RegC3|output\(12) & !\RegT~combout\(3))))) # (\RegT~combout\(2) & (((\RegT~combout\(3))) # (\RegG7|output\(12)))) ) ) ) # ( \RegK11|output\(12) & ( !\RegO15|output\(12) & ( (!\RegT~combout\(2) & (((\RegT~combout\(3)) # 
-- (\RegC3|output\(12))))) # (\RegT~combout\(2) & (\RegG7|output\(12) & ((!\RegT~combout\(3))))) ) ) ) # ( !\RegK11|output\(12) & ( !\RegO15|output\(12) & ( (!\RegT~combout\(3) & ((!\RegT~combout\(2) & ((\RegC3|output\(12)))) # (\RegT~combout\(2) & 
-- (\RegG7|output\(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101011111000000110101000011110011010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegG7|ALT_INV_output\(12),
	datab => \RegC3|ALT_INV_output\(12),
	datac => \ALT_INV_RegT~combout\(2),
	datad => \ALT_INV_RegT~combout\(3),
	datae => \RegK11|ALT_INV_output\(12),
	dataf => \RegO15|ALT_INV_output\(12),
	combout => \Mux2|Mux3~3_combout\);

-- Location: LCCOMB_X3_Y24_N24
\Mux2|Mux3~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux3~0_combout\ = ( \RegD4|output\(12) & ( \RegT~combout\(1) & ( (!\RegT~combout\(2) & (((\RegH8|output\(12))))) # (\RegT~combout\(2) & (((!\RegT~combout\(3))) # (\RegL12|output\(12)))) ) ) ) # ( !\RegD4|output\(12) & ( \RegT~combout\(1) & ( 
-- (!\RegT~combout\(2) & (((\RegH8|output\(12))))) # (\RegT~combout\(2) & (\RegL12|output\(12) & (\RegT~combout\(3)))) ) ) ) # ( \RegD4|output\(12) & ( !\RegT~combout\(1) & ( (!\RegT~combout\(3) & (((\RegT~combout\(2))))) # (\RegT~combout\(3) & 
-- ((!\RegT~combout\(2) & ((\RegH8|output\(12)))) # (\RegT~combout\(2) & (\RegL12|output\(12))))) ) ) ) # ( !\RegD4|output\(12) & ( !\RegT~combout\(1) & ( (\RegT~combout\(3) & ((!\RegT~combout\(2) & ((\RegH8|output\(12)))) # (\RegT~combout\(2) & 
-- (\RegL12|output\(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001000000111101110100001111000100010000111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegL12|ALT_INV_output\(12),
	datab => \ALT_INV_RegT~combout\(3),
	datac => \RegH8|ALT_INV_output\(12),
	datad => \ALT_INV_RegT~combout\(2),
	datae => \RegD4|ALT_INV_output\(12),
	dataf => \ALT_INV_RegT~combout\(1),
	combout => \Mux2|Mux3~0_combout\);

-- Location: LCCOMB_X19_Y17_N26
\Mux2|Mux3~4\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux3~4_combout\ = ( \Mux2|Mux3~3_combout\ & ( \Mux2|Mux3~0_combout\ & ( (!\RegT~combout\(0) & (((!\RegT~combout\(1))) # (\Mux2|Mux3~1_combout\))) # (\RegT~combout\(0) & (((\Mux2|Mux3~2_combout\) # (\RegT~combout\(1))))) ) ) ) # ( 
-- !\Mux2|Mux3~3_combout\ & ( \Mux2|Mux3~0_combout\ & ( (!\RegT~combout\(0) & (((!\RegT~combout\(1))) # (\Mux2|Mux3~1_combout\))) # (\RegT~combout\(0) & (((!\RegT~combout\(1) & \Mux2|Mux3~2_combout\)))) ) ) ) # ( \Mux2|Mux3~3_combout\ & ( 
-- !\Mux2|Mux3~0_combout\ & ( (!\RegT~combout\(0) & (\Mux2|Mux3~1_combout\ & (\RegT~combout\(1)))) # (\RegT~combout\(0) & (((\Mux2|Mux3~2_combout\) # (\RegT~combout\(1))))) ) ) ) # ( !\Mux2|Mux3~3_combout\ & ( !\Mux2|Mux3~0_combout\ & ( (!\RegT~combout\(0) & 
-- (\Mux2|Mux3~1_combout\ & (\RegT~combout\(1)))) # (\RegT~combout\(0) & (((!\RegT~combout\(1) & \Mux2|Mux3~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010000001110101011110100010111100101010011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegT~combout\(0),
	datab => \Mux2|ALT_INV_Mux3~1_combout\,
	datac => \ALT_INV_RegT~combout\(1),
	datad => \Mux2|ALT_INV_Mux3~2_combout\,
	datae => \Mux2|ALT_INV_Mux3~3_combout\,
	dataf => \Mux2|ALT_INV_Mux3~0_combout\,
	combout => \Mux2|Mux3~4_combout\);

-- Location: LCCOMB_X15_Y14_N12
\Mux2|Mux2~3\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux2~3_combout\ = ( \RegK11|output\(13) & ( \RegO15|output\(13) & ( ((!\RegT~combout\(2) & ((\RegC3|output\(13)))) # (\RegT~combout\(2) & (\RegG7|output\(13)))) # (\RegT~combout\(3)) ) ) ) # ( !\RegK11|output\(13) & ( \RegO15|output\(13) & ( 
-- (!\RegT~combout\(3) & ((!\RegT~combout\(2) & ((\RegC3|output\(13)))) # (\RegT~combout\(2) & (\RegG7|output\(13))))) # (\RegT~combout\(3) & (\RegT~combout\(2))) ) ) ) # ( \RegK11|output\(13) & ( !\RegO15|output\(13) & ( (!\RegT~combout\(3) & 
-- ((!\RegT~combout\(2) & ((\RegC3|output\(13)))) # (\RegT~combout\(2) & (\RegG7|output\(13))))) # (\RegT~combout\(3) & (!\RegT~combout\(2))) ) ) ) # ( !\RegK11|output\(13) & ( !\RegO15|output\(13) & ( (!\RegT~combout\(3) & ((!\RegT~combout\(2) & 
-- ((\RegC3|output\(13)))) # (\RegT~combout\(2) & (\RegG7|output\(13))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010001101100111000010011100110110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegT~combout\(3),
	datab => \ALT_INV_RegT~combout\(2),
	datac => \RegG7|ALT_INV_output\(13),
	datad => \RegC3|ALT_INV_output\(13),
	datae => \RegK11|ALT_INV_output\(13),
	dataf => \RegO15|ALT_INV_output\(13),
	combout => \Mux2|Mux2~3_combout\);

-- Location: LCCOMB_X14_Y23_N12
\Mux2|Mux2~1\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux2~1_combout\ = ( \RegJ10|output\(13) & ( \RegT~combout\(3) & ( (!\RegT~combout\(2)) # (\RegN14|output\(13)) ) ) ) # ( !\RegJ10|output\(13) & ( \RegT~combout\(3) & ( (\RegN14|output\(13) & \RegT~combout\(2)) ) ) ) # ( \RegJ10|output\(13) & ( 
-- !\RegT~combout\(3) & ( (!\RegT~combout\(2) & ((\RegB2|output\(13)))) # (\RegT~combout\(2) & (\RegF6|output\(13))) ) ) ) # ( !\RegJ10|output\(13) & ( !\RegT~combout\(3) & ( (!\RegT~combout\(2) & ((\RegB2|output\(13)))) # (\RegT~combout\(2) & 
-- (\RegF6|output\(13))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegF6|ALT_INV_output\(13),
	datab => \RegN14|ALT_INV_output\(13),
	datac => \ALT_INV_RegT~combout\(2),
	datad => \RegB2|ALT_INV_output\(13),
	datae => \RegJ10|ALT_INV_output\(13),
	dataf => \ALT_INV_RegT~combout\(3),
	combout => \Mux2|Mux2~1_combout\);

-- Location: LCFF_X13_Y25_N5
\RegI9|output[13]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(13),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegI9|output\(13));

-- Location: LCCOMB_X13_Y25_N4
\Mux2|Mux2~2\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux2~2_combout\ = ( \RegI9|output\(13) & ( \RegM13|output\(13) & ( ((!\RegT~combout\(2) & (\RegA1|output\(13))) # (\RegT~combout\(2) & ((\RegE5|output\(13))))) # (\RegT~combout\(3)) ) ) ) # ( !\RegI9|output\(13) & ( \RegM13|output\(13) & ( 
-- (!\RegT~combout\(2) & (\RegA1|output\(13) & ((!\RegT~combout\(3))))) # (\RegT~combout\(2) & (((\RegT~combout\(3)) # (\RegE5|output\(13))))) ) ) ) # ( \RegI9|output\(13) & ( !\RegM13|output\(13) & ( (!\RegT~combout\(2) & (((\RegT~combout\(3))) # 
-- (\RegA1|output\(13)))) # (\RegT~combout\(2) & (((\RegE5|output\(13) & !\RegT~combout\(3))))) ) ) ) # ( !\RegI9|output\(13) & ( !\RegM13|output\(13) & ( (!\RegT~combout\(3) & ((!\RegT~combout\(2) & (\RegA1|output\(13))) # (\RegT~combout\(2) & 
-- ((\RegE5|output\(13)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100111111000001010011000011110101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegA1|ALT_INV_output\(13),
	datab => \RegE5|ALT_INV_output\(13),
	datac => \ALT_INV_RegT~combout\(2),
	datad => \ALT_INV_RegT~combout\(3),
	datae => \RegI9|ALT_INV_output\(13),
	dataf => \RegM13|ALT_INV_output\(13),
	combout => \Mux2|Mux2~2_combout\);

-- Location: LCFF_X26_Y20_N13
\RegD4|output[13]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(13),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegD4|output\(13));

-- Location: LCCOMB_X26_Y20_N12
\Mux2|Mux2~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux2~0_combout\ = ( \RegD4|output\(13) & ( \RegL12|output\(13) & ( ((\RegH8|output\(13) & ((\RegT~combout\(1)) # (\RegT~combout\(3))))) # (\RegT~combout\(2)) ) ) ) # ( !\RegD4|output\(13) & ( \RegL12|output\(13) & ( (!\RegT~combout\(2) & 
-- (\RegH8|output\(13) & ((\RegT~combout\(1)) # (\RegT~combout\(3))))) # (\RegT~combout\(2) & (\RegT~combout\(3))) ) ) ) # ( \RegD4|output\(13) & ( !\RegL12|output\(13) & ( (!\RegT~combout\(2) & (\RegH8|output\(13) & ((\RegT~combout\(1)) # 
-- (\RegT~combout\(3))))) # (\RegT~combout\(2) & (!\RegT~combout\(3))) ) ) ) # ( !\RegD4|output\(13) & ( !\RegL12|output\(13) & ( (!\RegT~combout\(2) & (\RegH8|output\(13) & ((\RegT~combout\(1)) # (\RegT~combout\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010010001000110111000010001001110110101010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegT~combout\(2),
	datab => \ALT_INV_RegT~combout\(3),
	datac => \ALT_INV_RegT~combout\(1),
	datad => \RegH8|ALT_INV_output\(13),
	datae => \RegD4|ALT_INV_output\(13),
	dataf => \RegL12|ALT_INV_output\(13),
	combout => \Mux2|Mux2~0_combout\);

-- Location: LCCOMB_X26_Y20_N30
\Mux2|Mux2~4\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux2~4_combout\ = ( \RegT~combout\(1) & ( \Mux2|Mux2~0_combout\ & ( (!\RegT~combout\(0) & ((\Mux2|Mux2~1_combout\))) # (\RegT~combout\(0) & (\Mux2|Mux2~3_combout\)) ) ) ) # ( !\RegT~combout\(1) & ( \Mux2|Mux2~0_combout\ & ( (!\RegT~combout\(0)) # 
-- (\Mux2|Mux2~2_combout\) ) ) ) # ( \RegT~combout\(1) & ( !\Mux2|Mux2~0_combout\ & ( (!\RegT~combout\(0) & ((\Mux2|Mux2~1_combout\))) # (\RegT~combout\(0) & (\Mux2|Mux2~3_combout\)) ) ) ) # ( !\RegT~combout\(1) & ( !\Mux2|Mux2~0_combout\ & ( 
-- (\RegT~combout\(0) & \Mux2|Mux2~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000111010001110111001100111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|ALT_INV_Mux2~3_combout\,
	datab => \ALT_INV_RegT~combout\(0),
	datac => \Mux2|ALT_INV_Mux2~1_combout\,
	datad => \Mux2|ALT_INV_Mux2~2_combout\,
	datae => \ALT_INV_RegT~combout\(1),
	dataf => \Mux2|ALT_INV_Mux2~0_combout\,
	combout => \Mux2|Mux2~4_combout\);

-- Location: LCCOMB_X17_Y19_N20
\Mux2|Mux1~2\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux1~2_combout\ = ( \RegI9|output\(14) & ( \RegT~combout\(3) & ( (!\RegT~combout\(2)) # (\RegM13|output\(14)) ) ) ) # ( !\RegI9|output\(14) & ( \RegT~combout\(3) & ( (\RegT~combout\(2) & \RegM13|output\(14)) ) ) ) # ( \RegI9|output\(14) & ( 
-- !\RegT~combout\(3) & ( (!\RegT~combout\(2) & ((\RegA1|output\(14)))) # (\RegT~combout\(2) & (\RegE5|output\(14))) ) ) ) # ( !\RegI9|output\(14) & ( !\RegT~combout\(3) & ( (!\RegT~combout\(2) & ((\RegA1|output\(14)))) # (\RegT~combout\(2) & 
-- (\RegE5|output\(14))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000010101011010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegT~combout\(2),
	datab => \RegE5|ALT_INV_output\(14),
	datac => \RegA1|ALT_INV_output\(14),
	datad => \RegM13|ALT_INV_output\(14),
	datae => \RegI9|ALT_INV_output\(14),
	dataf => \ALT_INV_RegT~combout\(3),
	combout => \Mux2|Mux1~2_combout\);

-- Location: LCFF_X26_Y20_N11
\RegL12|output[14]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(14),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegL12|output\(14));

-- Location: LCCOMB_X18_Y25_N22
\Mux2|Mux1~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux1~0_combout\ = ( \RegD4|output\(14) & ( \RegH8|output\(14) & ( (!\RegT~combout\(3) & (((\RegT~combout\(2))) # (\RegT~combout\(1)))) # (\RegT~combout\(3) & (((!\RegT~combout\(2)) # (\RegL12|output\(14))))) ) ) ) # ( !\RegD4|output\(14) & ( 
-- \RegH8|output\(14) & ( (!\RegT~combout\(3) & (\RegT~combout\(1) & (!\RegT~combout\(2)))) # (\RegT~combout\(3) & (((!\RegT~combout\(2)) # (\RegL12|output\(14))))) ) ) ) # ( \RegD4|output\(14) & ( !\RegH8|output\(14) & ( (\RegT~combout\(2) & 
-- ((!\RegT~combout\(3)) # (\RegL12|output\(14)))) ) ) ) # ( !\RegD4|output\(14) & ( !\RegH8|output\(14) & ( (\RegT~combout\(3) & (\RegT~combout\(2) & \RegL12|output\(14))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000011000000111101110000011100110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegT~combout\(1),
	datab => \ALT_INV_RegT~combout\(3),
	datac => \ALT_INV_RegT~combout\(2),
	datad => \RegL12|ALT_INV_output\(14),
	datae => \RegD4|ALT_INV_output\(14),
	dataf => \RegH8|ALT_INV_output\(14),
	combout => \Mux2|Mux1~0_combout\);

-- Location: LCCOMB_X15_Y14_N0
\Mux2|Mux1~3\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux1~3_combout\ = ( \RegK11|output\(14) & ( \RegC3|output\(14) & ( (!\RegT~combout\(2)) # ((!\RegT~combout\(3) & ((\RegG7|output\(14)))) # (\RegT~combout\(3) & (\RegO15|output\(14)))) ) ) ) # ( !\RegK11|output\(14) & ( \RegC3|output\(14) & ( 
-- (!\RegT~combout\(3) & (((!\RegT~combout\(2)) # (\RegG7|output\(14))))) # (\RegT~combout\(3) & (\RegO15|output\(14) & ((\RegT~combout\(2))))) ) ) ) # ( \RegK11|output\(14) & ( !\RegC3|output\(14) & ( (!\RegT~combout\(3) & (((\RegG7|output\(14) & 
-- \RegT~combout\(2))))) # (\RegT~combout\(3) & (((!\RegT~combout\(2))) # (\RegO15|output\(14)))) ) ) ) # ( !\RegK11|output\(14) & ( !\RegC3|output\(14) & ( (\RegT~combout\(2) & ((!\RegT~combout\(3) & ((\RegG7|output\(14)))) # (\RegT~combout\(3) & 
-- (\RegO15|output\(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101000011110011010111110000001101011111111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegO15|ALT_INV_output\(14),
	datab => \RegG7|ALT_INV_output\(14),
	datac => \ALT_INV_RegT~combout\(3),
	datad => \ALT_INV_RegT~combout\(2),
	datae => \RegK11|ALT_INV_output\(14),
	dataf => \RegC3|ALT_INV_output\(14),
	combout => \Mux2|Mux1~3_combout\);

-- Location: LCCOMB_X13_Y25_N8
\Mux2|Mux1~1\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux1~1_combout\ = ( \RegJ10|output\(14) & ( \RegB2|output\(14) & ( (!\RegT~combout\(2)) # ((!\RegT~combout\(3) & (\RegF6|output\(14))) # (\RegT~combout\(3) & ((\RegN14|output\(14))))) ) ) ) # ( !\RegJ10|output\(14) & ( \RegB2|output\(14) & ( 
-- (!\RegT~combout\(2) & (((!\RegT~combout\(3))))) # (\RegT~combout\(2) & ((!\RegT~combout\(3) & (\RegF6|output\(14))) # (\RegT~combout\(3) & ((\RegN14|output\(14)))))) ) ) ) # ( \RegJ10|output\(14) & ( !\RegB2|output\(14) & ( (!\RegT~combout\(2) & 
-- (((\RegT~combout\(3))))) # (\RegT~combout\(2) & ((!\RegT~combout\(3) & (\RegF6|output\(14))) # (\RegT~combout\(3) & ((\RegN14|output\(14)))))) ) ) ) # ( !\RegJ10|output\(14) & ( !\RegB2|output\(14) & ( (\RegT~combout\(2) & ((!\RegT~combout\(3) & 
-- (\RegF6|output\(14))) # (\RegT~combout\(3) & ((\RegN14|output\(14)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000110100001111110110000101101011011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegT~combout\(2),
	datab => \RegF6|ALT_INV_output\(14),
	datac => \ALT_INV_RegT~combout\(3),
	datad => \RegN14|ALT_INV_output\(14),
	datae => \RegJ10|ALT_INV_output\(14),
	dataf => \RegB2|ALT_INV_output\(14),
	combout => \Mux2|Mux1~1_combout\);

-- Location: LCCOMB_X13_Y25_N14
\Mux2|Mux1~4\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux1~4_combout\ = ( \Mux2|Mux1~1_combout\ & ( \RegT~combout\(1) & ( (!\RegT~combout\(0)) # (\Mux2|Mux1~3_combout\) ) ) ) # ( !\Mux2|Mux1~1_combout\ & ( \RegT~combout\(1) & ( (\RegT~combout\(0) & \Mux2|Mux1~3_combout\) ) ) ) # ( \Mux2|Mux1~1_combout\ 
-- & ( !\RegT~combout\(1) & ( (!\RegT~combout\(0) & ((\Mux2|Mux1~0_combout\))) # (\RegT~combout\(0) & (\Mux2|Mux1~2_combout\)) ) ) ) # ( !\Mux2|Mux1~1_combout\ & ( !\RegT~combout\(1) & ( (!\RegT~combout\(0) & ((\Mux2|Mux1~0_combout\))) # (\RegT~combout\(0) & 
-- (\Mux2|Mux1~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|ALT_INV_Mux1~2_combout\,
	datab => \ALT_INV_RegT~combout\(0),
	datac => \Mux2|ALT_INV_Mux1~0_combout\,
	datad => \Mux2|ALT_INV_Mux1~3_combout\,
	datae => \Mux2|ALT_INV_Mux1~1_combout\,
	dataf => \ALT_INV_RegT~combout\(1),
	combout => \Mux2|Mux1~4_combout\);

-- Location: LCCOMB_X18_Y25_N16
\Mux2|Mux0~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux0~0_combout\ = ( \RegD4|output\(15) & ( \RegT~combout\(2) & ( (!\RegT~combout\(3)) # (\RegL12|output\(15)) ) ) ) # ( !\RegD4|output\(15) & ( \RegT~combout\(2) & ( (\RegT~combout\(3) & \RegL12|output\(15)) ) ) ) # ( \RegD4|output\(15) & ( 
-- !\RegT~combout\(2) & ( (\RegH8|output\(15) & ((\RegT~combout\(3)) # (\RegT~combout\(1)))) ) ) ) # ( !\RegD4|output\(15) & ( !\RegT~combout\(2) & ( (\RegH8|output\(15) & ((\RegT~combout\(3)) # (\RegT~combout\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegT~combout\(1),
	datab => \ALT_INV_RegT~combout\(3),
	datac => \RegH8|ALT_INV_output\(15),
	datad => \RegL12|ALT_INV_output\(15),
	datae => \RegD4|ALT_INV_output\(15),
	dataf => \ALT_INV_RegT~combout\(2),
	combout => \Mux2|Mux0~0_combout\);

-- Location: LCCOMB_X18_Y25_N4
\Mux2|Mux0~2\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux0~2_combout\ = ( \RegI9|output\(15) & ( \RegT~combout\(2) & ( (!\RegT~combout\(3) & (\RegE5|output\(15))) # (\RegT~combout\(3) & ((\RegM13|output\(15)))) ) ) ) # ( !\RegI9|output\(15) & ( \RegT~combout\(2) & ( (!\RegT~combout\(3) & 
-- (\RegE5|output\(15))) # (\RegT~combout\(3) & ((\RegM13|output\(15)))) ) ) ) # ( \RegI9|output\(15) & ( !\RegT~combout\(2) & ( (\RegT~combout\(3)) # (\RegA1|output\(15)) ) ) ) # ( !\RegI9|output\(15) & ( !\RegT~combout\(2) & ( (\RegA1|output\(15) & 
-- !\RegT~combout\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011101110111011100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegA1|ALT_INV_output\(15),
	datab => \ALT_INV_RegT~combout\(3),
	datac => \RegE5|ALT_INV_output\(15),
	datad => \RegM13|ALT_INV_output\(15),
	datae => \RegI9|ALT_INV_output\(15),
	dataf => \ALT_INV_RegT~combout\(2),
	combout => \Mux2|Mux0~2_combout\);

-- Location: LCFF_X14_Y23_N7
\RegN14|output[15]\ : stratixii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	adatasdata => \DataD~combout\(15),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder|Mux7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegN14|output\(15));

-- Location: LCCOMB_X15_Y14_N4
\Mux2|Mux0~1\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux0~1_combout\ = ( \RegJ10|output\(15) & ( \RegF6|output\(15) & ( (!\RegT~combout\(3) & (((\RegT~combout\(2))) # (\RegB2|output\(15)))) # (\RegT~combout\(3) & (((!\RegT~combout\(2)) # (\RegN14|output\(15))))) ) ) ) # ( !\RegJ10|output\(15) & ( 
-- \RegF6|output\(15) & ( (!\RegT~combout\(3) & (((\RegT~combout\(2))) # (\RegB2|output\(15)))) # (\RegT~combout\(3) & (((\RegN14|output\(15) & \RegT~combout\(2))))) ) ) ) # ( \RegJ10|output\(15) & ( !\RegF6|output\(15) & ( (!\RegT~combout\(3) & 
-- (\RegB2|output\(15) & ((!\RegT~combout\(2))))) # (\RegT~combout\(3) & (((!\RegT~combout\(2)) # (\RegN14|output\(15))))) ) ) ) # ( !\RegJ10|output\(15) & ( !\RegF6|output\(15) & ( (!\RegT~combout\(3) & (\RegB2|output\(15) & ((!\RegT~combout\(2))))) # 
-- (\RegT~combout\(3) & (((\RegN14|output\(15) & \RegT~combout\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000011010111110000001101010000111100110101111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegB2|ALT_INV_output\(15),
	datab => \RegN14|ALT_INV_output\(15),
	datac => \ALT_INV_RegT~combout\(3),
	datad => \ALT_INV_RegT~combout\(2),
	datae => \RegJ10|ALT_INV_output\(15),
	dataf => \RegF6|ALT_INV_output\(15),
	combout => \Mux2|Mux0~1_combout\);

-- Location: LCCOMB_X15_Y14_N28
\Mux2|Mux0~3\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux0~3_combout\ = ( \RegK11|output\(15) & ( \RegT~combout\(3) & ( (!\RegT~combout\(2)) # (\RegO15|output\(15)) ) ) ) # ( !\RegK11|output\(15) & ( \RegT~combout\(3) & ( (\RegO15|output\(15) & \RegT~combout\(2)) ) ) ) # ( \RegK11|output\(15) & ( 
-- !\RegT~combout\(3) & ( (!\RegT~combout\(2) & ((\RegC3|output\(15)))) # (\RegT~combout\(2) & (\RegG7|output\(15))) ) ) ) # ( !\RegK11|output\(15) & ( !\RegT~combout\(3) & ( (!\RegT~combout\(2) & ((\RegC3|output\(15)))) # (\RegT~combout\(2) & 
-- (\RegG7|output\(15))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegG7|ALT_INV_output\(15),
	datab => \RegO15|ALT_INV_output\(15),
	datac => \RegC3|ALT_INV_output\(15),
	datad => \ALT_INV_RegT~combout\(2),
	datae => \RegK11|ALT_INV_output\(15),
	dataf => \ALT_INV_RegT~combout\(3),
	combout => \Mux2|Mux0~3_combout\);

-- Location: LCCOMB_X18_Y25_N30
\Mux2|Mux0~4\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2|Mux0~4_combout\ = ( \RegT~combout\(0) & ( \RegT~combout\(1) & ( \Mux2|Mux0~3_combout\ ) ) ) # ( !\RegT~combout\(0) & ( \RegT~combout\(1) & ( \Mux2|Mux0~1_combout\ ) ) ) # ( \RegT~combout\(0) & ( !\RegT~combout\(1) & ( \Mux2|Mux0~2_combout\ ) ) ) # ( 
-- !\RegT~combout\(0) & ( !\RegT~combout\(1) & ( \Mux2|Mux0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|ALT_INV_Mux0~0_combout\,
	datab => \Mux2|ALT_INV_Mux0~2_combout\,
	datac => \Mux2|ALT_INV_Mux0~1_combout\,
	datad => \Mux2|ALT_INV_Mux0~3_combout\,
	datae => \ALT_INV_RegT~combout\(0),
	dataf => \ALT_INV_RegT~combout\(1),
	combout => \Mux2|Mux0~4_combout\);

-- Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DataS[0]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Mux1|Mux15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DataS(0));

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DataS[1]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Mux1|Mux14~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DataS(1));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DataS[2]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Mux1|Mux13~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DataS(2));

-- Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DataS[3]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Mux1|Mux12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DataS(3));

-- Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DataS[4]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Mux1|Mux11~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DataS(4));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DataS[5]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Mux1|Mux10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DataS(5));

-- Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DataS[6]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Mux1|Mux9~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DataS(6));

-- Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DataS[7]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Mux1|Mux8~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DataS(7));

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\DataS[8]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Mux1|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DataS(8));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DataS[9]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Mux1|Mux6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DataS(9));

-- Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DataS[10]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Mux1|Mux5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DataS(10));

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\DataS[11]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Mux1|Mux4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DataS(11));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DataS[12]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Mux1|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DataS(12));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\DataS[13]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Mux1|Mux2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DataS(13));

-- Location: PIN_Y11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DataS[14]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Mux1|Mux1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DataS(14));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\DataS[15]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Mux1|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DataS(15));

-- Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DataT[0]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Mux2|Mux15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DataT(0));

-- Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DataT[1]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Mux2|Mux14~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DataT(1));

-- Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DataT[2]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Mux2|Mux13~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DataT(2));

-- Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DataT[3]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Mux2|Mux12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DataT(3));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DataT[4]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Mux2|Mux11~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DataT(4));

-- Location: PIN_U6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DataT[5]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Mux2|Mux10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DataT(5));

-- Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DataT[6]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Mux2|Mux9~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DataT(6));

-- Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DataT[7]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Mux2|Mux8~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DataT(7));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 12mA
\DataT[8]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Mux2|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DataT(8));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DataT[9]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Mux2|Mux6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DataT(9));

-- Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DataT[10]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Mux2|Mux5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DataT(10));

-- Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DataT[11]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Mux2|Mux4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DataT(11));

-- Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DataT[12]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Mux2|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DataT(12));

-- Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DataT[13]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Mux2|Mux2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DataT(13));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DataT[14]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Mux2|Mux1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DataT(14));

-- Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DataT[15]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \Mux2|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DataT(15));
END structure;


