-- Copyright (C) 1991-2013 Altera Corporation
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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "12/14/2023 16:54:21"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	batalhaNaval_ruan IS
    PORT (
	SW : IN std_logic_vector(9 DOWNTO 0);
	key : IN std_logic_vector(3 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	hex0 : OUT std_logic_vector(0 TO 6);
	hex1 : OUT std_logic_vector(0 TO 6);
	hex2 : OUT std_logic_vector(0 TO 6);
	hex3 : OUT std_logic_vector(0 TO 6)
	);
END batalhaNaval_ruan;

-- Design Ports Information
-- SW[7]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[3]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[1]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[2]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[3]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[4]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[5]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[6]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[7]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[2]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[3]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[4]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[5]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[6]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[7]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[8]	=>  Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[9]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[6]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[5]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[4]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[3]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[2]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[1]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[0]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[6]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[5]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[4]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[3]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[2]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[1]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[0]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- key[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[2]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[1]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF batalhaNaval_ruan IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_key : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_hex0 : std_logic_vector(0 TO 6);
SIGNAL ww_hex1 : std_logic_vector(0 TO 6);
SIGNAL ww_hex2 : std_logic_vector(0 TO 6);
SIGNAL ww_hex3 : std_logic_vector(0 TO 6);
SIGNAL \state.lost~regout\ : std_logic;
SIGNAL \resultado~0_combout\ : std_logic;
SIGNAL \resultado~3_combout\ : std_logic;
SIGNAL \Equal9~1_combout\ : std_logic;
SIGNAL \LEDG[1]~4_combout\ : std_logic;
SIGNAL \cont_erros~5_combout\ : std_logic;
SIGNAL \LEDR[0]~7_combout\ : std_logic;
SIGNAL \hex0~7_combout\ : std_logic;
SIGNAL \hex0~11_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \cont_acertos~3_combout\ : std_logic;
SIGNAL \resultado~6_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \resultado~8_combout\ : std_logic;
SIGNAL \nav2_casa2~9_combout\ : std_logic;
SIGNAL \Equal13~0_combout\ : std_logic;
SIGNAL \state~22_combout\ : std_logic;
SIGNAL \cont_disparos[3]~5_combout\ : std_logic;
SIGNAL \nav1~1_combout\ : std_logic;
SIGNAL \state.start~feeder_combout\ : std_logic;
SIGNAL \state.start~regout\ : std_logic;
SIGNAL \nav2_casa1~3_combout\ : std_logic;
SIGNAL \nav1[3]~feeder_combout\ : std_logic;
SIGNAL \nav1~3_combout\ : std_logic;
SIGNAL \nav1[2]~feeder_combout\ : std_logic;
SIGNAL \nav1~2_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \nav1~0_combout\ : std_logic;
SIGNAL \nav2_casa1[1]~feeder_combout\ : std_logic;
SIGNAL \nav2_casa1~1_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \nav2_casa2~12_combout\ : std_logic;
SIGNAL \Equal8~1_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \state.set~0_combout\ : std_logic;
SIGNAL \state.set~regout\ : std_logic;
SIGNAL \resultado~1_combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \LEDG~2_combout\ : std_logic;
SIGNAL \cont_disparos[0]~7_combout\ : std_logic;
SIGNAL \cont_disparos[3]~4_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \hex0~15_combout\ : std_logic;
SIGNAL \cont_disparos[2]~6_combout\ : std_logic;
SIGNAL \cont_disparos[2]~feeder_combout\ : std_logic;
SIGNAL \hex0[0]~4_combout\ : std_logic;
SIGNAL \resultado~4_combout\ : std_logic;
SIGNAL \decod_casa_2~0_combout\ : std_logic;
SIGNAL \resultado~5_combout\ : std_logic;
SIGNAL \decod_casa_2~1_combout\ : std_logic;
SIGNAL \decod_casa_2~2_combout\ : std_logic;
SIGNAL \nav2_casa2~5_combout\ : std_logic;
SIGNAL \nav2_casa2~6_combout\ : std_logic;
SIGNAL \nav2_casa2~7_combout\ : std_logic;
SIGNAL \nav2_casa2~8_combout\ : std_logic;
SIGNAL \nav2_casa2~3_combout\ : std_logic;
SIGNAL \nav2_casa2~4_combout\ : std_logic;
SIGNAL \Equal11~0_combout\ : std_logic;
SIGNAL \resultado~2_combout\ : std_logic;
SIGNAL \nav2_casa2~10_combout\ : std_logic;
SIGNAL \resultado~7_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \nav2_casa2~2_combout\ : std_logic;
SIGNAL \nav2_casa2~11_combout\ : std_logic;
SIGNAL \Equal11~1_combout\ : std_logic;
SIGNAL \Equal11~2_combout\ : std_logic;
SIGNAL \cont_acertos~1_combout\ : std_logic;
SIGNAL \nav2_casa1~2_combout\ : std_logic;
SIGNAL \Equal10~1_combout\ : std_logic;
SIGNAL \nav2_casa1~0_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \cont_acertos~0_combout\ : std_logic;
SIGNAL \cont_acertos~2_combout\ : std_logic;
SIGNAL \state~18_combout\ : std_logic;
SIGNAL \cont_erros~4_combout\ : std_logic;
SIGNAL \cont_erros~7_combout\ : std_logic;
SIGNAL \cont_erros~9_combout\ : std_logic;
SIGNAL \cont_erros~10_combout\ : std_logic;
SIGNAL \cont_erros~11_combout\ : std_logic;
SIGNAL \cont_erros~8_combout\ : std_logic;
SIGNAL \Equal14~3_combout\ : std_logic;
SIGNAL \Equal14~2_combout\ : std_logic;
SIGNAL \state~23_combout\ : std_logic;
SIGNAL \state~24_combout\ : std_logic;
SIGNAL \state.shot~regout\ : std_logic;
SIGNAL \state~19_combout\ : std_logic;
SIGNAL \state~25_combout\ : std_logic;
SIGNAL \state~20_combout\ : std_logic;
SIGNAL \state~21_combout\ : std_logic;
SIGNAL \state.win~regout\ : std_logic;
SIGNAL \LEDG~1_combout\ : std_logic;
SIGNAL \LEDG[0]~0_combout\ : std_logic;
SIGNAL \LEDG~3_combout\ : std_logic;
SIGNAL \LEDG[0]~reg0_regout\ : std_logic;
SIGNAL \LEDG[1]~5_combout\ : std_logic;
SIGNAL \LEDG[2]~6_combout\ : std_logic;
SIGNAL \LEDG[2]~7_combout\ : std_logic;
SIGNAL \LEDG[1]~reg0_regout\ : std_logic;
SIGNAL \LEDG[2]~9_combout\ : std_logic;
SIGNAL \LEDG[2]~8_combout\ : std_logic;
SIGNAL \LEDG[2]~10_combout\ : std_logic;
SIGNAL \LEDG[2]~reg0_regout\ : std_logic;
SIGNAL \LEDR[5]~4_combout\ : std_logic;
SIGNAL \LEDR[5]~5_combout\ : std_logic;
SIGNAL \LEDG[3]~reg0_regout\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \cont_erros~6_combout\ : std_logic;
SIGNAL \state~16_combout\ : std_logic;
SIGNAL \state~17_combout\ : std_logic;
SIGNAL \LEDR[0]~6_combout\ : std_logic;
SIGNAL \LEDR[0]~8_combout\ : std_logic;
SIGNAL \LEDR[0]~reg0_regout\ : std_logic;
SIGNAL \LEDR[1]~9_combout\ : std_logic;
SIGNAL \LEDR[1]~10_combout\ : std_logic;
SIGNAL \LEDR[5]~19_combout\ : std_logic;
SIGNAL \LEDR[1]~reg0_regout\ : std_logic;
SIGNAL \LEDR[2]~11_combout\ : std_logic;
SIGNAL \LEDR[2]~12_combout\ : std_logic;
SIGNAL \LEDR[2]~reg0_regout\ : std_logic;
SIGNAL \LEDR[3]~20_combout\ : std_logic;
SIGNAL \LEDR[3]~13_combout\ : std_logic;
SIGNAL \LEDR[3]~14_combout\ : std_logic;
SIGNAL \LEDR[3]~reg0_regout\ : std_logic;
SIGNAL \LEDR[4]~15_combout\ : std_logic;
SIGNAL \LEDR[4]~16_combout\ : std_logic;
SIGNAL \LEDR[4]~reg0_regout\ : std_logic;
SIGNAL \LEDR[5]~17_combout\ : std_logic;
SIGNAL \LEDR[5]~18_combout\ : std_logic;
SIGNAL \LEDR[5]~reg0_regout\ : std_logic;
SIGNAL \LEDR[6]~27_combout\ : std_logic;
SIGNAL \LEDR[6]~reg0_regout\ : std_logic;
SIGNAL \hex0~2_combout\ : std_logic;
SIGNAL \hex0~3_combout\ : std_logic;
SIGNAL \hex0[6]~5_combout\ : std_logic;
SIGNAL \hex0[6]~reg0_regout\ : std_logic;
SIGNAL \hex0~6_combout\ : std_logic;
SIGNAL \hex0[5]~reg0feeder_combout\ : std_logic;
SIGNAL \key[2]~_wirecell_combout\ : std_logic;
SIGNAL \hex0[5]~reg0_regout\ : std_logic;
SIGNAL \hex0~8_combout\ : std_logic;
SIGNAL \hex0[4]~reg0_regout\ : std_logic;
SIGNAL \hex0~9_combout\ : std_logic;
SIGNAL \hex0~10_combout\ : std_logic;
SIGNAL \hex0[3]~reg0_regout\ : std_logic;
SIGNAL \hex0~16_combout\ : std_logic;
SIGNAL \hex0[2]~reg0_regout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \hex0[1]~12_combout\ : std_logic;
SIGNAL \hex0[1]~reg0_regout\ : std_logic;
SIGNAL \hex0~13_combout\ : std_logic;
SIGNAL \hex0~14_combout\ : std_logic;
SIGNAL \hex0[0]~reg0_regout\ : std_logic;
SIGNAL \hex3[1]~reg0feeder_combout\ : std_logic;
SIGNAL \hex3[1]~reg0_regout\ : std_logic;
SIGNAL \hex2[1]~reg0feeder_combout\ : std_logic;
SIGNAL \hex2[1]~reg0_regout\ : std_logic;
SIGNAL \hex3[6]~0_combout\ : std_logic;
SIGNAL \hex3[6]~reg0_regout\ : std_logic;
SIGNAL nav2_casa2 : std_logic_vector(3 DOWNTO 0);
SIGNAL nav2_casa1 : std_logic_vector(3 DOWNTO 0);
SIGNAL nav1 : std_logic_vector(3 DOWNTO 0);
SIGNAL cont_erros : std_logic_vector(2 DOWNTO 0);
SIGNAL cont_disparos : std_logic_vector(3 DOWNTO 0);
SIGNAL cont_acertos : std_logic_vector(2 DOWNTO 0);
SIGNAL \key~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_LEDR[5]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_LEDR[4]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_LEDR[3]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_LEDR[2]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_LEDR[1]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_LEDR[0]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_key~combout\ : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_SW <= SW;
ww_key <= key;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
hex0 <= ww_hex0;
hex1 <= ww_hex1;
hex2 <= ww_hex2;
hex3 <= ww_hex3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_LEDR[5]~reg0_regout\ <= NOT \LEDR[5]~reg0_regout\;
\ALT_INV_LEDR[4]~reg0_regout\ <= NOT \LEDR[4]~reg0_regout\;
\ALT_INV_LEDR[3]~reg0_regout\ <= NOT \LEDR[3]~reg0_regout\;
\ALT_INV_LEDR[2]~reg0_regout\ <= NOT \LEDR[2]~reg0_regout\;
\ALT_INV_LEDR[1]~reg0_regout\ <= NOT \LEDR[1]~reg0_regout\;
\ALT_INV_LEDR[0]~reg0_regout\ <= NOT \LEDR[0]~reg0_regout\;
\ALT_INV_key~combout\(1) <= NOT \key~combout\(1);
\ALT_INV_key~combout\(0) <= NOT \key~combout\(0);

-- Location: LCFF_X49_Y8_N17
\state.lost\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \state~22_combout\,
	aclr => \ALT_INV_key~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.lost~regout\);

-- Location: LCCOMB_X49_Y9_N28
\resultado~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \resultado~0_combout\ = (\SW~combout\(3) & ((\SW~combout\(0) & (\SW~combout\(1))) # (!\SW~combout\(0) & ((!\SW~combout\(2)))))) # (!\SW~combout\(3) & (((!\SW~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \SW~combout\(3),
	datac => \SW~combout\(2),
	datad => \SW~combout\(0),
	combout => \resultado~0_combout\);

-- Location: LCCOMB_X47_Y9_N28
\resultado~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \resultado~3_combout\ = (\SW~combout\(3) & (\SW~combout\(1) & ((!\SW~combout\(2)) # (!\SW~combout\(0))))) # (!\SW~combout\(3) & ((\SW~combout\(1)) # ((\SW~combout\(0) & !\SW~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \SW~combout\(1),
	datac => \SW~combout\(0),
	datad => \SW~combout\(2),
	combout => \resultado~3_combout\);

-- Location: LCCOMB_X47_Y9_N30
\Equal9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal9~1_combout\ = (\resultado~2_combout\ & (nav1(3) & (\resultado~3_combout\ $ (!nav1(2))))) # (!\resultado~2_combout\ & (!nav1(3) & (\resultado~3_combout\ $ (!nav1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resultado~2_combout\,
	datab => \resultado~3_combout\,
	datac => nav1(2),
	datad => nav1(3),
	combout => \Equal9~1_combout\);

-- Location: LCCOMB_X49_Y8_N24
\LEDG[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDG[1]~4_combout\ = (\state.shot~regout\ & (((\LEDG[1]~reg0_regout\)))) # (!\state.shot~regout\ & ((\state.win~regout\) # ((!\state.lost~regout\ & \LEDG[1]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.lost~regout\,
	datab => \state.win~regout\,
	datac => \state.shot~regout\,
	datad => \LEDG[1]~reg0_regout\,
	combout => \LEDG[1]~4_combout\);

-- Location: LCCOMB_X48_Y8_N20
\cont_erros~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_erros~5_combout\ = ((cont_erros(1)) # (!cont_erros(2))) # (!cont_erros(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_erros(0),
	datac => cont_erros(1),
	datad => cont_erros(2),
	combout => \cont_erros~5_combout\);

-- Location: LCCOMB_X49_Y8_N10
\LEDR[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR[0]~7_combout\ = ((\state.lost~regout\ & (!\state.set~regout\ & \state.start~regout\))) # (!\LEDR[0]~reg0_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.lost~regout\,
	datab => \state.set~regout\,
	datac => \state.start~regout\,
	datad => \LEDR[0]~reg0_regout\,
	combout => \LEDR[0]~7_combout\);

-- Location: LCFF_X49_Y10_N5
\cont_disparos[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \cont_disparos[3]~5_combout\,
	aclr => \ALT_INV_key~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cont_disparos(3));

-- Location: LCCOMB_X48_Y10_N6
\hex0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex0~7_combout\ = (cont_disparos(0)) # ((!cont_disparos(3) & (!cont_disparos(1) & cont_disparos(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_disparos(3),
	datab => cont_disparos(0),
	datac => cont_disparos(1),
	datad => cont_disparos(2),
	combout => \hex0~7_combout\);

-- Location: LCCOMB_X48_Y10_N26
\hex0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex0~11_combout\ = (!cont_disparos(3) & (!cont_disparos(0) & (cont_disparos(1) & !cont_disparos(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_disparos(3),
	datab => cont_disparos(0),
	datac => cont_disparos(1),
	datad => cont_disparos(2),
	combout => \hex0~11_combout\);

-- Location: LCCOMB_X48_Y10_N12
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!cont_disparos(3) & cont_disparos(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_disparos(3),
	datad => cont_disparos(2),
	combout => \Mux1~0_combout\);

-- Location: LCFF_X48_Y9_N27
\cont_acertos[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \cont_acertos~3_combout\,
	aclr => \ALT_INV_key~combout\(1),
	ena => \state.shot~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cont_acertos(0));

-- Location: LCCOMB_X48_Y9_N26
\cont_acertos~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_acertos~3_combout\ = (cont_acertos(0)) # ((!\key~combout\(2) & (\Equal9~0_combout\ & \Equal9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(2),
	datab => \Equal9~0_combout\,
	datac => cont_acertos(0),
	datad => \Equal9~1_combout\,
	combout => \cont_acertos~3_combout\);

-- Location: LCCOMB_X47_Y9_N4
\resultado~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \resultado~6_combout\ = (\SW~combout\(3) & (\SW~combout\(0) $ (((!\SW~combout\(1) & \SW~combout\(2)))))) # (!\SW~combout\(3) & (\SW~combout\(2) $ (((\SW~combout\(0)) # (!\SW~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \SW~combout\(1),
	datac => \SW~combout\(0),
	datad => \SW~combout\(2),
	combout => \resultado~6_combout\);

-- Location: LCCOMB_X48_Y9_N24
\Equal8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (\nav2_casa2~8_combout\ & (\nav1~0_combout\ & (\nav1~1_combout\ $ (!\nav2_casa2~4_combout\)))) # (!\nav2_casa2~8_combout\ & (!\nav1~0_combout\ & (\nav1~1_combout\ $ (!\nav2_casa2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nav2_casa2~8_combout\,
	datab => \nav1~1_combout\,
	datac => \nav1~0_combout\,
	datad => \nav2_casa2~4_combout\,
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X48_Y7_N22
\resultado~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \resultado~8_combout\ = \resultado~5_combout\ $ (((\resultado~7_combout\ & (\resultado~4_combout\)) # (!\resultado~7_combout\ & (!\resultado~4_combout\ & \SW~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resultado~7_combout\,
	datab => \resultado~5_combout\,
	datac => \resultado~4_combout\,
	datad => \SW~combout\(6),
	combout => \resultado~8_combout\);

-- Location: LCCOMB_X48_Y7_N8
\nav2_casa2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \nav2_casa2~9_combout\ = (\process_0~0_combout\ & ((\decod_casa_2~2_combout\ & (!\decod_casa_2~0_combout\)) # (!\decod_casa_2~2_combout\ & ((!\resultado~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decod_casa_2~0_combout\,
	datab => \resultado~8_combout\,
	datac => \decod_casa_2~2_combout\,
	datad => \process_0~0_combout\,
	combout => \nav2_casa2~9_combout\);

-- Location: LCCOMB_X48_Y8_N4
\Equal13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal13~0_combout\ = (\cont_acertos~3_combout\ & (\cont_acertos~1_combout\ & \cont_acertos~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_acertos~3_combout\,
	datac => \cont_acertos~1_combout\,
	datad => \cont_acertos~2_combout\,
	combout => \Equal13~0_combout\);

-- Location: LCCOMB_X49_Y8_N16
\state~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~22_combout\ = (\Equal13~0_combout\ & ((\state~25_combout\) # ((\state.lost~regout\ & \state~20_combout\)))) # (!\Equal13~0_combout\ & (((\state.lost~regout\ & \state~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~0_combout\,
	datab => \state~25_combout\,
	datac => \state.lost~regout\,
	datad => \state~20_combout\,
	combout => \state~22_combout\);

-- Location: LCCOMB_X49_Y10_N4
\cont_disparos[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_disparos[3]~5_combout\ = cont_disparos(3) $ (((\hex0~15_combout\ & (\cont_disparos[3]~4_combout\ & cont_disparos(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex0~15_combout\,
	datab => \cont_disparos[3]~4_combout\,
	datac => cont_disparos(3),
	datad => cont_disparos(2),
	combout => \cont_disparos[3]~5_combout\);

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_key(0),
	combout => \key~combout\(0));

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X49_Y9_N18
\nav1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \nav1~1_combout\ = (\key~combout\(2) & (((nav1(1))))) # (!\key~combout\(2) & ((\SW~combout\(4) & (nav1(1))) # (!\SW~combout\(4) & ((\SW~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(2),
	datab => \SW~combout\(4),
	datac => nav1(1),
	datad => \SW~combout\(1),
	combout => \nav1~1_combout\);

-- Location: LCCOMB_X49_Y10_N30
\state.start~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.start~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \state.start~feeder_combout\);

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_key(1),
	combout => \key~combout\(1));

-- Location: LCFF_X49_Y10_N31
\state.start\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \state.start~feeder_combout\,
	aclr => \ALT_INV_key~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.start~regout\);

-- Location: LCFF_X49_Y9_N9
\nav2_casa1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \nav2_casa1~3_combout\,
	ena => \state.set~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nav2_casa1(3));

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_key(2),
	combout => \key~combout\(2));

-- Location: LCCOMB_X49_Y9_N8
\nav2_casa1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \nav2_casa1~3_combout\ = (\SW~combout\(4) & ((\key~combout\(2) & ((nav2_casa1(3)))) # (!\key~combout\(2) & (\SW~combout\(3))))) # (!\SW~combout\(4) & (((nav2_casa1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \SW~combout\(4),
	datac => nav2_casa1(3),
	datad => \key~combout\(2),
	combout => \nav2_casa1~3_combout\);

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X47_Y9_N12
\nav1[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \nav1[3]~feeder_combout\ = \nav1~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \nav1~3_combout\,
	combout => \nav1[3]~feeder_combout\);

-- Location: LCFF_X47_Y9_N13
\nav1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \nav1[3]~feeder_combout\,
	ena => \state.set~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nav1(3));

-- Location: LCCOMB_X47_Y9_N6
\nav1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \nav1~3_combout\ = (\key~combout\(2) & (((nav1(3))))) # (!\key~combout\(2) & ((\SW~combout\(4) & ((nav1(3)))) # (!\SW~combout\(4) & (\SW~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(2),
	datab => \SW~combout\(4),
	datac => \SW~combout\(3),
	datad => nav1(3),
	combout => \nav1~3_combout\);

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X47_Y9_N14
\nav1[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \nav1[2]~feeder_combout\ = \nav1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \nav1~2_combout\,
	combout => \nav1[2]~feeder_combout\);

-- Location: LCFF_X47_Y9_N15
\nav1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \nav1[2]~feeder_combout\,
	ena => \state.set~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nav1(2));

-- Location: LCCOMB_X47_Y9_N20
\nav1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \nav1~2_combout\ = (\key~combout\(2) & (((nav1(2))))) # (!\key~combout\(2) & ((\SW~combout\(4) & ((nav1(2)))) # (!\SW~combout\(4) & (\SW~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(2),
	datab => \SW~combout\(2),
	datac => nav1(2),
	datad => \SW~combout\(4),
	combout => \nav1~2_combout\);

-- Location: LCCOMB_X48_Y9_N14
\process_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (\nav2_casa1~2_combout\ & ((\nav2_casa1~3_combout\ $ (\nav1~3_combout\)) # (!\nav1~2_combout\))) # (!\nav2_casa1~2_combout\ & ((\nav1~2_combout\) # (\nav2_casa1~3_combout\ $ (\nav1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nav2_casa1~2_combout\,
	datab => \nav2_casa1~3_combout\,
	datac => \nav1~3_combout\,
	datad => \nav1~2_combout\,
	combout => \process_0~2_combout\);

-- Location: LCFF_X49_Y9_N13
\nav1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \nav1~0_combout\,
	ena => \state.set~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nav1(0));

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X49_Y9_N12
\nav1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \nav1~0_combout\ = (\key~combout\(2) & (((nav1(0))))) # (!\key~combout\(2) & ((\SW~combout\(4) & (nav1(0))) # (!\SW~combout\(4) & ((\SW~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(2),
	datab => \SW~combout\(4),
	datac => nav1(0),
	datad => \SW~combout\(0),
	combout => \nav1~0_combout\);

-- Location: LCCOMB_X47_Y9_N8
\nav2_casa1[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \nav2_casa1[1]~feeder_combout\ = \nav2_casa1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \nav2_casa1~1_combout\,
	combout => \nav2_casa1[1]~feeder_combout\);

-- Location: LCFF_X47_Y9_N9
\nav2_casa1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \nav2_casa1[1]~feeder_combout\,
	ena => \state.set~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nav2_casa1(1));

-- Location: LCCOMB_X47_Y9_N10
\nav2_casa1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \nav2_casa1~1_combout\ = (\key~combout\(2) & (((nav2_casa1(1))))) # (!\key~combout\(2) & ((\SW~combout\(4) & (\SW~combout\(1))) # (!\SW~combout\(4) & ((nav2_casa1(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(2),
	datab => \SW~combout\(1),
	datac => nav2_casa1(1),
	datad => \SW~combout\(4),
	combout => \nav2_casa1~1_combout\);

-- Location: LCCOMB_X48_Y9_N28
\process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (\nav2_casa1~0_combout\ & ((\nav1~1_combout\ $ (\nav2_casa1~1_combout\)) # (!\nav1~0_combout\))) # (!\nav2_casa1~0_combout\ & ((\nav1~0_combout\) # (\nav1~1_combout\ $ (\nav2_casa1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nav2_casa1~0_combout\,
	datab => \nav1~1_combout\,
	datac => \nav1~0_combout\,
	datad => \nav2_casa1~1_combout\,
	combout => \process_0~1_combout\);

-- Location: LCCOMB_X48_Y9_N20
\process_0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (\SW~combout\(5) & ((\process_0~2_combout\) # (\process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(5),
	datac => \process_0~2_combout\,
	datad => \process_0~1_combout\,
	combout => \process_0~3_combout\);

-- Location: LCFF_X49_Y9_N21
\nav2_casa2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \nav2_casa2~12_combout\,
	ena => \state.set~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nav2_casa2(3));

-- Location: LCCOMB_X49_Y9_N20
\nav2_casa2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \nav2_casa2~12_combout\ = (\nav2_casa2~9_combout\) # ((nav2_casa2(3) & ((\key~combout\(2)) # (!\SW~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nav2_casa2~9_combout\,
	datab => \SW~combout\(4),
	datac => nav2_casa2(3),
	datad => \key~combout\(2),
	combout => \nav2_casa2~12_combout\);

-- Location: LCCOMB_X48_Y9_N30
\Equal8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal8~1_combout\ = (\nav2_casa2~11_combout\ & (\nav1~2_combout\ & (\nav2_casa2~12_combout\ $ (!\nav1~3_combout\)))) # (!\nav2_casa2~11_combout\ & (!\nav1~2_combout\ & (\nav2_casa2~12_combout\ $ (!\nav1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nav2_casa2~11_combout\,
	datab => \nav2_casa2~12_combout\,
	datac => \nav1~3_combout\,
	datad => \nav1~2_combout\,
	combout => \Equal8~1_combout\);

-- Location: LCCOMB_X48_Y9_N12
\process_0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = (\process_0~3_combout\ & ((!\Equal8~1_combout\) # (!\Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datac => \process_0~3_combout\,
	datad => \Equal8~1_combout\,
	combout => \process_0~4_combout\);

-- Location: LCCOMB_X49_Y10_N20
\state.set~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.set~0_combout\ = ((\state.set~regout\ & !\process_0~4_combout\)) # (!\state.start~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.start~regout\,
	datac => \state.set~regout\,
	datad => \process_0~4_combout\,
	combout => \state.set~0_combout\);

-- Location: LCFF_X49_Y10_N21
\state.set\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \state.set~0_combout\,
	aclr => \ALT_INV_key~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.set~regout\);

-- Location: LCFF_X49_Y9_N19
\nav1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \nav1~1_combout\,
	ena => \state.set~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nav1(1));

-- Location: LCCOMB_X47_Y9_N0
\resultado~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \resultado~1_combout\ = (\SW~combout\(0) & ((\SW~combout\(3) & ((\SW~combout\(2)))) # (!\SW~combout\(3) & (\SW~combout\(1))))) # (!\SW~combout\(0) & ((\SW~combout\(1) & ((!\SW~combout\(2)))) # (!\SW~combout\(1) & (\SW~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \SW~combout\(1),
	datac => \SW~combout\(0),
	datad => \SW~combout\(2),
	combout => \resultado~1_combout\);

-- Location: LCCOMB_X49_Y9_N14
\Equal9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = (\resultado~0_combout\ & (nav1(1) & (\resultado~1_combout\ $ (!nav1(0))))) # (!\resultado~0_combout\ & (!nav1(1) & (\resultado~1_combout\ $ (!nav1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resultado~0_combout\,
	datab => nav1(1),
	datac => \resultado~1_combout\,
	datad => nav1(0),
	combout => \Equal9~0_combout\);

-- Location: LCCOMB_X48_Y9_N8
\LEDG~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDG~2_combout\ = (\LEDG[0]~reg0_regout\ & (((\key~combout\(2)) # (!\Equal9~0_combout\)) # (!\Equal9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~1_combout\,
	datab => \Equal9~0_combout\,
	datac => \key~combout\(2),
	datad => \LEDG[0]~reg0_regout\,
	combout => \LEDG~2_combout\);

-- Location: LCCOMB_X49_Y10_N14
\cont_disparos[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_disparos[0]~7_combout\ = !cont_disparos(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cont_disparos(0),
	combout => \cont_disparos[0]~7_combout\);

-- Location: LCCOMB_X48_Y10_N4
\cont_disparos[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_disparos[3]~4_combout\ = (!\key~combout\(2) & \state.shot~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key~combout\(2),
	datad => \state.shot~regout\,
	combout => \cont_disparos[3]~4_combout\);

-- Location: LCFF_X49_Y10_N15
\cont_disparos[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \cont_disparos[0]~7_combout\,
	aclr => \ALT_INV_key~combout\(1),
	ena => \cont_disparos[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cont_disparos(0));

-- Location: LCCOMB_X49_Y10_N24
\Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = cont_disparos(1) $ (cont_disparos(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_disparos(1),
	datac => cont_disparos(0),
	combout => \Mux1~1_combout\);

-- Location: LCFF_X49_Y10_N13
\cont_disparos[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	sdata => \Mux1~1_combout\,
	aclr => \ALT_INV_key~combout\(1),
	sload => VCC,
	ena => \cont_disparos[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cont_disparos(1));

-- Location: LCCOMB_X49_Y10_N10
\hex0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex0~15_combout\ = (cont_disparos(0) & cont_disparos(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cont_disparos(0),
	datad => cont_disparos(1),
	combout => \hex0~15_combout\);

-- Location: LCCOMB_X48_Y10_N22
\cont_disparos[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_disparos[2]~6_combout\ = cont_disparos(2) $ (((\state.shot~regout\ & (\hex0~15_combout\ & !\key~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.shot~regout\,
	datab => \hex0~15_combout\,
	datac => \key~combout\(2),
	datad => cont_disparos(2),
	combout => \cont_disparos[2]~6_combout\);

-- Location: LCCOMB_X49_Y10_N18
\cont_disparos[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_disparos[2]~feeder_combout\ = \cont_disparos[2]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cont_disparos[2]~6_combout\,
	combout => \cont_disparos[2]~feeder_combout\);

-- Location: LCFF_X49_Y10_N19
\cont_disparos[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \cont_disparos[2]~feeder_combout\,
	aclr => \ALT_INV_key~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cont_disparos(2));

-- Location: LCCOMB_X48_Y10_N28
\hex0[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex0[0]~4_combout\ = (cont_disparos(3) & ((cont_disparos(1)) # (cont_disparos(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_disparos(3),
	datac => cont_disparos(1),
	datad => cont_disparos(2),
	combout => \hex0[0]~4_combout\);

-- Location: LCFF_X48_Y8_N9
\cont_acertos[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \cont_acertos~1_combout\,
	aclr => \ALT_INV_key~combout\(1),
	ena => \state.shot~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cont_acertos(2));

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X47_Y9_N24
\resultado~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \resultado~4_combout\ = (\SW~combout\(3) & ((\SW~combout\(1)) # (\SW~combout\(0) $ (\SW~combout\(2))))) # (!\SW~combout\(3) & (\SW~combout\(1) & (\SW~combout\(0) $ (!\SW~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \SW~combout\(1),
	datac => \SW~combout\(0),
	datad => \SW~combout\(2),
	combout => \resultado~4_combout\);

-- Location: LCCOMB_X48_Y7_N16
\decod_casa_2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decod_casa_2~0_combout\ = \SW~combout\(6) $ (\resultado~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(6),
	datad => \resultado~4_combout\,
	combout => \decod_casa_2~0_combout\);

-- Location: LCCOMB_X47_Y9_N18
\resultado~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \resultado~5_combout\ = (\SW~combout\(3) & ((\SW~combout\(2) & ((\SW~combout\(0)))) # (!\SW~combout\(2) & (\SW~combout\(1))))) # (!\SW~combout\(3) & ((\SW~combout\(1) & ((\SW~combout\(2)))) # (!\SW~combout\(1) & (!\SW~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \SW~combout\(1),
	datac => \SW~combout\(0),
	datad => \SW~combout\(2),
	combout => \resultado~5_combout\);

-- Location: LCCOMB_X48_Y7_N10
\decod_casa_2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \decod_casa_2~1_combout\ = \resultado~5_combout\ $ (!\SW~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resultado~5_combout\,
	datac => \SW~combout\(6),
	combout => \decod_casa_2~1_combout\);

-- Location: LCCOMB_X48_Y7_N4
\decod_casa_2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \decod_casa_2~2_combout\ = (\resultado~6_combout\) # ((!\resultado~5_combout\ & \SW~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resultado~6_combout\,
	datab => \resultado~5_combout\,
	datac => \SW~combout\(6),
	combout => \decod_casa_2~2_combout\);

-- Location: LCCOMB_X49_Y9_N16
\nav2_casa2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \nav2_casa2~5_combout\ = (\nav2_casa2~2_combout\ & ((\decod_casa_2~0_combout\ & ((!\decod_casa_2~2_combout\))) # (!\decod_casa_2~0_combout\ & (!\decod_casa_2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nav2_casa2~2_combout\,
	datab => \decod_casa_2~0_combout\,
	datac => \decod_casa_2~1_combout\,
	datad => \decod_casa_2~2_combout\,
	combout => \nav2_casa2~5_combout\);

-- Location: LCCOMB_X48_Y7_N24
\nav2_casa2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \nav2_casa2~6_combout\ = (\resultado~4_combout\ & ((\SW~combout\(6) & (!\resultado~7_combout\)) # (!\SW~combout\(6) & ((!\resultado~5_combout\))))) # (!\resultado~4_combout\ & (((\resultado~5_combout\ & \SW~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resultado~7_combout\,
	datab => \resultado~5_combout\,
	datac => \resultado~4_combout\,
	datad => \SW~combout\(6),
	combout => \nav2_casa2~6_combout\);

-- Location: LCCOMB_X49_Y9_N4
\nav2_casa2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \nav2_casa2~7_combout\ = (\process_0~0_combout\ & (\nav2_casa2~6_combout\ & ((\decod_casa_2~2_combout\)))) # (!\process_0~0_combout\ & (((nav2_casa2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \nav2_casa2~6_combout\,
	datac => nav2_casa2(0),
	datad => \decod_casa_2~2_combout\,
	combout => \nav2_casa2~7_combout\);

-- Location: LCCOMB_X48_Y9_N6
\nav2_casa2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \nav2_casa2~8_combout\ = (\nav2_casa2~5_combout\) # (\nav2_casa2~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nav2_casa2~5_combout\,
	datad => \nav2_casa2~7_combout\,
	combout => \nav2_casa2~8_combout\);

-- Location: LCFF_X49_Y9_N5
\nav2_casa2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	sdata => \nav2_casa2~8_combout\,
	sload => VCC,
	ena => \state.set~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nav2_casa2(0));

-- Location: LCCOMB_X49_Y9_N10
\nav2_casa2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \nav2_casa2~3_combout\ = (\decod_casa_2~2_combout\ & ((\decod_casa_2~0_combout\ & (\nav2_casa2~2_combout\)) # (!\decod_casa_2~0_combout\ & ((\decod_casa_2~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nav2_casa2~2_combout\,
	datab => \decod_casa_2~0_combout\,
	datac => \decod_casa_2~1_combout\,
	datad => \decod_casa_2~2_combout\,
	combout => \nav2_casa2~3_combout\);

-- Location: LCCOMB_X49_Y9_N30
\nav2_casa2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \nav2_casa2~4_combout\ = (\process_0~0_combout\ & (\decod_casa_2~0_combout\ $ (((!\nav2_casa2~3_combout\))))) # (!\process_0~0_combout\ & ((nav2_casa2(1)) # ((\decod_casa_2~0_combout\ & \nav2_casa2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \decod_casa_2~0_combout\,
	datac => nav2_casa2(1),
	datad => \nav2_casa2~3_combout\,
	combout => \nav2_casa2~4_combout\);

-- Location: LCFF_X49_Y9_N31
\nav2_casa2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \nav2_casa2~4_combout\,
	ena => \state.set~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nav2_casa2(1));

-- Location: LCCOMB_X49_Y9_N26
\Equal11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal11~0_combout\ = (\resultado~0_combout\ & (nav2_casa2(1) & (\resultado~1_combout\ $ (!nav2_casa2(0))))) # (!\resultado~0_combout\ & (!nav2_casa2(1) & (\resultado~1_combout\ $ (!nav2_casa2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resultado~0_combout\,
	datab => \resultado~1_combout\,
	datac => nav2_casa2(0),
	datad => nav2_casa2(1),
	combout => \Equal11~0_combout\);

-- Location: LCCOMB_X47_Y9_N22
\resultado~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \resultado~2_combout\ = \SW~combout\(0) $ (((\SW~combout\(3)) # (\SW~combout\(1) $ (!\SW~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \SW~combout\(1),
	datac => \SW~combout\(0),
	datad => \SW~combout\(2),
	combout => \resultado~2_combout\);

-- Location: LCCOMB_X49_Y9_N22
\nav2_casa2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \nav2_casa2~10_combout\ = (\decod_casa_2~0_combout\ & ((\nav2_casa2~2_combout\ & (\decod_casa_2~1_combout\ & \decod_casa_2~2_combout\)) # (!\nav2_casa2~2_combout\ & (!\decod_casa_2~1_combout\ & !\decod_casa_2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nav2_casa2~2_combout\,
	datab => \decod_casa_2~0_combout\,
	datac => \decod_casa_2~1_combout\,
	datad => \decod_casa_2~2_combout\,
	combout => \nav2_casa2~10_combout\);

-- Location: LCCOMB_X47_Y9_N26
\resultado~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \resultado~7_combout\ = (\SW~combout\(1) & ((\SW~combout\(2)) # ((!\SW~combout\(3) & \SW~combout\(0))))) # (!\SW~combout\(1) & (((\SW~combout\(0) & \SW~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \SW~combout\(1),
	datac => \SW~combout\(0),
	datad => \SW~combout\(2),
	combout => \resultado~7_combout\);

-- Location: LCCOMB_X48_Y7_N2
\process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\SW~combout\(4) & !\key~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(4),
	datad => \key~combout\(2),
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X48_Y7_N30
\nav2_casa2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \nav2_casa2~2_combout\ = (\process_0~0_combout\ & ((\resultado~7_combout\) # ((!\resultado~4_combout\ & !\SW~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resultado~4_combout\,
	datab => \SW~combout\(6),
	datac => \resultado~7_combout\,
	datad => \process_0~0_combout\,
	combout => \nav2_casa2~2_combout\);

-- Location: LCCOMB_X49_Y9_N2
\nav2_casa2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \nav2_casa2~11_combout\ = (\process_0~0_combout\ & (\nav2_casa2~10_combout\ $ (((\nav2_casa2~2_combout\))))) # (!\process_0~0_combout\ & ((nav2_casa2(2)) # ((!\nav2_casa2~10_combout\ & \nav2_casa2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \nav2_casa2~10_combout\,
	datac => nav2_casa2(2),
	datad => \nav2_casa2~2_combout\,
	combout => \nav2_casa2~11_combout\);

-- Location: LCFF_X49_Y9_N3
\nav2_casa2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \nav2_casa2~11_combout\,
	ena => \state.set~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nav2_casa2(2));

-- Location: LCCOMB_X49_Y9_N24
\Equal11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal11~1_combout\ = (\resultado~3_combout\ & (nav2_casa2(2) & (\resultado~2_combout\ $ (!nav2_casa2(3))))) # (!\resultado~3_combout\ & (!nav2_casa2(2) & (\resultado~2_combout\ $ (!nav2_casa2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resultado~3_combout\,
	datab => \resultado~2_combout\,
	datac => nav2_casa2(3),
	datad => nav2_casa2(2),
	combout => \Equal11~1_combout\);

-- Location: LCCOMB_X48_Y8_N28
\Equal11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal11~2_combout\ = (\Equal11~0_combout\ & \Equal11~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal11~0_combout\,
	datad => \Equal11~1_combout\,
	combout => \Equal11~2_combout\);

-- Location: LCCOMB_X48_Y8_N8
\cont_acertos~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_acertos~1_combout\ = (cont_acertos(2)) # ((\cont_erros~4_combout\ & (!\key~combout\(2) & \Equal11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_erros~4_combout\,
	datab => \key~combout\(2),
	datac => cont_acertos(2),
	datad => \Equal11~2_combout\,
	combout => \cont_acertos~1_combout\);

-- Location: LCFF_X48_Y8_N23
\cont_acertos[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \cont_acertos~2_combout\,
	aclr => \ALT_INV_key~combout\(1),
	ena => \state.shot~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cont_acertos(1));

-- Location: LCCOMB_X49_Y9_N6
\nav2_casa1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \nav2_casa1~2_combout\ = (\SW~combout\(4) & ((\key~combout\(2) & ((nav2_casa1(2)))) # (!\key~combout\(2) & (\SW~combout\(2))))) # (!\SW~combout\(4) & (((nav2_casa1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(2),
	datab => \SW~combout\(4),
	datac => nav2_casa1(2),
	datad => \key~combout\(2),
	combout => \nav2_casa1~2_combout\);

-- Location: LCFF_X49_Y9_N7
\nav2_casa1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \nav2_casa1~2_combout\,
	ena => \state.set~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nav2_casa1(2));

-- Location: LCCOMB_X49_Y9_N0
\Equal10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal10~1_combout\ = (\resultado~3_combout\ & (nav2_casa1(2) & (\resultado~2_combout\ $ (!nav2_casa1(3))))) # (!\resultado~3_combout\ & (!nav2_casa1(2) & (\resultado~2_combout\ $ (!nav2_casa1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resultado~3_combout\,
	datab => \resultado~2_combout\,
	datac => nav2_casa1(3),
	datad => nav2_casa1(2),
	combout => \Equal10~1_combout\);

-- Location: LCCOMB_X47_Y9_N2
\nav2_casa1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \nav2_casa1~0_combout\ = (\SW~combout\(4) & ((\key~combout\(2) & ((nav2_casa1(0)))) # (!\key~combout\(2) & (\SW~combout\(0))))) # (!\SW~combout\(4) & (((nav2_casa1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \SW~combout\(4),
	datac => nav2_casa1(0),
	datad => \key~combout\(2),
	combout => \nav2_casa1~0_combout\);

-- Location: LCFF_X47_Y9_N3
\nav2_casa1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \nav2_casa1~0_combout\,
	ena => \state.set~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nav2_casa1(0));

-- Location: LCCOMB_X47_Y9_N16
\Equal10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = (\resultado~0_combout\ & (nav2_casa1(1) & (\resultado~1_combout\ $ (!nav2_casa1(0))))) # (!\resultado~0_combout\ & (!nav2_casa1(1) & (\resultado~1_combout\ $ (!nav2_casa1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resultado~0_combout\,
	datab => \resultado~1_combout\,
	datac => nav2_casa1(1),
	datad => nav2_casa1(0),
	combout => \Equal10~0_combout\);

-- Location: LCCOMB_X48_Y9_N22
\cont_acertos~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_acertos~0_combout\ = (\Equal10~1_combout\ & (\Equal10~0_combout\ & ((!\Equal9~0_combout\) # (!\Equal9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~1_combout\,
	datab => \Equal9~0_combout\,
	datac => \Equal10~1_combout\,
	datad => \Equal10~0_combout\,
	combout => \cont_acertos~0_combout\);

-- Location: LCCOMB_X48_Y8_N22
\cont_acertos~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_acertos~2_combout\ = (cont_acertos(1)) # ((!\key~combout\(2) & \cont_acertos~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(2),
	datac => cont_acertos(1),
	datad => \cont_acertos~0_combout\,
	combout => \cont_acertos~2_combout\);

-- Location: LCCOMB_X48_Y8_N0
\state~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~18_combout\ = (!\hex0[0]~4_combout\ & (((!\cont_acertos~2_combout\) # (!\cont_acertos~1_combout\)) # (!\cont_acertos~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_acertos~3_combout\,
	datab => \hex0[0]~4_combout\,
	datac => \cont_acertos~1_combout\,
	datad => \cont_acertos~2_combout\,
	combout => \state~18_combout\);

-- Location: LCCOMB_X48_Y9_N16
\cont_erros~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_erros~4_combout\ = (\Equal9~1_combout\ & (!\Equal9~0_combout\ & ((!\Equal10~0_combout\) # (!\Equal10~1_combout\)))) # (!\Equal9~1_combout\ & (((!\Equal10~0_combout\) # (!\Equal10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~1_combout\,
	datab => \Equal9~0_combout\,
	datac => \Equal10~1_combout\,
	datad => \Equal10~0_combout\,
	combout => \cont_erros~4_combout\);

-- Location: LCCOMB_X48_Y8_N24
\cont_erros~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_erros~7_combout\ = cont_erros(0) $ (((\cont_erros~5_combout\) # ((\cont_erros~4_combout\ & !\Equal11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_erros~5_combout\,
	datab => cont_erros(0),
	datac => \cont_erros~4_combout\,
	datad => \Equal11~2_combout\,
	combout => \cont_erros~7_combout\);

-- Location: LCCOMB_X48_Y8_N16
\cont_erros~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_erros~9_combout\ = (\key~combout\(2) & (cont_erros(0))) # (!\key~combout\(2) & ((\cont_erros~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(2),
	datac => cont_erros(0),
	datad => \cont_erros~7_combout\,
	combout => \cont_erros~9_combout\);

-- Location: LCFF_X48_Y8_N17
\cont_erros[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \cont_erros~9_combout\,
	aclr => \ALT_INV_key~combout\(1),
	ena => \state.shot~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cont_erros(0));

-- Location: LCCOMB_X48_Y8_N10
\cont_erros~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_erros~10_combout\ = (\cont_erros~5_combout\) # ((\cont_erros~4_combout\ & ((!\Equal11~1_combout\) # (!\Equal11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_erros~5_combout\,
	datab => \Equal11~0_combout\,
	datac => \cont_erros~4_combout\,
	datad => \Equal11~1_combout\,
	combout => \cont_erros~10_combout\);

-- Location: LCCOMB_X48_Y8_N12
\cont_erros~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_erros~11_combout\ = (\key~combout\(2) & (cont_erros(1))) # (!\key~combout\(2) & (\cont_erros~10_combout\ & (cont_erros(1) $ (cont_erros(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(2),
	datab => cont_erros(1),
	datac => cont_erros(0),
	datad => \cont_erros~10_combout\,
	combout => \cont_erros~11_combout\);

-- Location: LCFF_X48_Y8_N19
\cont_erros[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	sdata => \cont_erros~11_combout\,
	aclr => \ALT_INV_key~combout\(1),
	sload => VCC,
	ena => \state.shot~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cont_erros(1));

-- Location: LCCOMB_X48_Y8_N2
\cont_erros~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_erros~8_combout\ = cont_erros(2) $ (((!\key~combout\(2) & (cont_erros(0) & cont_erros(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(2),
	datab => cont_erros(0),
	datac => cont_erros(2),
	datad => cont_erros(1),
	combout => \cont_erros~8_combout\);

-- Location: LCFF_X48_Y8_N3
\cont_erros[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \cont_erros~8_combout\,
	aclr => \ALT_INV_key~combout\(1),
	ena => \state.shot~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cont_erros(2));

-- Location: LCCOMB_X48_Y8_N26
\Equal14~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal14~3_combout\ = (cont_erros(0) & (!\key~combout\(2) & (cont_erros(1) $ (cont_erros(2))))) # (!cont_erros(0) & (((cont_erros(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(2),
	datab => cont_erros(1),
	datac => cont_erros(0),
	datad => cont_erros(2),
	combout => \Equal14~3_combout\);

-- Location: LCCOMB_X48_Y8_N14
\Equal14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal14~2_combout\ = (\Equal14~3_combout\ & (\cont_erros~11_combout\ & ((\key~combout\(2)) # (!\cont_erros~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(2),
	datab => \Equal14~3_combout\,
	datac => \cont_erros~7_combout\,
	datad => \cont_erros~11_combout\,
	combout => \Equal14~2_combout\);

-- Location: LCCOMB_X49_Y8_N0
\state~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~23_combout\ = (\state~16_combout\ & (\state~18_combout\ & !\Equal14~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~16_combout\,
	datac => \state~18_combout\,
	datad => \Equal14~2_combout\,
	combout => \state~23_combout\);

-- Location: LCCOMB_X49_Y8_N14
\state~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~24_combout\ = (\state.set~regout\ & (\process_0~4_combout\)) # (!\state.set~regout\ & (((\state.shot~regout\ & \state~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~4_combout\,
	datab => \state.set~regout\,
	datac => \state.shot~regout\,
	datad => \state~23_combout\,
	combout => \state~24_combout\);

-- Location: LCFF_X49_Y8_N15
\state.shot\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \state~24_combout\,
	aclr => \ALT_INV_key~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.shot~regout\);

-- Location: LCCOMB_X49_Y8_N12
\state~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~19_combout\ = ((\state~16_combout\ & (\state~18_combout\ & !\Equal14~2_combout\))) # (!\state.shot~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~16_combout\,
	datab => \state.shot~regout\,
	datac => \state~18_combout\,
	datad => \Equal14~2_combout\,
	combout => \state~19_combout\);

-- Location: LCCOMB_X49_Y8_N30
\state~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~25_combout\ = (\state.start~regout\ & (!\state.set~regout\ & !\state~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.start~regout\,
	datac => \state.set~regout\,
	datad => \state~19_combout\,
	combout => \state~25_combout\);

-- Location: LCCOMB_X49_Y8_N6
\state~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~20_combout\ = (\state.start~regout\ & ((\state.set~regout\ & (!\process_0~4_combout\)) # (!\state.set~regout\ & ((\state~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.set~regout\,
	datab => \state.start~regout\,
	datac => \process_0~4_combout\,
	datad => \state~19_combout\,
	combout => \state~20_combout\);

-- Location: LCCOMB_X49_Y8_N18
\state~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~21_combout\ = (\Equal13~0_combout\ & (((\state.win~regout\ & \state~20_combout\)))) # (!\Equal13~0_combout\ & ((\state~25_combout\) # ((\state.win~regout\ & \state~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~0_combout\,
	datab => \state~25_combout\,
	datac => \state.win~regout\,
	datad => \state~20_combout\,
	combout => \state~21_combout\);

-- Location: LCFF_X49_Y8_N19
\state.win\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \state~21_combout\,
	aclr => \ALT_INV_key~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.win~regout\);

-- Location: LCCOMB_X49_Y7_N30
\LEDG~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDG~1_combout\ = (\state.win~regout\) # ((!\state.lost~regout\ & \LEDG[0]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.lost~regout\,
	datac => \state.win~regout\,
	datad => \LEDG[0]~reg0_regout\,
	combout => \LEDG~1_combout\);

-- Location: LCCOMB_X48_Y7_N12
\LEDG[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDG[0]~0_combout\ = (\state.shot~regout\ & (\LEDG~2_combout\)) # (!\state.shot~regout\ & ((\LEDG~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.shot~regout\,
	datab => \LEDG~2_combout\,
	datad => \LEDG~1_combout\,
	combout => \LEDG[0]~0_combout\);

-- Location: LCCOMB_X48_Y7_N14
\LEDG~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDG~3_combout\ = (\LEDG[0]~reg0_regout\) # ((!\SW~combout\(4) & !\key~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDG[0]~reg0_regout\,
	datab => \SW~combout\(4),
	datad => \key~combout\(2),
	combout => \LEDG~3_combout\);

-- Location: LCFF_X48_Y7_N13
\LEDG[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \LEDG[0]~0_combout\,
	sdata => \LEDG~3_combout\,
	aclr => \ALT_INV_key~combout\(1),
	sload => \state.set~regout\,
	ena => \state.start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDG[0]~reg0_regout\);

-- Location: LCCOMB_X49_Y8_N28
\LEDG[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDG[1]~5_combout\ = (\state.set~regout\) # ((\LEDG[1]~4_combout\ & ((!\cont_acertos~0_combout\) # (!\state.shot~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDG[1]~4_combout\,
	datab => \state.set~regout\,
	datac => \state.shot~regout\,
	datad => \cont_acertos~0_combout\,
	combout => \LEDG[1]~5_combout\);

-- Location: LCCOMB_X48_Y7_N20
\LEDG[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDG[2]~6_combout\ = (\key~combout\(2) & (((!\state.shot~regout\ & !\state.set~regout\)))) # (!\key~combout\(2) & ((\SW~combout\(4)) # ((!\state.set~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(2),
	datab => \SW~combout\(4),
	datac => \state.shot~regout\,
	datad => \state.set~regout\,
	combout => \LEDG[2]~6_combout\);

-- Location: LCCOMB_X49_Y7_N0
\LEDG[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDG[2]~7_combout\ = (\LEDG[2]~6_combout\ & \state.start~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LEDG[2]~6_combout\,
	datad => \state.start~regout\,
	combout => \LEDG[2]~7_combout\);

-- Location: LCFF_X49_Y8_N29
\LEDG[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \LEDG[1]~5_combout\,
	aclr => \ALT_INV_key~combout\(1),
	ena => \LEDG[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDG[1]~reg0_regout\);

-- Location: LCCOMB_X49_Y8_N20
\LEDG[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDG[2]~9_combout\ = (!\state.shot~regout\ & ((\state.win~regout\) # ((!\state.lost~regout\ & \LEDG[2]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.lost~regout\,
	datab => \LEDG[2]~reg0_regout\,
	datac => \state.shot~regout\,
	datad => \state.win~regout\,
	combout => \LEDG[2]~9_combout\);

-- Location: LCCOMB_X49_Y8_N26
\LEDG[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDG[2]~8_combout\ = (\LEDG[2]~reg0_regout\ & (\state.shot~regout\ & ((!\Equal11~2_combout\) # (!\cont_erros~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_erros~4_combout\,
	datab => \LEDG[2]~reg0_regout\,
	datac => \state.shot~regout\,
	datad => \Equal11~2_combout\,
	combout => \LEDG[2]~8_combout\);

-- Location: LCCOMB_X49_Y8_N22
\LEDG[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDG[2]~10_combout\ = (\state.set~regout\) # ((\LEDG[2]~9_combout\) # (\LEDG[2]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.set~regout\,
	datac => \LEDG[2]~9_combout\,
	datad => \LEDG[2]~8_combout\,
	combout => \LEDG[2]~10_combout\);

-- Location: LCFF_X49_Y8_N23
\LEDG[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \LEDG[2]~10_combout\,
	aclr => \ALT_INV_key~combout\(1),
	ena => \LEDG[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDG[2]~reg0_regout\);

-- Location: LCCOMB_X49_Y7_N6
\LEDR[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR[5]~4_combout\ = (!\state.set~regout\ & (\state.start~regout\ & ((\state.lost~regout\) # (\state.win~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.lost~regout\,
	datab => \state.set~regout\,
	datac => \state.win~regout\,
	datad => \state.start~regout\,
	combout => \LEDR[5]~4_combout\);

-- Location: LCCOMB_X49_Y7_N20
\LEDR[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR[5]~5_combout\ = (!\state.shot~regout\ & \LEDR[5]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.shot~regout\,
	datad => \LEDR[5]~4_combout\,
	combout => \LEDR[5]~5_combout\);

-- Location: LCFF_X49_Y6_N17
\LEDG[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	sdata => \state.win~regout\,
	aclr => \ALT_INV_key~combout\(1),
	sload => VCC,
	ena => \LEDR[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDG[3]~reg0_regout\);

-- Location: LCCOMB_X48_Y8_N18
\Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~1_combout\ = cont_erros(2) $ (((cont_erros(0) & cont_erros(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_erros(0),
	datac => cont_erros(1),
	datad => cont_erros(2),
	combout => \Add2~1_combout\);

-- Location: LCCOMB_X47_Y8_N28
\Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = cont_erros(0) $ (cont_erros(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cont_erros(0),
	datad => cont_erros(1),
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X48_Y8_N6
\cont_erros~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_erros~6_combout\ = ((!\cont_erros~5_combout\ & ((\Equal11~2_combout\) # (!\cont_erros~4_combout\)))) # (!\Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_erros~5_combout\,
	datab => \Add2~0_combout\,
	datac => \cont_erros~4_combout\,
	datad => \Equal11~2_combout\,
	combout => \cont_erros~6_combout\);

-- Location: LCCOMB_X48_Y8_N30
\state~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~16_combout\ = (\key~combout\(2)) # (((\cont_erros~7_combout\) # (\cont_erros~6_combout\)) # (!\Add2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(2),
	datab => \Add2~1_combout\,
	datac => \cont_erros~7_combout\,
	datad => \cont_erros~6_combout\,
	combout => \state~16_combout\);

-- Location: LCCOMB_X49_Y8_N2
\state~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~17_combout\ = (\state.start~regout\ & !\state.set~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.start~regout\,
	datac => \state.set~regout\,
	combout => \state~17_combout\);

-- Location: LCCOMB_X49_Y8_N4
\LEDR[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR[0]~6_combout\ = (!\LEDR[0]~reg0_regout\ & (((\state.shot~regout\ & \state~16_combout\)) # (!\state~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDR[0]~reg0_regout\,
	datab => \state.shot~regout\,
	datac => \state~16_combout\,
	datad => \state~17_combout\,
	combout => \LEDR[0]~6_combout\);

-- Location: LCCOMB_X49_Y8_N8
\LEDR[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR[0]~8_combout\ = (!\LEDR[0]~6_combout\ & (((\state.shot~regout\) # (\state.win~regout\)) # (!\LEDR[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDR[0]~7_combout\,
	datab => \state.shot~regout\,
	datac => \LEDR[0]~6_combout\,
	datad => \state.win~regout\,
	combout => \LEDR[0]~8_combout\);

-- Location: LCFF_X49_Y8_N9
\LEDR[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \LEDR[0]~8_combout\,
	aclr => \ALT_INV_key~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDR[0]~reg0_regout\);

-- Location: LCCOMB_X49_Y7_N22
\LEDR[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR[1]~9_combout\ = ((!\cont_erros~6_combout\) # (!\cont_erros~7_combout\)) # (!\Add2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~1_combout\,
	datac => \cont_erros~7_combout\,
	datad => \cont_erros~6_combout\,
	combout => \LEDR[1]~9_combout\);

-- Location: LCCOMB_X49_Y7_N8
\LEDR[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR[1]~10_combout\ = (\state.shot~regout\ & (((\LEDR[1]~reg0_regout\) # (!\LEDR[1]~9_combout\)))) # (!\state.shot~regout\ & (\state.win~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.win~regout\,
	datab => \state.shot~regout\,
	datac => \LEDR[1]~reg0_regout\,
	datad => \LEDR[1]~9_combout\,
	combout => \LEDR[1]~10_combout\);

-- Location: LCCOMB_X49_Y7_N16
\LEDR[5]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR[5]~19_combout\ = (\state.shot~regout\ & (!\key~combout\(2))) # (!\state.shot~regout\ & ((\LEDR[5]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.shot~regout\,
	datac => \key~combout\(2),
	datad => \LEDR[5]~4_combout\,
	combout => \LEDR[5]~19_combout\);

-- Location: LCFF_X49_Y7_N9
\LEDR[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \LEDR[1]~10_combout\,
	aclr => \ALT_INV_key~combout\(1),
	ena => \LEDR[5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDR[1]~reg0_regout\);

-- Location: LCCOMB_X49_Y7_N12
\LEDR[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR[2]~11_combout\ = ((\cont_erros~7_combout\) # (!\cont_erros~6_combout\)) # (!\Add2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~1_combout\,
	datac => \cont_erros~7_combout\,
	datad => \cont_erros~6_combout\,
	combout => \LEDR[2]~11_combout\);

-- Location: LCCOMB_X49_Y7_N14
\LEDR[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR[2]~12_combout\ = (\state.shot~regout\ & (((\LEDR[2]~reg0_regout\) # (!\LEDR[2]~11_combout\)))) # (!\state.shot~regout\ & (\state.win~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.win~regout\,
	datab => \state.shot~regout\,
	datac => \LEDR[2]~reg0_regout\,
	datad => \LEDR[2]~11_combout\,
	combout => \LEDR[2]~12_combout\);

-- Location: LCFF_X49_Y7_N15
\LEDR[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \LEDR[2]~12_combout\,
	aclr => \ALT_INV_key~combout\(1),
	ena => \LEDR[5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDR[2]~reg0_regout\);

-- Location: LCCOMB_X49_Y7_N18
\LEDR[3]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR[3]~20_combout\ = (!\cont_erros~6_combout\ & (cont_erros(2) $ (((!cont_erros(0)) # (!cont_erros(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_erros(1),
	datab => cont_erros(2),
	datac => cont_erros(0),
	datad => \cont_erros~6_combout\,
	combout => \LEDR[3]~20_combout\);

-- Location: LCCOMB_X49_Y7_N10
\LEDR[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR[3]~13_combout\ = (!\LEDR[3]~reg0_regout\ & (\state.shot~regout\ & ((!\LEDR[3]~20_combout\) # (!\cont_erros~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDR[3]~reg0_regout\,
	datab => \state.shot~regout\,
	datac => \cont_erros~7_combout\,
	datad => \LEDR[3]~20_combout\,
	combout => \LEDR[3]~13_combout\);

-- Location: LCCOMB_X49_Y7_N24
\LEDR[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR[3]~14_combout\ = (!\LEDR[3]~13_combout\ & ((\state.shot~regout\) # (\state.win~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.shot~regout\,
	datac => \state.win~regout\,
	datad => \LEDR[3]~13_combout\,
	combout => \LEDR[3]~14_combout\);

-- Location: LCFF_X49_Y7_N25
\LEDR[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \LEDR[3]~14_combout\,
	aclr => \ALT_INV_key~combout\(1),
	ena => \LEDR[5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDR[3]~reg0_regout\);

-- Location: LCCOMB_X49_Y7_N28
\LEDR[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR[4]~15_combout\ = (!\LEDR[4]~reg0_regout\ & (\state.shot~regout\ & ((\cont_erros~7_combout\) # (!\LEDR[3]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDR[4]~reg0_regout\,
	datab => \state.shot~regout\,
	datac => \cont_erros~7_combout\,
	datad => \LEDR[3]~20_combout\,
	combout => \LEDR[4]~15_combout\);

-- Location: LCCOMB_X49_Y7_N26
\LEDR[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR[4]~16_combout\ = (!\LEDR[4]~15_combout\ & ((\state.shot~regout\) # (\state.win~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.shot~regout\,
	datac => \state.win~regout\,
	datad => \LEDR[4]~15_combout\,
	combout => \LEDR[4]~16_combout\);

-- Location: LCFF_X49_Y7_N27
\LEDR[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \LEDR[4]~16_combout\,
	aclr => \ALT_INV_key~combout\(1),
	ena => \LEDR[5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDR[4]~reg0_regout\);

-- Location: LCCOMB_X49_Y7_N2
\LEDR[5]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR[5]~17_combout\ = (!\Add2~1_combout\ & (\cont_erros~7_combout\ & \cont_erros~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~1_combout\,
	datac => \cont_erros~7_combout\,
	datad => \cont_erros~6_combout\,
	combout => \LEDR[5]~17_combout\);

-- Location: LCCOMB_X49_Y7_N4
\LEDR[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR[5]~18_combout\ = (\state.shot~regout\ & (((\LEDR[5]~reg0_regout\) # (\LEDR[5]~17_combout\)))) # (!\state.shot~regout\ & (\state.win~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.win~regout\,
	datab => \state.shot~regout\,
	datac => \LEDR[5]~reg0_regout\,
	datad => \LEDR[5]~17_combout\,
	combout => \LEDR[5]~18_combout\);

-- Location: LCFF_X49_Y7_N5
\LEDR[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \LEDR[5]~18_combout\,
	aclr => \ALT_INV_key~combout\(1),
	ena => \LEDR[5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDR[5]~reg0_regout\);

-- Location: LCCOMB_X49_Y6_N18
\LEDR[6]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR[6]~27_combout\ = !\state.win~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.win~regout\,
	combout => \LEDR[6]~27_combout\);

-- Location: LCFF_X49_Y6_N19
\LEDR[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \LEDR[6]~27_combout\,
	aclr => \ALT_INV_key~combout\(1),
	ena => \LEDR[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDR[6]~reg0_regout\);

-- Location: LCCOMB_X48_Y10_N30
\hex0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex0~2_combout\ = (cont_disparos(3)) # ((cont_disparos(1) & ((!cont_disparos(2)) # (!cont_disparos(0)))) # (!cont_disparos(1) & ((cont_disparos(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_disparos(3),
	datab => cont_disparos(0),
	datac => cont_disparos(1),
	datad => cont_disparos(2),
	combout => \hex0~2_combout\);

-- Location: LCCOMB_X47_Y10_N2
\hex0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex0~3_combout\ = (\state.set~regout\ & (((!\SW~combout\(4) & !\key~combout\(2))))) # (!\state.set~regout\ & (!\hex0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.set~regout\,
	datab => \hex0~2_combout\,
	datac => \SW~combout\(4),
	datad => \key~combout\(2),
	combout => \hex0~3_combout\);

-- Location: LCCOMB_X48_Y10_N14
\hex0[6]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex0[6]~5_combout\ = (\state.start~regout\ & ((\state.set~regout\) # ((\state.shot~regout\ & !\hex0[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.shot~regout\,
	datab => \hex0[0]~4_combout\,
	datac => \state.set~regout\,
	datad => \state.start~regout\,
	combout => \hex0[6]~5_combout\);

-- Location: LCFF_X47_Y10_N3
\hex0[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \hex0~3_combout\,
	aclr => \ALT_INV_key~combout\(1),
	ena => \hex0[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hex0[6]~reg0_regout\);

-- Location: LCCOMB_X48_Y10_N20
\hex0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex0~6_combout\ = (!cont_disparos(3) & ((cont_disparos(0) & ((cont_disparos(1)) # (!cont_disparos(2)))) # (!cont_disparos(0) & (cont_disparos(1) & !cont_disparos(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_disparos(3),
	datab => cont_disparos(0),
	datac => cont_disparos(1),
	datad => cont_disparos(2),
	combout => \hex0~6_combout\);

-- Location: LCCOMB_X47_Y10_N0
\hex0[5]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex0[5]~reg0feeder_combout\ = \hex0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \hex0~6_combout\,
	combout => \hex0[5]~reg0feeder_combout\);

-- Location: LCCOMB_X47_Y10_N20
\key[2]~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \key[2]~_wirecell_combout\ = !\key~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key~combout\(2),
	combout => \key[2]~_wirecell_combout\);

-- Location: LCFF_X47_Y10_N1
\hex0[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \hex0[5]~reg0feeder_combout\,
	sdata => \key[2]~_wirecell_combout\,
	aclr => \ALT_INV_key~combout\(1),
	sload => \state.set~regout\,
	ena => \hex0[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hex0[5]~reg0_regout\);

-- Location: LCCOMB_X47_Y10_N12
\hex0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex0~8_combout\ = (\state.set~regout\ & (((!\SW~combout\(4) & !\key~combout\(2))))) # (!\state.set~regout\ & (\hex0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex0~7_combout\,
	datab => \SW~combout\(4),
	datac => \state.set~regout\,
	datad => \key~combout\(2),
	combout => \hex0~8_combout\);

-- Location: LCFF_X47_Y10_N13
\hex0[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \hex0~8_combout\,
	aclr => \ALT_INV_key~combout\(1),
	ena => \hex0[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hex0[4]~reg0_regout\);

-- Location: LCCOMB_X48_Y10_N8
\hex0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex0~9_combout\ = (cont_disparos(3)) # ((cont_disparos(0) & (cont_disparos(1) $ (cont_disparos(2)))) # (!cont_disparos(0) & ((cont_disparos(1)) # (!cont_disparos(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_disparos(3),
	datab => cont_disparos(0),
	datac => cont_disparos(1),
	datad => cont_disparos(2),
	combout => \hex0~9_combout\);

-- Location: LCCOMB_X47_Y10_N22
\hex0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex0~10_combout\ = (\state.set~regout\ & (((!\SW~combout\(4) & !\key~combout\(2))))) # (!\state.set~regout\ & (!\hex0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.set~regout\,
	datab => \hex0~9_combout\,
	datac => \SW~combout\(4),
	datad => \key~combout\(2),
	combout => \hex0~10_combout\);

-- Location: LCFF_X47_Y10_N23
\hex0[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \hex0~10_combout\,
	aclr => \ALT_INV_key~combout\(1),
	ena => \hex0[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hex0[3]~reg0_regout\);

-- Location: LCCOMB_X47_Y10_N16
\hex0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex0~16_combout\ = (\state.set~regout\ & (((\SW~combout\(4) & !\key~combout\(2))))) # (!\state.set~regout\ & (\hex0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex0~11_combout\,
	datab => \SW~combout\(4),
	datac => \state.set~regout\,
	datad => \key~combout\(2),
	combout => \hex0~16_combout\);

-- Location: LCFF_X47_Y10_N17
\hex0[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \hex0~16_combout\,
	aclr => \ALT_INV_key~combout\(1),
	ena => \hex0[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hex0[2]~reg0_regout\);

-- Location: LCCOMB_X48_Y10_N16
\Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\Mux1~0_combout\ & ((\Mux1~1_combout\) # ((\hex0[0]~4_combout\ & \hex0[1]~reg0_regout\)))) # (!\Mux1~0_combout\ & (\hex0[0]~4_combout\ & (\hex0[1]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \hex0[0]~4_combout\,
	datac => \hex0[1]~reg0_regout\,
	datad => \Mux1~1_combout\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X48_Y10_N2
\hex0[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex0[1]~12_combout\ = (\state.start~regout\ & ((\state.shot~regout\) # (\state.set~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.shot~regout\,
	datab => \state.set~regout\,
	datad => \state.start~regout\,
	combout => \hex0[1]~12_combout\);

-- Location: LCFF_X48_Y10_N17
\hex0[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \Mux1~2_combout\,
	aclr => \ALT_INV_key~combout\(1),
	sclr => \state.set~regout\,
	ena => \hex0[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hex0[1]~reg0_regout\);

-- Location: LCCOMB_X48_Y10_N24
\hex0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex0~13_combout\ = (cont_disparos(3)) # ((cont_disparos(1)) # (cont_disparos(0) $ (!cont_disparos(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_disparos(3),
	datab => cont_disparos(0),
	datac => cont_disparos(1),
	datad => cont_disparos(2),
	combout => \hex0~13_combout\);

-- Location: LCCOMB_X47_Y10_N6
\hex0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex0~14_combout\ = (\state.set~regout\ & (((!\SW~combout\(4) & !\key~combout\(2))))) # (!\state.set~regout\ & (!\hex0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.set~regout\,
	datab => \hex0~13_combout\,
	datac => \SW~combout\(4),
	datad => \key~combout\(2),
	combout => \hex0~14_combout\);

-- Location: LCFF_X47_Y10_N7
\hex0[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \hex0~14_combout\,
	aclr => \ALT_INV_key~combout\(1),
	ena => \hex0[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hex0[0]~reg0_regout\);

-- Location: LCCOMB_X48_Y10_N18
\hex3[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex3[1]~reg0feeder_combout\ = \state.set~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.set~regout\,
	combout => \hex3[1]~reg0feeder_combout\);

-- Location: LCFF_X48_Y10_N19
\hex3[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \hex3[1]~reg0feeder_combout\,
	aclr => \ALT_INV_key~combout\(1),
	ena => \hex0[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hex3[1]~reg0_regout\);

-- Location: LCCOMB_X48_Y10_N0
\hex2[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex2[1]~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \hex2[1]~reg0feeder_combout\);

-- Location: LCFF_X48_Y10_N1
\hex2[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \hex2[1]~reg0feeder_combout\,
	aclr => \ALT_INV_key~combout\(1),
	ena => \hex0[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hex2[1]~reg0_regout\);

-- Location: LCCOMB_X48_Y10_N10
\hex3[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex3[6]~0_combout\ = !\state.set~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.set~regout\,
	combout => \hex3[6]~0_combout\);

-- Location: LCFF_X48_Y10_N11
\hex3[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key~combout\(0),
	datain => \hex3[6]~0_combout\,
	aclr => \ALT_INV_key~combout\(1),
	ena => \hex0[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hex3[6]~reg0_regout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_SW(7));

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_SW(8));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_SW(9));

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_key(3));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \LEDG[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(0));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \LEDG[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(1));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \LEDG[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(2));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \LEDG[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(3));

-- Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \LEDG[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(4));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \LEDG[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(5));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \LEDG[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(6));

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \LEDG[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(7));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_LEDR[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(0));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_LEDR[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(1));

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_LEDR[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(2));

-- Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_LEDR[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(3));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_LEDR[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(4));

-- Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_LEDR[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(5));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LEDR[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(6));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LEDR[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(7));

-- Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LEDR[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(8));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LEDR[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(9));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex0[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(6));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex0[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(5));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex0[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(4));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex0[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(3));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex0[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(2));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex0[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(1));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex0[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(0));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex3[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(6));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex3[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(5));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex2[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(4));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex3[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(3));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_hex1(2));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex3[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(1));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_hex1(0));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex3[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(6));

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_hex2(5));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_hex2(4));

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex3[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(3));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex2[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(2));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex2[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(1));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex3[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(0));

-- Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex3[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(6));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_hex3(5));

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex3[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(4));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_hex3(3));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_hex3(2));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex3[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(1));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_hex3(0));
END structure;


