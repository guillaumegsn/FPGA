-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "12/17/2023 11:33:36"

-- 
-- Device: Altera 5M570ZF256C5 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	Filtre_FIR IS
    PORT (
	H_10MHz : IN std_logic;
	RAZ : IN std_logic;
	entree : IN std_logic_vector(7 DOWNTO 0);
	sortie : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END Filtre_FIR;

-- Design Ports Information


ARCHITECTURE structure OF Filtre_FIR IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_H_10MHz : std_logic;
SIGNAL ww_RAZ : std_logic;
SIGNAL ww_entree : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_sortie : std_logic_vector(7 DOWNTO 0);
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~5\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~5\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~5\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~5\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~5\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~5\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~5\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~5\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~10\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~35\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~15\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~35\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~30\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~35\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~35\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~30\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~21\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~35\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~20\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~35\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~25\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~35\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~30\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~35\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~35\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_7__6_~regout\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_7__7_~regout\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_7__4_~regout\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_7__5_~regout\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_7__2_~regout\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_7__3_~regout\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_7__0_~regout\ : std_logic;
SIGNAL \uMAC|Add0~70\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_7__1_~regout\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add8_result[0]~75\ : std_logic;
SIGNAL \H_10MHz~combout\ : std_logic;
SIGNAL \uDIV|horloge~regout\ : std_logic;
SIGNAL \RAZ~combout\ : std_logic;
SIGNAL \uMAE|etat.ETAT_0~regout\ : std_logic;
SIGNAL \uMAE|etat.ETAT_1~regout\ : std_logic;
SIGNAL \uMAE|etat.ETAT_2~regout\ : std_logic;
SIGNAL \uMAE|etat.ETAT_3~regout\ : std_logic;
SIGNAL \uMAE|etat.ETAT_4~regout\ : std_logic;
SIGNAL \uMAE|etat.ETAT_5~regout\ : std_logic;
SIGNAL \uMAE|etat.ETAT_6~regout\ : std_logic;
SIGNAL \uMAE|etat.ETAT_7~regout\ : std_logic;
SIGNAL \uMAE|etat.ETAT_8~regout\ : std_logic;
SIGNAL \uMAE|etat.ETAT_9~regout\ : std_logic;
SIGNAL \uMAE|etat.ETAT_10~regout\ : std_logic;
SIGNAL \uMAE|H_REG~combout\ : std_logic;
SIGNAL \uMAE|H_MAC~combout\ : std_logic;
SIGNAL \uMAE|H_FIFO~combout\ : std_logic;
SIGNAL \uMAE|indice[2]~1_combout\ : std_logic;
SIGNAL \uMAE|indice[2]~2_combout\ : std_logic;
SIGNAL \uMAE|indice[1]~3_combout\ : std_logic;
SIGNAL \uMAE|indice[1]~4_combout\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_0__1_~regout\ : std_logic;
SIGNAL \uMAE|indice~0_combout\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_1__1_~regout\ : std_logic;
SIGNAL \uMAC|Mux10~6\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_2__1_~regout\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_3__1_~regout\ : std_logic;
SIGNAL \uMAC|Mux10~7\ : std_logic;
SIGNAL \uMAE|indice[2]~5_combout\ : std_logic;
SIGNAL \uMAC|Mux10~8_combout\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_4__1_~regout\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_5__1_~regout\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_6__1_~regout\ : std_logic;
SIGNAL \uMAC|Mux10~3\ : std_logic;
SIGNAL \uMAC|Mux10~4\ : std_logic;
SIGNAL \uMAC|Mux10~5_combout\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_0__0_~regout\ : std_logic;
SIGNAL \uMAC|Mux11~6\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_1__0_~regout\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_2__0_~regout\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_3__0_~regout\ : std_logic;
SIGNAL \uMAC|Mux11~7\ : std_logic;
SIGNAL \uMAC|Mux11~8_combout\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_4__0_~regout\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_5__0_~regout\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_6__0_~regout\ : std_logic;
SIGNAL \uMAC|Mux11~3\ : std_logic;
SIGNAL \uMAC|Mux11~4\ : std_logic;
SIGNAL \uMAC|Mux11~5_combout\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_0__7_~regout\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_1__7_~regout\ : std_logic;
SIGNAL \uMAC|Mux4~2\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_2__7_~regout\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_3__7_~regout\ : std_logic;
SIGNAL \uMAC|Mux4~3\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_4__7_~regout\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_5__7_~regout\ : std_logic;
SIGNAL \uMAC|Mux4~0\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_6__7_~regout\ : std_logic;
SIGNAL \uMAC|Mux4~1\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add20_result[0]~22\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add20_result[0]~22COUT1_26\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add20_result[1]~17\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add20_result[1]~17COUT1_27\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add20_result[2]~10_combout\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_0__6_~regout\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_1__6_~regout\ : std_logic;
SIGNAL \uMAC|Mux5~2\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_2__6_~regout\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_3__6_~regout\ : std_logic;
SIGNAL \uMAC|Mux5~3\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_4__6_~regout\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_5__6_~regout\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_6__6_~regout\ : std_logic;
SIGNAL \uMAC|Mux5~0\ : std_logic;
SIGNAL \uMAC|Mux5~1\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_0__4_~regout\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_1__4_~regout\ : std_logic;
SIGNAL \uMAC|Mux7~2\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_2__4_~regout\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_3__4_~regout\ : std_logic;
SIGNAL \uMAC|Mux7~3\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_4__4_~regout\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_5__4_~regout\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_6__4_~regout\ : std_logic;
SIGNAL \uMAC|Mux7~0\ : std_logic;
SIGNAL \uMAC|Mux7~1\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_0__5_~regout\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_1__5_~regout\ : std_logic;
SIGNAL \uMAC|Mux6~2\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_2__5_~regout\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_3__5_~regout\ : std_logic;
SIGNAL \uMAC|Mux6~3\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_4__5_~regout\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_5__5_~regout\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_6__5_~regout\ : std_logic;
SIGNAL \uMAC|Mux6~0\ : std_logic;
SIGNAL \uMAC|Mux6~1\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_0__2_~regout\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_1__2_~regout\ : std_logic;
SIGNAL \uMAC|Mux9~2\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_2__2_~regout\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_3__2_~regout\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_4__2_~regout\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_5__2_~regout\ : std_logic;
SIGNAL \uMAC|Mux9~0\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_6__2_~regout\ : std_logic;
SIGNAL \uMAC|Mux9~1\ : std_logic;
SIGNAL \uMAC|Mux9~3\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_0__3_~regout\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_1__3_~regout\ : std_logic;
SIGNAL \uMAC|Mux8~2\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_2__3_~regout\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_3__3_~regout\ : std_logic;
SIGNAL \uMAC|Mux8~3\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_4__3_~regout\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_5__3_~regout\ : std_logic;
SIGNAL \uMAC|Mux8~0\ : std_logic;
SIGNAL \uFIFO|RAM_Entree_6__3_~regout\ : std_logic;
SIGNAL \uMAC|Mux8~1\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|cs1a[0]~COUT\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|cs1a[0]~COUTCOUT1_12\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|cs1a[1]~COUT\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|cs1a[1]~COUTCOUT1_13\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|cs1a[2]~COUT\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|cs1a[2]~COUTCOUT1_14\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|cs1a[2]~5\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|cs3a[0]~COUT\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|cs3a[0]~COUTCOUT1_13\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|cs3a[1]~COUT\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|cs3a[1]~COUTCOUT1_14\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|cs3a[2]~COUT\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|cs3a[2]~COUTCOUT1_15\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|cs3a[2]~6\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|cs3a[3]~0_combout\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add20_result[1]~15_combout\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add12_result[0]~62\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add20_result[0]~20_combout\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add12_result[1]~57\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add12_result[1]~57COUT1_66\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add12_result[2]~52\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add12_result[2]~52COUT1_67\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add12_result[3]~47\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add12_result[3]~47COUT1_68\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add12_result[4]~42\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add12_result[4]~42COUT1_69\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add12_result[5]~37\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add12_result[6]~30_combout\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add16_result[0]~42\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add16_result[0]~42COUT1_46\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add16_result[1]~37\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add16_result[1]~37COUT1_47\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add16_result[2]~32\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add16_result[2]~32COUT1_48\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add16_result[3]~27\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add16_result[3]~27COUT1_49\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add16_result[4]~20_combout\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add16_result[3]~25_combout\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add12_result[5]~35_combout\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add12_result[0]~60_combout\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add8_result[0]~77_cout0\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add8_result[0]~77COUT1_81\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add8_result[1]~72\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add8_result[1]~72COUT1_82\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add8_result[2]~67\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add12_result[4]~40_combout\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add16_result[2]~30_combout\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add16_result[1]~35_combout\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add12_result[3]~45_combout\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add16_result[0]~40_combout\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add12_result[2]~50_combout\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add12_result[1]~55_combout\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add8_result[3]~62\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add8_result[3]~62COUT1_83\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add8_result[4]~57\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add8_result[4]~57COUT1_84\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add8_result[5]~52\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add8_result[5]~52COUT1_85\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add8_result[6]~47\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add8_result[6]~47COUT1_86\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add8_result[7]~42\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add8_result[1]~70_combout\ : std_logic;
SIGNAL \uMAC|WideOr0~0\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add20_result[2]~12\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add20_result[2]~12COUT1_28\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add20_result[3]~5_combout\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add12_result[6]~32\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add12_result[6]~32COUT1_70\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add12_result[7]~27\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add12_result[7]~27COUT1_71\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add12_result[8]~12\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add12_result[8]~12COUT1_72\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add12_result[9]~22\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add12_result[9]~22COUT1_73\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add12_result[10]~15_combout\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add16_result[4]~22\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add20_result[3]~7\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add20_result[3]~7COUT1_29\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add20_result[4]~0_combout\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add16_result[5]~17\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add16_result[5]~17COUT1_50\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add16_result[6]~2\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add16_result[6]~2COUT1_51\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add16_result[7]~12\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add16_result[7]~12COUT1_52\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add16_result[8]~5_combout\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add16_result[7]~10_combout\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add12_result[9]~20_combout\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add16_result[6]~0_combout\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add12_result[8]~10_combout\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add12_result[7]~25_combout\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add16_result[5]~15_combout\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add8_result[8]~37\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add8_result[8]~37COUT1_87\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add8_result[9]~32\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add8_result[9]~32COUT1_88\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add8_result[10]~17\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add8_result[10]~17COUT1_89\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add8_result[11]~27\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add8_result[11]~27COUT1_90\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add8_result[12]~22\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add12_result[10]~17\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add12_result[11]~7\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add12_result[11]~7COUT1_74\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add12_result[12]~0_combout\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add12_result[11]~5_combout\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add8_result[13]~12\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add8_result[13]~12COUT1_91\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add8_result[14]~7\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add8_result[14]~7COUT1_92\ : std_logic;
SIGNAL \uMAC|Mult0|auto_generated|add8_result[15]~0_combout\ : std_logic;
SIGNAL \uMAC|Add0~72_cout0\ : std_logic;
SIGNAL \uMAC|Add0~72COUT1_76\ : std_logic;
SIGNAL \uMAC|Add0~67\ : std_logic;
SIGNAL \uMAC|Add0~62\ : std_logic;
SIGNAL \uMAC|Add0~62COUT1_77\ : std_logic;
SIGNAL \uMAC|Add0~57\ : std_logic;
SIGNAL \uMAC|Add0~57COUT1_78\ : std_logic;
SIGNAL \uMAC|Add0~52\ : std_logic;
SIGNAL \uMAC|Add0~52COUT1_79\ : std_logic;
SIGNAL \uMAC|Add0~47\ : std_logic;
SIGNAL \uMAC|Add0~47COUT1_80\ : std_logic;
SIGNAL \uMAC|Add0~40_combout\ : std_logic;
SIGNAL \uMAC|Add0~55_combout\ : std_logic;
SIGNAL \uMAC|Add0~60_combout\ : std_logic;
SIGNAL \uMAC|Add0~42\ : std_logic;
SIGNAL \uMAC|Add0~37\ : std_logic;
SIGNAL \uMAC|Add0~37COUT1_81\ : std_logic;
SIGNAL \uMAC|Add0~17\ : std_logic;
SIGNAL \uMAC|Add0~17COUT1_82\ : std_logic;
SIGNAL \uMAC|Add0~27\ : std_logic;
SIGNAL \uMAC|Add0~27COUT1_83\ : std_logic;
SIGNAL \uMAC|Add0~32\ : std_logic;
SIGNAL \uMAC|Add0~32COUT1_84\ : std_logic;
SIGNAL \uMAC|Add0~22\ : std_logic;
SIGNAL \uMAC|Add0~12\ : std_logic;
SIGNAL \uMAC|Add0~12COUT1_85\ : std_logic;
SIGNAL \uMAC|Add0~7\ : std_logic;
SIGNAL \uMAC|Add0~7COUT1_86\ : std_logic;
SIGNAL \uMAC|Add0~0_combout\ : std_logic;
SIGNAL \uMAC|Add0~5_combout\ : std_logic;
SIGNAL \uMAC|Add0~15_combout\ : std_logic;
SIGNAL \uMAC|Add0~35_combout\ : std_logic;
SIGNAL \uMAC|Add0~45_combout\ : std_logic;
SIGNAL \uMAC|Add0~50_combout\ : std_logic;
SIGNAL \uMAC|Add1~60_combout\ : std_logic;
SIGNAL \uMAC|Add1~62\ : std_logic;
SIGNAL \uMAC|Add1~62COUT1_83\ : std_logic;
SIGNAL \uMAC|Add1~55_combout\ : std_logic;
SIGNAL \uMAC|Add1~57\ : std_logic;
SIGNAL \uMAC|Add1~57COUT1_84\ : std_logic;
SIGNAL \uMAC|Add1~52\ : std_logic;
SIGNAL \uMAC|Add1~52COUT1_85\ : std_logic;
SIGNAL \uMAC|Add1~45_combout\ : std_logic;
SIGNAL \uMAC|Add1~47\ : std_logic;
SIGNAL \uMAC|Add1~47COUT1_86\ : std_logic;
SIGNAL \uMAC|Add1~15_combout\ : std_logic;
SIGNAL \uMAC|Add1~17\ : std_logic;
SIGNAL \uMAC|Add0~10_combout\ : std_logic;
SIGNAL \uMAC|Add0~20_combout\ : std_logic;
SIGNAL \uMAC|Add0~30_combout\ : std_logic;
SIGNAL \uMAC|Add0~25_combout\ : std_logic;
SIGNAL \uMAC|Add1~25_combout\ : std_logic;
SIGNAL \uMAC|Add1~27\ : std_logic;
SIGNAL \uMAC|Add1~27COUT1_87\ : std_logic;
SIGNAL \uMAC|Add1~30_combout\ : std_logic;
SIGNAL \uMAC|Add1~32\ : std_logic;
SIGNAL \uMAC|Add1~32COUT1_88\ : std_logic;
SIGNAL \uMAC|Add1~35_combout\ : std_logic;
SIGNAL \uMAC|Add1~37\ : std_logic;
SIGNAL \uMAC|Add1~37COUT1_89\ : std_logic;
SIGNAL \uMAC|Add1~40_combout\ : std_logic;
SIGNAL \uMAC|Add1~42\ : std_logic;
SIGNAL \uMAC|Add1~42COUT1_90\ : std_logic;
SIGNAL \uMAC|Add1~20_combout\ : std_logic;
SIGNAL \uMAC|Add1~22\ : std_logic;
SIGNAL \uMAC|Add1~10_combout\ : std_logic;
SIGNAL \uMAC|Add1~12\ : std_logic;
SIGNAL \uMAC|Add1~12COUT1_91\ : std_logic;
SIGNAL \uMAC|Add1~5_combout\ : std_logic;
SIGNAL \uMAC|Add1~7\ : std_logic;
SIGNAL \uMAC|Add1~7COUT1_92\ : std_logic;
SIGNAL \uMAC|Add1~0_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[0]~28_combout\ : std_logic;
SIGNAL \uMAC|Add0~65_combout\ : std_logic;
SIGNAL \uMAC|Add1~75_combout\ : std_logic;
SIGNAL \uMAC|Add1~77\ : std_logic;
SIGNAL \uMAC|Add1~77COUT1_81\ : std_logic;
SIGNAL \uMAC|Add1~70_combout\ : std_logic;
SIGNAL \uMAC|Add1~72\ : std_logic;
SIGNAL \uMAC|Add1~72COUT1_82\ : std_logic;
SIGNAL \uMAC|Add1~65_combout\ : std_logic;
SIGNAL \uMAC|Add1~67\ : std_logic;
SIGNAL \uMAC|Add1~50_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[0]~COUT\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[0]~COUTCOUT1_33\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[1]~COUT\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[1]~COUTCOUT1_34\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[2]~COUT\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[2]~COUTCOUT1_35\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[3]~COUT\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[4]~COUT\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[4]~COUTCOUT1_36\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[5]~COUT\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[5]~COUTCOUT1_37\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[6]~COUT\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[6]~COUTCOUT1_38\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[7]~COUT\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[7]~COUTCOUT1_39\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[8]~COUT\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[9]~COUT\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[9]~COUTCOUT1_40\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[10]~COUT\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[10]~COUTCOUT1_41\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[11]~COUT\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[11]~COUTCOUT1_42\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[12]~COUT\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[12]~COUTCOUT1_43\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[13]~COUT\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUT\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUTCOUT1_34\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~32_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~23_cout0\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~23COUT1_35\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~2\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~2COUT1_36\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7COUT1_37\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12COUT1_38\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~15_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[14]~COUT\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[14]~COUTCOUT1_44\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp[14]~0_cout0\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp[14]~0COUT1_4\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~COUT\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~COUTCOUT1_39\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~27\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~5_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[43]~82_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[43]~83_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[42]~78_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[42]~77_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[41]~71_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[41]~72_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~COUT\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~COUTCOUT1_39\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~37_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~32_cout0\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~32COUT1_40\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7COUT1_41\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12COUT1_42\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[14]~29\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[45]~100_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[45]~101_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~10_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[44]~87_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[44]~86_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22COUT1_43\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~27\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~27COUT1_44\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[52]~35_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~15_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[52]~84_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~10_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[51]~79_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[51]~30_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~5_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[50]~73_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[50]~24_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[49]~65_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[49]~66_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[1]~COUT\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[1]~COUTCOUT1_44\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~42_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~37_cout0\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~37COUT1_45\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~7\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~7COUT1_46\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~12\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~12COUT1_47\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~17\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~17COUT1_48\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~22\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~25_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[54]~99_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[54]~98_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~20_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[53]~88_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[53]~39_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~27\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~27COUT1_49\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~32_cout0\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~32COUT1_50\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~15_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[60]~80_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[60]~31_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~10_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[59]~74_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[59]~25_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~5_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[58]~67_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[58]~18_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[57]~60_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[57]~59_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[1]~COUT\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[1]~COUTCOUT1_44\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~42_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~37_cout0\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~37COUT1_45\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~12\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~12COUT1_46\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~17\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~17COUT1_47\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~22\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~22COUT1_48\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~27\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~25_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[62]~41_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[62]~40_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~20_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[61]~85_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[61]~36_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~32\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~32COUT1_49\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~7_cout0\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~7COUT1_50\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[66]~12_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~10_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[68]~26_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~20_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[68]~75_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~15_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[67]~68_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[67]~19_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[66]~61_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[65]~53_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[65]~54_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[1]~COUT\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[1]~COUTCOUT1_44\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~42_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~37_cout0\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~37COUT1_45\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~12\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~12COUT1_46\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~17\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~17COUT1_47\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~22\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~22COUT1_48\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~27\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~30_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[70]~38_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[70]~37_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~25_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[69]~81_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[69]~32_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~32\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~32COUT1_49\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~7_cout0\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~7COUT1_50\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[75]~13_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~15_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[75]~62_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~10_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[74]~55_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[74]~6_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[73]~43_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[73]~42_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[1]~COUT\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[1]~COUTCOUT1_50\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~42_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~37_cout0\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~37COUT1_44\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~12\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~12COUT1_45\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~17\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~17COUT1_46\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~20_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~20_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[76]~69_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[76]~20_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~22\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~22COUT1_47\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~27\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[78]~33_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~30_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[78]~34_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~25_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[77]~76_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[77]~27_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~32\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~32COUT1_48\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~7_cout0\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~7COUT1_49\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[84]~63_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[84]~14_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[83]~7_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~15_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[83]~56_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[82]~0_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~10_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[82]~44_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[81]~90_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[81]~89_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[1]~COUT\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[1]~COUTCOUT1_50\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~42_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~37_cout0\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~37COUT1_44\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~32\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~32COUT1_45\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~12\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~12COUT1_46\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~17\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~17COUT1_47\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~22\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~30_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[86]~29_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[86]~28_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~25_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[85]~70_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[85]~21_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~27\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~27COUT1_48\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~7_cout0\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~7COUT1_49\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[89]~103_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[89]~102_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[1]~COUT\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[1]~COUTCOUT1_50\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~42_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~37_cout0\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~37COUT1_44\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~30_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[92]~8_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~15_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[92]~57_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~10_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[91]~45_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[91]~1_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~30_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[90]~91_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[90]~48_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~32\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~32COUT1_45\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~27\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~27COUT1_46\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~12\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~12COUT1_47\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~17\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~25_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[94]~23_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[94]~22_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~20_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[93]~64_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[93]~15_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~22\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~22COUT1_48\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~7_cout0\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~7COUT1_49\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[98]~104_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[98]~94_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[97]~109_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[97]~110_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[1]~COUT\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[1]~COUTCOUT1_50\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~42_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~37_cout0\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~37COUT1_44\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~32\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~32COUT1_45\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~25_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~10_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[100]~46_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[100]~2_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~25_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[99]~92_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[99]~49_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~27\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~27COUT1_46\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~22\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~22COUT1_47\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~12\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[102]~16_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~20_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[102]~17_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~15_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[101]~58_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[101]~9_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~17\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~17COUT1_48\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~7_cout0\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~7COUT1_49\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[107]~105_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[107]~95_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~30_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[106]~111_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[106]~106_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[105]~114_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[105]~115_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[1]~COUT\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[1]~COUTCOUT1_50\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~42_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~37_cout0\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~37COUT1_44\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~32\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~32COUT1_45\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~27\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~27COUT1_46\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~20_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~20_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[108]~93_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[108]~50_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~22\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~22COUT1_47\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~17\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~15_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[110]~11_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[110]~10_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[109]~3_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~10_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[109]~47_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~12\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~12COUT1_48\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~7_cout0\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~7COUT1_49\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~0_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[116]~97_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[116]~96_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~25_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[115]~108_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[115]~107_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~30_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[114]~113_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[114]~112_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[113]~117_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[113]~116_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[112]~119_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[112]~118_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~37_cout0\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~37COUT1_41\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~32_cout0\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~32COUT1_42\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~27_cout0\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~27COUT1_43\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~22_cout0\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~22COUT1_44\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~17_cout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~10_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[118]~5_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[118]~4_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[117]~51_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~15_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|StageOut[117]~52_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~12_cout0\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~12COUT1_45\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~7_cout0\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~7COUT1_46\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~0_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[0]~COUT\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[0]~COUTCOUT1_39\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~37_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~0_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~2\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~2COUT1_40\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~5_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~7\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~7COUT1_41\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~10_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~12\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~12COUT1_42\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~15_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~17\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~20_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~22\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~22COUT1_43\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~25_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~27\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~27COUT1_44\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~30_combout\ : std_logic;
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uMAC|tamp\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \uMAC|Mult0|auto_generated|le5a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \uREG|sortie\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \uDIV|decompteur\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uMAC|Mult0|auto_generated|le6a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uMAC|produit\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uMAC|valeur\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uMAC|Mult0|auto_generated|cs3a\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uMAC|coeff\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uMAC|Mult0|auto_generated|le4a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \uMAC|Mult0|auto_generated|cs1a\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uMAC|Mult0|auto_generated|le2a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \uREG|Div0|auto_generated|divider|my_abs_num|cs2a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \entree~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uMAC|Mult0|auto_generated|le7a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \uMAE|ALT_INV_H_FIFO~combout\ : std_logic;
SIGNAL \uREG|ALT_INV_sortie\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_H_10MHz <= H_10MHz;
ww_RAZ <= RAZ;
ww_entree <= entree;
sortie <= ww_sortie;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\uMAE|ALT_INV_H_FIFO~combout\ <= NOT \uMAE|H_FIFO~combout\;
\uREG|ALT_INV_sortie\(7) <= NOT \uREG|sortie\(7);
\uREG|ALT_INV_sortie\(0) <= NOT \uREG|sortie\(0);

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\H_10MHz~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_H_10MHz,
	combout => \H_10MHz~combout\);

-- Location: LC_X11_Y3_N6
\uDIV|decompteur[2]\ : maxv_lcell
-- Equation(s):
-- \uDIV|decompteur\(2) = DFFEAS((\uDIV|decompteur\(2) $ (((!\uDIV|decompteur\(1) & !\uDIV|decompteur\(0))))), GLOBAL(\H_10MHz~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0c3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \H_10MHz~combout\,
	datab => \uDIV|decompteur\(1),
	datac => \uDIV|decompteur\(2),
	datad => \uDIV|decompteur\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uDIV|decompteur\(2));

-- Location: LC_X11_Y3_N8
\uDIV|decompteur[0]\ : maxv_lcell
-- Equation(s):
-- \uDIV|decompteur\(0) = DFFEAS(((!\uDIV|decompteur\(0) & ((\uDIV|decompteur\(1)) # (\uDIV|decompteur\(2))))), GLOBAL(\H_10MHz~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00fc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \H_10MHz~combout\,
	datab => \uDIV|decompteur\(1),
	datac => \uDIV|decompteur\(2),
	datad => \uDIV|decompteur\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uDIV|decompteur\(0));

-- Location: LC_X11_Y3_N9
\uDIV|decompteur[1]\ : maxv_lcell
-- Equation(s):
-- \uDIV|decompteur\(1) = DFFEAS(((\uDIV|decompteur\(1) & (\uDIV|decompteur\(0))) # (!\uDIV|decompteur\(1) & (!\uDIV|decompteur\(0) & \uDIV|decompteur\(2)))), GLOBAL(\H_10MHz~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \H_10MHz~combout\,
	datab => \uDIV|decompteur\(1),
	datac => \uDIV|decompteur\(0),
	datad => \uDIV|decompteur\(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uDIV|decompteur\(1));

-- Location: LC_X11_Y3_N7
\uDIV|horloge\ : maxv_lcell
-- Equation(s):
-- \uDIV|horloge~regout\ = DFFEAS(\uDIV|horloge~regout\ $ (((!\uDIV|decompteur\(1) & (!\uDIV|decompteur\(2) & !\uDIV|decompteur\(0))))), GLOBAL(\H_10MHz~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaa9",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \H_10MHz~combout\,
	dataa => \uDIV|horloge~regout\,
	datab => \uDIV|decompteur\(1),
	datac => \uDIV|decompteur\(2),
	datad => \uDIV|decompteur\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uDIV|horloge~regout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RAZ~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RAZ,
	combout => \RAZ~combout\);

-- Location: LC_X10_Y3_N7
\uMAE|etat.ETAT_0\ : maxv_lcell
-- Equation(s):
-- \uMAE|etat.ETAT_0~regout\ = DFFEAS((((!\RAZ~combout\))), GLOBAL(\uDIV|horloge~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uDIV|horloge~regout\,
	datad => \RAZ~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAE|etat.ETAT_0~regout\);

-- Location: LC_X10_Y3_N1
\uMAE|etat.ETAT_1\ : maxv_lcell
-- Equation(s):
-- \uMAE|etat.ETAT_1~regout\ = DFFEAS(((\uMAE|etat.ETAT_10~regout\) # ((!\uMAE|etat.ETAT_0~regout\))), GLOBAL(\uDIV|horloge~regout\), VCC, , , , , \RAZ~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfcf",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uDIV|horloge~regout\,
	datab => \uMAE|etat.ETAT_10~regout\,
	datac => \uMAE|etat.ETAT_0~regout\,
	aclr => GND,
	sclr => \RAZ~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAE|etat.ETAT_1~regout\);

-- Location: LC_X10_Y3_N8
\uMAE|etat.ETAT_2\ : maxv_lcell
-- Equation(s):
-- \uMAE|etat.ETAT_2~regout\ = DFFEAS(((!\RAZ~combout\ & ((\uMAE|etat.ETAT_1~regout\)))), GLOBAL(\uDIV|horloge~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uDIV|horloge~regout\,
	datab => \RAZ~combout\,
	datad => \uMAE|etat.ETAT_1~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAE|etat.ETAT_2~regout\);

-- Location: LC_X10_Y3_N2
\uMAE|etat.ETAT_3\ : maxv_lcell
-- Equation(s):
-- \uMAE|etat.ETAT_3~regout\ = DFFEAS(((!\RAZ~combout\ & ((\uMAE|etat.ETAT_2~regout\)))), GLOBAL(\uDIV|horloge~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uDIV|horloge~regout\,
	datab => \RAZ~combout\,
	datad => \uMAE|etat.ETAT_2~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAE|etat.ETAT_3~regout\);

-- Location: LC_X9_Y4_N8
\uMAE|etat.ETAT_4\ : maxv_lcell
-- Equation(s):
-- \uMAE|etat.ETAT_4~regout\ = DFFEAS((((!\RAZ~combout\ & \uMAE|etat.ETAT_3~regout\))), GLOBAL(\uDIV|horloge~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uDIV|horloge~regout\,
	datac => \RAZ~combout\,
	datad => \uMAE|etat.ETAT_3~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAE|etat.ETAT_4~regout\);

-- Location: LC_X9_Y4_N6
\uMAE|etat.ETAT_5\ : maxv_lcell
-- Equation(s):
-- \uMAE|etat.ETAT_5~regout\ = DFFEAS((((!\RAZ~combout\ & \uMAE|etat.ETAT_4~regout\))), GLOBAL(\uDIV|horloge~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uDIV|horloge~regout\,
	datac => \RAZ~combout\,
	datad => \uMAE|etat.ETAT_4~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAE|etat.ETAT_5~regout\);

-- Location: LC_X9_Y4_N5
\uMAE|etat.ETAT_6\ : maxv_lcell
-- Equation(s):
-- \uMAE|etat.ETAT_6~regout\ = DFFEAS((\uMAE|etat.ETAT_5~regout\ & (((!\RAZ~combout\)))), GLOBAL(\uDIV|horloge~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uDIV|horloge~regout\,
	dataa => \uMAE|etat.ETAT_5~regout\,
	datac => \RAZ~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAE|etat.ETAT_6~regout\);

-- Location: LC_X9_Y4_N3
\uMAE|etat.ETAT_7\ : maxv_lcell
-- Equation(s):
-- \uMAE|etat.ETAT_7~regout\ = DFFEAS((\uMAE|etat.ETAT_6~regout\ & (((!\RAZ~combout\)))), GLOBAL(\uDIV|horloge~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uDIV|horloge~regout\,
	dataa => \uMAE|etat.ETAT_6~regout\,
	datac => \RAZ~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAE|etat.ETAT_7~regout\);

-- Location: LC_X10_Y3_N6
\uMAE|etat.ETAT_8\ : maxv_lcell
-- Equation(s):
-- \uMAE|etat.ETAT_8~regout\ = DFFEAS(((\uMAE|etat.ETAT_7~regout\ & ((!\RAZ~combout\)))), GLOBAL(\uDIV|horloge~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uDIV|horloge~regout\,
	datab => \uMAE|etat.ETAT_7~regout\,
	datad => \RAZ~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAE|etat.ETAT_8~regout\);

-- Location: LC_X10_Y3_N4
\uMAE|etat.ETAT_9\ : maxv_lcell
-- Equation(s):
-- \uMAE|etat.ETAT_9~regout\ = DFFEAS(((!\RAZ~combout\ & ((\uMAE|etat.ETAT_8~regout\)))), GLOBAL(\uDIV|horloge~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uDIV|horloge~regout\,
	datab => \RAZ~combout\,
	datad => \uMAE|etat.ETAT_8~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAE|etat.ETAT_9~regout\);

-- Location: LC_X10_Y3_N0
\uMAE|etat.ETAT_10\ : maxv_lcell
-- Equation(s):
-- \uMAE|etat.ETAT_10~regout\ = DFFEAS(((\uMAE|etat.ETAT_9~regout\ & ((!\RAZ~combout\)))), GLOBAL(\uDIV|horloge~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uDIV|horloge~regout\,
	datab => \uMAE|etat.ETAT_9~regout\,
	datad => \RAZ~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAE|etat.ETAT_10~regout\);

-- Location: LC_X7_Y6_N8
\uMAE|H_REG\ : maxv_lcell
-- Equation(s):
-- \uMAE|H_REG~combout\ = LCELL(((!\uDIV|horloge~regout\ & (\uMAE|etat.ETAT_10~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uDIV|horloge~regout\,
	datac => \uMAE|etat.ETAT_10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAE|H_REG~combout\);

-- Location: LC_X10_Y3_N5
\uMAE|H_MAC\ : maxv_lcell
-- Equation(s):
-- \uMAE|H_MAC~combout\ = LCELL((!\uDIV|horloge~regout\ & (!\uMAE|etat.ETAT_10~regout\ & (\uMAE|etat.ETAT_0~regout\ & !\uMAE|etat.ETAT_1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uDIV|horloge~regout\,
	datab => \uMAE|etat.ETAT_10~regout\,
	datac => \uMAE|etat.ETAT_0~regout\,
	datad => \uMAE|etat.ETAT_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAE|H_MAC~combout\);

-- Location: LC_X10_Y3_N9
\uMAE|H_FIFO\ : maxv_lcell
-- Equation(s):
-- \uMAE|H_FIFO~combout\ = LCELL((!\uDIV|horloge~regout\ & (((\uMAE|etat.ETAT_1~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uDIV|horloge~regout\,
	datad => \uMAE|etat.ETAT_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAE|H_FIFO~combout\);

-- Location: LC_X9_Y4_N0
\uMAE|indice[2]~1\ : maxv_lcell
-- Equation(s):
-- \uMAE|indice[2]~1_combout\ = (((!\uMAE|etat.ETAT_6~regout\ & !\uMAE|etat.ETAT_7~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uMAE|etat.ETAT_6~regout\,
	datad => \uMAE|etat.ETAT_7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAE|indice[2]~1_combout\);

-- Location: LC_X9_Y4_N2
\uMAE|indice[2]~2\ : maxv_lcell
-- Equation(s):
-- \uMAE|indice[2]~2_combout\ = (!\uMAE|etat.ETAT_4~regout\ & (!\uMAE|etat.ETAT_3~regout\ & (!\uMAE|etat.ETAT_5~regout\ & !\uMAE|etat.ETAT_2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAE|etat.ETAT_4~regout\,
	datab => \uMAE|etat.ETAT_3~regout\,
	datac => \uMAE|etat.ETAT_5~regout\,
	datad => \uMAE|etat.ETAT_2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAE|indice[2]~2_combout\);

-- Location: LC_X9_Y4_N7
\uMAE|indice[1]~3\ : maxv_lcell
-- Equation(s):
-- \uMAE|indice[1]~3_combout\ = (\uMAE|indice[2]~1_combout\ & (\uMAE|indice[2]~2_combout\ & ((\uMAE|etat.ETAT_9~regout\) # (\uMAE|etat.ETAT_8~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAE|etat.ETAT_9~regout\,
	datab => \uMAE|etat.ETAT_8~regout\,
	datac => \uMAE|indice[2]~1_combout\,
	datad => \uMAE|indice[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAE|indice[1]~3_combout\);

-- Location: LC_X9_Y4_N4
\uMAE|indice[1]~4\ : maxv_lcell
-- Equation(s):
-- \uMAE|indice[1]~4_combout\ = (\uMAE|indice[1]~3_combout\) # ((!\uMAE|etat.ETAT_2~regout\ & ((\uMAE|etat.ETAT_4~regout\) # (\uMAE|etat.ETAT_5~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccfe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAE|etat.ETAT_4~regout\,
	datab => \uMAE|indice[1]~3_combout\,
	datac => \uMAE|etat.ETAT_5~regout\,
	datad => \uMAE|etat.ETAT_2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAE|indice[1]~4_combout\);

-- Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entree[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_entree(1),
	combout => \entree~combout\(1));

-- Location: LC_X2_Y4_N6
\uFIFO|RAM_Entree_0__1_\ : maxv_lcell
-- Equation(s):
-- \uFIFO|RAM_Entree_0__1_~regout\ = DFFEAS(GND, GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , \entree~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	datac => \entree~combout\(1),
	aclr => \RAZ~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uFIFO|RAM_Entree_0__1_~regout\);

-- Location: LC_X9_Y4_N9
\uMAE|indice~0\ : maxv_lcell
-- Equation(s):
-- \uMAE|indice~0_combout\ = (\uMAE|etat.ETAT_5~regout\) # ((\uMAE|etat.ETAT_3~regout\) # ((\uMAE|etat.ETAT_9~regout\) # (\uMAE|etat.ETAT_7~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAE|etat.ETAT_5~regout\,
	datab => \uMAE|etat.ETAT_3~regout\,
	datac => \uMAE|etat.ETAT_9~regout\,
	datad => \uMAE|etat.ETAT_7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAE|indice~0_combout\);

-- Location: LC_X2_Y4_N2
\uFIFO|RAM_Entree_1__1_\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mux10~6\ = (\uMAE|indice[1]~4_combout\ & (((\uMAE|indice~0_combout\)))) # (!\uMAE|indice[1]~4_combout\ & ((\uMAE|indice~0_combout\ & ((C1_RAM_Entree_1__1_))) # (!\uMAE|indice~0_combout\ & (\uFIFO|RAM_Entree_0__1_~regout\))))
-- \uFIFO|RAM_Entree_1__1_~regout\ = DFFEAS(\uMAC|Mux10~6\, GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , \uFIFO|RAM_Entree_0__1_~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	dataa => \uFIFO|RAM_Entree_0__1_~regout\,
	datab => \uMAE|indice[1]~4_combout\,
	datac => \uFIFO|RAM_Entree_0__1_~regout\,
	datad => \uMAE|indice~0_combout\,
	aclr => \RAZ~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mux10~6\,
	regout => \uFIFO|RAM_Entree_1__1_~regout\);

-- Location: LC_X2_Y4_N9
\uFIFO|RAM_Entree_2__1_\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mux10~7\ = (\uMAE|indice[1]~4_combout\ & ((\uMAC|Mux10~6\ & (\uFIFO|RAM_Entree_3__1_~regout\)) # (!\uMAC|Mux10~6\ & ((C1_RAM_Entree_2__1_))))) # (!\uMAE|indice[1]~4_combout\ & (((\uMAC|Mux10~6\))))
-- \uFIFO|RAM_Entree_2__1_~regout\ = DFFEAS(\uMAC|Mux10~7\, GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , \uFIFO|RAM_Entree_1__1_~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	dataa => \uFIFO|RAM_Entree_3__1_~regout\,
	datab => \uMAE|indice[1]~4_combout\,
	datac => \uFIFO|RAM_Entree_1__1_~regout\,
	datad => \uMAC|Mux10~6\,
	aclr => \RAZ~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mux10~7\,
	regout => \uFIFO|RAM_Entree_2__1_~regout\);

-- Location: LC_X2_Y4_N3
\uFIFO|RAM_Entree_3__1_\ : maxv_lcell
-- Equation(s):
-- \uFIFO|RAM_Entree_3__1_~regout\ = DFFEAS((((\uFIFO|RAM_Entree_2__1_~regout\))), GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	datad => \uFIFO|RAM_Entree_2__1_~regout\,
	aclr => \RAZ~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uFIFO|RAM_Entree_3__1_~regout\);

-- Location: LC_X9_Y4_N1
\uMAE|indice[2]~5\ : maxv_lcell
-- Equation(s):
-- \uMAE|indice[2]~5_combout\ = (\uMAE|indice[2]~2_combout\ & ((\uMAE|etat.ETAT_9~regout\) # ((\uMAE|etat.ETAT_8~regout\) # (!\uMAE|indice[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAE|etat.ETAT_9~regout\,
	datab => \uMAE|etat.ETAT_8~regout\,
	datac => \uMAE|indice[2]~1_combout\,
	datad => \uMAE|indice[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAE|indice[2]~5_combout\);

-- Location: LC_X12_Y7_N0
\uMAC|Mux10~8\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mux10~8_combout\ = (((\uMAC|Mux10~7\ & !\uMAE|indice[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uMAC|Mux10~7\,
	datad => \uMAE|indice[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mux10~8_combout\);

-- Location: LC_X2_Y4_N8
\uFIFO|RAM_Entree_4__1_\ : maxv_lcell
-- Equation(s):
-- \uFIFO|RAM_Entree_4__1_~regout\ = DFFEAS((((\uFIFO|RAM_Entree_3__1_~regout\))), GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	datad => \uFIFO|RAM_Entree_3__1_~regout\,
	aclr => \RAZ~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uFIFO|RAM_Entree_4__1_~regout\);

-- Location: LC_X2_Y4_N5
\uFIFO|RAM_Entree_5__1_\ : maxv_lcell
-- Equation(s):
-- \uFIFO|RAM_Entree_5__1_~regout\ = DFFEAS((((\uFIFO|RAM_Entree_4__1_~regout\))), GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	datad => \uFIFO|RAM_Entree_4__1_~regout\,
	aclr => \RAZ~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uFIFO|RAM_Entree_5__1_~regout\);

-- Location: LC_X2_Y4_N7
\uFIFO|RAM_Entree_6__1_\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mux10~3\ = (\uMAE|indice~0_combout\ & (\uMAE|indice[1]~4_combout\)) # (!\uMAE|indice~0_combout\ & ((\uMAE|indice[1]~4_combout\ & (C1_RAM_Entree_6__1_)) # (!\uMAE|indice[1]~4_combout\ & ((\uFIFO|RAM_Entree_4__1_~regout\)))))
-- \uFIFO|RAM_Entree_6__1_~regout\ = DFFEAS(\uMAC|Mux10~3\, GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , \uFIFO|RAM_Entree_5__1_~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	dataa => \uMAE|indice~0_combout\,
	datab => \uMAE|indice[1]~4_combout\,
	datac => \uFIFO|RAM_Entree_5__1_~regout\,
	datad => \uFIFO|RAM_Entree_4__1_~regout\,
	aclr => \RAZ~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mux10~3\,
	regout => \uFIFO|RAM_Entree_6__1_~regout\);

-- Location: LC_X2_Y4_N4
\uFIFO|RAM_Entree_7__1_\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mux10~4\ = (\uMAE|indice~0_combout\ & ((\uMAC|Mux10~3\ & ((C1_RAM_Entree_7__1_))) # (!\uMAC|Mux10~3\ & (\uFIFO|RAM_Entree_5__1_~regout\)))) # (!\uMAE|indice~0_combout\ & (((\uMAC|Mux10~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	dataa => \uFIFO|RAM_Entree_5__1_~regout\,
	datab => \uMAE|indice~0_combout\,
	datac => \uFIFO|RAM_Entree_6__1_~regout\,
	datad => \uMAC|Mux10~3\,
	aclr => \RAZ~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mux10~4\,
	regout => \uFIFO|RAM_Entree_7__1_~regout\);

-- Location: LC_X12_Y7_N1
\uMAC|Mux10~5\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mux10~5_combout\ = (((\uMAC|Mux10~4\ & \uMAE|indice[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uMAC|Mux10~4\,
	datad => \uMAE|indice[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mux10~5_combout\);

-- Location: LC_X12_Y7_N9
\uMAC|valeur[1]\ : maxv_lcell
-- Equation(s):
-- \uMAC|valeur\(1) = DFFEAS((((\uMAC|Mux10~8_combout\) # (\uMAC|Mux10~5_combout\))), GLOBAL(\uMAE|H_MAC~combout\), VCC, , !\uMAE|H_FIFO~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	datac => \uMAC|Mux10~8_combout\,
	datad => \uMAC|Mux10~5_combout\,
	aclr => GND,
	ena => \uMAE|ALT_INV_H_FIFO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAC|valeur\(1));

-- Location: LC_X7_Y4_N0
\uMAC|Mult0|auto_generated|cs1a[0]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|cs1a\(0) = (\uMAC|valeur\(1))
-- \uMAC|Mult0|auto_generated|cs1a[0]~COUT\ = CARRY(((\uMAC|Mult0|auto_generated|cs1a\(0))))
-- \uMAC|Mult0|auto_generated|cs1a[0]~COUTCOUT1_12\ = CARRY(((\uMAC|Mult0|auto_generated|cs1a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|valeur\(1),
	datab => \uMAC|Mult0|auto_generated|cs1a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|cs1a\(0),
	cout0 => \uMAC|Mult0|auto_generated|cs1a[0]~COUT\,
	cout1 => \uMAC|Mult0|auto_generated|cs1a[0]~COUTCOUT1_12\);

-- Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entree[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_entree(0),
	combout => \entree~combout\(0));

-- Location: LC_X11_Y1_N2
\uFIFO|RAM_Entree_0__0_\ : maxv_lcell
-- Equation(s):
-- \uFIFO|RAM_Entree_0__0_~regout\ = DFFEAS((((\entree~combout\(0)))), GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	datad => \entree~combout\(0),
	aclr => \RAZ~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uFIFO|RAM_Entree_0__0_~regout\);

-- Location: LC_X11_Y1_N1
\uFIFO|RAM_Entree_1__0_\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mux11~6\ = (\uMAE|indice~0_combout\ & ((\uMAE|indice[1]~4_combout\) # ((C1_RAM_Entree_1__0_)))) # (!\uMAE|indice~0_combout\ & (!\uMAE|indice[1]~4_combout\ & ((\uFIFO|RAM_Entree_0__0_~regout\))))
-- \uFIFO|RAM_Entree_1__0_~regout\ = DFFEAS(\uMAC|Mux11~6\, GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , \uFIFO|RAM_Entree_0__0_~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	dataa => \uMAE|indice~0_combout\,
	datab => \uMAE|indice[1]~4_combout\,
	datac => \uFIFO|RAM_Entree_0__0_~regout\,
	datad => \uFIFO|RAM_Entree_0__0_~regout\,
	aclr => \RAZ~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mux11~6\,
	regout => \uFIFO|RAM_Entree_1__0_~regout\);

-- Location: LC_X10_Y1_N5
\uFIFO|RAM_Entree_2__0_\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mux11~7\ = (\uMAC|Mux11~6\ & (((\uFIFO|RAM_Entree_3__0_~regout\)) # (!\uMAE|indice[1]~4_combout\))) # (!\uMAC|Mux11~6\ & (\uMAE|indice[1]~4_combout\ & (C1_RAM_Entree_2__0_)))
-- \uFIFO|RAM_Entree_2__0_~regout\ = DFFEAS(\uMAC|Mux11~7\, GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , \uFIFO|RAM_Entree_1__0_~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	dataa => \uMAC|Mux11~6\,
	datab => \uMAE|indice[1]~4_combout\,
	datac => \uFIFO|RAM_Entree_1__0_~regout\,
	datad => \uFIFO|RAM_Entree_3__0_~regout\,
	aclr => \RAZ~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mux11~7\,
	regout => \uFIFO|RAM_Entree_2__0_~regout\);

-- Location: LC_X10_Y1_N1
\uFIFO|RAM_Entree_3__0_\ : maxv_lcell
-- Equation(s):
-- \uFIFO|RAM_Entree_3__0_~regout\ = DFFEAS(GND, GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , \uFIFO|RAM_Entree_2__0_~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	datac => \uFIFO|RAM_Entree_2__0_~regout\,
	aclr => \RAZ~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uFIFO|RAM_Entree_3__0_~regout\);

-- Location: LC_X10_Y1_N6
\uMAC|Mux11~8\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mux11~8_combout\ = ((!\uMAE|indice[2]~5_combout\ & ((\uMAC|Mux11~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uMAE|indice[2]~5_combout\,
	datad => \uMAC|Mux11~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mux11~8_combout\);

-- Location: LC_X10_Y1_N3
\uFIFO|RAM_Entree_4__0_\ : maxv_lcell
-- Equation(s):
-- \uFIFO|RAM_Entree_4__0_~regout\ = DFFEAS((((\uFIFO|RAM_Entree_3__0_~regout\))), GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	datad => \uFIFO|RAM_Entree_3__0_~regout\,
	aclr => \RAZ~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uFIFO|RAM_Entree_4__0_~regout\);

-- Location: LC_X10_Y1_N4
\uFIFO|RAM_Entree_5__0_\ : maxv_lcell
-- Equation(s):
-- \uFIFO|RAM_Entree_5__0_~regout\ = DFFEAS((((\uFIFO|RAM_Entree_4__0_~regout\))), GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	datad => \uFIFO|RAM_Entree_4__0_~regout\,
	aclr => \RAZ~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uFIFO|RAM_Entree_5__0_~regout\);

-- Location: LC_X10_Y1_N9
\uFIFO|RAM_Entree_6__0_\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mux11~3\ = (\uMAE|indice~0_combout\ & (\uMAE|indice[1]~4_combout\)) # (!\uMAE|indice~0_combout\ & ((\uMAE|indice[1]~4_combout\ & (C1_RAM_Entree_6__0_)) # (!\uMAE|indice[1]~4_combout\ & ((\uFIFO|RAM_Entree_4__0_~regout\)))))
-- \uFIFO|RAM_Entree_6__0_~regout\ = DFFEAS(\uMAC|Mux11~3\, GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , \uFIFO|RAM_Entree_5__0_~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	dataa => \uMAE|indice~0_combout\,
	datab => \uMAE|indice[1]~4_combout\,
	datac => \uFIFO|RAM_Entree_5__0_~regout\,
	datad => \uFIFO|RAM_Entree_4__0_~regout\,
	aclr => \RAZ~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mux11~3\,
	regout => \uFIFO|RAM_Entree_6__0_~regout\);

-- Location: LC_X10_Y1_N8
\uFIFO|RAM_Entree_7__0_\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mux11~4\ = (\uMAE|indice~0_combout\ & ((\uMAC|Mux11~3\ & ((C1_RAM_Entree_7__0_))) # (!\uMAC|Mux11~3\ & (\uFIFO|RAM_Entree_5__0_~regout\)))) # (!\uMAE|indice~0_combout\ & (((\uMAC|Mux11~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	dataa => \uFIFO|RAM_Entree_5__0_~regout\,
	datab => \uMAE|indice~0_combout\,
	datac => \uFIFO|RAM_Entree_6__0_~regout\,
	datad => \uMAC|Mux11~3\,
	aclr => \RAZ~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mux11~4\,
	regout => \uFIFO|RAM_Entree_7__0_~regout\);

-- Location: LC_X10_Y1_N2
\uMAC|Mux11~5\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mux11~5_combout\ = ((\uMAE|indice[2]~5_combout\ & ((\uMAC|Mux11~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uMAE|indice[2]~5_combout\,
	datad => \uMAC|Mux11~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mux11~5_combout\);

-- Location: LC_X10_Y1_N7
\uMAC|valeur[0]\ : maxv_lcell
-- Equation(s):
-- \uMAC|valeur\(0) = DFFEAS((((!\uMAC|Mux11~8_combout\ & !\uMAC|Mux11~5_combout\))), GLOBAL(\uMAE|H_MAC~combout\), VCC, , !\uMAE|H_FIFO~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	datac => \uMAC|Mux11~8_combout\,
	datad => \uMAC|Mux11~5_combout\,
	aclr => GND,
	ena => \uMAE|ALT_INV_H_FIFO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAC|valeur\(0));

-- Location: LC_X7_Y4_N6
\uMAC|produit[0]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|cs3a\(0) = ((\uMAC|valeur\(0)))
-- \uMAC|produit\(0) = DFFEAS(\uMAC|Mult0|auto_generated|cs3a\(0), GLOBAL(\uMAE|H_MAC~combout\), VCC, , !\uMAE|H_FIFO~combout\, , , , )
-- \uMAC|Mult0|auto_generated|cs3a[0]~COUT\ = CARRY((\uMAC|Mult0|auto_generated|cs1a\(0)))
-- \uMAC|Mult0|auto_generated|cs3a[0]~COUTCOUT1_13\ = CARRY((\uMAC|Mult0|auto_generated|cs1a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "arithmetic",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	dataa => \uMAC|Mult0|auto_generated|cs1a\(0),
	datab => \uMAC|valeur\(0),
	aclr => GND,
	ena => \uMAE|ALT_INV_H_FIFO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|cs3a\(0),
	regout => \uMAC|produit\(0),
	cout0 => \uMAC|Mult0|auto_generated|cs3a[0]~COUT\,
	cout1 => \uMAC|Mult0|auto_generated|cs3a[0]~COUTCOUT1_13\);

-- Location: LC_X12_Y7_N2
\uMAC|coeff[7]\ : maxv_lcell
-- Equation(s):
-- \uMAC|coeff\(7) = DFFEAS((\uMAE|indice[1]~4_combout\ $ (((\uMAE|indice[2]~5_combout\) # (!\uMAE|indice~0_combout\)))), GLOBAL(\uMAE|H_MAC~combout\), VCC, , !\uMAE|H_FIFO~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fa5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	dataa => \uMAE|indice~0_combout\,
	datac => \uMAE|indice[1]~4_combout\,
	datad => \uMAE|indice[2]~5_combout\,
	aclr => GND,
	ena => \uMAE|ALT_INV_H_FIFO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAC|coeff\(7));

-- Location: LC_X10_Y7_N0
\uMAC|Mult0|auto_generated|le5a[8]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|le5a\(8) = (\uMAC|coeff\(7) & (((\uMAC|Mult0|auto_generated|cs1a\(0))))) # (!\uMAC|coeff\(7) & (!\uMAC|Mult0|auto_generated|cs3a\(0) & (!\uMAC|Mult0|auto_generated|cs1a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c1c1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|Mult0|auto_generated|cs3a\(0),
	datab => \uMAC|coeff\(7),
	datac => \uMAC|Mult0|auto_generated|cs1a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|le5a\(8));

-- Location: LC_X12_Y7_N8
\uMAC|coeff[6]\ : maxv_lcell
-- Equation(s):
-- \uMAC|coeff\(6) = DFFEAS((\uMAE|indice~0_combout\) # (((\uMAE|indice[1]~4_combout\) # (\uMAE|indice[2]~5_combout\))), GLOBAL(\uMAE|H_MAC~combout\), VCC, , !\uMAE|H_FIFO~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	dataa => \uMAE|indice~0_combout\,
	datac => \uMAE|indice[1]~4_combout\,
	datad => \uMAE|indice[2]~5_combout\,
	aclr => GND,
	ena => \uMAE|ALT_INV_H_FIFO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAC|coeff\(6));

-- Location: LC_X10_Y7_N2
\uMAC|Mult0|auto_generated|le5a[7]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|le5a\(7) = (\uMAC|Mult0|auto_generated|cs3a\(0) & (((\uMAC|Mult0|auto_generated|cs1a\(0) & !\uMAC|coeff\(6))))) # (!\uMAC|Mult0|auto_generated|cs3a\(0) & (\uMAC|coeff\(7) $ ((!\uMAC|Mult0|auto_generated|cs1a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "41e1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|Mult0|auto_generated|cs3a\(0),
	datab => \uMAC|coeff\(7),
	datac => \uMAC|Mult0|auto_generated|cs1a\(0),
	datad => \uMAC|coeff\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|le5a\(7));

-- Location: LC_X12_Y7_N6
\uMAC|coeff[5]\ : maxv_lcell
-- Equation(s):
-- \uMAC|coeff\(5) = DFFEAS((\uMAE|indice~0_combout\ & ((\uMAE|indice[1]~4_combout\ $ (!\uMAE|indice[2]~5_combout\)))) # (!\uMAE|indice~0_combout\ & (((\uMAE|indice[1]~4_combout\) # (\uMAE|indice[2]~5_combout\)))), GLOBAL(\uMAE|H_MAC~combout\), VCC, , 
-- !\uMAE|H_FIFO~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f55a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	dataa => \uMAE|indice~0_combout\,
	datac => \uMAE|indice[1]~4_combout\,
	datad => \uMAE|indice[2]~5_combout\,
	aclr => GND,
	ena => \uMAE|ALT_INV_H_FIFO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAC|coeff\(5));

-- Location: LC_X10_Y7_N4
\uMAC|Mult0|auto_generated|le5a[6]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|le5a\(6) = (\uMAC|Mult0|auto_generated|cs3a\(0) & (((\uMAC|Mult0|auto_generated|cs1a\(0) & !\uMAC|coeff\(5))))) # (!\uMAC|Mult0|auto_generated|cs3a\(0) & (\uMAC|coeff\(6) $ ((\uMAC|Mult0|auto_generated|cs1a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "14b4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|Mult0|auto_generated|cs3a\(0),
	datab => \uMAC|coeff\(6),
	datac => \uMAC|Mult0|auto_generated|cs1a\(0),
	datad => \uMAC|coeff\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|le5a\(6));

-- Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entree[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_entree(7),
	combout => \entree~combout\(7));

-- Location: LC_X10_Y3_N3
\uFIFO|RAM_Entree_0__7_\ : maxv_lcell
-- Equation(s):
-- \uFIFO|RAM_Entree_0__7_~regout\ = DFFEAS((((\entree~combout\(7)))), GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	datad => \entree~combout\(7),
	aclr => \RAZ~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uFIFO|RAM_Entree_0__7_~regout\);

-- Location: LC_X12_Y3_N2
\uFIFO|RAM_Entree_1__7_\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mux4~2\ = (\uMAE|indice[1]~4_combout\ & (\uMAE|indice~0_combout\)) # (!\uMAE|indice[1]~4_combout\ & ((\uMAE|indice~0_combout\ & (C1_RAM_Entree_1__7_)) # (!\uMAE|indice~0_combout\ & ((\uFIFO|RAM_Entree_0__7_~regout\)))))
-- \uFIFO|RAM_Entree_1__7_~regout\ = DFFEAS(\uMAC|Mux4~2\, GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , \uFIFO|RAM_Entree_0__7_~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	dataa => \uMAE|indice[1]~4_combout\,
	datab => \uMAE|indice~0_combout\,
	datac => \uFIFO|RAM_Entree_0__7_~regout\,
	datad => \uFIFO|RAM_Entree_0__7_~regout\,
	aclr => \RAZ~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mux4~2\,
	regout => \uFIFO|RAM_Entree_1__7_~regout\);

-- Location: LC_X12_Y3_N8
\uFIFO|RAM_Entree_2__7_\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mux4~3\ = (\uMAE|indice[1]~4_combout\ & ((\uMAC|Mux4~2\ & (\uFIFO|RAM_Entree_3__7_~regout\)) # (!\uMAC|Mux4~2\ & ((C1_RAM_Entree_2__7_))))) # (!\uMAE|indice[1]~4_combout\ & (((\uMAC|Mux4~2\))))
-- \uFIFO|RAM_Entree_2__7_~regout\ = DFFEAS(\uMAC|Mux4~3\, GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , \uFIFO|RAM_Entree_1__7_~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	dataa => \uMAE|indice[1]~4_combout\,
	datab => \uFIFO|RAM_Entree_3__7_~regout\,
	datac => \uFIFO|RAM_Entree_1__7_~regout\,
	datad => \uMAC|Mux4~2\,
	aclr => \RAZ~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mux4~3\,
	regout => \uFIFO|RAM_Entree_2__7_~regout\);

-- Location: LC_X12_Y3_N4
\uFIFO|RAM_Entree_3__7_\ : maxv_lcell
-- Equation(s):
-- \uFIFO|RAM_Entree_3__7_~regout\ = DFFEAS((((\uFIFO|RAM_Entree_2__7_~regout\))), GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	datad => \uFIFO|RAM_Entree_2__7_~regout\,
	aclr => \RAZ~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uFIFO|RAM_Entree_3__7_~regout\);

-- Location: LC_X1_Y4_N9
\uFIFO|RAM_Entree_4__7_\ : maxv_lcell
-- Equation(s):
-- \uFIFO|RAM_Entree_4__7_~regout\ = DFFEAS(GND, GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , \uFIFO|RAM_Entree_3__7_~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	datac => \uFIFO|RAM_Entree_3__7_~regout\,
	aclr => \RAZ~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uFIFO|RAM_Entree_4__7_~regout\);

-- Location: LC_X1_Y4_N4
\uFIFO|RAM_Entree_5__7_\ : maxv_lcell
-- Equation(s):
-- \uFIFO|RAM_Entree_5__7_~regout\ = DFFEAS((((\uFIFO|RAM_Entree_4__7_~regout\))), GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	datad => \uFIFO|RAM_Entree_4__7_~regout\,
	aclr => \RAZ~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uFIFO|RAM_Entree_5__7_~regout\);

-- Location: LC_X1_Y4_N0
\uFIFO|RAM_Entree_6__7_\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mux4~0\ = (\uMAE|indice[1]~4_combout\ & ((\uMAE|indice~0_combout\) # ((C1_RAM_Entree_6__7_)))) # (!\uMAE|indice[1]~4_combout\ & (!\uMAE|indice~0_combout\ & ((\uFIFO|RAM_Entree_4__7_~regout\))))
-- \uFIFO|RAM_Entree_6__7_~regout\ = DFFEAS(\uMAC|Mux4~0\, GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , \uFIFO|RAM_Entree_5__7_~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	dataa => \uMAE|indice[1]~4_combout\,
	datab => \uMAE|indice~0_combout\,
	datac => \uFIFO|RAM_Entree_5__7_~regout\,
	datad => \uFIFO|RAM_Entree_4__7_~regout\,
	aclr => \RAZ~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mux4~0\,
	regout => \uFIFO|RAM_Entree_6__7_~regout\);

-- Location: LC_X1_Y4_N8
\uFIFO|RAM_Entree_7__7_\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mux4~1\ = (\uMAC|Mux4~0\ & (((C1_RAM_Entree_7__7_) # (!\uMAE|indice~0_combout\)))) # (!\uMAC|Mux4~0\ & (\uFIFO|RAM_Entree_5__7_~regout\ & ((\uMAE|indice~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	dataa => \uFIFO|RAM_Entree_5__7_~regout\,
	datab => \uMAC|Mux4~0\,
	datac => \uFIFO|RAM_Entree_6__7_~regout\,
	datad => \uMAE|indice~0_combout\,
	aclr => \RAZ~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mux4~1\,
	regout => \uFIFO|RAM_Entree_7__7_~regout\);

-- Location: LC_X12_Y7_N4
\uMAC|valeur[7]\ : maxv_lcell
-- Equation(s):
-- \uMAC|valeur\(7) = DFFEAS(((\uMAE|indice[2]~5_combout\ & ((!\uMAC|Mux4~1\))) # (!\uMAE|indice[2]~5_combout\ & (!\uMAC|Mux4~3\))), GLOBAL(\uMAE|H_MAC~combout\), VCC, , !\uMAE|H_FIFO~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "03cf",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	datab => \uMAE|indice[2]~5_combout\,
	datac => \uMAC|Mux4~3\,
	datad => \uMAC|Mux4~1\,
	aclr => GND,
	ena => \uMAE|ALT_INV_H_FIFO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAC|valeur\(7));

-- Location: LC_X10_Y7_N5
\uMAC|Mult0|auto_generated|add20_result[0]~20\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|add20_result[0]~20_combout\ = \uMAC|Mult0|auto_generated|le5a\(6) $ ((!\uMAC|valeur\(7)))
-- \uMAC|Mult0|auto_generated|add20_result[0]~22\ = CARRY((\uMAC|Mult0|auto_generated|le5a\(6) & (!\uMAC|valeur\(7))))
-- \uMAC|Mult0|auto_generated|add20_result[0]~22COUT1_26\ = CARRY((\uMAC|Mult0|auto_generated|le5a\(6) & (!\uMAC|valeur\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9922",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|Mult0|auto_generated|le5a\(6),
	datab => \uMAC|valeur\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|add20_result[0]~20_combout\,
	cout0 => \uMAC|Mult0|auto_generated|add20_result[0]~22\,
	cout1 => \uMAC|Mult0|auto_generated|add20_result[0]~22COUT1_26\);

-- Location: LC_X10_Y7_N6
\uMAC|Mult0|auto_generated|add20_result[1]~15\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|add20_result[1]~15_combout\ = (\uMAC|Mult0|auto_generated|le5a\(7) $ ((\uMAC|Mult0|auto_generated|add20_result[0]~22\)))
-- \uMAC|Mult0|auto_generated|add20_result[1]~17\ = CARRY(((!\uMAC|Mult0|auto_generated|add20_result[0]~22\) # (!\uMAC|Mult0|auto_generated|le5a\(7))))
-- \uMAC|Mult0|auto_generated|add20_result[1]~17COUT1_27\ = CARRY(((!\uMAC|Mult0|auto_generated|add20_result[0]~22COUT1_26\) # (!\uMAC|Mult0|auto_generated|le5a\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uMAC|Mult0|auto_generated|le5a\(7),
	cin0 => \uMAC|Mult0|auto_generated|add20_result[0]~22\,
	cin1 => \uMAC|Mult0|auto_generated|add20_result[0]~22COUT1_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|add20_result[1]~15_combout\,
	cout0 => \uMAC|Mult0|auto_generated|add20_result[1]~17\,
	cout1 => \uMAC|Mult0|auto_generated|add20_result[1]~17COUT1_27\);

-- Location: LC_X10_Y7_N7
\uMAC|Mult0|auto_generated|add20_result[2]~10\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|add20_result[2]~10_combout\ = (\uMAC|Mult0|auto_generated|le5a\(8) $ ((!\uMAC|Mult0|auto_generated|add20_result[1]~17\)))
-- \uMAC|Mult0|auto_generated|add20_result[2]~12\ = CARRY(((!\uMAC|Mult0|auto_generated|add20_result[1]~17\) # (!\uMAC|Mult0|auto_generated|le5a\(8))))
-- \uMAC|Mult0|auto_generated|add20_result[2]~12COUT1_28\ = CARRY(((!\uMAC|Mult0|auto_generated|add20_result[1]~17COUT1_27\) # (!\uMAC|Mult0|auto_generated|le5a\(8))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c33f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uMAC|Mult0|auto_generated|le5a\(8),
	cin0 => \uMAC|Mult0|auto_generated|add20_result[1]~17\,
	cin1 => \uMAC|Mult0|auto_generated|add20_result[1]~17COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|add20_result[2]~10_combout\,
	cout0 => \uMAC|Mult0|auto_generated|add20_result[2]~12\,
	cout1 => \uMAC|Mult0|auto_generated|add20_result[2]~12COUT1_28\);

-- Location: LC_X12_Y7_N3
\uMAC|coeff[2]\ : maxv_lcell
-- Equation(s):
-- \uMAC|coeff\(2) = DFFEAS((!\uMAE|indice~0_combout\ & (((!\uMAE|indice[1]~4_combout\ & \uMAE|indice[2]~5_combout\)))), GLOBAL(\uMAE|H_MAC~combout\), VCC, , !\uMAE|H_FIFO~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	dataa => \uMAE|indice~0_combout\,
	datac => \uMAE|indice[1]~4_combout\,
	datad => \uMAE|indice[2]~5_combout\,
	aclr => GND,
	ena => \uMAE|ALT_INV_H_FIFO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAC|coeff\(2));

-- Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entree[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_entree(6),
	combout => \entree~combout\(6));

-- Location: LC_X12_Y1_N9
\uFIFO|RAM_Entree_0__6_\ : maxv_lcell
-- Equation(s):
-- \uFIFO|RAM_Entree_0__6_~regout\ = DFFEAS((((\entree~combout\(6)))), GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	datad => \entree~combout\(6),
	aclr => \RAZ~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uFIFO|RAM_Entree_0__6_~regout\);

-- Location: LC_X12_Y3_N3
\uFIFO|RAM_Entree_1__6_\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mux5~2\ = (\uMAE|indice[1]~4_combout\ & (\uMAE|indice~0_combout\)) # (!\uMAE|indice[1]~4_combout\ & ((\uMAE|indice~0_combout\ & (C1_RAM_Entree_1__6_)) # (!\uMAE|indice~0_combout\ & ((\uFIFO|RAM_Entree_0__6_~regout\)))))
-- \uFIFO|RAM_Entree_1__6_~regout\ = DFFEAS(\uMAC|Mux5~2\, GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , \uFIFO|RAM_Entree_0__6_~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	dataa => \uMAE|indice[1]~4_combout\,
	datab => \uMAE|indice~0_combout\,
	datac => \uFIFO|RAM_Entree_0__6_~regout\,
	datad => \uFIFO|RAM_Entree_0__6_~regout\,
	aclr => \RAZ~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mux5~2\,
	regout => \uFIFO|RAM_Entree_1__6_~regout\);

-- Location: LC_X12_Y3_N6
\uFIFO|RAM_Entree_2__6_\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mux5~3\ = (\uMAE|indice[1]~4_combout\ & ((\uMAC|Mux5~2\ & (\uFIFO|RAM_Entree_3__6_~regout\)) # (!\uMAC|Mux5~2\ & ((C1_RAM_Entree_2__6_))))) # (!\uMAE|indice[1]~4_combout\ & (((\uMAC|Mux5~2\))))
-- \uFIFO|RAM_Entree_2__6_~regout\ = DFFEAS(\uMAC|Mux5~3\, GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , \uFIFO|RAM_Entree_1__6_~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	dataa => \uMAE|indice[1]~4_combout\,
	datab => \uFIFO|RAM_Entree_3__6_~regout\,
	datac => \uFIFO|RAM_Entree_1__6_~regout\,
	datad => \uMAC|Mux5~2\,
	aclr => \RAZ~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mux5~3\,
	regout => \uFIFO|RAM_Entree_2__6_~regout\);

-- Location: LC_X12_Y3_N9
\uFIFO|RAM_Entree_3__6_\ : maxv_lcell
-- Equation(s):
-- \uFIFO|RAM_Entree_3__6_~regout\ = DFFEAS(GND, GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , \uFIFO|RAM_Entree_2__6_~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	datac => \uFIFO|RAM_Entree_2__6_~regout\,
	aclr => \RAZ~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uFIFO|RAM_Entree_3__6_~regout\);

-- Location: LC_X12_Y3_N1
\uFIFO|RAM_Entree_4__6_\ : maxv_lcell
-- Equation(s):
-- \uFIFO|RAM_Entree_4__6_~regout\ = DFFEAS((((\uFIFO|RAM_Entree_3__6_~regout\))), GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	datad => \uFIFO|RAM_Entree_3__6_~regout\,
	aclr => \RAZ~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uFIFO|RAM_Entree_4__6_~regout\);

-- Location: LC_X12_Y3_N5
\uFIFO|RAM_Entree_5__6_\ : maxv_lcell
-- Equation(s):
-- \uFIFO|RAM_Entree_5__6_~regout\ = DFFEAS((((\uFIFO|RAM_Entree_4__6_~regout\))), GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	datad => \uFIFO|RAM_Entree_4__6_~regout\,
	aclr => \RAZ~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uFIFO|RAM_Entree_5__6_~regout\);

-- Location: LC_X12_Y3_N0
\uFIFO|RAM_Entree_6__6_\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mux5~0\ = (\uMAE|indice[1]~4_combout\ & ((\uMAE|indice~0_combout\) # ((C1_RAM_Entree_6__6_)))) # (!\uMAE|indice[1]~4_combout\ & (!\uMAE|indice~0_combout\ & ((\uFIFO|RAM_Entree_4__6_~regout\))))
-- \uFIFO|RAM_Entree_6__6_~regout\ = DFFEAS(\uMAC|Mux5~0\, GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , \uFIFO|RAM_Entree_5__6_~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	dataa => \uMAE|indice[1]~4_combout\,
	datab => \uMAE|indice~0_combout\,
	datac => \uFIFO|RAM_Entree_5__6_~regout\,
	datad => \uFIFO|RAM_Entree_4__6_~regout\,
	aclr => \RAZ~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mux5~0\,
	regout => \uFIFO|RAM_Entree_6__6_~regout\);

-- Location: LC_X12_Y3_N7
\uFIFO|RAM_Entree_7__6_\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mux5~1\ = (\uMAE|indice~0_combout\ & ((\uMAC|Mux5~0\ & ((C1_RAM_Entree_7__6_))) # (!\uMAC|Mux5~0\ & (\uFIFO|RAM_Entree_5__6_~regout\)))) # (!\uMAE|indice~0_combout\ & (((\uMAC|Mux5~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	dataa => \uFIFO|RAM_Entree_5__6_~regout\,
	datab => \uMAE|indice~0_combout\,
	datac => \uFIFO|RAM_Entree_6__6_~regout\,
	datad => \uMAC|Mux5~0\,
	aclr => \RAZ~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mux5~1\,
	regout => \uFIFO|RAM_Entree_7__6_~regout\);

-- Location: LC_X12_Y7_N7
\uMAC|valeur[6]\ : maxv_lcell
-- Equation(s):
-- \uMAC|valeur\(6) = DFFEAS(((\uMAE|indice[2]~5_combout\ & ((\uMAC|Mux5~1\))) # (!\uMAE|indice[2]~5_combout\ & (\uMAC|Mux5~3\))), GLOBAL(\uMAE|H_MAC~combout\), VCC, , !\uMAE|H_FIFO~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	datab => \uMAE|indice[2]~5_combout\,
	datac => \uMAC|Mux5~3\,
	datad => \uMAC|Mux5~1\,
	aclr => GND,
	ena => \uMAE|ALT_INV_H_FIFO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAC|valeur\(6));

-- Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entree[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_entree(4),
	combout => \entree~combout\(4));

-- Location: LC_X11_Y1_N8
\uFIFO|RAM_Entree_0__4_\ : maxv_lcell
-- Equation(s):
-- \uFIFO|RAM_Entree_0__4_~regout\ = DFFEAS(GND, GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , \entree~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	datac => \entree~combout\(4),
	aclr => \RAZ~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uFIFO|RAM_Entree_0__4_~regout\);

-- Location: LC_X11_Y1_N4
\uFIFO|RAM_Entree_1__4_\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mux7~2\ = (\uMAE|indice~0_combout\ & ((\uMAE|indice[1]~4_combout\) # ((C1_RAM_Entree_1__4_)))) # (!\uMAE|indice~0_combout\ & (!\uMAE|indice[1]~4_combout\ & ((\uFIFO|RAM_Entree_0__4_~regout\))))
-- \uFIFO|RAM_Entree_1__4_~regout\ = DFFEAS(\uMAC|Mux7~2\, GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , \uFIFO|RAM_Entree_0__4_~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	dataa => \uMAE|indice~0_combout\,
	datab => \uMAE|indice[1]~4_combout\,
	datac => \uFIFO|RAM_Entree_0__4_~regout\,
	datad => \uFIFO|RAM_Entree_0__4_~regout\,
	aclr => \RAZ~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mux7~2\,
	regout => \uFIFO|RAM_Entree_1__4_~regout\);

-- Location: LC_X11_Y1_N5
\uFIFO|RAM_Entree_2__4_\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mux7~3\ = (\uMAE|indice[1]~4_combout\ & ((\uMAC|Mux7~2\ & (\uFIFO|RAM_Entree_3__4_~regout\)) # (!\uMAC|Mux7~2\ & ((C1_RAM_Entree_2__4_))))) # (!\uMAE|indice[1]~4_combout\ & (((\uMAC|Mux7~2\))))
-- \uFIFO|RAM_Entree_2__4_~regout\ = DFFEAS(\uMAC|Mux7~3\, GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , \uFIFO|RAM_Entree_1__4_~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	dataa => \uFIFO|RAM_Entree_3__4_~regout\,
	datab => \uMAE|indice[1]~4_combout\,
	datac => \uFIFO|RAM_Entree_1__4_~regout\,
	datad => \uMAC|Mux7~2\,
	aclr => \RAZ~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mux7~3\,
	regout => \uFIFO|RAM_Entree_2__4_~regout\);

-- Location: LC_X11_Y1_N6
\uFIFO|RAM_Entree_3__4_\ : maxv_lcell
-- Equation(s):
-- \uFIFO|RAM_Entree_3__4_~regout\ = DFFEAS(GND, GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , \uFIFO|RAM_Entree_2__4_~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	datac => \uFIFO|RAM_Entree_2__4_~regout\,
	aclr => \RAZ~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uFIFO|RAM_Entree_3__4_~regout\);

-- Location: LC_X11_Y1_N3
\uFIFO|RAM_Entree_4__4_\ : maxv_lcell
-- Equation(s):
-- \uFIFO|RAM_Entree_4__4_~regout\ = DFFEAS(GND, GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , \uFIFO|RAM_Entree_3__4_~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	datac => \uFIFO|RAM_Entree_3__4_~regout\,
	aclr => \RAZ~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uFIFO|RAM_Entree_4__4_~regout\);

-- Location: LC_X11_Y1_N7
\uFIFO|RAM_Entree_5__4_\ : maxv_lcell
-- Equation(s):
-- \uFIFO|RAM_Entree_5__4_~regout\ = DFFEAS((((\uFIFO|RAM_Entree_4__4_~regout\))), GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	datad => \uFIFO|RAM_Entree_4__4_~regout\,
	aclr => \RAZ~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uFIFO|RAM_Entree_5__4_~regout\);

-- Location: LC_X11_Y1_N0
\uFIFO|RAM_Entree_6__4_\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mux7~0\ = (\uMAE|indice~0_combout\ & (\uMAE|indice[1]~4_combout\)) # (!\uMAE|indice~0_combout\ & ((\uMAE|indice[1]~4_combout\ & (C1_RAM_Entree_6__4_)) # (!\uMAE|indice[1]~4_combout\ & ((\uFIFO|RAM_Entree_4__4_~regout\)))))
-- \uFIFO|RAM_Entree_6__4_~regout\ = DFFEAS(\uMAC|Mux7~0\, GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , \uFIFO|RAM_Entree_5__4_~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	dataa => \uMAE|indice~0_combout\,
	datab => \uMAE|indice[1]~4_combout\,
	datac => \uFIFO|RAM_Entree_5__4_~regout\,
	datad => \uFIFO|RAM_Entree_4__4_~regout\,
	aclr => \RAZ~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mux7~0\,
	regout => \uFIFO|RAM_Entree_6__4_~regout\);

-- Location: LC_X11_Y1_N9
\uFIFO|RAM_Entree_7__4_\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mux7~1\ = (\uMAE|indice~0_combout\ & ((\uMAC|Mux7~0\ & ((C1_RAM_Entree_7__4_))) # (!\uMAC|Mux7~0\ & (\uFIFO|RAM_Entree_5__4_~regout\)))) # (!\uMAE|indice~0_combout\ & (((\uMAC|Mux7~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	dataa => \uMAE|indice~0_combout\,
	datab => \uFIFO|RAM_Entree_5__4_~regout\,
	datac => \uFIFO|RAM_Entree_6__4_~regout\,
	datad => \uMAC|Mux7~0\,
	aclr => \RAZ~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mux7~1\,
	regout => \uFIFO|RAM_Entree_7__4_~regout\);

-- Location: LC_X10_Y1_N0
\uMAC|valeur[4]\ : maxv_lcell
-- Equation(s):
-- \uMAC|valeur\(4) = DFFEAS(((\uMAE|indice[2]~5_combout\ & ((\uMAC|Mux7~1\))) # (!\uMAE|indice[2]~5_combout\ & (\uMAC|Mux7~3\))), GLOBAL(\uMAE|H_MAC~combout\), VCC, , !\uMAE|H_FIFO~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	datab => \uMAC|Mux7~3\,
	datac => \uMAC|Mux7~1\,
	datad => \uMAE|indice[2]~5_combout\,
	aclr => GND,
	ena => \uMAE|ALT_INV_H_FIFO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAC|valeur\(4));

-- Location: PIN_P13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entree[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_entree(5),
	combout => \entree~combout\(5));

-- Location: LC_X12_Y1_N1
\uFIFO|RAM_Entree_0__5_\ : maxv_lcell
-- Equation(s):
-- \uFIFO|RAM_Entree_0__5_~regout\ = DFFEAS(GND, GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , \entree~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	datac => \entree~combout\(5),
	aclr => \RAZ~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uFIFO|RAM_Entree_0__5_~regout\);

-- Location: LC_X12_Y1_N0
\uFIFO|RAM_Entree_1__5_\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mux6~2\ = (\uMAE|indice~0_combout\ & (((C1_RAM_Entree_1__5_) # (\uMAE|indice[1]~4_combout\)))) # (!\uMAE|indice~0_combout\ & (\uFIFO|RAM_Entree_0__5_~regout\ & ((!\uMAE|indice[1]~4_combout\))))
-- \uFIFO|RAM_Entree_1__5_~regout\ = DFFEAS(\uMAC|Mux6~2\, GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , \uFIFO|RAM_Entree_0__5_~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	dataa => \uFIFO|RAM_Entree_0__5_~regout\,
	datab => \uMAE|indice~0_combout\,
	datac => \uFIFO|RAM_Entree_0__5_~regout\,
	datad => \uMAE|indice[1]~4_combout\,
	aclr => \RAZ~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mux6~2\,
	regout => \uFIFO|RAM_Entree_1__5_~regout\);

-- Location: LC_X12_Y1_N6
\uFIFO|RAM_Entree_2__5_\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mux6~3\ = (\uMAE|indice[1]~4_combout\ & ((\uMAC|Mux6~2\ & (\uFIFO|RAM_Entree_3__5_~regout\)) # (!\uMAC|Mux6~2\ & ((C1_RAM_Entree_2__5_))))) # (!\uMAE|indice[1]~4_combout\ & (((\uMAC|Mux6~2\))))
-- \uFIFO|RAM_Entree_2__5_~regout\ = DFFEAS(\uMAC|Mux6~3\, GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , \uFIFO|RAM_Entree_1__5_~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	dataa => \uMAE|indice[1]~4_combout\,
	datab => \uFIFO|RAM_Entree_3__5_~regout\,
	datac => \uFIFO|RAM_Entree_1__5_~regout\,
	datad => \uMAC|Mux6~2\,
	aclr => \RAZ~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mux6~3\,
	regout => \uFIFO|RAM_Entree_2__5_~regout\);

-- Location: LC_X12_Y1_N2
\uFIFO|RAM_Entree_3__5_\ : maxv_lcell
-- Equation(s):
-- \uFIFO|RAM_Entree_3__5_~regout\ = DFFEAS(GND, GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , \uFIFO|RAM_Entree_2__5_~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	datac => \uFIFO|RAM_Entree_2__5_~regout\,
	aclr => \RAZ~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uFIFO|RAM_Entree_3__5_~regout\);

-- Location: LC_X12_Y1_N8
\uFIFO|RAM_Entree_4__5_\ : maxv_lcell
-- Equation(s):
-- \uFIFO|RAM_Entree_4__5_~regout\ = DFFEAS((((\uFIFO|RAM_Entree_3__5_~regout\))), GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	datad => \uFIFO|RAM_Entree_3__5_~regout\,
	aclr => \RAZ~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uFIFO|RAM_Entree_4__5_~regout\);

-- Location: LC_X12_Y1_N5
\uFIFO|RAM_Entree_5__5_\ : maxv_lcell
-- Equation(s):
-- \uFIFO|RAM_Entree_5__5_~regout\ = DFFEAS((((\uFIFO|RAM_Entree_4__5_~regout\))), GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	datad => \uFIFO|RAM_Entree_4__5_~regout\,
	aclr => \RAZ~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uFIFO|RAM_Entree_5__5_~regout\);

-- Location: LC_X12_Y1_N7
\uFIFO|RAM_Entree_6__5_\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mux6~0\ = (\uMAE|indice[1]~4_combout\ & ((\uMAE|indice~0_combout\) # ((C1_RAM_Entree_6__5_)))) # (!\uMAE|indice[1]~4_combout\ & (!\uMAE|indice~0_combout\ & ((\uFIFO|RAM_Entree_4__5_~regout\))))
-- \uFIFO|RAM_Entree_6__5_~regout\ = DFFEAS(\uMAC|Mux6~0\, GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , \uFIFO|RAM_Entree_5__5_~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	dataa => \uMAE|indice[1]~4_combout\,
	datab => \uMAE|indice~0_combout\,
	datac => \uFIFO|RAM_Entree_5__5_~regout\,
	datad => \uFIFO|RAM_Entree_4__5_~regout\,
	aclr => \RAZ~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mux6~0\,
	regout => \uFIFO|RAM_Entree_6__5_~regout\);

-- Location: LC_X12_Y1_N3
\uFIFO|RAM_Entree_7__5_\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mux6~1\ = (\uMAE|indice~0_combout\ & ((\uMAC|Mux6~0\ & ((C1_RAM_Entree_7__5_))) # (!\uMAC|Mux6~0\ & (\uFIFO|RAM_Entree_5__5_~regout\)))) # (!\uMAE|indice~0_combout\ & (((\uMAC|Mux6~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	dataa => \uFIFO|RAM_Entree_5__5_~regout\,
	datab => \uMAE|indice~0_combout\,
	datac => \uFIFO|RAM_Entree_6__5_~regout\,
	datad => \uMAC|Mux6~0\,
	aclr => \RAZ~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mux6~1\,
	regout => \uFIFO|RAM_Entree_7__5_~regout\);

-- Location: LC_X12_Y1_N4
\uMAC|valeur[5]\ : maxv_lcell
-- Equation(s):
-- \uMAC|valeur\(5) = DFFEAS(((\uMAE|indice[2]~5_combout\ & ((\uMAC|Mux6~1\))) # (!\uMAE|indice[2]~5_combout\ & (\uMAC|Mux6~3\))), GLOBAL(\uMAE|H_MAC~combout\), VCC, , !\uMAE|H_FIFO~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	datab => \uMAE|indice[2]~5_combout\,
	datac => \uMAC|Mux6~3\,
	datad => \uMAC|Mux6~1\,
	aclr => GND,
	ena => \uMAE|ALT_INV_H_FIFO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAC|valeur\(5));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entree[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_entree(2),
	combout => \entree~combout\(2));

-- Location: LC_X1_Y4_N7
\uFIFO|RAM_Entree_0__2_\ : maxv_lcell
-- Equation(s):
-- \uFIFO|RAM_Entree_0__2_~regout\ = DFFEAS((((\entree~combout\(2)))), GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	datad => \entree~combout\(2),
	aclr => \RAZ~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uFIFO|RAM_Entree_0__2_~regout\);

-- Location: LC_X1_Y4_N3
\uFIFO|RAM_Entree_1__2_\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mux9~2\ = (\uMAE|indice[1]~4_combout\ & (((\uMAE|indice~0_combout\)))) # (!\uMAE|indice[1]~4_combout\ & ((\uMAE|indice~0_combout\ & ((C1_RAM_Entree_1__2_))) # (!\uMAE|indice~0_combout\ & (\uFIFO|RAM_Entree_0__2_~regout\))))
-- \uFIFO|RAM_Entree_1__2_~regout\ = DFFEAS(\uMAC|Mux9~2\, GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , \uFIFO|RAM_Entree_0__2_~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	dataa => \uMAE|indice[1]~4_combout\,
	datab => \uFIFO|RAM_Entree_0__2_~regout\,
	datac => \uFIFO|RAM_Entree_0__2_~regout\,
	datad => \uMAE|indice~0_combout\,
	aclr => \RAZ~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mux9~2\,
	regout => \uFIFO|RAM_Entree_1__2_~regout\);

-- Location: LC_X1_Y4_N2
\uFIFO|RAM_Entree_2__2_\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mux9~3\ = (\uMAE|indice[1]~4_combout\ & ((\uMAC|Mux9~2\ & (\uFIFO|RAM_Entree_3__2_~regout\)) # (!\uMAC|Mux9~2\ & ((C1_RAM_Entree_2__2_))))) # (!\uMAE|indice[1]~4_combout\ & (((\uMAC|Mux9~2\))))
-- \uFIFO|RAM_Entree_2__2_~regout\ = DFFEAS(\uMAC|Mux9~3\, GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , \uFIFO|RAM_Entree_1__2_~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	dataa => \uMAE|indice[1]~4_combout\,
	datab => \uFIFO|RAM_Entree_3__2_~regout\,
	datac => \uFIFO|RAM_Entree_1__2_~regout\,
	datad => \uMAC|Mux9~2\,
	aclr => \RAZ~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mux9~3\,
	regout => \uFIFO|RAM_Entree_2__2_~regout\);

-- Location: LC_X1_Y4_N1
\uFIFO|RAM_Entree_3__2_\ : maxv_lcell
-- Equation(s):
-- \uFIFO|RAM_Entree_3__2_~regout\ = DFFEAS((((\uFIFO|RAM_Entree_2__2_~regout\))), GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	datad => \uFIFO|RAM_Entree_2__2_~regout\,
	aclr => \RAZ~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uFIFO|RAM_Entree_3__2_~regout\);

-- Location: LC_X1_Y4_N6
\uFIFO|RAM_Entree_4__2_\ : maxv_lcell
-- Equation(s):
-- \uFIFO|RAM_Entree_4__2_~regout\ = DFFEAS((((\uFIFO|RAM_Entree_3__2_~regout\))), GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	datad => \uFIFO|RAM_Entree_3__2_~regout\,
	aclr => \RAZ~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uFIFO|RAM_Entree_4__2_~regout\);

-- Location: LC_X1_Y7_N2
\uFIFO|RAM_Entree_5__2_\ : maxv_lcell
-- Equation(s):
-- \uFIFO|RAM_Entree_5__2_~regout\ = DFFEAS((((\uFIFO|RAM_Entree_4__2_~regout\))), GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	datad => \uFIFO|RAM_Entree_4__2_~regout\,
	aclr => \RAZ~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uFIFO|RAM_Entree_5__2_~regout\);

-- Location: LC_X1_Y7_N7
\uFIFO|RAM_Entree_6__2_\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mux9~0\ = (\uMAE|indice[1]~4_combout\ & (((C1_RAM_Entree_6__2_) # (\uMAE|indice~0_combout\)))) # (!\uMAE|indice[1]~4_combout\ & (\uFIFO|RAM_Entree_4__2_~regout\ & ((!\uMAE|indice~0_combout\))))
-- \uFIFO|RAM_Entree_6__2_~regout\ = DFFEAS(\uMAC|Mux9~0\, GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , \uFIFO|RAM_Entree_5__2_~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	dataa => \uMAE|indice[1]~4_combout\,
	datab => \uFIFO|RAM_Entree_4__2_~regout\,
	datac => \uFIFO|RAM_Entree_5__2_~regout\,
	datad => \uMAE|indice~0_combout\,
	aclr => \RAZ~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mux9~0\,
	regout => \uFIFO|RAM_Entree_6__2_~regout\);

-- Location: LC_X1_Y7_N6
\uFIFO|RAM_Entree_7__2_\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mux9~1\ = (\uMAC|Mux9~0\ & (((C1_RAM_Entree_7__2_) # (!\uMAE|indice~0_combout\)))) # (!\uMAC|Mux9~0\ & (\uFIFO|RAM_Entree_5__2_~regout\ & ((\uMAE|indice~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	dataa => \uMAC|Mux9~0\,
	datab => \uFIFO|RAM_Entree_5__2_~regout\,
	datac => \uFIFO|RAM_Entree_6__2_~regout\,
	datad => \uMAE|indice~0_combout\,
	aclr => \RAZ~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mux9~1\,
	regout => \uFIFO|RAM_Entree_7__2_~regout\);

-- Location: LC_X7_Y4_N5
\uMAC|valeur[2]\ : maxv_lcell
-- Equation(s):
-- \uMAC|valeur\(2) = DFFEAS(((\uMAE|indice[2]~5_combout\ & (\uMAC|Mux9~1\)) # (!\uMAE|indice[2]~5_combout\ & ((\uMAC|Mux9~3\)))), GLOBAL(\uMAE|H_MAC~combout\), VCC, , !\uMAE|H_FIFO~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	datab => \uMAC|Mux9~1\,
	datac => \uMAC|Mux9~3\,
	datad => \uMAE|indice[2]~5_combout\,
	aclr => GND,
	ena => \uMAE|ALT_INV_H_FIFO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAC|valeur\(2));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entree[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_entree(3),
	combout => \entree~combout\(3));

-- Location: LC_X1_Y4_N5
\uFIFO|RAM_Entree_0__3_\ : maxv_lcell
-- Equation(s):
-- \uFIFO|RAM_Entree_0__3_~regout\ = DFFEAS((((\entree~combout\(3)))), GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	datad => \entree~combout\(3),
	aclr => \RAZ~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uFIFO|RAM_Entree_0__3_~regout\);

-- Location: LC_X1_Y7_N1
\uFIFO|RAM_Entree_1__3_\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mux8~2\ = (\uMAE|indice[1]~4_combout\ & (((\uMAE|indice~0_combout\)))) # (!\uMAE|indice[1]~4_combout\ & ((\uMAE|indice~0_combout\ & ((C1_RAM_Entree_1__3_))) # (!\uMAE|indice~0_combout\ & (\uFIFO|RAM_Entree_0__3_~regout\))))
-- \uFIFO|RAM_Entree_1__3_~regout\ = DFFEAS(\uMAC|Mux8~2\, GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , \uFIFO|RAM_Entree_0__3_~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	dataa => \uMAE|indice[1]~4_combout\,
	datab => \uFIFO|RAM_Entree_0__3_~regout\,
	datac => \uFIFO|RAM_Entree_0__3_~regout\,
	datad => \uMAE|indice~0_combout\,
	aclr => \RAZ~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mux8~2\,
	regout => \uFIFO|RAM_Entree_1__3_~regout\);

-- Location: LC_X1_Y7_N9
\uFIFO|RAM_Entree_2__3_\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mux8~3\ = (\uMAE|indice[1]~4_combout\ & ((\uMAC|Mux8~2\ & (\uFIFO|RAM_Entree_3__3_~regout\)) # (!\uMAC|Mux8~2\ & ((C1_RAM_Entree_2__3_))))) # (!\uMAE|indice[1]~4_combout\ & (((\uMAC|Mux8~2\))))
-- \uFIFO|RAM_Entree_2__3_~regout\ = DFFEAS(\uMAC|Mux8~3\, GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , \uFIFO|RAM_Entree_1__3_~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	dataa => \uMAE|indice[1]~4_combout\,
	datab => \uFIFO|RAM_Entree_3__3_~regout\,
	datac => \uFIFO|RAM_Entree_1__3_~regout\,
	datad => \uMAC|Mux8~2\,
	aclr => \RAZ~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mux8~3\,
	regout => \uFIFO|RAM_Entree_2__3_~regout\);

-- Location: LC_X1_Y7_N8
\uFIFO|RAM_Entree_3__3_\ : maxv_lcell
-- Equation(s):
-- \uFIFO|RAM_Entree_3__3_~regout\ = DFFEAS((((\uFIFO|RAM_Entree_2__3_~regout\))), GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	datad => \uFIFO|RAM_Entree_2__3_~regout\,
	aclr => \RAZ~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uFIFO|RAM_Entree_3__3_~regout\);

-- Location: LC_X1_Y7_N3
\uFIFO|RAM_Entree_4__3_\ : maxv_lcell
-- Equation(s):
-- \uFIFO|RAM_Entree_4__3_~regout\ = DFFEAS((((\uFIFO|RAM_Entree_3__3_~regout\))), GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	datad => \uFIFO|RAM_Entree_3__3_~regout\,
	aclr => \RAZ~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uFIFO|RAM_Entree_4__3_~regout\);

-- Location: LC_X1_Y7_N5
\uFIFO|RAM_Entree_5__3_\ : maxv_lcell
-- Equation(s):
-- \uFIFO|RAM_Entree_5__3_~regout\ = DFFEAS((((\uFIFO|RAM_Entree_4__3_~regout\))), GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	datad => \uFIFO|RAM_Entree_4__3_~regout\,
	aclr => \RAZ~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uFIFO|RAM_Entree_5__3_~regout\);

-- Location: LC_X1_Y7_N0
\uFIFO|RAM_Entree_6__3_\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mux8~0\ = (\uMAE|indice[1]~4_combout\ & ((\uMAE|indice~0_combout\) # ((C1_RAM_Entree_6__3_)))) # (!\uMAE|indice[1]~4_combout\ & (!\uMAE|indice~0_combout\ & ((\uFIFO|RAM_Entree_4__3_~regout\))))
-- \uFIFO|RAM_Entree_6__3_~regout\ = DFFEAS(\uMAC|Mux8~0\, GLOBAL(\uMAE|H_FIFO~combout\), !\RAZ~combout\, , , \uFIFO|RAM_Entree_5__3_~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	dataa => \uMAE|indice[1]~4_combout\,
	datab => \uMAE|indice~0_combout\,
	datac => \uFIFO|RAM_Entree_5__3_~regout\,
	datad => \uFIFO|RAM_Entree_4__3_~regout\,
	aclr => \RAZ~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mux8~0\,
	regout => \uFIFO|RAM_Entree_6__3_~regout\);

-- Location: LC_X1_Y7_N4
\uFIFO|RAM_Entree_7__3_\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mux8~1\ = (\uMAC|Mux8~0\ & (((C1_RAM_Entree_7__3_) # (!\uMAE|indice~0_combout\)))) # (!\uMAC|Mux8~0\ & (\uFIFO|RAM_Entree_5__3_~regout\ & ((\uMAE|indice~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_FIFO~combout\,
	dataa => \uFIFO|RAM_Entree_5__3_~regout\,
	datab => \uMAC|Mux8~0\,
	datac => \uFIFO|RAM_Entree_6__3_~regout\,
	datad => \uMAE|indice~0_combout\,
	aclr => \RAZ~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mux8~1\,
	regout => \uFIFO|RAM_Entree_7__3_~regout\);

-- Location: LC_X7_Y4_N4
\uMAC|valeur[3]\ : maxv_lcell
-- Equation(s):
-- \uMAC|valeur\(3) = DFFEAS(((\uMAE|indice[2]~5_combout\ & ((\uMAC|Mux8~1\))) # (!\uMAE|indice[2]~5_combout\ & (\uMAC|Mux8~3\))), GLOBAL(\uMAE|H_MAC~combout\), VCC, , !\uMAE|H_FIFO~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	datab => \uMAC|Mux8~3\,
	datac => \uMAC|Mux8~1\,
	datad => \uMAE|indice[2]~5_combout\,
	aclr => GND,
	ena => \uMAE|ALT_INV_H_FIFO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAC|valeur\(3));

-- Location: LC_X7_Y4_N1
\uMAC|Mult0|auto_generated|cs1a[1]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|cs1a\(1) = \uMAC|valeur\(3) $ (((\uMAC|valeur\(2) & (\uMAC|Mult0|auto_generated|cs1a[0]~COUT\))))
-- \uMAC|Mult0|auto_generated|cs1a[1]~COUT\ = CARRY((!\uMAC|valeur\(3) & ((!\uMAC|Mult0|auto_generated|cs1a[0]~COUT\) # (!\uMAC|valeur\(2)))))
-- \uMAC|Mult0|auto_generated|cs1a[1]~COUTCOUT1_13\ = CARRY((!\uMAC|valeur\(3) & ((!\uMAC|Mult0|auto_generated|cs1a[0]~COUTCOUT1_12\) # (!\uMAC|valeur\(2)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "6c13",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|valeur\(2),
	datab => \uMAC|valeur\(3),
	cin0 => \uMAC|Mult0|auto_generated|cs1a[0]~COUT\,
	cin1 => \uMAC|Mult0|auto_generated|cs1a[0]~COUTCOUT1_12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|cs1a\(1),
	cout0 => \uMAC|Mult0|auto_generated|cs1a[1]~COUT\,
	cout1 => \uMAC|Mult0|auto_generated|cs1a[1]~COUTCOUT1_13\);

-- Location: LC_X7_Y4_N2
\uMAC|Mult0|auto_generated|cs1a[2]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|cs1a\(2) = \uMAC|valeur\(5) $ (((\uMAC|valeur\(4) & (!\uMAC|Mult0|auto_generated|cs1a[1]~COUT\))))
-- \uMAC|Mult0|auto_generated|cs1a[2]~COUT\ = CARRY((\uMAC|valeur\(5)) # ((\uMAC|valeur\(4) & !\uMAC|Mult0|auto_generated|cs1a[1]~COUT\)))
-- \uMAC|Mult0|auto_generated|cs1a[2]~COUTCOUT1_14\ = CARRY((\uMAC|valeur\(5)) # ((\uMAC|valeur\(4) & !\uMAC|Mult0|auto_generated|cs1a[1]~COUTCOUT1_13\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c6ce",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|valeur\(4),
	datab => \uMAC|valeur\(5),
	cin0 => \uMAC|Mult0|auto_generated|cs1a[1]~COUT\,
	cin1 => \uMAC|Mult0|auto_generated|cs1a[1]~COUTCOUT1_13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|cs1a\(2),
	cout0 => \uMAC|Mult0|auto_generated|cs1a[2]~COUT\,
	cout1 => \uMAC|Mult0|auto_generated|cs1a[2]~COUTCOUT1_14\);

-- Location: LC_X7_Y4_N3
\uMAC|Mult0|auto_generated|cs1a[2]~4\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|cs1a[2]~5\ = (((\uMAC|Mult0|auto_generated|cs1a[2]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \uMAC|Mult0|auto_generated|cs1a[2]~COUT\,
	cin1 => \uMAC|Mult0|auto_generated|cs1a[2]~COUTCOUT1_14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|cs1a[2]~5\);

-- Location: LC_X11_Y7_N1
\uMAC|Mult0|auto_generated|le2a[6]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|le2a\(6) = (\uMAC|coeff\(5) & (\uMAC|valeur\(6) & (\uMAC|Mult0|auto_generated|cs1a[2]~5\))) # (!\uMAC|coeff\(5) & (!\uMAC|valeur\(7) & (\uMAC|valeur\(6) $ (!\uMAC|Mult0|auto_generated|cs1a[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "80a1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|valeur\(6),
	datab => \uMAC|coeff\(5),
	datac => \uMAC|Mult0|auto_generated|cs1a[2]~5\,
	datad => \uMAC|valeur\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|le2a\(6));

-- Location: LC_X7_Y4_N7
\uMAC|Mult0|auto_generated|cs3a[1]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|cs3a\(1) = \uMAC|valeur\(2) $ ((((\uMAC|Mult0|auto_generated|cs3a[0]~COUT\))))
-- \uMAC|Mult0|auto_generated|cs3a[1]~COUT\ = CARRY((!\uMAC|valeur\(3) & ((!\uMAC|Mult0|auto_generated|cs3a[0]~COUT\) # (!\uMAC|valeur\(2)))))
-- \uMAC|Mult0|auto_generated|cs3a[1]~COUTCOUT1_14\ = CARRY((!\uMAC|valeur\(3) & ((!\uMAC|Mult0|auto_generated|cs3a[0]~COUTCOUT1_13\) # (!\uMAC|valeur\(2)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a13",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|valeur\(2),
	datab => \uMAC|valeur\(3),
	cin0 => \uMAC|Mult0|auto_generated|cs3a[0]~COUT\,
	cin1 => \uMAC|Mult0|auto_generated|cs3a[0]~COUTCOUT1_13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|cs3a\(1),
	cout0 => \uMAC|Mult0|auto_generated|cs3a[1]~COUT\,
	cout1 => \uMAC|Mult0|auto_generated|cs3a[1]~COUTCOUT1_14\);

-- Location: LC_X7_Y4_N8
\uMAC|Mult0|auto_generated|cs3a[2]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|cs3a\(2) = \uMAC|valeur\(4) $ ((((!\uMAC|Mult0|auto_generated|cs3a[1]~COUT\))))
-- \uMAC|Mult0|auto_generated|cs3a[2]~COUT\ = CARRY((\uMAC|valeur\(5)) # ((\uMAC|valeur\(4) & !\uMAC|Mult0|auto_generated|cs3a[1]~COUT\)))
-- \uMAC|Mult0|auto_generated|cs3a[2]~COUTCOUT1_15\ = CARRY((\uMAC|valeur\(5)) # ((\uMAC|valeur\(4) & !\uMAC|Mult0|auto_generated|cs3a[1]~COUTCOUT1_14\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a5ce",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|valeur\(4),
	datab => \uMAC|valeur\(5),
	cin0 => \uMAC|Mult0|auto_generated|cs3a[1]~COUT\,
	cin1 => \uMAC|Mult0|auto_generated|cs3a[1]~COUTCOUT1_14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|cs3a\(2),
	cout0 => \uMAC|Mult0|auto_generated|cs3a[2]~COUT\,
	cout1 => \uMAC|Mult0|auto_generated|cs3a[2]~COUTCOUT1_15\);

-- Location: LC_X7_Y4_N9
\uMAC|Mult0|auto_generated|cs3a[2]~5\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|cs3a[2]~6\ = (((\uMAC|Mult0|auto_generated|cs3a[2]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \uMAC|Mult0|auto_generated|cs3a[2]~COUT\,
	cin1 => \uMAC|Mult0|auto_generated|cs3a[2]~COUTCOUT1_15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|cs3a[2]~6\);

-- Location: LC_X11_Y7_N7
\uMAC|Mult0|auto_generated|cs3a[3]~0\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|cs3a[3]~0_combout\ = ((\uMAC|Mult0|auto_generated|cs3a[2]~6\ $ (\uMAC|valeur\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uMAC|Mult0|auto_generated|cs3a[2]~6\,
	datad => \uMAC|valeur\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|cs3a[3]~0_combout\);

-- Location: LC_X9_Y7_N7
\uMAC|Mult0|auto_generated|le4a[2]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|le4a\(2) = (\uMAC|Mult0|auto_generated|le2a\(6)) # ((\uMAC|Mult0|auto_generated|cs3a[3]~0_combout\ & (\uMAC|coeff\(2) $ (!\uMAC|valeur\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f9f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|coeff\(2),
	datab => \uMAC|valeur\(7),
	datac => \uMAC|Mult0|auto_generated|le2a\(6),
	datad => \uMAC|Mult0|auto_generated|cs3a[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|le4a\(2));

-- Location: LC_X11_Y7_N2
\uMAC|Mult0|auto_generated|le2a[1]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|le2a\(1) = (((\uMAC|Mult0|auto_generated|cs1a[2]~5\ & \uMAC|valeur\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uMAC|Mult0|auto_generated|cs1a[2]~5\,
	datad => \uMAC|valeur\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|le2a\(1));

-- Location: LC_X11_Y7_N4
\uMAC|Mult0|auto_generated|le4a[1]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|le4a\(1) = (\uMAC|Mult0|auto_generated|le2a\(1)) # ((\uMAC|Mult0|auto_generated|cs3a[3]~0_combout\ & (\uMAC|coeff\(5) $ (!\uMAC|valeur\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff90",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|coeff\(5),
	datab => \uMAC|valeur\(7),
	datac => \uMAC|Mult0|auto_generated|cs3a[3]~0_combout\,
	datad => \uMAC|Mult0|auto_generated|le2a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|le4a\(1));

-- Location: LC_X8_Y7_N3
\uMAC|Mult0|auto_generated|le5a[2]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|le5a\(2) = (\uMAC|Mult0|auto_generated|cs3a\(0) & (((\uMAC|Mult0|auto_generated|cs1a\(0) & !\uMAC|coeff\(5))))) # (!\uMAC|Mult0|auto_generated|cs3a\(0) & (\uMAC|coeff\(2) $ ((\uMAC|Mult0|auto_generated|cs1a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "06c6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|coeff\(2),
	datab => \uMAC|Mult0|auto_generated|cs1a\(0),
	datac => \uMAC|Mult0|auto_generated|cs3a\(0),
	datad => \uMAC|coeff\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|le5a\(2));

-- Location: LC_X8_Y7_N4
\uMAC|Mult0|auto_generated|add12_result[0]~60\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|add12_result[0]~60_combout\ = \uMAC|Mult0|auto_generated|le5a\(2) $ ((\uMAC|Mult0|auto_generated|cs1a\(1)))
-- \uMAC|Mult0|auto_generated|add12_result[0]~62\ = CARRY((\uMAC|Mult0|auto_generated|le5a\(2) & (\uMAC|Mult0|auto_generated|cs1a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|Mult0|auto_generated|le5a\(2),
	datab => \uMAC|Mult0|auto_generated|cs1a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|add12_result[0]~60_combout\,
	cout => \uMAC|Mult0|auto_generated|add12_result[0]~62\);

-- Location: LC_X11_Y7_N8
\uMAC|Mult0|auto_generated|le2a[0]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|le2a\(0) = ((!\uMAC|valeur\(7) & (\uMAC|valeur\(6) $ (!\uMAC|Mult0|auto_generated|cs1a[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|valeur\(6),
	datac => \uMAC|Mult0|auto_generated|cs1a[2]~5\,
	datad => \uMAC|valeur\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|le2a\(0));

-- Location: LC_X11_Y7_N3
\uMAC|Mult0|auto_generated|le4a[0]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|le4a\(0) = (\uMAC|Mult0|auto_generated|le2a\(0)) # ((\uMAC|valeur\(7) & (\uMAC|valeur\(6) $ (\uMAC|Mult0|auto_generated|cs3a[2]~6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|valeur\(6),
	datab => \uMAC|valeur\(7),
	datac => \uMAC|Mult0|auto_generated|cs3a[2]~6\,
	datad => \uMAC|Mult0|auto_generated|le2a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|le4a\(0));

-- Location: LC_X8_Y4_N7
\uMAC|Mult0|auto_generated|le7a[1]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|le7a\(1) = ((\uMAC|Mult0|auto_generated|cs3a\(2) & (\uMAC|coeff\(5) $ (\uMAC|Mult0|auto_generated|cs1a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uMAC|coeff\(5),
	datac => \uMAC|Mult0|auto_generated|cs3a\(2),
	datad => \uMAC|Mult0|auto_generated|cs1a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|le7a\(1));

-- Location: LC_X8_Y7_N1
\uMAC|Mult0|auto_generated|le6a[3]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|le6a\(3) = (\uMAC|Mult0|auto_generated|cs3a\(1) & ((\uMAC|coeff\(5) $ (\uMAC|Mult0|auto_generated|cs1a\(1))))) # (!\uMAC|Mult0|auto_generated|cs3a\(1) & (!\uMAC|coeff\(2) & ((\uMAC|Mult0|auto_generated|cs1a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|coeff\(2),
	datab => \uMAC|coeff\(5),
	datac => \uMAC|Mult0|auto_generated|cs1a\(1),
	datad => \uMAC|Mult0|auto_generated|cs3a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|le6a\(3));

-- Location: LC_X8_Y4_N5
\uMAC|Mult0|auto_generated|le7a[0]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|le7a\(0) = ((\uMAC|Mult0|auto_generated|cs3a\(2) $ (\uMAC|Mult0|auto_generated|cs1a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uMAC|Mult0|auto_generated|cs3a\(2),
	datad => \uMAC|Mult0|auto_generated|cs1a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|le7a\(0));

-- Location: LC_X8_Y7_N2
\uMAC|Mult0|auto_generated|le6a[2]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|le6a\(2) = (\uMAC|Mult0|auto_generated|cs3a\(1) & (\uMAC|coeff\(2) $ (((\uMAC|Mult0|auto_generated|cs1a\(1)))))) # (!\uMAC|Mult0|auto_generated|cs3a\(1) & (((!\uMAC|coeff\(5) & \uMAC|Mult0|auto_generated|cs1a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|coeff\(2),
	datab => \uMAC|coeff\(5),
	datac => \uMAC|Mult0|auto_generated|cs1a\(1),
	datad => \uMAC|Mult0|auto_generated|cs3a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|le6a\(2));

-- Location: LC_X8_Y7_N0
\uMAC|Mult0|auto_generated|le5a[3]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|le5a\(3) = (\uMAC|Mult0|auto_generated|cs3a\(0) & (!\uMAC|coeff\(2) & (\uMAC|Mult0|auto_generated|cs1a\(0)))) # (!\uMAC|Mult0|auto_generated|cs3a\(0) & ((\uMAC|Mult0|auto_generated|cs1a\(0) $ (\uMAC|coeff\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "434c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|coeff\(2),
	datab => \uMAC|Mult0|auto_generated|cs1a\(0),
	datac => \uMAC|Mult0|auto_generated|cs3a\(0),
	datad => \uMAC|coeff\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|le5a\(3));

-- Location: LC_X8_Y7_N5
\uMAC|Mult0|auto_generated|add12_result[1]~55\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|add12_result[1]~55_combout\ = (\uMAC|Mult0|auto_generated|le5a\(3) $ ((\uMAC|Mult0|auto_generated|add12_result[0]~62\)))
-- \uMAC|Mult0|auto_generated|add12_result[1]~57\ = CARRY(((!\uMAC|Mult0|auto_generated|add12_result[0]~62\) # (!\uMAC|Mult0|auto_generated|le5a\(3))))
-- \uMAC|Mult0|auto_generated|add12_result[1]~57COUT1_66\ = CARRY(((!\uMAC|Mult0|auto_generated|add12_result[0]~62\) # (!\uMAC|Mult0|auto_generated|le5a\(3))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uMAC|Mult0|auto_generated|le5a\(3),
	cin => \uMAC|Mult0|auto_generated|add12_result[0]~62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|add12_result[1]~55_combout\,
	cout0 => \uMAC|Mult0|auto_generated|add12_result[1]~57\,
	cout1 => \uMAC|Mult0|auto_generated|add12_result[1]~57COUT1_66\);

-- Location: LC_X8_Y7_N6
\uMAC|Mult0|auto_generated|add12_result[2]~50\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|add12_result[2]~50_combout\ = \uMAC|Mult0|auto_generated|le7a\(0) $ (\uMAC|Mult0|auto_generated|le6a\(2) $ ((!(!\uMAC|Mult0|auto_generated|add12_result[0]~62\ & \uMAC|Mult0|auto_generated|add12_result[1]~57\) # 
-- (\uMAC|Mult0|auto_generated|add12_result[0]~62\ & \uMAC|Mult0|auto_generated|add12_result[1]~57COUT1_66\))))
-- \uMAC|Mult0|auto_generated|add12_result[2]~52\ = CARRY((\uMAC|Mult0|auto_generated|le7a\(0) & ((\uMAC|Mult0|auto_generated|le6a\(2)) # (!\uMAC|Mult0|auto_generated|add12_result[1]~57\))) # (!\uMAC|Mult0|auto_generated|le7a\(0) & 
-- (\uMAC|Mult0|auto_generated|le6a\(2) & !\uMAC|Mult0|auto_generated|add12_result[1]~57\)))
-- \uMAC|Mult0|auto_generated|add12_result[2]~52COUT1_67\ = CARRY((\uMAC|Mult0|auto_generated|le7a\(0) & ((\uMAC|Mult0|auto_generated|le6a\(2)) # (!\uMAC|Mult0|auto_generated|add12_result[1]~57COUT1_66\))) # (!\uMAC|Mult0|auto_generated|le7a\(0) & 
-- (\uMAC|Mult0|auto_generated|le6a\(2) & !\uMAC|Mult0|auto_generated|add12_result[1]~57COUT1_66\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|Mult0|auto_generated|le7a\(0),
	datab => \uMAC|Mult0|auto_generated|le6a\(2),
	cin => \uMAC|Mult0|auto_generated|add12_result[0]~62\,
	cin0 => \uMAC|Mult0|auto_generated|add12_result[1]~57\,
	cin1 => \uMAC|Mult0|auto_generated|add12_result[1]~57COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|add12_result[2]~50_combout\,
	cout0 => \uMAC|Mult0|auto_generated|add12_result[2]~52\,
	cout1 => \uMAC|Mult0|auto_generated|add12_result[2]~52COUT1_67\);

-- Location: LC_X8_Y7_N7
\uMAC|Mult0|auto_generated|add12_result[3]~45\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|add12_result[3]~45_combout\ = \uMAC|Mult0|auto_generated|le7a\(1) $ (\uMAC|Mult0|auto_generated|le6a\(3) $ (((!\uMAC|Mult0|auto_generated|add12_result[0]~62\ & \uMAC|Mult0|auto_generated|add12_result[2]~52\) # 
-- (\uMAC|Mult0|auto_generated|add12_result[0]~62\ & \uMAC|Mult0|auto_generated|add12_result[2]~52COUT1_67\))))
-- \uMAC|Mult0|auto_generated|add12_result[3]~47\ = CARRY((\uMAC|Mult0|auto_generated|le7a\(1) & (!\uMAC|Mult0|auto_generated|le6a\(3) & !\uMAC|Mult0|auto_generated|add12_result[2]~52\)) # (!\uMAC|Mult0|auto_generated|le7a\(1) & 
-- ((!\uMAC|Mult0|auto_generated|add12_result[2]~52\) # (!\uMAC|Mult0|auto_generated|le6a\(3)))))
-- \uMAC|Mult0|auto_generated|add12_result[3]~47COUT1_68\ = CARRY((\uMAC|Mult0|auto_generated|le7a\(1) & (!\uMAC|Mult0|auto_generated|le6a\(3) & !\uMAC|Mult0|auto_generated|add12_result[2]~52COUT1_67\)) # (!\uMAC|Mult0|auto_generated|le7a\(1) & 
-- ((!\uMAC|Mult0|auto_generated|add12_result[2]~52COUT1_67\) # (!\uMAC|Mult0|auto_generated|le6a\(3)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|Mult0|auto_generated|le7a\(1),
	datab => \uMAC|Mult0|auto_generated|le6a\(3),
	cin => \uMAC|Mult0|auto_generated|add12_result[0]~62\,
	cin0 => \uMAC|Mult0|auto_generated|add12_result[2]~52\,
	cin1 => \uMAC|Mult0|auto_generated|add12_result[2]~52COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|add12_result[3]~45_combout\,
	cout0 => \uMAC|Mult0|auto_generated|add12_result[3]~47\,
	cout1 => \uMAC|Mult0|auto_generated|add12_result[3]~47COUT1_68\);

-- Location: LC_X8_Y7_N8
\uMAC|Mult0|auto_generated|add12_result[4]~40\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|add12_result[4]~40_combout\ = \uMAC|Mult0|auto_generated|add20_result[0]~20_combout\ $ (\uMAC|Mult0|auto_generated|le4a\(0) $ ((!(!\uMAC|Mult0|auto_generated|add12_result[0]~62\ & \uMAC|Mult0|auto_generated|add12_result[3]~47\) 
-- # (\uMAC|Mult0|auto_generated|add12_result[0]~62\ & \uMAC|Mult0|auto_generated|add12_result[3]~47COUT1_68\))))
-- \uMAC|Mult0|auto_generated|add12_result[4]~42\ = CARRY((\uMAC|Mult0|auto_generated|add20_result[0]~20_combout\ & ((\uMAC|Mult0|auto_generated|le4a\(0)) # (!\uMAC|Mult0|auto_generated|add12_result[3]~47\))) # 
-- (!\uMAC|Mult0|auto_generated|add20_result[0]~20_combout\ & (\uMAC|Mult0|auto_generated|le4a\(0) & !\uMAC|Mult0|auto_generated|add12_result[3]~47\)))
-- \uMAC|Mult0|auto_generated|add12_result[4]~42COUT1_69\ = CARRY((\uMAC|Mult0|auto_generated|add20_result[0]~20_combout\ & ((\uMAC|Mult0|auto_generated|le4a\(0)) # (!\uMAC|Mult0|auto_generated|add12_result[3]~47COUT1_68\))) # 
-- (!\uMAC|Mult0|auto_generated|add20_result[0]~20_combout\ & (\uMAC|Mult0|auto_generated|le4a\(0) & !\uMAC|Mult0|auto_generated|add12_result[3]~47COUT1_68\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|Mult0|auto_generated|add20_result[0]~20_combout\,
	datab => \uMAC|Mult0|auto_generated|le4a\(0),
	cin => \uMAC|Mult0|auto_generated|add12_result[0]~62\,
	cin0 => \uMAC|Mult0|auto_generated|add12_result[3]~47\,
	cin1 => \uMAC|Mult0|auto_generated|add12_result[3]~47COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|add12_result[4]~40_combout\,
	cout0 => \uMAC|Mult0|auto_generated|add12_result[4]~42\,
	cout1 => \uMAC|Mult0|auto_generated|add12_result[4]~42COUT1_69\);

-- Location: LC_X8_Y7_N9
\uMAC|Mult0|auto_generated|add12_result[5]~35\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|add12_result[5]~35_combout\ = \uMAC|Mult0|auto_generated|le4a\(1) $ (\uMAC|Mult0|auto_generated|add20_result[1]~15_combout\ $ (((!\uMAC|Mult0|auto_generated|add12_result[0]~62\ & \uMAC|Mult0|auto_generated|add12_result[4]~42\) # 
-- (\uMAC|Mult0|auto_generated|add12_result[0]~62\ & \uMAC|Mult0|auto_generated|add12_result[4]~42COUT1_69\))))
-- \uMAC|Mult0|auto_generated|add12_result[5]~37\ = CARRY((\uMAC|Mult0|auto_generated|le4a\(1) & (!\uMAC|Mult0|auto_generated|add20_result[1]~15_combout\ & !\uMAC|Mult0|auto_generated|add12_result[4]~42COUT1_69\)) # (!\uMAC|Mult0|auto_generated|le4a\(1) & 
-- ((!\uMAC|Mult0|auto_generated|add12_result[4]~42COUT1_69\) # (!\uMAC|Mult0|auto_generated|add20_result[1]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|Mult0|auto_generated|le4a\(1),
	datab => \uMAC|Mult0|auto_generated|add20_result[1]~15_combout\,
	cin => \uMAC|Mult0|auto_generated|add12_result[0]~62\,
	cin0 => \uMAC|Mult0|auto_generated|add12_result[4]~42\,
	cin1 => \uMAC|Mult0|auto_generated|add12_result[4]~42COUT1_69\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|add12_result[5]~35_combout\,
	cout => \uMAC|Mult0|auto_generated|add12_result[5]~37\);

-- Location: LC_X9_Y7_N0
\uMAC|Mult0|auto_generated|add12_result[6]~30\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|add12_result[6]~30_combout\ = \uMAC|Mult0|auto_generated|add20_result[2]~10_combout\ $ (\uMAC|Mult0|auto_generated|le4a\(2) $ ((!\uMAC|Mult0|auto_generated|add12_result[5]~37\)))
-- \uMAC|Mult0|auto_generated|add12_result[6]~32\ = CARRY((\uMAC|Mult0|auto_generated|add20_result[2]~10_combout\ & ((\uMAC|Mult0|auto_generated|le4a\(2)) # (!\uMAC|Mult0|auto_generated|add12_result[5]~37\))) # 
-- (!\uMAC|Mult0|auto_generated|add20_result[2]~10_combout\ & (\uMAC|Mult0|auto_generated|le4a\(2) & !\uMAC|Mult0|auto_generated|add12_result[5]~37\)))
-- \uMAC|Mult0|auto_generated|add12_result[6]~32COUT1_70\ = CARRY((\uMAC|Mult0|auto_generated|add20_result[2]~10_combout\ & ((\uMAC|Mult0|auto_generated|le4a\(2)) # (!\uMAC|Mult0|auto_generated|add12_result[5]~37\))) # 
-- (!\uMAC|Mult0|auto_generated|add20_result[2]~10_combout\ & (\uMAC|Mult0|auto_generated|le4a\(2) & !\uMAC|Mult0|auto_generated|add12_result[5]~37\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|Mult0|auto_generated|add20_result[2]~10_combout\,
	datab => \uMAC|Mult0|auto_generated|le4a\(2),
	cin => \uMAC|Mult0|auto_generated|add12_result[5]~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|add12_result[6]~30_combout\,
	cout0 => \uMAC|Mult0|auto_generated|add12_result[6]~32\,
	cout1 => \uMAC|Mult0|auto_generated|add12_result[6]~32COUT1_70\);

-- Location: LC_X7_Y7_N0
\uMAC|Mult0|auto_generated|le6a[6]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|le6a\(6) = (\uMAC|Mult0|auto_generated|cs3a\(1) & (\uMAC|coeff\(6) $ (((\uMAC|Mult0|auto_generated|cs1a\(1)))))) # (!\uMAC|Mult0|auto_generated|cs3a\(1) & (((!\uMAC|coeff\(5) & \uMAC|Mult0|auto_generated|cs1a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2788",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|Mult0|auto_generated|cs3a\(1),
	datab => \uMAC|coeff\(6),
	datac => \uMAC|coeff\(5),
	datad => \uMAC|Mult0|auto_generated|cs1a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|le6a\(6));

-- Location: LC_X8_Y4_N6
\uMAC|Mult0|auto_generated|le7a[5]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|le7a\(5) = ((\uMAC|coeff\(5) & (\uMAC|Mult0|auto_generated|cs3a\(2) & !\uMAC|Mult0|auto_generated|cs1a\(2))) # (!\uMAC|coeff\(5) & ((\uMAC|Mult0|auto_generated|cs1a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uMAC|coeff\(5),
	datac => \uMAC|Mult0|auto_generated|cs3a\(2),
	datad => \uMAC|Mult0|auto_generated|cs1a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|le7a\(5));

-- Location: LC_X7_Y7_N6
\uMAC|Mult0|auto_generated|le6a[5]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|le6a\(5) = ((\uMAC|coeff\(5) & (\uMAC|Mult0|auto_generated|cs3a\(1) & !\uMAC|Mult0|auto_generated|cs1a\(1))) # (!\uMAC|coeff\(5) & ((\uMAC|Mult0|auto_generated|cs1a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|Mult0|auto_generated|cs3a\(1),
	datac => \uMAC|coeff\(5),
	datad => \uMAC|Mult0|auto_generated|cs1a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|le6a\(5));

-- Location: LC_X8_Y4_N3
\uMAC|Mult0|auto_generated|le7a[3]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|le7a\(3) = (\uMAC|Mult0|auto_generated|cs3a\(2) & ((\uMAC|coeff\(5) $ (\uMAC|Mult0|auto_generated|cs1a\(2))))) # (!\uMAC|Mult0|auto_generated|cs3a\(2) & (!\uMAC|coeff\(2) & ((\uMAC|Mult0|auto_generated|cs1a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "35c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|coeff\(2),
	datab => \uMAC|coeff\(5),
	datac => \uMAC|Mult0|auto_generated|cs3a\(2),
	datad => \uMAC|Mult0|auto_generated|cs1a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|le7a\(3));

-- Location: LC_X8_Y4_N1
\uMAC|Mult0|auto_generated|le7a[2]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|le7a\(2) = (\uMAC|Mult0|auto_generated|cs3a\(2) & (\uMAC|coeff\(2) $ (((\uMAC|Mult0|auto_generated|cs1a\(2)))))) # (!\uMAC|Mult0|auto_generated|cs3a\(2) & (((!\uMAC|coeff\(5) & \uMAC|Mult0|auto_generated|cs1a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "53a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|coeff\(2),
	datab => \uMAC|coeff\(5),
	datac => \uMAC|Mult0|auto_generated|cs3a\(2),
	datad => \uMAC|Mult0|auto_generated|cs1a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|le7a\(2));

-- Location: LC_X10_Y7_N3
\uMAC|Mult0|auto_generated|le5a[5]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|le5a\(5) = (\uMAC|coeff\(5) & (!\uMAC|Mult0|auto_generated|cs3a\(0) & (!\uMAC|Mult0|auto_generated|cs1a\(0)))) # (!\uMAC|coeff\(5) & (((\uMAC|Mult0|auto_generated|cs1a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3434",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|Mult0|auto_generated|cs3a\(0),
	datab => \uMAC|coeff\(5),
	datac => \uMAC|Mult0|auto_generated|cs1a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|le5a\(5));

-- Location: LC_X6_Y7_N0
\uMAC|Mult0|auto_generated|add16_result[0]~40\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|add16_result[0]~40_combout\ = \uMAC|Mult0|auto_generated|le5a\(5) $ ((\uMAC|Mult0|auto_generated|cs1a\(2)))
-- \uMAC|Mult0|auto_generated|add16_result[0]~42\ = CARRY((\uMAC|Mult0|auto_generated|le5a\(5) & (\uMAC|Mult0|auto_generated|cs1a\(2))))
-- \uMAC|Mult0|auto_generated|add16_result[0]~42COUT1_46\ = CARRY((\uMAC|Mult0|auto_generated|le5a\(5) & (\uMAC|Mult0|auto_generated|cs1a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|Mult0|auto_generated|le5a\(5),
	datab => \uMAC|Mult0|auto_generated|cs1a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|add16_result[0]~40_combout\,
	cout0 => \uMAC|Mult0|auto_generated|add16_result[0]~42\,
	cout1 => \uMAC|Mult0|auto_generated|add16_result[0]~42COUT1_46\);

-- Location: LC_X6_Y7_N1
\uMAC|Mult0|auto_generated|add16_result[1]~35\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|add16_result[1]~35_combout\ = \uMAC|Mult0|auto_generated|le5a\(5) $ ((((\uMAC|Mult0|auto_generated|add16_result[0]~42\))))
-- \uMAC|Mult0|auto_generated|add16_result[1]~37\ = CARRY(((!\uMAC|Mult0|auto_generated|add16_result[0]~42\)) # (!\uMAC|Mult0|auto_generated|le5a\(5)))
-- \uMAC|Mult0|auto_generated|add16_result[1]~37COUT1_47\ = CARRY(((!\uMAC|Mult0|auto_generated|add16_result[0]~42COUT1_46\)) # (!\uMAC|Mult0|auto_generated|le5a\(5)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|Mult0|auto_generated|le5a\(5),
	cin0 => \uMAC|Mult0|auto_generated|add16_result[0]~42\,
	cin1 => \uMAC|Mult0|auto_generated|add16_result[0]~42COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|add16_result[1]~35_combout\,
	cout0 => \uMAC|Mult0|auto_generated|add16_result[1]~37\,
	cout1 => \uMAC|Mult0|auto_generated|add16_result[1]~37COUT1_47\);

-- Location: LC_X6_Y7_N2
\uMAC|Mult0|auto_generated|add16_result[2]~30\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|add16_result[2]~30_combout\ = \uMAC|Mult0|auto_generated|le6a\(5) $ (\uMAC|Mult0|auto_generated|le7a\(2) $ ((!\uMAC|Mult0|auto_generated|add16_result[1]~37\)))
-- \uMAC|Mult0|auto_generated|add16_result[2]~32\ = CARRY((\uMAC|Mult0|auto_generated|le6a\(5) & ((\uMAC|Mult0|auto_generated|le7a\(2)) # (!\uMAC|Mult0|auto_generated|add16_result[1]~37\))) # (!\uMAC|Mult0|auto_generated|le6a\(5) & 
-- (\uMAC|Mult0|auto_generated|le7a\(2) & !\uMAC|Mult0|auto_generated|add16_result[1]~37\)))
-- \uMAC|Mult0|auto_generated|add16_result[2]~32COUT1_48\ = CARRY((\uMAC|Mult0|auto_generated|le6a\(5) & ((\uMAC|Mult0|auto_generated|le7a\(2)) # (!\uMAC|Mult0|auto_generated|add16_result[1]~37COUT1_47\))) # (!\uMAC|Mult0|auto_generated|le6a\(5) & 
-- (\uMAC|Mult0|auto_generated|le7a\(2) & !\uMAC|Mult0|auto_generated|add16_result[1]~37COUT1_47\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|Mult0|auto_generated|le6a\(5),
	datab => \uMAC|Mult0|auto_generated|le7a\(2),
	cin0 => \uMAC|Mult0|auto_generated|add16_result[1]~37\,
	cin1 => \uMAC|Mult0|auto_generated|add16_result[1]~37COUT1_47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|add16_result[2]~30_combout\,
	cout0 => \uMAC|Mult0|auto_generated|add16_result[2]~32\,
	cout1 => \uMAC|Mult0|auto_generated|add16_result[2]~32COUT1_48\);

-- Location: LC_X6_Y7_N3
\uMAC|Mult0|auto_generated|add16_result[3]~25\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|add16_result[3]~25_combout\ = \uMAC|Mult0|auto_generated|le6a\(5) $ (\uMAC|Mult0|auto_generated|le7a\(3) $ ((\uMAC|Mult0|auto_generated|add16_result[2]~32\)))
-- \uMAC|Mult0|auto_generated|add16_result[3]~27\ = CARRY((\uMAC|Mult0|auto_generated|le6a\(5) & (!\uMAC|Mult0|auto_generated|le7a\(3) & !\uMAC|Mult0|auto_generated|add16_result[2]~32\)) # (!\uMAC|Mult0|auto_generated|le6a\(5) & 
-- ((!\uMAC|Mult0|auto_generated|add16_result[2]~32\) # (!\uMAC|Mult0|auto_generated|le7a\(3)))))
-- \uMAC|Mult0|auto_generated|add16_result[3]~27COUT1_49\ = CARRY((\uMAC|Mult0|auto_generated|le6a\(5) & (!\uMAC|Mult0|auto_generated|le7a\(3) & !\uMAC|Mult0|auto_generated|add16_result[2]~32COUT1_48\)) # (!\uMAC|Mult0|auto_generated|le6a\(5) & 
-- ((!\uMAC|Mult0|auto_generated|add16_result[2]~32COUT1_48\) # (!\uMAC|Mult0|auto_generated|le7a\(3)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|Mult0|auto_generated|le6a\(5),
	datab => \uMAC|Mult0|auto_generated|le7a\(3),
	cin0 => \uMAC|Mult0|auto_generated|add16_result[2]~32\,
	cin1 => \uMAC|Mult0|auto_generated|add16_result[2]~32COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|add16_result[3]~25_combout\,
	cout0 => \uMAC|Mult0|auto_generated|add16_result[3]~27\,
	cout1 => \uMAC|Mult0|auto_generated|add16_result[3]~27COUT1_49\);

-- Location: LC_X6_Y7_N4
\uMAC|Mult0|auto_generated|add16_result[4]~20\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|add16_result[4]~20_combout\ = \uMAC|Mult0|auto_generated|le6a\(6) $ (\uMAC|Mult0|auto_generated|le7a\(5) $ ((!\uMAC|Mult0|auto_generated|add16_result[3]~27\)))
-- \uMAC|Mult0|auto_generated|add16_result[4]~22\ = CARRY((\uMAC|Mult0|auto_generated|le6a\(6) & ((\uMAC|Mult0|auto_generated|le7a\(5)) # (!\uMAC|Mult0|auto_generated|add16_result[3]~27COUT1_49\))) # (!\uMAC|Mult0|auto_generated|le6a\(6) & 
-- (\uMAC|Mult0|auto_generated|le7a\(5) & !\uMAC|Mult0|auto_generated|add16_result[3]~27COUT1_49\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|Mult0|auto_generated|le6a\(6),
	datab => \uMAC|Mult0|auto_generated|le7a\(5),
	cin0 => \uMAC|Mult0|auto_generated|add16_result[3]~27\,
	cin1 => \uMAC|Mult0|auto_generated|add16_result[3]~27COUT1_49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|add16_result[4]~20_combout\,
	cout => \uMAC|Mult0|auto_generated|add16_result[4]~22\);

-- Location: LC_X7_Y7_N4
\uMAC|Mult0|auto_generated|le6a[0]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|le6a\(0) = \uMAC|Mult0|auto_generated|cs3a\(1) $ ((((\uMAC|Mult0|auto_generated|cs1a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|Mult0|auto_generated|cs3a\(1),
	datad => \uMAC|Mult0|auto_generated|cs1a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|le6a\(0));

-- Location: LC_X10_Y7_N1
\uMAC|Mult0|auto_generated|le5a[1]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|le5a\(1) = (!\uMAC|Mult0|auto_generated|cs3a\(0) & ((\uMAC|Mult0|auto_generated|cs1a\(0) $ (\uMAC|coeff\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0550",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|Mult0|auto_generated|cs3a\(0),
	datac => \uMAC|Mult0|auto_generated|cs1a\(0),
	datad => \uMAC|coeff\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|le5a\(1));

-- Location: LC_X4_Y7_N1
\uMAC|Mult0|auto_generated|le5a[0]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|le5a\(0) = ((\uMAC|Mult0|auto_generated|cs3a\(0) $ (!\uMAC|Mult0|auto_generated|cs1a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uMAC|Mult0|auto_generated|cs3a\(0),
	datad => \uMAC|Mult0|auto_generated|cs1a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|le5a\(0));

-- Location: LC_X4_Y7_N2
\uMAC|Mult0|auto_generated|add8_result[0]~77\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|add8_result[0]~77_cout0\ = CARRY((\uMAC|Mult0|auto_generated|cs1a\(0) & (\uMAC|Mult0|auto_generated|le5a\(0))))
-- \uMAC|Mult0|auto_generated|add8_result[0]~77COUT1_81\ = CARRY((\uMAC|Mult0|auto_generated|cs1a\(0) & (\uMAC|Mult0|auto_generated|le5a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff88",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|Mult0|auto_generated|cs1a\(0),
	datab => \uMAC|Mult0|auto_generated|le5a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|add8_result[0]~75\,
	cout0 => \uMAC|Mult0|auto_generated|add8_result[0]~77_cout0\,
	cout1 => \uMAC|Mult0|auto_generated|add8_result[0]~77COUT1_81\);

-- Location: LC_X4_Y7_N3
\uMAC|Mult0|auto_generated|add8_result[1]~70\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|add8_result[1]~70_combout\ = (\uMAC|Mult0|auto_generated|le5a\(1) $ ((\uMAC|Mult0|auto_generated|add8_result[0]~77_cout0\)))
-- \uMAC|Mult0|auto_generated|add8_result[1]~72\ = CARRY(((!\uMAC|Mult0|auto_generated|add8_result[0]~77_cout0\) # (!\uMAC|Mult0|auto_generated|le5a\(1))))
-- \uMAC|Mult0|auto_generated|add8_result[1]~72COUT1_82\ = CARRY(((!\uMAC|Mult0|auto_generated|add8_result[0]~77COUT1_81\) # (!\uMAC|Mult0|auto_generated|le5a\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uMAC|Mult0|auto_generated|le5a\(1),
	cin0 => \uMAC|Mult0|auto_generated|add8_result[0]~77_cout0\,
	cin1 => \uMAC|Mult0|auto_generated|add8_result[0]~77COUT1_81\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|add8_result[1]~70_combout\,
	cout0 => \uMAC|Mult0|auto_generated|add8_result[1]~72\,
	cout1 => \uMAC|Mult0|auto_generated|add8_result[1]~72COUT1_82\);

-- Location: LC_X4_Y7_N4
\uMAC|produit[2]\ : maxv_lcell
-- Equation(s):
-- \uMAC|produit\(2) = DFFEAS(\uMAC|Mult0|auto_generated|le6a\(0) $ (\uMAC|Mult0|auto_generated|add12_result[0]~60_combout\ $ ((!\uMAC|Mult0|auto_generated|add8_result[1]~72\))), GLOBAL(\uMAE|H_MAC~combout\), VCC, , !\uMAE|H_FIFO~combout\, , , , )
-- \uMAC|Mult0|auto_generated|add8_result[2]~67\ = CARRY((\uMAC|Mult0|auto_generated|le6a\(0) & ((\uMAC|Mult0|auto_generated|add12_result[0]~60_combout\) # (!\uMAC|Mult0|auto_generated|add8_result[1]~72COUT1_82\))) # (!\uMAC|Mult0|auto_generated|le6a\(0) & 
-- (\uMAC|Mult0|auto_generated|add12_result[0]~60_combout\ & !\uMAC|Mult0|auto_generated|add8_result[1]~72COUT1_82\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	dataa => \uMAC|Mult0|auto_generated|le6a\(0),
	datab => \uMAC|Mult0|auto_generated|add12_result[0]~60_combout\,
	aclr => GND,
	ena => \uMAE|ALT_INV_H_FIFO~combout\,
	cin0 => \uMAC|Mult0|auto_generated|add8_result[1]~72\,
	cin1 => \uMAC|Mult0|auto_generated|add8_result[1]~72COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAC|produit\(2),
	cout => \uMAC|Mult0|auto_generated|add8_result[2]~67\);

-- Location: LC_X7_Y7_N9
\uMAC|Mult0|auto_generated|le6a[1]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|le6a\(1) = (\uMAC|Mult0|auto_generated|cs3a\(1) & ((\uMAC|coeff\(5) $ (\uMAC|Mult0|auto_generated|cs1a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0aa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|Mult0|auto_generated|cs3a\(1),
	datac => \uMAC|coeff\(5),
	datad => \uMAC|Mult0|auto_generated|cs1a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|le6a\(1));

-- Location: LC_X4_Y7_N5
\uMAC|produit[3]\ : maxv_lcell
-- Equation(s):
-- \uMAC|produit\(3) = DFFEAS(\uMAC|Mult0|auto_generated|le6a\(1) $ (\uMAC|Mult0|auto_generated|add12_result[1]~55_combout\ $ ((\uMAC|Mult0|auto_generated|add8_result[2]~67\))), GLOBAL(\uMAE|H_MAC~combout\), VCC, , !\uMAE|H_FIFO~combout\, , , , )
-- \uMAC|Mult0|auto_generated|add8_result[3]~62\ = CARRY((\uMAC|Mult0|auto_generated|le6a\(1) & (!\uMAC|Mult0|auto_generated|add12_result[1]~55_combout\ & !\uMAC|Mult0|auto_generated|add8_result[2]~67\)) # (!\uMAC|Mult0|auto_generated|le6a\(1) & 
-- ((!\uMAC|Mult0|auto_generated|add8_result[2]~67\) # (!\uMAC|Mult0|auto_generated|add12_result[1]~55_combout\))))
-- \uMAC|Mult0|auto_generated|add8_result[3]~62COUT1_83\ = CARRY((\uMAC|Mult0|auto_generated|le6a\(1) & (!\uMAC|Mult0|auto_generated|add12_result[1]~55_combout\ & !\uMAC|Mult0|auto_generated|add8_result[2]~67\)) # (!\uMAC|Mult0|auto_generated|le6a\(1) & 
-- ((!\uMAC|Mult0|auto_generated|add8_result[2]~67\) # (!\uMAC|Mult0|auto_generated|add12_result[1]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	dataa => \uMAC|Mult0|auto_generated|le6a\(1),
	datab => \uMAC|Mult0|auto_generated|add12_result[1]~55_combout\,
	aclr => GND,
	ena => \uMAE|ALT_INV_H_FIFO~combout\,
	cin => \uMAC|Mult0|auto_generated|add8_result[2]~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAC|produit\(3),
	cout0 => \uMAC|Mult0|auto_generated|add8_result[3]~62\,
	cout1 => \uMAC|Mult0|auto_generated|add8_result[3]~62COUT1_83\);

-- Location: LC_X4_Y7_N6
\uMAC|produit[4]\ : maxv_lcell
-- Equation(s):
-- \uMAC|produit\(4) = DFFEAS(\uMAC|Mult0|auto_generated|add16_result[0]~40_combout\ $ (\uMAC|Mult0|auto_generated|add12_result[2]~50_combout\ $ ((!(!\uMAC|Mult0|auto_generated|add8_result[2]~67\ & \uMAC|Mult0|auto_generated|add8_result[3]~62\) # 
-- (\uMAC|Mult0|auto_generated|add8_result[2]~67\ & \uMAC|Mult0|auto_generated|add8_result[3]~62COUT1_83\)))), GLOBAL(\uMAE|H_MAC~combout\), VCC, , !\uMAE|H_FIFO~combout\, , , , )
-- \uMAC|Mult0|auto_generated|add8_result[4]~57\ = CARRY((\uMAC|Mult0|auto_generated|add16_result[0]~40_combout\ & ((\uMAC|Mult0|auto_generated|add12_result[2]~50_combout\) # (!\uMAC|Mult0|auto_generated|add8_result[3]~62\))) # 
-- (!\uMAC|Mult0|auto_generated|add16_result[0]~40_combout\ & (\uMAC|Mult0|auto_generated|add12_result[2]~50_combout\ & !\uMAC|Mult0|auto_generated|add8_result[3]~62\)))
-- \uMAC|Mult0|auto_generated|add8_result[4]~57COUT1_84\ = CARRY((\uMAC|Mult0|auto_generated|add16_result[0]~40_combout\ & ((\uMAC|Mult0|auto_generated|add12_result[2]~50_combout\) # (!\uMAC|Mult0|auto_generated|add8_result[3]~62COUT1_83\))) # 
-- (!\uMAC|Mult0|auto_generated|add16_result[0]~40_combout\ & (\uMAC|Mult0|auto_generated|add12_result[2]~50_combout\ & !\uMAC|Mult0|auto_generated|add8_result[3]~62COUT1_83\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	dataa => \uMAC|Mult0|auto_generated|add16_result[0]~40_combout\,
	datab => \uMAC|Mult0|auto_generated|add12_result[2]~50_combout\,
	aclr => GND,
	ena => \uMAE|ALT_INV_H_FIFO~combout\,
	cin => \uMAC|Mult0|auto_generated|add8_result[2]~67\,
	cin0 => \uMAC|Mult0|auto_generated|add8_result[3]~62\,
	cin1 => \uMAC|Mult0|auto_generated|add8_result[3]~62COUT1_83\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAC|produit\(4),
	cout0 => \uMAC|Mult0|auto_generated|add8_result[4]~57\,
	cout1 => \uMAC|Mult0|auto_generated|add8_result[4]~57COUT1_84\);

-- Location: LC_X4_Y7_N7
\uMAC|produit[5]\ : maxv_lcell
-- Equation(s):
-- \uMAC|produit\(5) = DFFEAS(\uMAC|Mult0|auto_generated|add16_result[1]~35_combout\ $ (\uMAC|Mult0|auto_generated|add12_result[3]~45_combout\ $ (((!\uMAC|Mult0|auto_generated|add8_result[2]~67\ & \uMAC|Mult0|auto_generated|add8_result[4]~57\) # 
-- (\uMAC|Mult0|auto_generated|add8_result[2]~67\ & \uMAC|Mult0|auto_generated|add8_result[4]~57COUT1_84\)))), GLOBAL(\uMAE|H_MAC~combout\), VCC, , !\uMAE|H_FIFO~combout\, , , , )
-- \uMAC|Mult0|auto_generated|add8_result[5]~52\ = CARRY((\uMAC|Mult0|auto_generated|add16_result[1]~35_combout\ & (!\uMAC|Mult0|auto_generated|add12_result[3]~45_combout\ & !\uMAC|Mult0|auto_generated|add8_result[4]~57\)) # 
-- (!\uMAC|Mult0|auto_generated|add16_result[1]~35_combout\ & ((!\uMAC|Mult0|auto_generated|add8_result[4]~57\) # (!\uMAC|Mult0|auto_generated|add12_result[3]~45_combout\))))
-- \uMAC|Mult0|auto_generated|add8_result[5]~52COUT1_85\ = CARRY((\uMAC|Mult0|auto_generated|add16_result[1]~35_combout\ & (!\uMAC|Mult0|auto_generated|add12_result[3]~45_combout\ & !\uMAC|Mult0|auto_generated|add8_result[4]~57COUT1_84\)) # 
-- (!\uMAC|Mult0|auto_generated|add16_result[1]~35_combout\ & ((!\uMAC|Mult0|auto_generated|add8_result[4]~57COUT1_84\) # (!\uMAC|Mult0|auto_generated|add12_result[3]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	dataa => \uMAC|Mult0|auto_generated|add16_result[1]~35_combout\,
	datab => \uMAC|Mult0|auto_generated|add12_result[3]~45_combout\,
	aclr => GND,
	ena => \uMAE|ALT_INV_H_FIFO~combout\,
	cin => \uMAC|Mult0|auto_generated|add8_result[2]~67\,
	cin0 => \uMAC|Mult0|auto_generated|add8_result[4]~57\,
	cin1 => \uMAC|Mult0|auto_generated|add8_result[4]~57COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAC|produit\(5),
	cout0 => \uMAC|Mult0|auto_generated|add8_result[5]~52\,
	cout1 => \uMAC|Mult0|auto_generated|add8_result[5]~52COUT1_85\);

-- Location: LC_X4_Y7_N8
\uMAC|produit[6]\ : maxv_lcell
-- Equation(s):
-- \uMAC|produit\(6) = DFFEAS(\uMAC|Mult0|auto_generated|add12_result[4]~40_combout\ $ (\uMAC|Mult0|auto_generated|add16_result[2]~30_combout\ $ ((!(!\uMAC|Mult0|auto_generated|add8_result[2]~67\ & \uMAC|Mult0|auto_generated|add8_result[5]~52\) # 
-- (\uMAC|Mult0|auto_generated|add8_result[2]~67\ & \uMAC|Mult0|auto_generated|add8_result[5]~52COUT1_85\)))), GLOBAL(\uMAE|H_MAC~combout\), VCC, , !\uMAE|H_FIFO~combout\, , , , )
-- \uMAC|Mult0|auto_generated|add8_result[6]~47\ = CARRY((\uMAC|Mult0|auto_generated|add12_result[4]~40_combout\ & ((\uMAC|Mult0|auto_generated|add16_result[2]~30_combout\) # (!\uMAC|Mult0|auto_generated|add8_result[5]~52\))) # 
-- (!\uMAC|Mult0|auto_generated|add12_result[4]~40_combout\ & (\uMAC|Mult0|auto_generated|add16_result[2]~30_combout\ & !\uMAC|Mult0|auto_generated|add8_result[5]~52\)))
-- \uMAC|Mult0|auto_generated|add8_result[6]~47COUT1_86\ = CARRY((\uMAC|Mult0|auto_generated|add12_result[4]~40_combout\ & ((\uMAC|Mult0|auto_generated|add16_result[2]~30_combout\) # (!\uMAC|Mult0|auto_generated|add8_result[5]~52COUT1_85\))) # 
-- (!\uMAC|Mult0|auto_generated|add12_result[4]~40_combout\ & (\uMAC|Mult0|auto_generated|add16_result[2]~30_combout\ & !\uMAC|Mult0|auto_generated|add8_result[5]~52COUT1_85\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	dataa => \uMAC|Mult0|auto_generated|add12_result[4]~40_combout\,
	datab => \uMAC|Mult0|auto_generated|add16_result[2]~30_combout\,
	aclr => GND,
	ena => \uMAE|ALT_INV_H_FIFO~combout\,
	cin => \uMAC|Mult0|auto_generated|add8_result[2]~67\,
	cin0 => \uMAC|Mult0|auto_generated|add8_result[5]~52\,
	cin1 => \uMAC|Mult0|auto_generated|add8_result[5]~52COUT1_85\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAC|produit\(6),
	cout0 => \uMAC|Mult0|auto_generated|add8_result[6]~47\,
	cout1 => \uMAC|Mult0|auto_generated|add8_result[6]~47COUT1_86\);

-- Location: LC_X4_Y7_N9
\uMAC|produit[7]\ : maxv_lcell
-- Equation(s):
-- \uMAC|produit\(7) = DFFEAS(\uMAC|Mult0|auto_generated|add16_result[3]~25_combout\ $ (\uMAC|Mult0|auto_generated|add12_result[5]~35_combout\ $ (((!\uMAC|Mult0|auto_generated|add8_result[2]~67\ & \uMAC|Mult0|auto_generated|add8_result[6]~47\) # 
-- (\uMAC|Mult0|auto_generated|add8_result[2]~67\ & \uMAC|Mult0|auto_generated|add8_result[6]~47COUT1_86\)))), GLOBAL(\uMAE|H_MAC~combout\), VCC, , !\uMAE|H_FIFO~combout\, , , , )
-- \uMAC|Mult0|auto_generated|add8_result[7]~42\ = CARRY((\uMAC|Mult0|auto_generated|add16_result[3]~25_combout\ & (!\uMAC|Mult0|auto_generated|add12_result[5]~35_combout\ & !\uMAC|Mult0|auto_generated|add8_result[6]~47COUT1_86\)) # 
-- (!\uMAC|Mult0|auto_generated|add16_result[3]~25_combout\ & ((!\uMAC|Mult0|auto_generated|add8_result[6]~47COUT1_86\) # (!\uMAC|Mult0|auto_generated|add12_result[5]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	dataa => \uMAC|Mult0|auto_generated|add16_result[3]~25_combout\,
	datab => \uMAC|Mult0|auto_generated|add12_result[5]~35_combout\,
	aclr => GND,
	ena => \uMAE|ALT_INV_H_FIFO~combout\,
	cin => \uMAC|Mult0|auto_generated|add8_result[2]~67\,
	cin0 => \uMAC|Mult0|auto_generated|add8_result[6]~47\,
	cin1 => \uMAC|Mult0|auto_generated|add8_result[6]~47COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAC|produit\(7),
	cout => \uMAC|Mult0|auto_generated|add8_result[7]~42\);

-- Location: LC_X5_Y7_N0
\uMAC|produit[8]\ : maxv_lcell
-- Equation(s):
-- \uMAC|produit\(8) = DFFEAS(\uMAC|Mult0|auto_generated|add12_result[6]~30_combout\ $ (\uMAC|Mult0|auto_generated|add16_result[4]~20_combout\ $ ((!\uMAC|Mult0|auto_generated|add8_result[7]~42\))), GLOBAL(\uMAE|H_MAC~combout\), VCC, , !\uMAE|H_FIFO~combout\, 
-- , , , )
-- \uMAC|Mult0|auto_generated|add8_result[8]~37\ = CARRY((\uMAC|Mult0|auto_generated|add12_result[6]~30_combout\ & ((\uMAC|Mult0|auto_generated|add16_result[4]~20_combout\) # (!\uMAC|Mult0|auto_generated|add8_result[7]~42\))) # 
-- (!\uMAC|Mult0|auto_generated|add12_result[6]~30_combout\ & (\uMAC|Mult0|auto_generated|add16_result[4]~20_combout\ & !\uMAC|Mult0|auto_generated|add8_result[7]~42\)))
-- \uMAC|Mult0|auto_generated|add8_result[8]~37COUT1_87\ = CARRY((\uMAC|Mult0|auto_generated|add12_result[6]~30_combout\ & ((\uMAC|Mult0|auto_generated|add16_result[4]~20_combout\) # (!\uMAC|Mult0|auto_generated|add8_result[7]~42\))) # 
-- (!\uMAC|Mult0|auto_generated|add12_result[6]~30_combout\ & (\uMAC|Mult0|auto_generated|add16_result[4]~20_combout\ & !\uMAC|Mult0|auto_generated|add8_result[7]~42\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	dataa => \uMAC|Mult0|auto_generated|add12_result[6]~30_combout\,
	datab => \uMAC|Mult0|auto_generated|add16_result[4]~20_combout\,
	aclr => GND,
	ena => \uMAE|ALT_INV_H_FIFO~combout\,
	cin => \uMAC|Mult0|auto_generated|add8_result[7]~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAC|produit\(8),
	cout0 => \uMAC|Mult0|auto_generated|add8_result[8]~37\,
	cout1 => \uMAC|Mult0|auto_generated|add8_result[8]~37COUT1_87\);

-- Location: LC_X4_Y7_N0
\uMAC|produit[1]\ : maxv_lcell
-- Equation(s):
-- \uMAC|WideOr0~0\ = (\uMAC|produit\(2)) # (((D1_produit[1]) # (!\uMAC|produit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	dataa => \uMAC|produit\(2),
	datac => \uMAC|Mult0|auto_generated|add8_result[1]~70_combout\,
	datad => \uMAC|produit\(0),
	aclr => GND,
	sload => VCC,
	ena => \uMAE|ALT_INV_H_FIFO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|WideOr0~0\,
	regout => \uMAC|produit\(1));

-- Location: LC_X9_Y7_N8
\uMAC|Mult0|auto_generated|le4a[6]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|le4a\(6) = (\uMAC|Mult0|auto_generated|le2a\(6)) # ((\uMAC|Mult0|auto_generated|cs3a[3]~0_combout\ & (\uMAC|coeff\(6) $ (!\uMAC|valeur\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8f4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|coeff\(6),
	datab => \uMAC|Mult0|auto_generated|cs3a[3]~0_combout\,
	datac => \uMAC|Mult0|auto_generated|le2a\(6),
	datad => \uMAC|valeur\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|le4a\(6));

-- Location: LC_X8_Y4_N2
\uMAC|Mult0|auto_generated|le7a[8]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|le7a\(8) = (\uMAC|coeff\(7) & (((\uMAC|Mult0|auto_generated|cs1a\(2))))) # (!\uMAC|coeff\(7) & (((\uMAC|Mult0|auto_generated|cs3a\(2) & !\uMAC|Mult0|auto_generated|cs1a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|coeff\(7),
	datac => \uMAC|Mult0|auto_generated|cs3a\(2),
	datad => \uMAC|Mult0|auto_generated|cs1a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|le7a\(8));

-- Location: LC_X8_Y4_N0
\uMAC|Mult0|auto_generated|le7a[7]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|le7a\(7) = (\uMAC|Mult0|auto_generated|cs3a\(2) & (\uMAC|coeff\(7) $ ((!\uMAC|Mult0|auto_generated|cs1a\(2))))) # (!\uMAC|Mult0|auto_generated|cs3a\(2) & (((\uMAC|Mult0|auto_generated|cs1a\(2) & !\uMAC|coeff\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "909c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|coeff\(7),
	datab => \uMAC|Mult0|auto_generated|cs1a\(2),
	datac => \uMAC|Mult0|auto_generated|cs3a\(2),
	datad => \uMAC|coeff\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|le7a\(7));

-- Location: LC_X9_Y7_N9
\uMAC|Mult0|auto_generated|le4a[4]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|le4a\(4) = (\uMAC|Mult0|auto_generated|le2a\(6)) # ((\uMAC|Mult0|auto_generated|cs3a[3]~0_combout\ & (\uMAC|valeur\(7) $ (!\uMAC|coeff\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ebaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|Mult0|auto_generated|le2a\(6),
	datab => \uMAC|valeur\(7),
	datac => \uMAC|coeff\(5),
	datad => \uMAC|Mult0|auto_generated|cs3a[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|le4a\(4));

-- Location: LC_X8_Y4_N4
\uMAC|Mult0|auto_generated|le7a[6]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|le7a\(6) = (\uMAC|Mult0|auto_generated|cs3a\(2) & (\uMAC|coeff\(6) $ (((\uMAC|Mult0|auto_generated|cs1a\(2)))))) # (!\uMAC|Mult0|auto_generated|cs3a\(2) & (((!\uMAC|coeff\(5) & \uMAC|Mult0|auto_generated|cs1a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "53a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|coeff\(6),
	datab => \uMAC|coeff\(5),
	datac => \uMAC|Mult0|auto_generated|cs3a\(2),
	datad => \uMAC|Mult0|auto_generated|cs1a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|le7a\(6));

-- Location: LC_X11_Y7_N5
\uMAC|Mult0|auto_generated|le2a[3]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|le2a\(3) = (\uMAC|coeff\(2) & (\uMAC|valeur\(6) & (\uMAC|Mult0|auto_generated|cs1a[2]~5\))) # (!\uMAC|coeff\(2) & (!\uMAC|valeur\(7) & (\uMAC|valeur\(6) $ (!\uMAC|Mult0|auto_generated|cs1a[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "80a1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|valeur\(6),
	datab => \uMAC|coeff\(2),
	datac => \uMAC|Mult0|auto_generated|cs1a[2]~5\,
	datad => \uMAC|valeur\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|le2a\(3));

-- Location: LC_X11_Y7_N6
\uMAC|Mult0|auto_generated|le4a[3]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|le4a\(3) = (\uMAC|Mult0|auto_generated|le2a\(3)) # ((\uMAC|Mult0|auto_generated|cs3a[3]~0_combout\ & (\uMAC|coeff\(5) $ (!\uMAC|valeur\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff90",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|coeff\(5),
	datab => \uMAC|valeur\(7),
	datac => \uMAC|Mult0|auto_generated|cs3a[3]~0_combout\,
	datad => \uMAC|Mult0|auto_generated|le2a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|le4a\(3));

-- Location: LC_X10_Y7_N8
\uMAC|Mult0|auto_generated|add20_result[3]~5\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|add20_result[3]~5_combout\ = (((!\uMAC|Mult0|auto_generated|add20_result[2]~12\)))
-- \uMAC|Mult0|auto_generated|add20_result[3]~7\ = CARRY(((!\uMAC|Mult0|auto_generated|add20_result[2]~12\)))
-- \uMAC|Mult0|auto_generated|add20_result[3]~7COUT1_29\ = CARRY(((!\uMAC|Mult0|auto_generated|add20_result[2]~12COUT1_28\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0f0f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \uMAC|Mult0|auto_generated|add20_result[2]~12\,
	cin1 => \uMAC|Mult0|auto_generated|add20_result[2]~12COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|add20_result[3]~5_combout\,
	cout0 => \uMAC|Mult0|auto_generated|add20_result[3]~7\,
	cout1 => \uMAC|Mult0|auto_generated|add20_result[3]~7COUT1_29\);

-- Location: LC_X9_Y7_N1
\uMAC|Mult0|auto_generated|add12_result[7]~25\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|add12_result[7]~25_combout\ = \uMAC|Mult0|auto_generated|le4a\(3) $ (\uMAC|Mult0|auto_generated|add20_result[3]~5_combout\ $ (((!\uMAC|Mult0|auto_generated|add12_result[5]~37\ & \uMAC|Mult0|auto_generated|add12_result[6]~32\) # 
-- (\uMAC|Mult0|auto_generated|add12_result[5]~37\ & \uMAC|Mult0|auto_generated|add12_result[6]~32COUT1_70\))))
-- \uMAC|Mult0|auto_generated|add12_result[7]~27\ = CARRY((\uMAC|Mult0|auto_generated|le4a\(3) & (!\uMAC|Mult0|auto_generated|add20_result[3]~5_combout\ & !\uMAC|Mult0|auto_generated|add12_result[6]~32\)) # (!\uMAC|Mult0|auto_generated|le4a\(3) & 
-- ((!\uMAC|Mult0|auto_generated|add12_result[6]~32\) # (!\uMAC|Mult0|auto_generated|add20_result[3]~5_combout\))))
-- \uMAC|Mult0|auto_generated|add12_result[7]~27COUT1_71\ = CARRY((\uMAC|Mult0|auto_generated|le4a\(3) & (!\uMAC|Mult0|auto_generated|add20_result[3]~5_combout\ & !\uMAC|Mult0|auto_generated|add12_result[6]~32COUT1_70\)) # 
-- (!\uMAC|Mult0|auto_generated|le4a\(3) & ((!\uMAC|Mult0|auto_generated|add12_result[6]~32COUT1_70\) # (!\uMAC|Mult0|auto_generated|add20_result[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|Mult0|auto_generated|le4a\(3),
	datab => \uMAC|Mult0|auto_generated|add20_result[3]~5_combout\,
	cin => \uMAC|Mult0|auto_generated|add12_result[5]~37\,
	cin0 => \uMAC|Mult0|auto_generated|add12_result[6]~32\,
	cin1 => \uMAC|Mult0|auto_generated|add12_result[6]~32COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|add12_result[7]~25_combout\,
	cout0 => \uMAC|Mult0|auto_generated|add12_result[7]~27\,
	cout1 => \uMAC|Mult0|auto_generated|add12_result[7]~27COUT1_71\);

-- Location: LC_X9_Y7_N2
\uMAC|Mult0|auto_generated|add12_result[8]~10\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|add12_result[8]~10_combout\ = \uMAC|Mult0|auto_generated|le7a\(6) $ (\uMAC|Mult0|auto_generated|le4a\(4) $ ((!(!\uMAC|Mult0|auto_generated|add12_result[5]~37\ & \uMAC|Mult0|auto_generated|add12_result[7]~27\) # 
-- (\uMAC|Mult0|auto_generated|add12_result[5]~37\ & \uMAC|Mult0|auto_generated|add12_result[7]~27COUT1_71\))))
-- \uMAC|Mult0|auto_generated|add12_result[8]~12\ = CARRY((\uMAC|Mult0|auto_generated|le7a\(6) & ((\uMAC|Mult0|auto_generated|le4a\(4)) # (!\uMAC|Mult0|auto_generated|add12_result[7]~27\))) # (!\uMAC|Mult0|auto_generated|le7a\(6) & 
-- (\uMAC|Mult0|auto_generated|le4a\(4) & !\uMAC|Mult0|auto_generated|add12_result[7]~27\)))
-- \uMAC|Mult0|auto_generated|add12_result[8]~12COUT1_72\ = CARRY((\uMAC|Mult0|auto_generated|le7a\(6) & ((\uMAC|Mult0|auto_generated|le4a\(4)) # (!\uMAC|Mult0|auto_generated|add12_result[7]~27COUT1_71\))) # (!\uMAC|Mult0|auto_generated|le7a\(6) & 
-- (\uMAC|Mult0|auto_generated|le4a\(4) & !\uMAC|Mult0|auto_generated|add12_result[7]~27COUT1_71\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|Mult0|auto_generated|le7a\(6),
	datab => \uMAC|Mult0|auto_generated|le4a\(4),
	cin => \uMAC|Mult0|auto_generated|add12_result[5]~37\,
	cin0 => \uMAC|Mult0|auto_generated|add12_result[7]~27\,
	cin1 => \uMAC|Mult0|auto_generated|add12_result[7]~27COUT1_71\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|add12_result[8]~10_combout\,
	cout0 => \uMAC|Mult0|auto_generated|add12_result[8]~12\,
	cout1 => \uMAC|Mult0|auto_generated|add12_result[8]~12COUT1_72\);

-- Location: LC_X9_Y7_N3
\uMAC|Mult0|auto_generated|add12_result[9]~20\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|add12_result[9]~20_combout\ = \uMAC|Mult0|auto_generated|le7a\(7) $ (\uMAC|Mult0|auto_generated|le4a\(4) $ (((!\uMAC|Mult0|auto_generated|add12_result[5]~37\ & \uMAC|Mult0|auto_generated|add12_result[8]~12\) # 
-- (\uMAC|Mult0|auto_generated|add12_result[5]~37\ & \uMAC|Mult0|auto_generated|add12_result[8]~12COUT1_72\))))
-- \uMAC|Mult0|auto_generated|add12_result[9]~22\ = CARRY((\uMAC|Mult0|auto_generated|le7a\(7) & (!\uMAC|Mult0|auto_generated|le4a\(4) & !\uMAC|Mult0|auto_generated|add12_result[8]~12\)) # (!\uMAC|Mult0|auto_generated|le7a\(7) & 
-- ((!\uMAC|Mult0|auto_generated|add12_result[8]~12\) # (!\uMAC|Mult0|auto_generated|le4a\(4)))))
-- \uMAC|Mult0|auto_generated|add12_result[9]~22COUT1_73\ = CARRY((\uMAC|Mult0|auto_generated|le7a\(7) & (!\uMAC|Mult0|auto_generated|le4a\(4) & !\uMAC|Mult0|auto_generated|add12_result[8]~12COUT1_72\)) # (!\uMAC|Mult0|auto_generated|le7a\(7) & 
-- ((!\uMAC|Mult0|auto_generated|add12_result[8]~12COUT1_72\) # (!\uMAC|Mult0|auto_generated|le4a\(4)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|Mult0|auto_generated|le7a\(7),
	datab => \uMAC|Mult0|auto_generated|le4a\(4),
	cin => \uMAC|Mult0|auto_generated|add12_result[5]~37\,
	cin0 => \uMAC|Mult0|auto_generated|add12_result[8]~12\,
	cin1 => \uMAC|Mult0|auto_generated|add12_result[8]~12COUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|add12_result[9]~20_combout\,
	cout0 => \uMAC|Mult0|auto_generated|add12_result[9]~22\,
	cout1 => \uMAC|Mult0|auto_generated|add12_result[9]~22COUT1_73\);

-- Location: LC_X9_Y7_N4
\uMAC|Mult0|auto_generated|add12_result[10]~15\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|add12_result[10]~15_combout\ = \uMAC|Mult0|auto_generated|le4a\(6) $ (\uMAC|Mult0|auto_generated|le7a\(8) $ (((!\uMAC|Mult0|auto_generated|add12_result[5]~37\ & \uMAC|Mult0|auto_generated|add12_result[9]~22\) # 
-- (\uMAC|Mult0|auto_generated|add12_result[5]~37\ & \uMAC|Mult0|auto_generated|add12_result[9]~22COUT1_73\))))
-- \uMAC|Mult0|auto_generated|add12_result[10]~17\ = CARRY((\uMAC|Mult0|auto_generated|le4a\(6) & ((!\uMAC|Mult0|auto_generated|add12_result[9]~22COUT1_73\) # (!\uMAC|Mult0|auto_generated|le7a\(8)))) # (!\uMAC|Mult0|auto_generated|le4a\(6) & 
-- (!\uMAC|Mult0|auto_generated|le7a\(8) & !\uMAC|Mult0|auto_generated|add12_result[9]~22COUT1_73\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|Mult0|auto_generated|le4a\(6),
	datab => \uMAC|Mult0|auto_generated|le7a\(8),
	cin => \uMAC|Mult0|auto_generated|add12_result[5]~37\,
	cin0 => \uMAC|Mult0|auto_generated|add12_result[9]~22\,
	cin1 => \uMAC|Mult0|auto_generated|add12_result[9]~22COUT1_73\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|add12_result[10]~15_combout\,
	cout => \uMAC|Mult0|auto_generated|add12_result[10]~17\);

-- Location: LC_X7_Y7_N7
\uMAC|Mult0|auto_generated|le6a[8]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|le6a\(8) = (\uMAC|Mult0|auto_generated|cs1a\(1) & (\uMAC|coeff\(7))) # (!\uMAC|Mult0|auto_generated|cs1a\(1) & (!\uMAC|coeff\(7) & ((\uMAC|Mult0|auto_generated|cs3a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9988",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|Mult0|auto_generated|cs1a\(1),
	datab => \uMAC|coeff\(7),
	datad => \uMAC|Mult0|auto_generated|cs3a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|le6a\(8));

-- Location: LC_X10_Y7_N9
\uMAC|Mult0|auto_generated|add20_result[4]~0\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|add20_result[4]~0_combout\ = (((!\uMAC|Mult0|auto_generated|add20_result[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \uMAC|Mult0|auto_generated|add20_result[3]~7\,
	cin1 => \uMAC|Mult0|auto_generated|add20_result[3]~7COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|add20_result[4]~0_combout\);

-- Location: LC_X7_Y7_N1
\uMAC|Mult0|auto_generated|le6a[7]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|le6a\(7) = (\uMAC|Mult0|auto_generated|cs3a\(1) & ((\uMAC|Mult0|auto_generated|cs1a\(1) $ (!\uMAC|coeff\(7))))) # (!\uMAC|Mult0|auto_generated|cs3a\(1) & (!\uMAC|coeff\(6) & (\uMAC|Mult0|auto_generated|cs1a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b01a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|Mult0|auto_generated|cs3a\(1),
	datab => \uMAC|coeff\(6),
	datac => \uMAC|Mult0|auto_generated|cs1a\(1),
	datad => \uMAC|coeff\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|le6a\(7));

-- Location: LC_X6_Y7_N5
\uMAC|Mult0|auto_generated|add16_result[5]~15\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|add16_result[5]~15_combout\ = \uMAC|Mult0|auto_generated|le6a\(7) $ (\uMAC|Mult0|auto_generated|le7a\(5) $ ((\uMAC|Mult0|auto_generated|add16_result[4]~22\)))
-- \uMAC|Mult0|auto_generated|add16_result[5]~17\ = CARRY((\uMAC|Mult0|auto_generated|le6a\(7) & (!\uMAC|Mult0|auto_generated|le7a\(5) & !\uMAC|Mult0|auto_generated|add16_result[4]~22\)) # (!\uMAC|Mult0|auto_generated|le6a\(7) & 
-- ((!\uMAC|Mult0|auto_generated|add16_result[4]~22\) # (!\uMAC|Mult0|auto_generated|le7a\(5)))))
-- \uMAC|Mult0|auto_generated|add16_result[5]~17COUT1_50\ = CARRY((\uMAC|Mult0|auto_generated|le6a\(7) & (!\uMAC|Mult0|auto_generated|le7a\(5) & !\uMAC|Mult0|auto_generated|add16_result[4]~22\)) # (!\uMAC|Mult0|auto_generated|le6a\(7) & 
-- ((!\uMAC|Mult0|auto_generated|add16_result[4]~22\) # (!\uMAC|Mult0|auto_generated|le7a\(5)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|Mult0|auto_generated|le6a\(7),
	datab => \uMAC|Mult0|auto_generated|le7a\(5),
	cin => \uMAC|Mult0|auto_generated|add16_result[4]~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|add16_result[5]~15_combout\,
	cout0 => \uMAC|Mult0|auto_generated|add16_result[5]~17\,
	cout1 => \uMAC|Mult0|auto_generated|add16_result[5]~17COUT1_50\);

-- Location: LC_X6_Y7_N6
\uMAC|Mult0|auto_generated|add16_result[6]~0\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|add16_result[6]~0_combout\ = \uMAC|Mult0|auto_generated|le6a\(8) $ (\uMAC|Mult0|auto_generated|add20_result[4]~0_combout\ $ (((!\uMAC|Mult0|auto_generated|add16_result[4]~22\ & \uMAC|Mult0|auto_generated|add16_result[5]~17\) # 
-- (\uMAC|Mult0|auto_generated|add16_result[4]~22\ & \uMAC|Mult0|auto_generated|add16_result[5]~17COUT1_50\))))
-- \uMAC|Mult0|auto_generated|add16_result[6]~2\ = CARRY((\uMAC|Mult0|auto_generated|le6a\(8) & (\uMAC|Mult0|auto_generated|add20_result[4]~0_combout\ & !\uMAC|Mult0|auto_generated|add16_result[5]~17\)) # (!\uMAC|Mult0|auto_generated|le6a\(8) & 
-- ((\uMAC|Mult0|auto_generated|add20_result[4]~0_combout\) # (!\uMAC|Mult0|auto_generated|add16_result[5]~17\))))
-- \uMAC|Mult0|auto_generated|add16_result[6]~2COUT1_51\ = CARRY((\uMAC|Mult0|auto_generated|le6a\(8) & (\uMAC|Mult0|auto_generated|add20_result[4]~0_combout\ & !\uMAC|Mult0|auto_generated|add16_result[5]~17COUT1_50\)) # (!\uMAC|Mult0|auto_generated|le6a\(8) 
-- & ((\uMAC|Mult0|auto_generated|add20_result[4]~0_combout\) # (!\uMAC|Mult0|auto_generated|add16_result[5]~17COUT1_50\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|Mult0|auto_generated|le6a\(8),
	datab => \uMAC|Mult0|auto_generated|add20_result[4]~0_combout\,
	cin => \uMAC|Mult0|auto_generated|add16_result[4]~22\,
	cin0 => \uMAC|Mult0|auto_generated|add16_result[5]~17\,
	cin1 => \uMAC|Mult0|auto_generated|add16_result[5]~17COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|add16_result[6]~0_combout\,
	cout0 => \uMAC|Mult0|auto_generated|add16_result[6]~2\,
	cout1 => \uMAC|Mult0|auto_generated|add16_result[6]~2COUT1_51\);

-- Location: LC_X6_Y7_N7
\uMAC|Mult0|auto_generated|add16_result[7]~10\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|add16_result[7]~10_combout\ = (((!(!\uMAC|Mult0|auto_generated|add16_result[4]~22\ & \uMAC|Mult0|auto_generated|add16_result[6]~2\) # (\uMAC|Mult0|auto_generated|add16_result[4]~22\ & 
-- \uMAC|Mult0|auto_generated|add16_result[6]~2COUT1_51\))))
-- \uMAC|Mult0|auto_generated|add16_result[7]~12\ = CARRY(((!\uMAC|Mult0|auto_generated|add16_result[6]~2\)))
-- \uMAC|Mult0|auto_generated|add16_result[7]~12COUT1_52\ = CARRY(((!\uMAC|Mult0|auto_generated|add16_result[6]~2COUT1_51\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \uMAC|Mult0|auto_generated|add16_result[4]~22\,
	cin0 => \uMAC|Mult0|auto_generated|add16_result[6]~2\,
	cin1 => \uMAC|Mult0|auto_generated|add16_result[6]~2COUT1_51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|add16_result[7]~10_combout\,
	cout0 => \uMAC|Mult0|auto_generated|add16_result[7]~12\,
	cout1 => \uMAC|Mult0|auto_generated|add16_result[7]~12COUT1_52\);

-- Location: LC_X6_Y7_N8
\uMAC|Mult0|auto_generated|add16_result[8]~5\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|add16_result[8]~5_combout\ = (((!(!\uMAC|Mult0|auto_generated|add16_result[4]~22\ & \uMAC|Mult0|auto_generated|add16_result[7]~12\) # (\uMAC|Mult0|auto_generated|add16_result[4]~22\ & 
-- \uMAC|Mult0|auto_generated|add16_result[7]~12COUT1_52\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \uMAC|Mult0|auto_generated|add16_result[4]~22\,
	cin0 => \uMAC|Mult0|auto_generated|add16_result[7]~12\,
	cin1 => \uMAC|Mult0|auto_generated|add16_result[7]~12COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|add16_result[8]~5_combout\);

-- Location: LC_X5_Y7_N1
\uMAC|produit[9]\ : maxv_lcell
-- Equation(s):
-- \uMAC|produit\(9) = DFFEAS(\uMAC|Mult0|auto_generated|add12_result[7]~25_combout\ $ (\uMAC|Mult0|auto_generated|add16_result[5]~15_combout\ $ (((!\uMAC|Mult0|auto_generated|add8_result[7]~42\ & \uMAC|Mult0|auto_generated|add8_result[8]~37\) # 
-- (\uMAC|Mult0|auto_generated|add8_result[7]~42\ & \uMAC|Mult0|auto_generated|add8_result[8]~37COUT1_87\)))), GLOBAL(\uMAE|H_MAC~combout\), VCC, , !\uMAE|H_FIFO~combout\, , , , )
-- \uMAC|Mult0|auto_generated|add8_result[9]~32\ = CARRY((\uMAC|Mult0|auto_generated|add12_result[7]~25_combout\ & (!\uMAC|Mult0|auto_generated|add16_result[5]~15_combout\ & !\uMAC|Mult0|auto_generated|add8_result[8]~37\)) # 
-- (!\uMAC|Mult0|auto_generated|add12_result[7]~25_combout\ & ((!\uMAC|Mult0|auto_generated|add8_result[8]~37\) # (!\uMAC|Mult0|auto_generated|add16_result[5]~15_combout\))))
-- \uMAC|Mult0|auto_generated|add8_result[9]~32COUT1_88\ = CARRY((\uMAC|Mult0|auto_generated|add12_result[7]~25_combout\ & (!\uMAC|Mult0|auto_generated|add16_result[5]~15_combout\ & !\uMAC|Mult0|auto_generated|add8_result[8]~37COUT1_87\)) # 
-- (!\uMAC|Mult0|auto_generated|add12_result[7]~25_combout\ & ((!\uMAC|Mult0|auto_generated|add8_result[8]~37COUT1_87\) # (!\uMAC|Mult0|auto_generated|add16_result[5]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	dataa => \uMAC|Mult0|auto_generated|add12_result[7]~25_combout\,
	datab => \uMAC|Mult0|auto_generated|add16_result[5]~15_combout\,
	aclr => GND,
	ena => \uMAE|ALT_INV_H_FIFO~combout\,
	cin => \uMAC|Mult0|auto_generated|add8_result[7]~42\,
	cin0 => \uMAC|Mult0|auto_generated|add8_result[8]~37\,
	cin1 => \uMAC|Mult0|auto_generated|add8_result[8]~37COUT1_87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAC|produit\(9),
	cout0 => \uMAC|Mult0|auto_generated|add8_result[9]~32\,
	cout1 => \uMAC|Mult0|auto_generated|add8_result[9]~32COUT1_88\);

-- Location: LC_X5_Y7_N2
\uMAC|produit[10]\ : maxv_lcell
-- Equation(s):
-- \uMAC|produit\(10) = DFFEAS(\uMAC|Mult0|auto_generated|add16_result[6]~0_combout\ $ (\uMAC|Mult0|auto_generated|add12_result[8]~10_combout\ $ ((!(!\uMAC|Mult0|auto_generated|add8_result[7]~42\ & \uMAC|Mult0|auto_generated|add8_result[9]~32\) # 
-- (\uMAC|Mult0|auto_generated|add8_result[7]~42\ & \uMAC|Mult0|auto_generated|add8_result[9]~32COUT1_88\)))), GLOBAL(\uMAE|H_MAC~combout\), VCC, , !\uMAE|H_FIFO~combout\, , , , )
-- \uMAC|Mult0|auto_generated|add8_result[10]~17\ = CARRY((\uMAC|Mult0|auto_generated|add16_result[6]~0_combout\ & ((\uMAC|Mult0|auto_generated|add12_result[8]~10_combout\) # (!\uMAC|Mult0|auto_generated|add8_result[9]~32\))) # 
-- (!\uMAC|Mult0|auto_generated|add16_result[6]~0_combout\ & (\uMAC|Mult0|auto_generated|add12_result[8]~10_combout\ & !\uMAC|Mult0|auto_generated|add8_result[9]~32\)))
-- \uMAC|Mult0|auto_generated|add8_result[10]~17COUT1_89\ = CARRY((\uMAC|Mult0|auto_generated|add16_result[6]~0_combout\ & ((\uMAC|Mult0|auto_generated|add12_result[8]~10_combout\) # (!\uMAC|Mult0|auto_generated|add8_result[9]~32COUT1_88\))) # 
-- (!\uMAC|Mult0|auto_generated|add16_result[6]~0_combout\ & (\uMAC|Mult0|auto_generated|add12_result[8]~10_combout\ & !\uMAC|Mult0|auto_generated|add8_result[9]~32COUT1_88\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	dataa => \uMAC|Mult0|auto_generated|add16_result[6]~0_combout\,
	datab => \uMAC|Mult0|auto_generated|add12_result[8]~10_combout\,
	aclr => GND,
	ena => \uMAE|ALT_INV_H_FIFO~combout\,
	cin => \uMAC|Mult0|auto_generated|add8_result[7]~42\,
	cin0 => \uMAC|Mult0|auto_generated|add8_result[9]~32\,
	cin1 => \uMAC|Mult0|auto_generated|add8_result[9]~32COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAC|produit\(10),
	cout0 => \uMAC|Mult0|auto_generated|add8_result[10]~17\,
	cout1 => \uMAC|Mult0|auto_generated|add8_result[10]~17COUT1_89\);

-- Location: LC_X5_Y7_N3
\uMAC|produit[11]\ : maxv_lcell
-- Equation(s):
-- \uMAC|produit\(11) = DFFEAS(\uMAC|Mult0|auto_generated|add16_result[7]~10_combout\ $ (\uMAC|Mult0|auto_generated|add12_result[9]~20_combout\ $ (((!\uMAC|Mult0|auto_generated|add8_result[7]~42\ & \uMAC|Mult0|auto_generated|add8_result[10]~17\) # 
-- (\uMAC|Mult0|auto_generated|add8_result[7]~42\ & \uMAC|Mult0|auto_generated|add8_result[10]~17COUT1_89\)))), GLOBAL(\uMAE|H_MAC~combout\), VCC, , !\uMAE|H_FIFO~combout\, , , , )
-- \uMAC|Mult0|auto_generated|add8_result[11]~27\ = CARRY((\uMAC|Mult0|auto_generated|add16_result[7]~10_combout\ & (!\uMAC|Mult0|auto_generated|add12_result[9]~20_combout\ & !\uMAC|Mult0|auto_generated|add8_result[10]~17\)) # 
-- (!\uMAC|Mult0|auto_generated|add16_result[7]~10_combout\ & ((!\uMAC|Mult0|auto_generated|add8_result[10]~17\) # (!\uMAC|Mult0|auto_generated|add12_result[9]~20_combout\))))
-- \uMAC|Mult0|auto_generated|add8_result[11]~27COUT1_90\ = CARRY((\uMAC|Mult0|auto_generated|add16_result[7]~10_combout\ & (!\uMAC|Mult0|auto_generated|add12_result[9]~20_combout\ & !\uMAC|Mult0|auto_generated|add8_result[10]~17COUT1_89\)) # 
-- (!\uMAC|Mult0|auto_generated|add16_result[7]~10_combout\ & ((!\uMAC|Mult0|auto_generated|add8_result[10]~17COUT1_89\) # (!\uMAC|Mult0|auto_generated|add12_result[9]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	dataa => \uMAC|Mult0|auto_generated|add16_result[7]~10_combout\,
	datab => \uMAC|Mult0|auto_generated|add12_result[9]~20_combout\,
	aclr => GND,
	ena => \uMAE|ALT_INV_H_FIFO~combout\,
	cin => \uMAC|Mult0|auto_generated|add8_result[7]~42\,
	cin0 => \uMAC|Mult0|auto_generated|add8_result[10]~17\,
	cin1 => \uMAC|Mult0|auto_generated|add8_result[10]~17COUT1_89\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAC|produit\(11),
	cout0 => \uMAC|Mult0|auto_generated|add8_result[11]~27\,
	cout1 => \uMAC|Mult0|auto_generated|add8_result[11]~27COUT1_90\);

-- Location: LC_X5_Y7_N4
\uMAC|produit[12]\ : maxv_lcell
-- Equation(s):
-- \uMAC|produit\(12) = DFFEAS(\uMAC|Mult0|auto_generated|add12_result[10]~15_combout\ $ (\uMAC|Mult0|auto_generated|add16_result[8]~5_combout\ $ ((!(!\uMAC|Mult0|auto_generated|add8_result[7]~42\ & \uMAC|Mult0|auto_generated|add8_result[11]~27\) # 
-- (\uMAC|Mult0|auto_generated|add8_result[7]~42\ & \uMAC|Mult0|auto_generated|add8_result[11]~27COUT1_90\)))), GLOBAL(\uMAE|H_MAC~combout\), VCC, , !\uMAE|H_FIFO~combout\, , , , )
-- \uMAC|Mult0|auto_generated|add8_result[12]~22\ = CARRY((\uMAC|Mult0|auto_generated|add12_result[10]~15_combout\ & ((\uMAC|Mult0|auto_generated|add16_result[8]~5_combout\) # (!\uMAC|Mult0|auto_generated|add8_result[11]~27COUT1_90\))) # 
-- (!\uMAC|Mult0|auto_generated|add12_result[10]~15_combout\ & (\uMAC|Mult0|auto_generated|add16_result[8]~5_combout\ & !\uMAC|Mult0|auto_generated|add8_result[11]~27COUT1_90\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	dataa => \uMAC|Mult0|auto_generated|add12_result[10]~15_combout\,
	datab => \uMAC|Mult0|auto_generated|add16_result[8]~5_combout\,
	aclr => GND,
	ena => \uMAE|ALT_INV_H_FIFO~combout\,
	cin => \uMAC|Mult0|auto_generated|add8_result[7]~42\,
	cin0 => \uMAC|Mult0|auto_generated|add8_result[11]~27\,
	cin1 => \uMAC|Mult0|auto_generated|add8_result[11]~27COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAC|produit\(12),
	cout => \uMAC|Mult0|auto_generated|add8_result[12]~22\);

-- Location: LC_X7_Y7_N3
\uMAC|Mult0|auto_generated|le2a[8]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|le2a\(8) = (\uMAC|coeff\(7) & (!\uMAC|valeur\(7) & (\uMAC|valeur\(6) $ (!\uMAC|Mult0|auto_generated|cs1a[2]~5\)))) # (!\uMAC|coeff\(7) & (((\uMAC|valeur\(6) & \uMAC|Mult0|auto_generated|cs1a[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|valeur\(7),
	datab => \uMAC|coeff\(7),
	datac => \uMAC|valeur\(6),
	datad => \uMAC|Mult0|auto_generated|cs1a[2]~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|le2a\(8));

-- Location: LC_X7_Y7_N2
\uMAC|Mult0|auto_generated|le4a[8]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|le4a\(8) = (\uMAC|Mult0|auto_generated|le2a\(8)) # ((\uMAC|Mult0|auto_generated|cs3a[3]~0_combout\ & (\uMAC|coeff\(7) $ (\uMAC|valeur\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|Mult0|auto_generated|cs3a[3]~0_combout\,
	datab => \uMAC|coeff\(7),
	datac => \uMAC|valeur\(7),
	datad => \uMAC|Mult0|auto_generated|le2a\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|le4a\(8));

-- Location: LC_X9_Y7_N5
\uMAC|Mult0|auto_generated|add12_result[11]~5\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|add12_result[11]~5_combout\ = (((!\uMAC|Mult0|auto_generated|add12_result[10]~17\)))
-- \uMAC|Mult0|auto_generated|add12_result[11]~7\ = CARRY(((!\uMAC|Mult0|auto_generated|add12_result[10]~17\)))
-- \uMAC|Mult0|auto_generated|add12_result[11]~7COUT1_74\ = CARRY(((!\uMAC|Mult0|auto_generated|add12_result[10]~17\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \uMAC|Mult0|auto_generated|add12_result[10]~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|add12_result[11]~5_combout\,
	cout0 => \uMAC|Mult0|auto_generated|add12_result[11]~7\,
	cout1 => \uMAC|Mult0|auto_generated|add12_result[11]~7COUT1_74\);

-- Location: LC_X9_Y7_N6
\uMAC|Mult0|auto_generated|add12_result[12]~0\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|add12_result[12]~0_combout\ = (((!(!\uMAC|Mult0|auto_generated|add12_result[10]~17\ & \uMAC|Mult0|auto_generated|add12_result[11]~7\) # (\uMAC|Mult0|auto_generated|add12_result[10]~17\ & 
-- \uMAC|Mult0|auto_generated|add12_result[11]~7COUT1_74\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \uMAC|Mult0|auto_generated|add12_result[10]~17\,
	cin0 => \uMAC|Mult0|auto_generated|add12_result[11]~7\,
	cin1 => \uMAC|Mult0|auto_generated|add12_result[11]~7COUT1_74\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|add12_result[12]~0_combout\);

-- Location: LC_X7_Y7_N8
\uMAC|Mult0|auto_generated|le2a[7]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|le2a\(7) = (\uMAC|coeff\(6) & (\uMAC|Mult0|auto_generated|cs1a[2]~5\ & (\uMAC|valeur\(6)))) # (!\uMAC|coeff\(6) & (!\uMAC|valeur\(7) & (\uMAC|Mult0|auto_generated|cs1a[2]~5\ $ (!\uMAC|valeur\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8809",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|Mult0|auto_generated|cs1a[2]~5\,
	datab => \uMAC|valeur\(6),
	datac => \uMAC|valeur\(7),
	datad => \uMAC|coeff\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|le2a\(7));

-- Location: LC_X7_Y7_N5
\uMAC|Mult0|auto_generated|le4a[7]\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|le4a\(7) = (\uMAC|Mult0|auto_generated|le2a\(7)) # ((\uMAC|Mult0|auto_generated|cs3a[3]~0_combout\ & (\uMAC|coeff\(7) $ (\uMAC|valeur\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|Mult0|auto_generated|cs3a[3]~0_combout\,
	datab => \uMAC|coeff\(7),
	datac => \uMAC|valeur\(7),
	datad => \uMAC|Mult0|auto_generated|le2a\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|le4a\(7));

-- Location: LC_X5_Y7_N5
\uMAC|produit[13]\ : maxv_lcell
-- Equation(s):
-- \uMAC|produit\(13) = DFFEAS(\uMAC|Mult0|auto_generated|le4a\(7) $ (\uMAC|Mult0|auto_generated|add12_result[11]~5_combout\ $ ((\uMAC|Mult0|auto_generated|add8_result[12]~22\))), GLOBAL(\uMAE|H_MAC~combout\), VCC, , !\uMAE|H_FIFO~combout\, , , , )
-- \uMAC|Mult0|auto_generated|add8_result[13]~12\ = CARRY((\uMAC|Mult0|auto_generated|le4a\(7) & (!\uMAC|Mult0|auto_generated|add12_result[11]~5_combout\ & !\uMAC|Mult0|auto_generated|add8_result[12]~22\)) # (!\uMAC|Mult0|auto_generated|le4a\(7) & 
-- ((!\uMAC|Mult0|auto_generated|add8_result[12]~22\) # (!\uMAC|Mult0|auto_generated|add12_result[11]~5_combout\))))
-- \uMAC|Mult0|auto_generated|add8_result[13]~12COUT1_91\ = CARRY((\uMAC|Mult0|auto_generated|le4a\(7) & (!\uMAC|Mult0|auto_generated|add12_result[11]~5_combout\ & !\uMAC|Mult0|auto_generated|add8_result[12]~22\)) # (!\uMAC|Mult0|auto_generated|le4a\(7) & 
-- ((!\uMAC|Mult0|auto_generated|add8_result[12]~22\) # (!\uMAC|Mult0|auto_generated|add12_result[11]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	dataa => \uMAC|Mult0|auto_generated|le4a\(7),
	datab => \uMAC|Mult0|auto_generated|add12_result[11]~5_combout\,
	aclr => GND,
	ena => \uMAE|ALT_INV_H_FIFO~combout\,
	cin => \uMAC|Mult0|auto_generated|add8_result[12]~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAC|produit\(13),
	cout0 => \uMAC|Mult0|auto_generated|add8_result[13]~12\,
	cout1 => \uMAC|Mult0|auto_generated|add8_result[13]~12COUT1_91\);

-- Location: LC_X5_Y7_N6
\uMAC|produit[14]\ : maxv_lcell
-- Equation(s):
-- \uMAC|produit\(14) = DFFEAS(\uMAC|Mult0|auto_generated|le4a\(8) $ (\uMAC|Mult0|auto_generated|add12_result[12]~0_combout\ $ (((!\uMAC|Mult0|auto_generated|add8_result[12]~22\ & \uMAC|Mult0|auto_generated|add8_result[13]~12\) # 
-- (\uMAC|Mult0|auto_generated|add8_result[12]~22\ & \uMAC|Mult0|auto_generated|add8_result[13]~12COUT1_91\)))), GLOBAL(\uMAE|H_MAC~combout\), VCC, , !\uMAE|H_FIFO~combout\, , , , )
-- \uMAC|Mult0|auto_generated|add8_result[14]~7\ = CARRY((\uMAC|Mult0|auto_generated|le4a\(8) & (\uMAC|Mult0|auto_generated|add12_result[12]~0_combout\ & !\uMAC|Mult0|auto_generated|add8_result[13]~12\)) # (!\uMAC|Mult0|auto_generated|le4a\(8) & 
-- ((\uMAC|Mult0|auto_generated|add12_result[12]~0_combout\) # (!\uMAC|Mult0|auto_generated|add8_result[13]~12\))))
-- \uMAC|Mult0|auto_generated|add8_result[14]~7COUT1_92\ = CARRY((\uMAC|Mult0|auto_generated|le4a\(8) & (\uMAC|Mult0|auto_generated|add12_result[12]~0_combout\ & !\uMAC|Mult0|auto_generated|add8_result[13]~12COUT1_91\)) # 
-- (!\uMAC|Mult0|auto_generated|le4a\(8) & ((\uMAC|Mult0|auto_generated|add12_result[12]~0_combout\) # (!\uMAC|Mult0|auto_generated|add8_result[13]~12COUT1_91\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	dataa => \uMAC|Mult0|auto_generated|le4a\(8),
	datab => \uMAC|Mult0|auto_generated|add12_result[12]~0_combout\,
	aclr => GND,
	ena => \uMAE|ALT_INV_H_FIFO~combout\,
	cin => \uMAC|Mult0|auto_generated|add8_result[12]~22\,
	cin0 => \uMAC|Mult0|auto_generated|add8_result[13]~12\,
	cin1 => \uMAC|Mult0|auto_generated|add8_result[13]~12COUT1_91\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAC|produit\(14),
	cout0 => \uMAC|Mult0|auto_generated|add8_result[14]~7\,
	cout1 => \uMAC|Mult0|auto_generated|add8_result[14]~7COUT1_92\);

-- Location: LC_X5_Y7_N7
\uMAC|Mult0|auto_generated|add8_result[15]~0\ : maxv_lcell
-- Equation(s):
-- \uMAC|Mult0|auto_generated|add8_result[15]~0_combout\ = (((!(!\uMAC|Mult0|auto_generated|add8_result[12]~22\ & \uMAC|Mult0|auto_generated|add8_result[14]~7\) # (\uMAC|Mult0|auto_generated|add8_result[12]~22\ & 
-- \uMAC|Mult0|auto_generated|add8_result[14]~7COUT1_92\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \uMAC|Mult0|auto_generated|add8_result[12]~22\,
	cin0 => \uMAC|Mult0|auto_generated|add8_result[14]~7\,
	cin1 => \uMAC|Mult0|auto_generated|add8_result[14]~7COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Mult0|auto_generated|add8_result[15]~0_combout\);

-- Location: LC_X5_Y7_N8
\uMAC|produit[15]\ : maxv_lcell
-- Equation(s):
-- \uMAC|produit\(15) = DFFEAS((((!\uMAC|Mult0|auto_generated|add8_result[15]~0_combout\))), GLOBAL(\uMAE|H_MAC~combout\), VCC, , !\uMAE|H_FIFO~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	datad => \uMAC|Mult0|auto_generated|add8_result[15]~0_combout\,
	aclr => GND,
	ena => \uMAE|ALT_INV_H_FIFO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAC|produit\(15));

-- Location: LC_X2_Y7_N3
\uMAC|Add0~72\ : maxv_lcell
-- Equation(s):
-- \uMAC|Add0~72_cout0\ = CARRY((\uMAC|WideOr0~0\ & (!\uMAC|produit\(15))))
-- \uMAC|Add0~72COUT1_76\ = CARRY((\uMAC|WideOr0~0\ & (!\uMAC|produit\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff22",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|WideOr0~0\,
	datab => \uMAC|produit\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Add0~70\,
	cout0 => \uMAC|Add0~72_cout0\,
	cout1 => \uMAC|Add0~72COUT1_76\);

-- Location: LC_X2_Y7_N4
\uMAC|Add0~65\ : maxv_lcell
-- Equation(s):
-- \uMAC|Add0~65_combout\ = (\uMAC|produit\(3) $ ((\uMAC|Add0~72_cout0\)))
-- \uMAC|Add0~67\ = CARRY(((!\uMAC|Add0~72COUT1_76\) # (!\uMAC|produit\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uMAC|produit\(3),
	cin0 => \uMAC|Add0~72_cout0\,
	cin1 => \uMAC|Add0~72COUT1_76\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Add0~65_combout\,
	cout => \uMAC|Add0~67\);

-- Location: LC_X2_Y7_N5
\uMAC|Add0~60\ : maxv_lcell
-- Equation(s):
-- \uMAC|Add0~60_combout\ = (\uMAC|produit\(4) $ ((!\uMAC|Add0~67\)))
-- \uMAC|Add0~62\ = CARRY(((\uMAC|produit\(4) & !\uMAC|Add0~67\)))
-- \uMAC|Add0~62COUT1_77\ = CARRY(((\uMAC|produit\(4) & !\uMAC|Add0~67\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uMAC|produit\(4),
	cin => \uMAC|Add0~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Add0~60_combout\,
	cout0 => \uMAC|Add0~62\,
	cout1 => \uMAC|Add0~62COUT1_77\);

-- Location: LC_X2_Y7_N6
\uMAC|Add0~55\ : maxv_lcell
-- Equation(s):
-- \uMAC|Add0~55_combout\ = (\uMAC|produit\(5) $ (((!\uMAC|Add0~67\ & \uMAC|Add0~62\) # (\uMAC|Add0~67\ & \uMAC|Add0~62COUT1_77\))))
-- \uMAC|Add0~57\ = CARRY(((!\uMAC|Add0~62\) # (!\uMAC|produit\(5))))
-- \uMAC|Add0~57COUT1_78\ = CARRY(((!\uMAC|Add0~62COUT1_77\) # (!\uMAC|produit\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uMAC|produit\(5),
	cin => \uMAC|Add0~67\,
	cin0 => \uMAC|Add0~62\,
	cin1 => \uMAC|Add0~62COUT1_77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Add0~55_combout\,
	cout0 => \uMAC|Add0~57\,
	cout1 => \uMAC|Add0~57COUT1_78\);

-- Location: LC_X2_Y7_N7
\uMAC|Add0~50\ : maxv_lcell
-- Equation(s):
-- \uMAC|Add0~50_combout\ = (\uMAC|produit\(6) $ ((!(!\uMAC|Add0~67\ & \uMAC|Add0~57\) # (\uMAC|Add0~67\ & \uMAC|Add0~57COUT1_78\))))
-- \uMAC|Add0~52\ = CARRY(((\uMAC|produit\(6) & !\uMAC|Add0~57\)))
-- \uMAC|Add0~52COUT1_79\ = CARRY(((\uMAC|produit\(6) & !\uMAC|Add0~57COUT1_78\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uMAC|produit\(6),
	cin => \uMAC|Add0~67\,
	cin0 => \uMAC|Add0~57\,
	cin1 => \uMAC|Add0~57COUT1_78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Add0~50_combout\,
	cout0 => \uMAC|Add0~52\,
	cout1 => \uMAC|Add0~52COUT1_79\);

-- Location: LC_X2_Y7_N8
\uMAC|Add0~45\ : maxv_lcell
-- Equation(s):
-- \uMAC|Add0~45_combout\ = (\uMAC|produit\(7) $ (((!\uMAC|Add0~67\ & \uMAC|Add0~52\) # (\uMAC|Add0~67\ & \uMAC|Add0~52COUT1_79\))))
-- \uMAC|Add0~47\ = CARRY(((!\uMAC|Add0~52\) # (!\uMAC|produit\(7))))
-- \uMAC|Add0~47COUT1_80\ = CARRY(((!\uMAC|Add0~52COUT1_79\) # (!\uMAC|produit\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uMAC|produit\(7),
	cin => \uMAC|Add0~67\,
	cin0 => \uMAC|Add0~52\,
	cin1 => \uMAC|Add0~52COUT1_79\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Add0~45_combout\,
	cout0 => \uMAC|Add0~47\,
	cout1 => \uMAC|Add0~47COUT1_80\);

-- Location: LC_X2_Y7_N9
\uMAC|Add0~40\ : maxv_lcell
-- Equation(s):
-- \uMAC|Add0~40_combout\ = (\uMAC|produit\(8) $ ((!(!\uMAC|Add0~67\ & \uMAC|Add0~47\) # (\uMAC|Add0~67\ & \uMAC|Add0~47COUT1_80\))))
-- \uMAC|Add0~42\ = CARRY(((\uMAC|produit\(8) & !\uMAC|Add0~47COUT1_80\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uMAC|produit\(8),
	cin => \uMAC|Add0~67\,
	cin0 => \uMAC|Add0~47\,
	cin1 => \uMAC|Add0~47COUT1_80\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Add0~40_combout\,
	cout => \uMAC|Add0~42\);

-- Location: LC_X3_Y7_N0
\uMAC|Add0~35\ : maxv_lcell
-- Equation(s):
-- \uMAC|Add0~35_combout\ = (\uMAC|produit\(9) $ ((\uMAC|Add0~42\)))
-- \uMAC|Add0~37\ = CARRY(((!\uMAC|Add0~42\) # (!\uMAC|produit\(9))))
-- \uMAC|Add0~37COUT1_81\ = CARRY(((!\uMAC|Add0~42\) # (!\uMAC|produit\(9))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uMAC|produit\(9),
	cin => \uMAC|Add0~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Add0~35_combout\,
	cout0 => \uMAC|Add0~37\,
	cout1 => \uMAC|Add0~37COUT1_81\);

-- Location: LC_X3_Y7_N1
\uMAC|Add0~15\ : maxv_lcell
-- Equation(s):
-- \uMAC|Add0~15_combout\ = (\uMAC|produit\(10) $ ((!(!\uMAC|Add0~42\ & \uMAC|Add0~37\) # (\uMAC|Add0~42\ & \uMAC|Add0~37COUT1_81\))))
-- \uMAC|Add0~17\ = CARRY(((\uMAC|produit\(10) & !\uMAC|Add0~37\)))
-- \uMAC|Add0~17COUT1_82\ = CARRY(((\uMAC|produit\(10) & !\uMAC|Add0~37COUT1_81\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uMAC|produit\(10),
	cin => \uMAC|Add0~42\,
	cin0 => \uMAC|Add0~37\,
	cin1 => \uMAC|Add0~37COUT1_81\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Add0~15_combout\,
	cout0 => \uMAC|Add0~17\,
	cout1 => \uMAC|Add0~17COUT1_82\);

-- Location: LC_X3_Y7_N2
\uMAC|Add0~25\ : maxv_lcell
-- Equation(s):
-- \uMAC|Add0~25_combout\ = (\uMAC|produit\(11) $ (((!\uMAC|Add0~42\ & \uMAC|Add0~17\) # (\uMAC|Add0~42\ & \uMAC|Add0~17COUT1_82\))))
-- \uMAC|Add0~27\ = CARRY(((!\uMAC|Add0~17\) # (!\uMAC|produit\(11))))
-- \uMAC|Add0~27COUT1_83\ = CARRY(((!\uMAC|Add0~17COUT1_82\) # (!\uMAC|produit\(11))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uMAC|produit\(11),
	cin => \uMAC|Add0~42\,
	cin0 => \uMAC|Add0~17\,
	cin1 => \uMAC|Add0~17COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Add0~25_combout\,
	cout0 => \uMAC|Add0~27\,
	cout1 => \uMAC|Add0~27COUT1_83\);

-- Location: LC_X3_Y7_N3
\uMAC|Add0~30\ : maxv_lcell
-- Equation(s):
-- \uMAC|Add0~30_combout\ = (\uMAC|produit\(12) $ ((!(!\uMAC|Add0~42\ & \uMAC|Add0~27\) # (\uMAC|Add0~42\ & \uMAC|Add0~27COUT1_83\))))
-- \uMAC|Add0~32\ = CARRY(((\uMAC|produit\(12) & !\uMAC|Add0~27\)))
-- \uMAC|Add0~32COUT1_84\ = CARRY(((\uMAC|produit\(12) & !\uMAC|Add0~27COUT1_83\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uMAC|produit\(12),
	cin => \uMAC|Add0~42\,
	cin0 => \uMAC|Add0~27\,
	cin1 => \uMAC|Add0~27COUT1_83\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Add0~30_combout\,
	cout0 => \uMAC|Add0~32\,
	cout1 => \uMAC|Add0~32COUT1_84\);

-- Location: LC_X3_Y7_N4
\uMAC|Add0~20\ : maxv_lcell
-- Equation(s):
-- \uMAC|Add0~20_combout\ = (\uMAC|produit\(13) $ (((!\uMAC|Add0~42\ & \uMAC|Add0~32\) # (\uMAC|Add0~42\ & \uMAC|Add0~32COUT1_84\))))
-- \uMAC|Add0~22\ = CARRY(((!\uMAC|Add0~32COUT1_84\) # (!\uMAC|produit\(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uMAC|produit\(13),
	cin => \uMAC|Add0~42\,
	cin0 => \uMAC|Add0~32\,
	cin1 => \uMAC|Add0~32COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Add0~20_combout\,
	cout => \uMAC|Add0~22\);

-- Location: LC_X3_Y7_N5
\uMAC|Add0~10\ : maxv_lcell
-- Equation(s):
-- \uMAC|Add0~10_combout\ = (\uMAC|produit\(14) $ ((!\uMAC|Add0~22\)))
-- \uMAC|Add0~12\ = CARRY(((\uMAC|produit\(14) & !\uMAC|Add0~22\)))
-- \uMAC|Add0~12COUT1_85\ = CARRY(((\uMAC|produit\(14) & !\uMAC|Add0~22\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uMAC|produit\(14),
	cin => \uMAC|Add0~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Add0~10_combout\,
	cout0 => \uMAC|Add0~12\,
	cout1 => \uMAC|Add0~12COUT1_85\);

-- Location: LC_X3_Y7_N6
\uMAC|Add0~5\ : maxv_lcell
-- Equation(s):
-- \uMAC|Add0~5_combout\ = (\uMAC|produit\(15) $ ((!(!\uMAC|Add0~22\ & \uMAC|Add0~12\) # (\uMAC|Add0~22\ & \uMAC|Add0~12COUT1_85\))))
-- \uMAC|Add0~7\ = CARRY(((\uMAC|produit\(15)) # (!\uMAC|Add0~12\)))
-- \uMAC|Add0~7COUT1_86\ = CARRY(((\uMAC|produit\(15)) # (!\uMAC|Add0~12COUT1_85\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c3cf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uMAC|produit\(15),
	cin => \uMAC|Add0~22\,
	cin0 => \uMAC|Add0~12\,
	cin1 => \uMAC|Add0~12COUT1_85\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Add0~5_combout\,
	cout0 => \uMAC|Add0~7\,
	cout1 => \uMAC|Add0~7COUT1_86\);

-- Location: LC_X3_Y7_N7
\uMAC|Add0~0\ : maxv_lcell
-- Equation(s):
-- \uMAC|Add0~0_combout\ = (((!\uMAC|Add0~22\ & \uMAC|Add0~7\) # (\uMAC|Add0~22\ & \uMAC|Add0~7COUT1_86\) $ (\uMAC|produit\(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \uMAC|produit\(15),
	cin => \uMAC|Add0~22\,
	cin0 => \uMAC|Add0~7\,
	cin1 => \uMAC|Add0~7COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Add0~0_combout\);

-- Location: LC_X2_Y5_N5
\uMAC|Add1~60\ : maxv_lcell
-- Equation(s):
-- \uMAC|Add1~60_combout\ = \uMAC|tamp\(3) $ (\uMAC|Add0~50_combout\ $ ((\uMAC|Add1~67\)))
-- \uMAC|Add1~62\ = CARRY((\uMAC|tamp\(3) & (!\uMAC|Add0~50_combout\ & !\uMAC|Add1~67\)) # (!\uMAC|tamp\(3) & ((!\uMAC|Add1~67\) # (!\uMAC|Add0~50_combout\))))
-- \uMAC|Add1~62COUT1_83\ = CARRY((\uMAC|tamp\(3) & (!\uMAC|Add0~50_combout\ & !\uMAC|Add1~67\)) # (!\uMAC|tamp\(3) & ((!\uMAC|Add1~67\) # (!\uMAC|Add0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|tamp\(3),
	datab => \uMAC|Add0~50_combout\,
	cin => \uMAC|Add1~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Add1~60_combout\,
	cout0 => \uMAC|Add1~62\,
	cout1 => \uMAC|Add1~62COUT1_83\);

-- Location: LC_X1_Y6_N6
\uMAC|tamp[3]\ : maxv_lcell
-- Equation(s):
-- \uMAC|tamp\(3) = DFFEAS((((\uMAC|Add1~60_combout\))), GLOBAL(\uMAE|H_MAC~combout\), !GLOBAL(\uMAE|H_FIFO~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	datad => \uMAC|Add1~60_combout\,
	aclr => \uMAE|H_FIFO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAC|tamp\(3));

-- Location: LC_X2_Y5_N6
\uMAC|Add1~55\ : maxv_lcell
-- Equation(s):
-- \uMAC|Add1~55_combout\ = \uMAC|tamp\(4) $ (\uMAC|Add0~45_combout\ $ ((!(!\uMAC|Add1~67\ & \uMAC|Add1~62\) # (\uMAC|Add1~67\ & \uMAC|Add1~62COUT1_83\))))
-- \uMAC|Add1~57\ = CARRY((\uMAC|tamp\(4) & ((\uMAC|Add0~45_combout\) # (!\uMAC|Add1~62\))) # (!\uMAC|tamp\(4) & (\uMAC|Add0~45_combout\ & !\uMAC|Add1~62\)))
-- \uMAC|Add1~57COUT1_84\ = CARRY((\uMAC|tamp\(4) & ((\uMAC|Add0~45_combout\) # (!\uMAC|Add1~62COUT1_83\))) # (!\uMAC|tamp\(4) & (\uMAC|Add0~45_combout\ & !\uMAC|Add1~62COUT1_83\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|tamp\(4),
	datab => \uMAC|Add0~45_combout\,
	cin => \uMAC|Add1~67\,
	cin0 => \uMAC|Add1~62\,
	cin1 => \uMAC|Add1~62COUT1_83\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Add1~55_combout\,
	cout0 => \uMAC|Add1~57\,
	cout1 => \uMAC|Add1~57COUT1_84\);

-- Location: LC_X1_Y6_N9
\uMAC|tamp[4]\ : maxv_lcell
-- Equation(s):
-- \uMAC|tamp\(4) = DFFEAS((((\uMAC|Add1~55_combout\))), GLOBAL(\uMAE|H_MAC~combout\), !GLOBAL(\uMAE|H_FIFO~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	datad => \uMAC|Add1~55_combout\,
	aclr => \uMAE|H_FIFO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAC|tamp\(4));

-- Location: LC_X2_Y5_N7
\uMAC|Add1~50\ : maxv_lcell
-- Equation(s):
-- \uMAC|Add1~50_combout\ = \uMAC|Add0~40_combout\ $ (\uMAC|tamp\(5) $ (((!\uMAC|Add1~67\ & \uMAC|Add1~57\) # (\uMAC|Add1~67\ & \uMAC|Add1~57COUT1_84\))))
-- \uMAC|Add1~52\ = CARRY((\uMAC|Add0~40_combout\ & (!\uMAC|tamp\(5) & !\uMAC|Add1~57\)) # (!\uMAC|Add0~40_combout\ & ((!\uMAC|Add1~57\) # (!\uMAC|tamp\(5)))))
-- \uMAC|Add1~52COUT1_85\ = CARRY((\uMAC|Add0~40_combout\ & (!\uMAC|tamp\(5) & !\uMAC|Add1~57COUT1_84\)) # (!\uMAC|Add0~40_combout\ & ((!\uMAC|Add1~57COUT1_84\) # (!\uMAC|tamp\(5)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|Add0~40_combout\,
	datab => \uMAC|tamp\(5),
	cin => \uMAC|Add1~67\,
	cin0 => \uMAC|Add1~57\,
	cin1 => \uMAC|Add1~57COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Add1~50_combout\,
	cout0 => \uMAC|Add1~52\,
	cout1 => \uMAC|Add1~52COUT1_85\);

-- Location: LC_X2_Y5_N8
\uMAC|Add1~45\ : maxv_lcell
-- Equation(s):
-- \uMAC|Add1~45_combout\ = \uMAC|Add0~35_combout\ $ (\uMAC|tamp\(6) $ ((!(!\uMAC|Add1~67\ & \uMAC|Add1~52\) # (\uMAC|Add1~67\ & \uMAC|Add1~52COUT1_85\))))
-- \uMAC|Add1~47\ = CARRY((\uMAC|Add0~35_combout\ & ((\uMAC|tamp\(6)) # (!\uMAC|Add1~52\))) # (!\uMAC|Add0~35_combout\ & (\uMAC|tamp\(6) & !\uMAC|Add1~52\)))
-- \uMAC|Add1~47COUT1_86\ = CARRY((\uMAC|Add0~35_combout\ & ((\uMAC|tamp\(6)) # (!\uMAC|Add1~52COUT1_85\))) # (!\uMAC|Add0~35_combout\ & (\uMAC|tamp\(6) & !\uMAC|Add1~52COUT1_85\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|Add0~35_combout\,
	datab => \uMAC|tamp\(6),
	cin => \uMAC|Add1~67\,
	cin0 => \uMAC|Add1~52\,
	cin1 => \uMAC|Add1~52COUT1_85\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Add1~45_combout\,
	cout0 => \uMAC|Add1~47\,
	cout1 => \uMAC|Add1~47COUT1_86\);

-- Location: LC_X1_Y6_N5
\uMAC|tamp[6]\ : maxv_lcell
-- Equation(s):
-- \uMAC|tamp\(6) = DFFEAS((((\uMAC|Add1~45_combout\))), GLOBAL(\uMAE|H_MAC~combout\), !GLOBAL(\uMAE|H_FIFO~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	datad => \uMAC|Add1~45_combout\,
	aclr => \uMAE|H_FIFO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAC|tamp\(6));

-- Location: LC_X2_Y5_N9
\uMAC|Add1~15\ : maxv_lcell
-- Equation(s):
-- \uMAC|Add1~15_combout\ = \uMAC|Add0~15_combout\ $ (\uMAC|tamp\(7) $ (((!\uMAC|Add1~67\ & \uMAC|Add1~47\) # (\uMAC|Add1~67\ & \uMAC|Add1~47COUT1_86\))))
-- \uMAC|Add1~17\ = CARRY((\uMAC|Add0~15_combout\ & (!\uMAC|tamp\(7) & !\uMAC|Add1~47COUT1_86\)) # (!\uMAC|Add0~15_combout\ & ((!\uMAC|Add1~47COUT1_86\) # (!\uMAC|tamp\(7)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|Add0~15_combout\,
	datab => \uMAC|tamp\(7),
	cin => \uMAC|Add1~67\,
	cin0 => \uMAC|Add1~47\,
	cin1 => \uMAC|Add1~47COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Add1~15_combout\,
	cout => \uMAC|Add1~17\);

-- Location: LC_X1_Y6_N0
\uMAC|tamp[7]\ : maxv_lcell
-- Equation(s):
-- \uMAC|tamp\(7) = DFFEAS(GND, GLOBAL(\uMAE|H_MAC~combout\), !GLOBAL(\uMAE|H_FIFO~combout\), , , \uMAC|Add1~15_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	datac => \uMAC|Add1~15_combout\,
	aclr => \uMAE|H_FIFO~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAC|tamp\(7));

-- Location: LC_X3_Y5_N0
\uMAC|Add1~25\ : maxv_lcell
-- Equation(s):
-- \uMAC|Add1~25_combout\ = \uMAC|Add0~25_combout\ $ (\uMAC|tamp\(8) $ ((!\uMAC|Add1~17\)))
-- \uMAC|Add1~27\ = CARRY((\uMAC|Add0~25_combout\ & ((\uMAC|tamp\(8)) # (!\uMAC|Add1~17\))) # (!\uMAC|Add0~25_combout\ & (\uMAC|tamp\(8) & !\uMAC|Add1~17\)))
-- \uMAC|Add1~27COUT1_87\ = CARRY((\uMAC|Add0~25_combout\ & ((\uMAC|tamp\(8)) # (!\uMAC|Add1~17\))) # (!\uMAC|Add0~25_combout\ & (\uMAC|tamp\(8) & !\uMAC|Add1~17\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|Add0~25_combout\,
	datab => \uMAC|tamp\(8),
	cin => \uMAC|Add1~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Add1~25_combout\,
	cout0 => \uMAC|Add1~27\,
	cout1 => \uMAC|Add1~27COUT1_87\);

-- Location: LC_X1_Y6_N4
\uMAC|tamp[8]\ : maxv_lcell
-- Equation(s):
-- \uMAC|tamp\(8) = DFFEAS(GND, GLOBAL(\uMAE|H_MAC~combout\), !GLOBAL(\uMAE|H_FIFO~combout\), , , \uMAC|Add1~25_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	datac => \uMAC|Add1~25_combout\,
	aclr => \uMAE|H_FIFO~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAC|tamp\(8));

-- Location: LC_X3_Y5_N1
\uMAC|Add1~30\ : maxv_lcell
-- Equation(s):
-- \uMAC|Add1~30_combout\ = \uMAC|tamp\(9) $ (\uMAC|Add0~30_combout\ $ (((!\uMAC|Add1~17\ & \uMAC|Add1~27\) # (\uMAC|Add1~17\ & \uMAC|Add1~27COUT1_87\))))
-- \uMAC|Add1~32\ = CARRY((\uMAC|tamp\(9) & (!\uMAC|Add0~30_combout\ & !\uMAC|Add1~27\)) # (!\uMAC|tamp\(9) & ((!\uMAC|Add1~27\) # (!\uMAC|Add0~30_combout\))))
-- \uMAC|Add1~32COUT1_88\ = CARRY((\uMAC|tamp\(9) & (!\uMAC|Add0~30_combout\ & !\uMAC|Add1~27COUT1_87\)) # (!\uMAC|tamp\(9) & ((!\uMAC|Add1~27COUT1_87\) # (!\uMAC|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|tamp\(9),
	datab => \uMAC|Add0~30_combout\,
	cin => \uMAC|Add1~17\,
	cin0 => \uMAC|Add1~27\,
	cin1 => \uMAC|Add1~27COUT1_87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Add1~30_combout\,
	cout0 => \uMAC|Add1~32\,
	cout1 => \uMAC|Add1~32COUT1_88\);

-- Location: LC_X3_Y5_N8
\uMAC|tamp[9]\ : maxv_lcell
-- Equation(s):
-- \uMAC|tamp\(9) = DFFEAS((((\uMAC|Add1~30_combout\))), GLOBAL(\uMAE|H_MAC~combout\), !GLOBAL(\uMAE|H_FIFO~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	datad => \uMAC|Add1~30_combout\,
	aclr => \uMAE|H_FIFO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAC|tamp\(9));

-- Location: LC_X3_Y5_N2
\uMAC|Add1~35\ : maxv_lcell
-- Equation(s):
-- \uMAC|Add1~35_combout\ = \uMAC|Add0~20_combout\ $ (\uMAC|tamp\(10) $ ((!(!\uMAC|Add1~17\ & \uMAC|Add1~32\) # (\uMAC|Add1~17\ & \uMAC|Add1~32COUT1_88\))))
-- \uMAC|Add1~37\ = CARRY((\uMAC|Add0~20_combout\ & ((\uMAC|tamp\(10)) # (!\uMAC|Add1~32\))) # (!\uMAC|Add0~20_combout\ & (\uMAC|tamp\(10) & !\uMAC|Add1~32\)))
-- \uMAC|Add1~37COUT1_89\ = CARRY((\uMAC|Add0~20_combout\ & ((\uMAC|tamp\(10)) # (!\uMAC|Add1~32COUT1_88\))) # (!\uMAC|Add0~20_combout\ & (\uMAC|tamp\(10) & !\uMAC|Add1~32COUT1_88\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|Add0~20_combout\,
	datab => \uMAC|tamp\(10),
	cin => \uMAC|Add1~17\,
	cin0 => \uMAC|Add1~32\,
	cin1 => \uMAC|Add1~32COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Add1~35_combout\,
	cout0 => \uMAC|Add1~37\,
	cout1 => \uMAC|Add1~37COUT1_89\);

-- Location: LC_X3_Y5_N9
\uMAC|tamp[10]\ : maxv_lcell
-- Equation(s):
-- \uMAC|tamp\(10) = DFFEAS((((\uMAC|Add1~35_combout\))), GLOBAL(\uMAE|H_MAC~combout\), !GLOBAL(\uMAE|H_FIFO~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	datad => \uMAC|Add1~35_combout\,
	aclr => \uMAE|H_FIFO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAC|tamp\(10));

-- Location: LC_X3_Y5_N3
\uMAC|Add1~40\ : maxv_lcell
-- Equation(s):
-- \uMAC|Add1~40_combout\ = \uMAC|tamp\(11) $ (\uMAC|Add0~10_combout\ $ (((!\uMAC|Add1~17\ & \uMAC|Add1~37\) # (\uMAC|Add1~17\ & \uMAC|Add1~37COUT1_89\))))
-- \uMAC|Add1~42\ = CARRY((\uMAC|tamp\(11) & (!\uMAC|Add0~10_combout\ & !\uMAC|Add1~37\)) # (!\uMAC|tamp\(11) & ((!\uMAC|Add1~37\) # (!\uMAC|Add0~10_combout\))))
-- \uMAC|Add1~42COUT1_90\ = CARRY((\uMAC|tamp\(11) & (!\uMAC|Add0~10_combout\ & !\uMAC|Add1~37COUT1_89\)) # (!\uMAC|tamp\(11) & ((!\uMAC|Add1~37COUT1_89\) # (!\uMAC|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|tamp\(11),
	datab => \uMAC|Add0~10_combout\,
	cin => \uMAC|Add1~17\,
	cin0 => \uMAC|Add1~37\,
	cin1 => \uMAC|Add1~37COUT1_89\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Add1~40_combout\,
	cout0 => \uMAC|Add1~42\,
	cout1 => \uMAC|Add1~42COUT1_90\);

-- Location: LC_X5_Y6_N6
\uMAC|tamp[11]\ : maxv_lcell
-- Equation(s):
-- \uMAC|tamp\(11) = DFFEAS(GND, GLOBAL(\uMAE|H_MAC~combout\), !GLOBAL(\uMAE|H_FIFO~combout\), , , \uMAC|Add1~40_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	datac => \uMAC|Add1~40_combout\,
	aclr => \uMAE|H_FIFO~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAC|tamp\(11));

-- Location: LC_X3_Y5_N4
\uMAC|Add1~20\ : maxv_lcell
-- Equation(s):
-- \uMAC|Add1~20_combout\ = \uMAC|Add0~5_combout\ $ (\uMAC|tamp\(12) $ ((!(!\uMAC|Add1~17\ & \uMAC|Add1~42\) # (\uMAC|Add1~17\ & \uMAC|Add1~42COUT1_90\))))
-- \uMAC|Add1~22\ = CARRY((\uMAC|Add0~5_combout\ & ((\uMAC|tamp\(12)) # (!\uMAC|Add1~42COUT1_90\))) # (!\uMAC|Add0~5_combout\ & (\uMAC|tamp\(12) & !\uMAC|Add1~42COUT1_90\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|Add0~5_combout\,
	datab => \uMAC|tamp\(12),
	cin => \uMAC|Add1~17\,
	cin0 => \uMAC|Add1~42\,
	cin1 => \uMAC|Add1~42COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Add1~20_combout\,
	cout => \uMAC|Add1~22\);

-- Location: LC_X5_Y6_N5
\uMAC|tamp[12]\ : maxv_lcell
-- Equation(s):
-- \uMAC|tamp\(12) = DFFEAS(GND, GLOBAL(\uMAE|H_MAC~combout\), !GLOBAL(\uMAE|H_FIFO~combout\), , , \uMAC|Add1~20_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	datac => \uMAC|Add1~20_combout\,
	aclr => \uMAE|H_FIFO~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAC|tamp\(12));

-- Location: LC_X3_Y5_N5
\uMAC|Add1~10\ : maxv_lcell
-- Equation(s):
-- \uMAC|Add1~10_combout\ = \uMAC|tamp\(13) $ (\uMAC|Add0~0_combout\ $ ((\uMAC|Add1~22\)))
-- \uMAC|Add1~12\ = CARRY((\uMAC|tamp\(13) & (!\uMAC|Add0~0_combout\ & !\uMAC|Add1~22\)) # (!\uMAC|tamp\(13) & ((!\uMAC|Add1~22\) # (!\uMAC|Add0~0_combout\))))
-- \uMAC|Add1~12COUT1_91\ = CARRY((\uMAC|tamp\(13) & (!\uMAC|Add0~0_combout\ & !\uMAC|Add1~22\)) # (!\uMAC|tamp\(13) & ((!\uMAC|Add1~22\) # (!\uMAC|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|tamp\(13),
	datab => \uMAC|Add0~0_combout\,
	cin => \uMAC|Add1~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Add1~10_combout\,
	cout0 => \uMAC|Add1~12\,
	cout1 => \uMAC|Add1~12COUT1_91\);

-- Location: LC_X5_Y6_N2
\uMAC|tamp[13]\ : maxv_lcell
-- Equation(s):
-- \uMAC|tamp\(13) = DFFEAS(GND, GLOBAL(\uMAE|H_MAC~combout\), !GLOBAL(\uMAE|H_FIFO~combout\), , , \uMAC|Add1~10_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	datac => \uMAC|Add1~10_combout\,
	aclr => \uMAE|H_FIFO~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAC|tamp\(13));

-- Location: LC_X3_Y5_N6
\uMAC|Add1~5\ : maxv_lcell
-- Equation(s):
-- \uMAC|Add1~5_combout\ = \uMAC|tamp\(14) $ (\uMAC|Add0~0_combout\ $ ((!(!\uMAC|Add1~22\ & \uMAC|Add1~12\) # (\uMAC|Add1~22\ & \uMAC|Add1~12COUT1_91\))))
-- \uMAC|Add1~7\ = CARRY((\uMAC|tamp\(14) & ((\uMAC|Add0~0_combout\) # (!\uMAC|Add1~12\))) # (!\uMAC|tamp\(14) & (\uMAC|Add0~0_combout\ & !\uMAC|Add1~12\)))
-- \uMAC|Add1~7COUT1_92\ = CARRY((\uMAC|tamp\(14) & ((\uMAC|Add0~0_combout\) # (!\uMAC|Add1~12COUT1_91\))) # (!\uMAC|tamp\(14) & (\uMAC|Add0~0_combout\ & !\uMAC|Add1~12COUT1_91\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|tamp\(14),
	datab => \uMAC|Add0~0_combout\,
	cin => \uMAC|Add1~22\,
	cin0 => \uMAC|Add1~12\,
	cin1 => \uMAC|Add1~12COUT1_91\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Add1~5_combout\,
	cout0 => \uMAC|Add1~7\,
	cout1 => \uMAC|Add1~7COUT1_92\);

-- Location: LC_X5_Y6_N8
\uMAC|tamp[14]\ : maxv_lcell
-- Equation(s):
-- \uMAC|tamp\(14) = DFFEAS(GND, GLOBAL(\uMAE|H_MAC~combout\), !GLOBAL(\uMAE|H_FIFO~combout\), , , \uMAC|Add1~5_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	datac => \uMAC|Add1~5_combout\,
	aclr => \uMAE|H_FIFO~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAC|tamp\(14));

-- Location: LC_X3_Y5_N7
\uMAC|Add1~0\ : maxv_lcell
-- Equation(s):
-- \uMAC|Add1~0_combout\ = (\uMAC|tamp\(15) $ ((!\uMAC|Add1~22\ & \uMAC|Add1~7\) # (\uMAC|Add1~22\ & \uMAC|Add1~7COUT1_92\) $ (!\uMAC|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3cc3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uMAC|tamp\(15),
	datad => \uMAC|Add0~0_combout\,
	cin => \uMAC|Add1~22\,
	cin0 => \uMAC|Add1~7\,
	cin1 => \uMAC|Add1~7COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Add1~0_combout\);

-- Location: LC_X3_Y6_N9
\uMAC|tamp[15]\ : maxv_lcell
-- Equation(s):
-- \uMAC|tamp\(15) = DFFEAS((((!\uMAC|Add1~0_combout\))), GLOBAL(\uMAE|H_MAC~combout\), VCC, , , VCC, GLOBAL(\uMAE|H_FIFO~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	datac => VCC,
	datad => \uMAC|Add1~0_combout\,
	aclr => GND,
	aload => \uMAE|H_FIFO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAC|tamp\(15));

-- Location: LC_X2_Y6_N0
\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[0]~28\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[0]~28_combout\ = (((!\uMAC|tamp\(15) & \uREG|Div0|auto_generated|divider|my_abs_num|cs2a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uMAC|tamp\(15),
	datad => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[0]~28_combout\);

-- Location: LC_X2_Y5_N2
\uMAC|Add1~75\ : maxv_lcell
-- Equation(s):
-- \uMAC|Add1~75_combout\ = \uREG|Div0|auto_generated|divider|my_abs_num|cs2a\(0) $ ((!\uMAC|Add0~65_combout\))
-- \uMAC|Add1~77\ = CARRY((!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a\(0) & (\uMAC|Add0~65_combout\)))
-- \uMAC|Add1~77COUT1_81\ = CARRY((!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a\(0) & (\uMAC|Add0~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9944",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a\(0),
	datab => \uMAC|Add0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Add1~75_combout\,
	cout0 => \uMAC|Add1~77\,
	cout1 => \uMAC|Add1~77COUT1_81\);

-- Location: LC_X1_Y6_N2
\uMAC|tamp[0]\ : maxv_lcell
-- Equation(s):
-- \uMAC|tamp\(0) = DFFEAS((((!\uMAC|Add1~75_combout\))), GLOBAL(\uMAE|H_MAC~combout\), VCC, , , VCC, GLOBAL(\uMAE|H_FIFO~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	datac => VCC,
	datad => \uMAC|Add1~75_combout\,
	aclr => GND,
	aload => \uMAE|H_FIFO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAC|tamp\(0));

-- Location: LC_X2_Y6_N1
\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[0]\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|my_abs_num|cs2a\(0) = ((\uMAC|tamp\(0)))
-- \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[0]~COUT\ = CARRY((\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[0]~28_combout\))
-- \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[0]~COUTCOUT1_33\ = CARRY((\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[0]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[0]~28_combout\,
	datab => \uMAC|tamp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a\(0),
	cout0 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[0]~COUT\,
	cout1 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[0]~COUTCOUT1_33\);

-- Location: LC_X2_Y5_N3
\uMAC|Add1~70\ : maxv_lcell
-- Equation(s):
-- \uMAC|Add1~70_combout\ = \uMAC|Add0~60_combout\ $ (\uMAC|tamp\(1) $ ((\uMAC|Add1~77\)))
-- \uMAC|Add1~72\ = CARRY((\uMAC|Add0~60_combout\ & (!\uMAC|tamp\(1) & !\uMAC|Add1~77\)) # (!\uMAC|Add0~60_combout\ & ((!\uMAC|Add1~77\) # (!\uMAC|tamp\(1)))))
-- \uMAC|Add1~72COUT1_82\ = CARRY((\uMAC|Add0~60_combout\ & (!\uMAC|tamp\(1) & !\uMAC|Add1~77COUT1_81\)) # (!\uMAC|Add0~60_combout\ & ((!\uMAC|Add1~77COUT1_81\) # (!\uMAC|tamp\(1)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|Add0~60_combout\,
	datab => \uMAC|tamp\(1),
	cin0 => \uMAC|Add1~77\,
	cin1 => \uMAC|Add1~77COUT1_81\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Add1~70_combout\,
	cout0 => \uMAC|Add1~72\,
	cout1 => \uMAC|Add1~72COUT1_82\);

-- Location: LC_X1_Y6_N7
\uMAC|tamp[1]\ : maxv_lcell
-- Equation(s):
-- \uMAC|tamp\(1) = DFFEAS(GND, GLOBAL(\uMAE|H_MAC~combout\), !GLOBAL(\uMAE|H_FIFO~combout\), , , \uMAC|Add1~70_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	datac => \uMAC|Add1~70_combout\,
	aclr => \uMAE|H_FIFO~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAC|tamp\(1));

-- Location: LC_X2_Y5_N4
\uMAC|Add1~65\ : maxv_lcell
-- Equation(s):
-- \uMAC|Add1~65_combout\ = \uMAC|tamp\(2) $ (\uMAC|Add0~55_combout\ $ ((!\uMAC|Add1~72\)))
-- \uMAC|Add1~67\ = CARRY((\uMAC|tamp\(2) & ((\uMAC|Add0~55_combout\) # (!\uMAC|Add1~72COUT1_82\))) # (!\uMAC|tamp\(2) & (\uMAC|Add0~55_combout\ & !\uMAC|Add1~72COUT1_82\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|tamp\(2),
	datab => \uMAC|Add0~55_combout\,
	cin0 => \uMAC|Add1~72\,
	cin1 => \uMAC|Add1~72COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uMAC|Add1~65_combout\,
	cout => \uMAC|Add1~67\);

-- Location: LC_X1_Y6_N3
\uMAC|tamp[2]\ : maxv_lcell
-- Equation(s):
-- \uMAC|tamp\(2) = DFFEAS(GND, GLOBAL(\uMAE|H_MAC~combout\), !GLOBAL(\uMAE|H_FIFO~combout\), , , \uMAC|Add1~65_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	datac => \uMAC|Add1~65_combout\,
	aclr => \uMAE|H_FIFO~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAC|tamp\(2));

-- Location: LC_X1_Y6_N1
\uMAC|tamp[5]\ : maxv_lcell
-- Equation(s):
-- \uMAC|tamp\(5) = DFFEAS(GND, GLOBAL(\uMAE|H_MAC~combout\), !GLOBAL(\uMAE|H_FIFO~combout\), , , \uMAC|Add1~50_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_MAC~combout\,
	datac => \uMAC|Add1~50_combout\,
	aclr => \uMAE|H_FIFO~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uMAC|tamp\(5));

-- Location: LC_X2_Y6_N2
\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[1]\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(1) = \uMAC|tamp\(15) $ (\uMAC|tamp\(1) $ ((!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[0]~COUT\)))
-- \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[1]~COUT\ = CARRY((\uMAC|tamp\(15) $ (\uMAC|tamp\(1))) # (!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[0]~COUT\))
-- \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[1]~COUTCOUT1_34\ = CARRY((\uMAC|tamp\(15) $ (\uMAC|tamp\(1))) # (!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[0]~COUTCOUT1_33\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "696f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|tamp\(15),
	datab => \uMAC|tamp\(1),
	cin0 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[0]~COUT\,
	cin1 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[0]~COUTCOUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(1),
	cout0 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[1]~COUT\,
	cout1 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[1]~COUTCOUT1_34\);

-- Location: LC_X2_Y6_N3
\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[2]\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(2) = \uMAC|tamp\(15) $ (\uMAC|tamp\(2) $ ((\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[1]~COUT\)))
-- \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[2]~COUT\ = CARRY((!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[1]~COUT\ & (\uMAC|tamp\(15) $ (!\uMAC|tamp\(2)))))
-- \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[2]~COUTCOUT1_35\ = CARRY((!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[1]~COUTCOUT1_34\ & (\uMAC|tamp\(15) $ (!\uMAC|tamp\(2)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9609",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|tamp\(15),
	datab => \uMAC|tamp\(2),
	cin0 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[1]~COUT\,
	cin1 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[1]~COUTCOUT1_34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(2),
	cout0 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[2]~COUT\,
	cout1 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[2]~COUTCOUT1_35\);

-- Location: LC_X2_Y6_N4
\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[3]\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(3) = \uMAC|tamp\(15) $ (\uMAC|tamp\(3) $ ((!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[2]~COUT\)))
-- \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[3]~COUT\ = CARRY((\uMAC|tamp\(15) $ (\uMAC|tamp\(3))) # (!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[2]~COUTCOUT1_35\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "696f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|tamp\(15),
	datab => \uMAC|tamp\(3),
	cin0 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[2]~COUT\,
	cin1 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[2]~COUTCOUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(3),
	cout => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[3]~COUT\);

-- Location: LC_X2_Y6_N5
\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[4]\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(4) = \uMAC|tamp\(4) $ (\uMAC|tamp\(15) $ ((\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[3]~COUT\)))
-- \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[4]~COUT\ = CARRY((!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[3]~COUT\ & (\uMAC|tamp\(4) $ (!\uMAC|tamp\(15)))))
-- \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[4]~COUTCOUT1_36\ = CARRY((!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[3]~COUT\ & (\uMAC|tamp\(4) $ (!\uMAC|tamp\(15)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9609",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|tamp\(4),
	datab => \uMAC|tamp\(15),
	cin => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[3]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(4),
	cout0 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[4]~COUT\,
	cout1 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[4]~COUTCOUT1_36\);

-- Location: LC_X2_Y6_N6
\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[5]\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(5) = \uMAC|tamp\(5) $ (\uMAC|tamp\(15) $ ((!(!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[3]~COUT\ & \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[4]~COUT\) # 
-- (\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[3]~COUT\ & \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[4]~COUTCOUT1_36\))))
-- \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[5]~COUT\ = CARRY((\uMAC|tamp\(5) $ (\uMAC|tamp\(15))) # (!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[4]~COUT\))
-- \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[5]~COUTCOUT1_37\ = CARRY((\uMAC|tamp\(5) $ (\uMAC|tamp\(15))) # (!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[4]~COUTCOUT1_36\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "696f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|tamp\(5),
	datab => \uMAC|tamp\(15),
	cin => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[3]~COUT\,
	cin0 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[4]~COUT\,
	cin1 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[4]~COUTCOUT1_36\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(5),
	cout0 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[5]~COUT\,
	cout1 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[5]~COUTCOUT1_37\);

-- Location: LC_X10_Y2_N6
\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[1]\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella\(1) = ((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(5)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[1]~COUT\ = CARRY(((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(5))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[1]~COUTCOUT1_50\ = CARRY(((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella\(1),
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[1]~COUT\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[1]~COUTCOUT1_50\);

-- Location: LC_X2_Y6_N7
\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[6]\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(6) = \uMAC|tamp\(6) $ (\uMAC|tamp\(15) $ (((!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[3]~COUT\ & \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[5]~COUT\) # 
-- (\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[3]~COUT\ & \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[5]~COUTCOUT1_37\))))
-- \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[6]~COUT\ = CARRY((!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[5]~COUT\ & (\uMAC|tamp\(6) $ (!\uMAC|tamp\(15)))))
-- \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[6]~COUTCOUT1_38\ = CARRY((!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[5]~COUTCOUT1_37\ & (\uMAC|tamp\(6) $ (!\uMAC|tamp\(15)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9609",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|tamp\(6),
	datab => \uMAC|tamp\(15),
	cin => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[3]~COUT\,
	cin0 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[5]~COUT\,
	cin1 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[5]~COUTCOUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(6),
	cout0 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[6]~COUT\,
	cout1 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[6]~COUTCOUT1_38\);

-- Location: LC_X2_Y6_N8
\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[7]\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(7) = \uMAC|tamp\(7) $ (\uMAC|tamp\(15) $ ((!(!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[3]~COUT\ & \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[6]~COUT\) # 
-- (\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[3]~COUT\ & \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[6]~COUTCOUT1_38\))))
-- \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[7]~COUT\ = CARRY((\uMAC|tamp\(7) $ (\uMAC|tamp\(15))) # (!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[6]~COUT\))
-- \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[7]~COUTCOUT1_39\ = CARRY((\uMAC|tamp\(7) $ (\uMAC|tamp\(15))) # (!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[6]~COUTCOUT1_38\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "696f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|tamp\(7),
	datab => \uMAC|tamp\(15),
	cin => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[3]~COUT\,
	cin0 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[6]~COUT\,
	cin1 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[6]~COUTCOUT1_38\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(7),
	cout0 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[7]~COUT\,
	cout1 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[7]~COUTCOUT1_39\);

-- Location: LC_X2_Y6_N9
\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[8]\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(8) = \uMAC|tamp\(15) $ (\uMAC|tamp\(8) $ (((!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[3]~COUT\ & \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[7]~COUT\) # 
-- (\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[3]~COUT\ & \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[7]~COUTCOUT1_39\))))
-- \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[8]~COUT\ = CARRY((!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[7]~COUTCOUT1_39\ & (\uMAC|tamp\(15) $ (!\uMAC|tamp\(8)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9609",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|tamp\(15),
	datab => \uMAC|tamp\(8),
	cin => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[3]~COUT\,
	cin0 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[7]~COUT\,
	cin1 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[7]~COUTCOUT1_39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(8),
	cout => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[8]~COUT\);

-- Location: LC_X3_Y6_N0
\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[9]\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(9) = \uMAC|tamp\(15) $ (\uMAC|tamp\(9) $ ((!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[8]~COUT\)))
-- \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[9]~COUT\ = CARRY((\uMAC|tamp\(15) $ (\uMAC|tamp\(9))) # (!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[8]~COUT\))
-- \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[9]~COUTCOUT1_40\ = CARRY((\uMAC|tamp\(15) $ (\uMAC|tamp\(9))) # (!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[8]~COUT\))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "696f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|tamp\(15),
	datab => \uMAC|tamp\(9),
	cin => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[8]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(9),
	cout0 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[9]~COUT\,
	cout1 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[9]~COUTCOUT1_40\);

-- Location: LC_X6_Y4_N8
\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[1]\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella\(1) = ((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(9)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[1]~COUT\ = CARRY(((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(9))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[1]~COUTCOUT1_44\ = CARRY(((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella\(1),
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[1]~COUT\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[1]~COUTCOUT1_44\);

-- Location: LC_X3_Y6_N1
\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[10]\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(10) = \uMAC|tamp\(10) $ (\uMAC|tamp\(15) $ (((!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[8]~COUT\ & \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[9]~COUT\) # 
-- (\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[8]~COUT\ & \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[9]~COUTCOUT1_40\))))
-- \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[10]~COUT\ = CARRY((!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[9]~COUT\ & (\uMAC|tamp\(10) $ (!\uMAC|tamp\(15)))))
-- \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[10]~COUTCOUT1_41\ = CARRY((!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[9]~COUTCOUT1_40\ & (\uMAC|tamp\(10) $ (!\uMAC|tamp\(15)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9609",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|tamp\(10),
	datab => \uMAC|tamp\(15),
	cin => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[8]~COUT\,
	cin0 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[9]~COUT\,
	cin1 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[9]~COUTCOUT1_40\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(10),
	cout0 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[10]~COUT\,
	cout1 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[10]~COUTCOUT1_41\);

-- Location: LC_X3_Y6_N2
\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[11]\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(11) = \uMAC|tamp\(11) $ (\uMAC|tamp\(15) $ ((!(!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[8]~COUT\ & \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[10]~COUT\) # 
-- (\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[8]~COUT\ & \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[10]~COUTCOUT1_41\))))
-- \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[11]~COUT\ = CARRY((\uMAC|tamp\(11) $ (\uMAC|tamp\(15))) # (!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[10]~COUT\))
-- \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[11]~COUTCOUT1_42\ = CARRY((\uMAC|tamp\(11) $ (\uMAC|tamp\(15))) # (!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[10]~COUTCOUT1_41\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "696f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|tamp\(11),
	datab => \uMAC|tamp\(15),
	cin => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[8]~COUT\,
	cin0 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[10]~COUT\,
	cin1 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[10]~COUTCOUT1_41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(11),
	cout0 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[11]~COUT\,
	cout1 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[11]~COUTCOUT1_42\);

-- Location: LC_X3_Y6_N3
\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[12]\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(12) = \uMAC|tamp\(12) $ (\uMAC|tamp\(15) $ (((!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[8]~COUT\ & \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[11]~COUT\) # 
-- (\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[8]~COUT\ & \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[11]~COUTCOUT1_42\))))
-- \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[12]~COUT\ = CARRY((!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[11]~COUT\ & (\uMAC|tamp\(12) $ (!\uMAC|tamp\(15)))))
-- \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[12]~COUTCOUT1_43\ = CARRY((!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[11]~COUTCOUT1_42\ & (\uMAC|tamp\(12) $ (!\uMAC|tamp\(15)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9609",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|tamp\(12),
	datab => \uMAC|tamp\(15),
	cin => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[8]~COUT\,
	cin0 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[11]~COUT\,
	cin1 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[11]~COUTCOUT1_42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(12),
	cout0 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[12]~COUT\,
	cout1 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[12]~COUTCOUT1_43\);

-- Location: LC_X3_Y6_N4
\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[13]\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(13) = \uMAC|tamp\(13) $ (\uMAC|tamp\(15) $ ((!(!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[8]~COUT\ & \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[12]~COUT\) # 
-- (\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[8]~COUT\ & \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[12]~COUTCOUT1_43\))))
-- \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[13]~COUT\ = CARRY((\uMAC|tamp\(13) $ (\uMAC|tamp\(15))) # (!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[12]~COUTCOUT1_43\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "696f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|tamp\(13),
	datab => \uMAC|tamp\(15),
	cin => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[8]~COUT\,
	cin0 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[12]~COUT\,
	cin1 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[12]~COUTCOUT1_43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(13),
	cout => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[13]~COUT\);

-- Location: LC_X3_Y6_N5
\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[14]\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(14) = \uMAC|tamp\(15) $ (\uMAC|tamp\(14) $ ((\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[13]~COUT\)))
-- \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[14]~COUT\ = CARRY((!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[13]~COUT\ & (\uMAC|tamp\(15) $ (!\uMAC|tamp\(14)))))
-- \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[14]~COUTCOUT1_44\ = CARRY((!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[13]~COUT\ & (\uMAC|tamp\(15) $ (!\uMAC|tamp\(14)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9609",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uMAC|tamp\(15),
	datab => \uMAC|tamp\(14),
	cin => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[13]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(14),
	cout0 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[14]~COUT\,
	cout1 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[14]~COUTCOUT1_44\);

-- Location: LC_X4_Y6_N8
\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella\(1) = ((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(11)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUT\ = CARRY(((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(11))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUTCOUT1_34\ = CARRY(((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella\(1),
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUT\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUTCOUT1_34\);

-- Location: LC_X4_Y6_N9
\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~32\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~32_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUT\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUTCOUT1_34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~32_combout\);

-- Location: LC_X4_Y6_N0
\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~23\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~23_cout0\ = CARRY(((\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~32_combout\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~23COUT1_35\ = CARRY(((\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~21\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~23_cout0\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~23COUT1_35\);

-- Location: LC_X4_Y6_N1
\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ = (\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(12) $ ((!\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~23_cout0\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~2\ = CARRY(((!\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(12) & !\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~23_cout0\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~2COUT1_36\ = CARRY(((!\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(12) & !\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~23COUT1_35\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(12),
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~23_cout0\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~23COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~2\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~2COUT1_36\);

-- Location: LC_X4_Y6_N2
\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~5\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~5_combout\ = (\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(13) $ ((\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~2\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7\ = CARRY(((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(13)) # (!\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~2\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7COUT1_37\ = CARRY(((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(13)) # (!\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~2COUT1_36\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(13),
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~2\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~2COUT1_36\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~5_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7COUT1_37\);

-- Location: LC_X4_Y6_N3
\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~10\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~10_combout\ = \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(14) $ ((((!\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12\ = CARRY((!\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(14) & ((!\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12COUT1_38\ = CARRY((!\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(14) & ((!\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7COUT1_37\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(14),
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~7COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~10_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12COUT1_38\);

-- Location: LC_X4_Y6_N4
\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~15\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~15_combout\ = (((!\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~12COUT1_38\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~15_combout\);

-- Location: LC_X3_Y6_N6
\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp[14]~0\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[14]~29\ = ((((!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[13]~COUT\ & \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[14]~COUT\) # (\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[13]~COUT\ & 
-- \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[14]~COUTCOUT1_44\))))
-- \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp[14]~0_cout0\ = CARRY(((!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[14]~COUT\)))
-- \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp[14]~0COUT1_4\ = CARRY(((!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[14]~COUTCOUT1_44\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[13]~COUT\,
	cin0 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[14]~COUT\,
	cin1 => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[14]~COUTCOUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[14]~29\,
	cout0 => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp[14]~0_cout0\,
	cout1 => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp[14]~0COUT1_4\);

-- Location: LC_X3_Y6_N7
\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella\(5) = (\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~15_combout\ $ ((!(!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[13]~COUT\ & 
-- \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp[14]~0_cout0\) # (\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[13]~COUT\ & \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp[14]~0COUT1_4\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~COUT\ = CARRY(((\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~15_combout\ & !\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp[14]~0_cout0\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~COUTCOUT1_39\ = CARRY(((\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~15_combout\ & !\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp[14]~0COUT1_4\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~15_combout\,
	cin => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[13]~COUT\,
	cin0 => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp[14]~0_cout0\,
	cin1 => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp[14]~0COUT1_4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella\(5),
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~COUT\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~COUTCOUT1_39\);

-- Location: LC_X3_Y6_N8
\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~26\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~27\ = ((((!\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[13]~COUT\ & \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~COUT\) # 
-- (\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[13]~COUT\ & \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~COUTCOUT1_39\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[13]~COUT\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~COUT\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~COUTCOUT1_39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~27\);

-- Location: LC_X4_Y4_N6
\uREG|Div0|auto_generated|divider|divider|StageOut[43]~82\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[43]~82_combout\ = (((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(13) & !\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(13),
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[43]~82_combout\);

-- Location: LC_X4_Y6_N6
\uREG|Div0|auto_generated|divider|divider|StageOut[43]~83\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[43]~83_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~27\ & \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~27\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[43]~83_combout\);

-- Location: LC_X4_Y6_N7
\uREG|Div0|auto_generated|divider|divider|StageOut[42]~78\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[42]~78_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~27\ & \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~27\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[42]~78_combout\);

-- Location: LC_X4_Y4_N9
\uREG|Div0|auto_generated|divider|divider|StageOut[42]~77\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[42]~77_combout\ = (((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(12) & !\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(12),
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[42]~77_combout\);

-- Location: LC_X4_Y4_N3
\uREG|Div0|auto_generated|divider|divider|StageOut[41]~71\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[41]~71_combout\ = ((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(11) & ((!\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(11),
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[41]~71_combout\);

-- Location: LC_X4_Y5_N3
\uREG|Div0|auto_generated|divider|divider|StageOut[41]~72\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[41]~72_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~27\ & !\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~27\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[41]~72_combout\);

-- Location: LC_X6_Y6_N6
\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella\(1) = ((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(10)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~COUT\ = CARRY(((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(10))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~COUTCOUT1_39\ = CARRY(((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella\(1),
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~COUT\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~COUTCOUT1_39\);

-- Location: LC_X6_Y6_N7
\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~37\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~37_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~COUT\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~COUTCOUT1_39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~37_combout\);

-- Location: LC_X3_Y4_N1
\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~32\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~32_cout0\ = CARRY(((\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~37_combout\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~32COUT1_40\ = CARRY(((\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~30\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~32_cout0\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~32COUT1_40\);

-- Location: LC_X3_Y4_N2
\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~5\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~5_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~32_cout0\ $ (((!\uREG|Div0|auto_generated|divider|divider|StageOut[41]~71_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|StageOut[41]~72_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[41]~71_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[41]~72_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~32_cout0\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7COUT1_41\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[41]~71_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[41]~72_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~32COUT1_40\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[41]~71_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[41]~72_combout\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~32_cout0\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~32COUT1_40\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~5_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7COUT1_41\);

-- Location: LC_X3_Y4_N3
\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~10\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~10_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7\ $ (((\uREG|Div0|auto_generated|divider|divider|StageOut[42]~78_combout\) # 
-- ((\uREG|Div0|auto_generated|divider|divider|StageOut[42]~77_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12\ = CARRY((\uREG|Div0|auto_generated|divider|divider|StageOut[42]~78_combout\) # ((\uREG|Div0|auto_generated|divider|divider|StageOut[42]~77_combout\) # 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12COUT1_42\ = CARRY((\uREG|Div0|auto_generated|divider|divider|StageOut[42]~78_combout\) # ((\uREG|Div0|auto_generated|divider|divider|StageOut[42]~77_combout\) # 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7COUT1_41\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "1eef",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[42]~78_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[42]~77_combout\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~7COUT1_41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~10_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12COUT1_42\);

-- Location: LC_X3_Y4_N4
\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~15\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~15_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12\ $ (((!\uREG|Div0|auto_generated|divider|divider|StageOut[43]~82_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|StageOut[43]~83_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[43]~82_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[43]~83_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12COUT1_42\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[43]~82_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[43]~83_combout\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~12COUT1_42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~15_combout\,
	cout => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17\);

-- Location: LC_X3_Y4_N8
\uREG|Div0|auto_generated|divider|divider|StageOut[45]~100\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[45]~100_combout\ = ((\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[14]~29\ & ((!\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[14]~29\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[45]~100_combout\);

-- Location: LC_X3_Y4_N0
\uREG|Div0|auto_generated|divider|divider|StageOut[45]~101\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[45]~101_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella\(5) & \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella\(5),
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[45]~101_combout\);

-- Location: LC_X4_Y6_N5
\uREG|Div0|auto_generated|divider|divider|StageOut[44]~87\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[44]~87_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~27\ & \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~27\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[44]~87_combout\);

-- Location: LC_X3_Y4_N9
\uREG|Div0|auto_generated|divider|divider|StageOut[44]~86\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[44]~86_combout\ = (((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(14) & !\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(14),
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[44]~86_combout\);

-- Location: LC_X3_Y4_N5
\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~20\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~20_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17\ $ (((!\uREG|Div0|auto_generated|divider|divider|StageOut[44]~87_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|StageOut[44]~86_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[44]~87_combout\) # 
-- (\uREG|Div0|auto_generated|divider|divider|StageOut[44]~86_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22COUT1_43\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[44]~87_combout\) # 
-- (\uREG|Div0|auto_generated|divider|divider|StageOut[44]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[44]~87_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[44]~86_combout\,
	cin => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~20_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22COUT1_43\);

-- Location: LC_X3_Y4_N6
\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~25\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~25_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17\ & \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22\) # 
-- (\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17\ & \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22COUT1_43\) $ (((!\uREG|Div0|auto_generated|divider|divider|StageOut[45]~100_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|StageOut[45]~101_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~27\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[45]~100_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[45]~101_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~27COUT1_44\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[45]~100_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[45]~101_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22COUT1_43\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[45]~100_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[45]~101_combout\,
	cin => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~22COUT1_43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~25_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~27\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~27COUT1_44\);

-- Location: LC_X3_Y4_N7
\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ = (((!(!\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17\ & \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~27\) # 
-- (\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17\ & \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~27COUT1_44\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~17\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~27\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~27COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\);

-- Location: LC_X4_Y4_N0
\uREG|Div0|auto_generated|divider|divider|StageOut[52]~35\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[52]~35_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~27\ & 
-- ((\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~5_combout\))) # (!\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~27\ & (\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(13),
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~27\,
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~5_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[52]~35_combout\);

-- Location: LC_X4_Y4_N4
\uREG|Div0|auto_generated|divider|divider|StageOut[52]~84\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[52]~84_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~15_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~15_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[52]~84_combout\);

-- Location: LC_X4_Y4_N1
\uREG|Div0|auto_generated|divider|divider|StageOut[51]~79\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[51]~79_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~10_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~10_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[51]~79_combout\);

-- Location: LC_X6_Y4_N5
\uREG|Div0|auto_generated|divider|divider|StageOut[51]~30\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[51]~30_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~27\ & 
-- ((\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\))) # (!\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~27\ & (\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(12),
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~27\,
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[51]~30_combout\);

-- Location: LC_X6_Y4_N3
\uREG|Div0|auto_generated|divider|divider|StageOut[50]~73\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[50]~73_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~5_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~5_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[50]~73_combout\);

-- Location: LC_X4_Y5_N6
\uREG|Div0|auto_generated|divider|divider|StageOut[50]~24\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[50]~24_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~27\ & 
-- ((!\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella\(1)))) # (!\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~27\ & (\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "003a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(11),
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella\(1),
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~27\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[50]~24_combout\);

-- Location: LC_X6_Y4_N1
\uREG|Div0|auto_generated|divider|divider|StageOut[49]~65\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[49]~65_combout\ = (((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(10) & !\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(10),
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[49]~65_combout\);

-- Location: LC_X6_Y4_N2
\uREG|Div0|auto_generated|divider|divider|StageOut[49]~66\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[49]~66_combout\ = (((!\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella\(1) & \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella\(1),
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[49]~66_combout\);

-- Location: LC_X6_Y4_N9
\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~42\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~42_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[1]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[1]~COUT\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[1]~COUTCOUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~42_combout\);

-- Location: LC_X5_Y4_N0
\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~37\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~37_cout0\ = CARRY(((\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~42_combout\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~37COUT1_45\ = CARRY(((\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~35\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~37_cout0\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~37COUT1_45\);

-- Location: LC_X5_Y4_N1
\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~5\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~5_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~37_cout0\ $ (((!\uREG|Div0|auto_generated|divider|divider|StageOut[49]~65_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|StageOut[49]~66_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~7\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[49]~65_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[49]~66_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~37_cout0\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~7COUT1_46\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[49]~65_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[49]~66_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~37COUT1_45\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[49]~65_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[49]~66_combout\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~37_cout0\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~37COUT1_45\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~5_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~7\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~7COUT1_46\);

-- Location: LC_X5_Y4_N2
\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~10\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~10_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~7\ $ (((\uREG|Div0|auto_generated|divider|divider|StageOut[50]~73_combout\) # 
-- ((\uREG|Div0|auto_generated|divider|divider|StageOut[50]~24_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~12\ = CARRY((\uREG|Div0|auto_generated|divider|divider|StageOut[50]~73_combout\) # ((\uREG|Div0|auto_generated|divider|divider|StageOut[50]~24_combout\) # 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~7\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~12COUT1_47\ = CARRY((\uREG|Div0|auto_generated|divider|divider|StageOut[50]~73_combout\) # ((\uREG|Div0|auto_generated|divider|divider|StageOut[50]~24_combout\) # 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~7COUT1_46\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "1eef",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[50]~73_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[50]~24_combout\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~7\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~7COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~10_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~12\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~12COUT1_47\);

-- Location: LC_X5_Y4_N3
\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~15\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~15_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~12\ $ (((!\uREG|Div0|auto_generated|divider|divider|StageOut[51]~79_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|StageOut[51]~30_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~17\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[51]~79_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[51]~30_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~12\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~17COUT1_48\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[51]~79_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[51]~30_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~12COUT1_47\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[51]~79_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[51]~30_combout\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~12\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~12COUT1_47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~15_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~17\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~17COUT1_48\);

-- Location: LC_X5_Y4_N4
\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~20\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~20_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~17\ $ (((!\uREG|Div0|auto_generated|divider|divider|StageOut[52]~35_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|StageOut[52]~84_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~22\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~17COUT1_48\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[52]~35_combout\) # 
-- (\uREG|Div0|auto_generated|divider|divider|StageOut[52]~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[52]~35_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[52]~84_combout\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~17\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~17COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~20_combout\,
	cout => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~22\);

-- Location: LC_X4_Y4_N8
\uREG|Div0|auto_generated|divider|divider|StageOut[54]~99\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[54]~99_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~25_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~25_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[54]~99_combout\);

-- Location: LC_X5_Y4_N9
\uREG|Div0|auto_generated|divider|divider|StageOut[54]~98\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[54]~98_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~27\ & 
-- (\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella\(5))) # (!\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~27\ & ((\uREG|Div0|auto_generated|divider|my_abs_num|cs2a[14]~29\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella\(5),
	datab => \uREG|Div0|auto_generated|divider|my_abs_num|cs2a[14]~29\,
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~27\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[54]~98_combout\);

-- Location: LC_X4_Y4_N5
\uREG|Div0|auto_generated|divider|divider|StageOut[53]~88\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[53]~88_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[53]~88_combout\);

-- Location: LC_X4_Y4_N7
\uREG|Div0|auto_generated|divider|divider|StageOut[53]~39\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[53]~39_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~27\ & 
-- ((\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~10_combout\))) # (!\uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~27\ & (\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(14),
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[5]~27\,
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~10_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[53]~39_combout\);

-- Location: LC_X5_Y4_N5
\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~25\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~25_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~22\ $ (((!\uREG|Div0|auto_generated|divider|divider|StageOut[53]~88_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|StageOut[53]~39_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~27\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[53]~88_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[53]~39_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~22\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~27COUT1_49\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[53]~88_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[53]~39_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~22\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[53]~88_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[53]~39_combout\,
	cin => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~25_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~27\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~27COUT1_49\);

-- Location: LC_X5_Y4_N6
\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~32\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~32_cout0\ = CARRY((\uREG|Div0|auto_generated|divider|divider|StageOut[54]~99_combout\) # ((\uREG|Div0|auto_generated|divider|divider|StageOut[54]~98_combout\) # 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~27\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~32COUT1_50\ = CARRY((\uREG|Div0|auto_generated|divider|divider|StageOut[54]~99_combout\) # ((\uREG|Div0|auto_generated|divider|divider|StageOut[54]~98_combout\) # 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~27COUT1_49\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ffef",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[54]~99_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[54]~98_combout\,
	cin => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~22\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~27\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~27COUT1_49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~30\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~32_cout0\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~32COUT1_50\);

-- Location: LC_X5_Y4_N7
\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\ = ((((!\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~22\ & \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~32_cout0\) # 
-- (\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~22\ & \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~32COUT1_50\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~22\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~32_cout0\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~32COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\);

-- Location: LC_X6_Y4_N7
\uREG|Div0|auto_generated|divider|divider|StageOut[60]~80\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[60]~80_combout\ = ((\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~15_combout\ & ((\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~15_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[60]~80_combout\);

-- Location: LC_X6_Y4_N6
\uREG|Div0|auto_generated|divider|divider|StageOut[60]~31\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[60]~31_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[51]~30_combout\) # 
-- ((\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~10_combout\,
	datac => \uREG|Div0|auto_generated|divider|divider|StageOut[51]~30_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[60]~31_combout\);

-- Location: LC_X4_Y5_N5
\uREG|Div0|auto_generated|divider|divider|StageOut[59]~74\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[59]~74_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[59]~74_combout\);

-- Location: LC_X4_Y5_N7
\uREG|Div0|auto_generated|divider|divider|StageOut[59]~25\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[59]~25_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[50]~24_combout\) # 
-- ((\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~5_combout\,
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|StageOut[50]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[59]~25_combout\);

-- Location: LC_X4_Y5_N9
\uREG|Div0|auto_generated|divider|divider|StageOut[58]~67\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[58]~67_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[58]~67_combout\);

-- Location: LC_X6_Y6_N9
\uREG|Div0|auto_generated|divider|divider|StageOut[58]~18\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[58]~18_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella\(1))) # (!\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "005c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella\(1),
	datab => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(10),
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[58]~18_combout\);

-- Location: LC_X4_Y5_N0
\uREG|Div0|auto_generated|divider|divider|StageOut[57]~60\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[57]~60_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\ & !\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[57]~60_combout\);

-- Location: LC_X4_Y5_N4
\uREG|Div0|auto_generated|divider|divider|StageOut[57]~59\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[57]~59_combout\ = (((!\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\ & \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\,
	datad => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[57]~59_combout\);

-- Location: LC_X6_Y5_N1
\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[1]\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella\(1) = ((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(8)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[1]~COUT\ = CARRY(((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(8))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[1]~COUTCOUT1_44\ = CARRY(((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella\(1),
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[1]~COUT\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[1]~COUTCOUT1_44\);

-- Location: LC_X6_Y5_N2
\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~42\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~42_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[1]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[1]~COUT\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[1]~COUTCOUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~42_combout\);

-- Location: LC_X5_Y5_N0
\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~37\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~37_cout0\ = CARRY(((\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~42_combout\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~37COUT1_45\ = CARRY(((\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~35\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~37_cout0\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~37COUT1_45\);

-- Location: LC_X5_Y5_N1
\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~10\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~10_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~37_cout0\ $ (((!\uREG|Div0|auto_generated|divider|divider|StageOut[57]~60_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|StageOut[57]~59_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~12\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[57]~60_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[57]~59_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~37_cout0\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~12COUT1_46\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[57]~60_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[57]~59_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~37COUT1_45\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[57]~60_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[57]~59_combout\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~37_cout0\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~37COUT1_45\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~10_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~12\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~12COUT1_46\);

-- Location: LC_X5_Y5_N2
\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~15\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~15_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~12\ $ (((\uREG|Div0|auto_generated|divider|divider|StageOut[58]~67_combout\) # 
-- ((\uREG|Div0|auto_generated|divider|divider|StageOut[58]~18_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~17\ = CARRY((\uREG|Div0|auto_generated|divider|divider|StageOut[58]~67_combout\) # ((\uREG|Div0|auto_generated|divider|divider|StageOut[58]~18_combout\) # 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~12\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~17COUT1_47\ = CARRY((\uREG|Div0|auto_generated|divider|divider|StageOut[58]~67_combout\) # ((\uREG|Div0|auto_generated|divider|divider|StageOut[58]~18_combout\) # 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~12COUT1_46\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "1eef",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[58]~67_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[58]~18_combout\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~12\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~12COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~15_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~17\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~17COUT1_47\);

-- Location: LC_X5_Y5_N3
\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~20\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~20_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~17\ $ (((!\uREG|Div0|auto_generated|divider|divider|StageOut[59]~74_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|StageOut[59]~25_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~22\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[59]~74_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[59]~25_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~17\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~22COUT1_48\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[59]~74_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[59]~25_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~17COUT1_47\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[59]~74_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[59]~25_combout\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~17\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~17COUT1_47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~20_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~22\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~22COUT1_48\);

-- Location: LC_X5_Y5_N4
\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~25\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~25_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~22\ $ (((!\uREG|Div0|auto_generated|divider|divider|StageOut[60]~80_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|StageOut[60]~31_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~27\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~22COUT1_48\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[60]~80_combout\) # 
-- (\uREG|Div0|auto_generated|divider|divider|StageOut[60]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[60]~80_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[60]~31_combout\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~22\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~22COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~25_combout\,
	cout => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~27\);

-- Location: LC_X5_Y4_N8
\uREG|Div0|auto_generated|divider|divider|StageOut[62]~41\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[62]~41_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~25_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~25_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[62]~41_combout\);

-- Location: LC_X5_Y5_N9
\uREG|Div0|auto_generated|divider|divider|StageOut[62]~40\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[62]~40_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[53]~39_combout\) # 
-- ((\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~20_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~20_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[53]~39_combout\,
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[62]~40_combout\);

-- Location: LC_X6_Y4_N4
\uREG|Div0|auto_generated|divider|divider|StageOut[61]~85\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[61]~85_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~20_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~20_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[61]~85_combout\);

-- Location: LC_X4_Y4_N2
\uREG|Div0|auto_generated|divider|divider|StageOut[61]~36\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[61]~36_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[52]~35_combout\) # 
-- ((\uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~15_combout\,
	datac => \uREG|Div0|auto_generated|divider|divider|StageOut[52]~35_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[61]~36_combout\);

-- Location: LC_X5_Y5_N5
\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~30\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~30_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~27\ $ (((!\uREG|Div0|auto_generated|divider|divider|StageOut[61]~85_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|StageOut[61]~36_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~32\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[61]~85_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[61]~36_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~27\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~32COUT1_49\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[61]~85_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[61]~36_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~27\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[61]~85_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[61]~36_combout\,
	cin => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~30_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~32\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~32COUT1_49\);

-- Location: LC_X5_Y5_N6
\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~7\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~7_cout0\ = CARRY((\uREG|Div0|auto_generated|divider|divider|StageOut[62]~41_combout\) # ((\uREG|Div0|auto_generated|divider|divider|StageOut[62]~40_combout\) # 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~32\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~7COUT1_50\ = CARRY((\uREG|Div0|auto_generated|divider|divider|StageOut[62]~41_combout\) # ((\uREG|Div0|auto_generated|divider|divider|StageOut[62]~40_combout\) # 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~32COUT1_49\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ffef",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[62]~41_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[62]~40_combout\,
	cin => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~27\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~32\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~32COUT1_49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~5\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~7_cout0\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~7COUT1_50\);

-- Location: LC_X5_Y5_N7
\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0_combout\ = ((((!\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~27\ & \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~7_cout0\) # 
-- (\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~27\ & \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~7COUT1_50\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~27\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~7_cout0\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~7COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0_combout\);

-- Location: LC_X6_Y5_N8
\uREG|Div0|auto_generated|divider|divider|StageOut[66]~12\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[66]~12_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\ & 
-- ((!\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella\(1)))) # (!\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\ & (\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "003a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(9),
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella\(1),
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[66]~12_combout\);

-- Location: LC_X4_Y5_N1
\uREG|Div0|auto_generated|divider|divider|StageOut[68]~26\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[68]~26_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[59]~25_combout\) # 
-- ((\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~10_combout\,
	datac => \uREG|Div0|auto_generated|divider|divider|StageOut[59]~25_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[68]~26_combout\);

-- Location: LC_X6_Y5_N7
\uREG|Div0|auto_generated|divider|divider|StageOut[68]~75\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[68]~75_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~20_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~20_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[68]~75_combout\);

-- Location: LC_X6_Y5_N5
\uREG|Div0|auto_generated|divider|divider|StageOut[67]~68\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[67]~68_combout\ = ((\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~15_combout\ & ((\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~15_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[67]~68_combout\);

-- Location: LC_X6_Y6_N1
\uREG|Div0|auto_generated|divider|divider|StageOut[67]~19\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[67]~19_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[58]~18_combout\) # 
-- ((\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[58]~18_combout\,
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~5_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[67]~19_combout\);

-- Location: LC_X6_Y5_N6
\uREG|Div0|auto_generated|divider|divider|StageOut[66]~61\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[66]~61_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~10_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~10_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[66]~61_combout\);

-- Location: LC_X7_Y5_N8
\uREG|Div0|auto_generated|divider|divider|StageOut[65]~53\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[65]~53_combout\ = ((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(8) & ((!\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(8),
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[65]~53_combout\);

-- Location: LC_X6_Y5_N3
\uREG|Div0|auto_generated|divider|divider|StageOut[65]~54\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[65]~54_combout\ = ((!\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella\(1) & ((\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella\(1),
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[65]~54_combout\);

-- Location: LC_X8_Y5_N5
\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[1]\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella\(1) = ((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(7)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[1]~COUT\ = CARRY(((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(7))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[1]~COUTCOUT1_44\ = CARRY(((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella\(1),
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[1]~COUT\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[1]~COUTCOUT1_44\);

-- Location: LC_X8_Y5_N6
\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~42\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~42_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[1]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[1]~COUT\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[1]~COUTCOUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~42_combout\);

-- Location: LC_X7_Y5_N0
\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~37\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~37_cout0\ = CARRY(((\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~42_combout\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~37COUT1_45\ = CARRY(((\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~35\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~37_cout0\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~37COUT1_45\);

-- Location: LC_X7_Y5_N1
\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~10\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~10_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~37_cout0\ $ (((!\uREG|Div0|auto_generated|divider|divider|StageOut[65]~53_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|StageOut[65]~54_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~12\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[65]~53_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[65]~54_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~37_cout0\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~12COUT1_46\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[65]~53_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[65]~54_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~37COUT1_45\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[65]~53_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[65]~54_combout\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~37_cout0\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~37COUT1_45\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~10_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~12\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~12COUT1_46\);

-- Location: LC_X7_Y5_N2
\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~15\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~15_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~12\ $ (((\uREG|Div0|auto_generated|divider|divider|StageOut[66]~12_combout\) # 
-- ((\uREG|Div0|auto_generated|divider|divider|StageOut[66]~61_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~17\ = CARRY((\uREG|Div0|auto_generated|divider|divider|StageOut[66]~12_combout\) # ((\uREG|Div0|auto_generated|divider|divider|StageOut[66]~61_combout\) # 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~12\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~17COUT1_47\ = CARRY((\uREG|Div0|auto_generated|divider|divider|StageOut[66]~12_combout\) # ((\uREG|Div0|auto_generated|divider|divider|StageOut[66]~61_combout\) # 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~12COUT1_46\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "1eef",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[66]~12_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[66]~61_combout\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~12\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~12COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~15_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~17\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~17COUT1_47\);

-- Location: LC_X7_Y5_N3
\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~20\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~20_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~17\ $ (((!\uREG|Div0|auto_generated|divider|divider|StageOut[67]~68_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|StageOut[67]~19_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~22\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[67]~68_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[67]~19_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~17\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~22COUT1_48\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[67]~68_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[67]~19_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~17COUT1_47\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[67]~68_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[67]~19_combout\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~17\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~17COUT1_47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~20_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~22\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~22COUT1_48\);

-- Location: LC_X7_Y5_N4
\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~25\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~25_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~22\ $ (((!\uREG|Div0|auto_generated|divider|divider|StageOut[68]~26_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|StageOut[68]~75_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~27\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~22COUT1_48\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[68]~26_combout\) # 
-- (\uREG|Div0|auto_generated|divider|divider|StageOut[68]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[68]~26_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[68]~75_combout\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~22\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~22COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~25_combout\,
	cout => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~27\);

-- Location: LC_X5_Y5_N8
\uREG|Div0|auto_generated|divider|divider|StageOut[70]~38\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[70]~38_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~30_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~30_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[70]~38_combout\);

-- Location: LC_X7_Y5_N9
\uREG|Div0|auto_generated|divider|divider|StageOut[70]~37\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[70]~37_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[61]~36_combout\) # 
-- ((\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~20_combout\,
	datac => \uREG|Div0|auto_generated|divider|divider|StageOut[61]~36_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[70]~37_combout\);

-- Location: LC_X6_Y5_N0
\uREG|Div0|auto_generated|divider|divider|StageOut[69]~81\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[69]~81_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~25_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~25_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[69]~81_combout\);

-- Location: LC_X6_Y4_N0
\uREG|Div0|auto_generated|divider|divider|StageOut[69]~32\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[69]~32_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[60]~31_combout\) # 
-- ((\uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~15_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~15_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\,
	datac => \uREG|Div0|auto_generated|divider|divider|StageOut[60]~31_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[69]~32_combout\);

-- Location: LC_X7_Y5_N5
\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~30\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~30_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~27\ $ (((!\uREG|Div0|auto_generated|divider|divider|StageOut[69]~81_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|StageOut[69]~32_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~32\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[69]~81_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[69]~32_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~27\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~32COUT1_49\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[69]~81_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[69]~32_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~27\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[69]~81_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[69]~32_combout\,
	cin => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~30_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~32\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~32COUT1_49\);

-- Location: LC_X7_Y5_N6
\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~7\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~7_cout0\ = CARRY((\uREG|Div0|auto_generated|divider|divider|StageOut[70]~38_combout\) # ((\uREG|Div0|auto_generated|divider|divider|StageOut[70]~37_combout\) # 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~32\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~7COUT1_50\ = CARRY((\uREG|Div0|auto_generated|divider|divider|StageOut[70]~38_combout\) # ((\uREG|Div0|auto_generated|divider|divider|StageOut[70]~37_combout\) # 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~32COUT1_49\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ffef",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[70]~38_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[70]~37_combout\,
	cin => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~27\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~32\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~32COUT1_49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~5\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~7_cout0\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~7COUT1_50\);

-- Location: LC_X7_Y5_N7
\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\ = ((((!\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~27\ & \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~7_cout0\) # 
-- (\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~27\ & \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~7COUT1_50\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~27\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~7_cout0\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~7COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\);

-- Location: LC_X6_Y5_N4
\uREG|Div0|auto_generated|divider|divider|StageOut[75]~13\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[75]~13_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[66]~12_combout\) # 
-- ((\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[66]~12_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0_combout\,
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~10_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[75]~13_combout\);

-- Location: LC_X8_Y5_N4
\uREG|Div0|auto_generated|divider|divider|StageOut[75]~62\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[75]~62_combout\ = ((\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~15_combout\ & ((\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~15_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[75]~62_combout\);

-- Location: LC_X8_Y5_N0
\uREG|Div0|auto_generated|divider|divider|StageOut[74]~55\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[74]~55_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~10_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~10_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[74]~55_combout\);

-- Location: LC_X9_Y5_N9
\uREG|Div0|auto_generated|divider|divider|StageOut[74]~6\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[74]~6_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella\(1))) # (!\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "050c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella\(1),
	datab => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(8),
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[74]~6_combout\);

-- Location: LC_X8_Y5_N1
\uREG|Div0|auto_generated|divider|divider|StageOut[73]~43\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[73]~43_combout\ = (((!\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella\(1) & \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella\(1),
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[73]~43_combout\);

-- Location: LC_X8_Y5_N2
\uREG|Div0|auto_generated|divider|divider|StageOut[73]~42\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[73]~42_combout\ = (((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(7) & !\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(7),
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[73]~42_combout\);

-- Location: LC_X7_Y6_N0
\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[1]\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella\(1) = ((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(6)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[1]~COUT\ = CARRY(((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(6))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[1]~COUTCOUT1_50\ = CARRY(((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella\(1),
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[1]~COUT\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[1]~COUTCOUT1_50\);

-- Location: LC_X7_Y6_N1
\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~42\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~42_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[1]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[1]~COUT\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[1]~COUTCOUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~42_combout\);

-- Location: LC_X9_Y5_N0
\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~37\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~37_cout0\ = CARRY(((\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~42_combout\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~37COUT1_44\ = CARRY(((\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~35\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~37_cout0\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~37COUT1_44\);

-- Location: LC_X9_Y5_N1
\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~10\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~10_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~37_cout0\ $ (((!\uREG|Div0|auto_generated|divider|divider|StageOut[73]~43_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|StageOut[73]~42_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~12\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[73]~43_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[73]~42_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~37_cout0\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~12COUT1_45\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[73]~43_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[73]~42_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~37COUT1_44\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[73]~43_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[73]~42_combout\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~37_cout0\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~37COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~10_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~12\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~12COUT1_45\);

-- Location: LC_X9_Y5_N2
\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~15\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~15_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~12\ $ (((\uREG|Div0|auto_generated|divider|divider|StageOut[74]~55_combout\) # 
-- ((\uREG|Div0|auto_generated|divider|divider|StageOut[74]~6_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~17\ = CARRY((\uREG|Div0|auto_generated|divider|divider|StageOut[74]~55_combout\) # ((\uREG|Div0|auto_generated|divider|divider|StageOut[74]~6_combout\) # 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~12\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~17COUT1_46\ = CARRY((\uREG|Div0|auto_generated|divider|divider|StageOut[74]~55_combout\) # ((\uREG|Div0|auto_generated|divider|divider|StageOut[74]~6_combout\) # 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~12COUT1_45\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "1eef",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[74]~55_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[74]~6_combout\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~12\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~12COUT1_45\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~15_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~17\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~17COUT1_46\);

-- Location: LC_X9_Y5_N3
\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~20\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~20_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~17\ $ (((!\uREG|Div0|auto_generated|divider|divider|StageOut[75]~13_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|StageOut[75]~62_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~22\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[75]~13_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[75]~62_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~17\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~22COUT1_47\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[75]~13_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[75]~62_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~17COUT1_46\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[75]~13_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[75]~62_combout\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~17\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~17COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~20_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~22\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~22COUT1_47\);

-- Location: LC_X8_Y5_N8
\uREG|Div0|auto_generated|divider|divider|StageOut[76]~69\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[76]~69_combout\ = ((\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~20_combout\ & ((\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~20_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[76]~69_combout\);

-- Location: LC_X6_Y6_N5
\uREG|Div0|auto_generated|divider|divider|StageOut[76]~20\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[76]~20_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[67]~19_combout\) # 
-- ((\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~15_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~15_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0_combout\,
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|StageOut[67]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[76]~20_combout\);

-- Location: LC_X9_Y5_N4
\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~25\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~25_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~22\ $ (((!\uREG|Div0|auto_generated|divider|divider|StageOut[76]~69_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|StageOut[76]~20_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~27\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~22COUT1_47\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[76]~69_combout\) # 
-- (\uREG|Div0|auto_generated|divider|divider|StageOut[76]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[76]~69_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[76]~20_combout\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~22\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~22COUT1_47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~25_combout\,
	cout => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~27\);

-- Location: LC_X9_Y5_N8
\uREG|Div0|auto_generated|divider|divider|StageOut[78]~33\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[78]~33_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[69]~32_combout\) # 
-- ((\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~25_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~25_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0_combout\,
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|StageOut[69]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[78]~33_combout\);

-- Location: LC_X8_Y5_N7
\uREG|Div0|auto_generated|divider|divider|StageOut[78]~34\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[78]~34_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~30_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~30_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[78]~34_combout\);

-- Location: LC_X8_Y5_N3
\uREG|Div0|auto_generated|divider|divider|StageOut[77]~76\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[77]~76_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~25_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~25_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[77]~76_combout\);

-- Location: LC_X4_Y5_N8
\uREG|Div0|auto_generated|divider|divider|StageOut[77]~27\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[77]~27_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[68]~26_combout\) # 
-- ((\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~20_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~20_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0_combout\,
	datac => \uREG|Div0|auto_generated|divider|divider|StageOut[68]~26_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[77]~27_combout\);

-- Location: LC_X9_Y5_N5
\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~30\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~30_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~27\ $ (((!\uREG|Div0|auto_generated|divider|divider|StageOut[77]~76_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|StageOut[77]~27_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~32\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[77]~76_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[77]~27_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~27\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~32COUT1_48\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[77]~76_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[77]~27_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~27\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[77]~76_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[77]~27_combout\,
	cin => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~30_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~32\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~32COUT1_48\);

-- Location: LC_X9_Y5_N6
\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~7\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~7_cout0\ = CARRY((\uREG|Div0|auto_generated|divider|divider|StageOut[78]~33_combout\) # ((\uREG|Div0|auto_generated|divider|divider|StageOut[78]~34_combout\) # 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~32\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~7COUT1_49\ = CARRY((\uREG|Div0|auto_generated|divider|divider|StageOut[78]~33_combout\) # ((\uREG|Div0|auto_generated|divider|divider|StageOut[78]~34_combout\) # 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~32COUT1_48\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ffef",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[78]~33_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[78]~34_combout\,
	cin => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~27\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~32\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~32COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~5\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~7_cout0\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~7COUT1_49\);

-- Location: LC_X9_Y5_N7
\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\ = ((((!\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~27\ & \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~7_cout0\) # 
-- (\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~27\ & \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~7COUT1_49\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~27\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~7_cout0\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~7COUT1_49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\);

-- Location: LC_X10_Y5_N9
\uREG|Div0|auto_generated|divider|divider|StageOut[84]~63\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[84]~63_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~20_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~20_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[84]~63_combout\);

-- Location: LC_X6_Y5_N9
\uREG|Div0|auto_generated|divider|divider|StageOut[84]~14\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[84]~14_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[75]~13_combout\) # 
-- ((\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~15_combout\,
	datac => \uREG|Div0|auto_generated|divider|divider|StageOut[75]~13_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[84]~14_combout\);

-- Location: LC_X10_Y5_N4
\uREG|Div0|auto_generated|divider|divider|StageOut[83]~7\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[83]~7_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[74]~6_combout\) # 
-- ((\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~10_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~10_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\,
	datac => \uREG|Div0|auto_generated|divider|divider|StageOut[74]~6_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[83]~7_combout\);

-- Location: LC_X10_Y5_N3
\uREG|Div0|auto_generated|divider|divider|StageOut[83]~56\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[83]~56_combout\ = ((\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~15_combout\ & ((\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~15_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[83]~56_combout\);

-- Location: LC_X12_Y5_N6
\uREG|Div0|auto_generated|divider|divider|StageOut[82]~0\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[82]~0_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella\(1))) # (!\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "005c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella\(1),
	datab => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(7),
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[82]~0_combout\);

-- Location: LC_X10_Y5_N2
\uREG|Div0|auto_generated|divider|divider|StageOut[82]~44\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[82]~44_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~10_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~10_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[82]~44_combout\);

-- Location: LC_X12_Y5_N0
\uREG|Div0|auto_generated|divider|divider|StageOut[81]~90\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[81]~90_combout\ = (((!\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella\(1) & \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella\(1),
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[81]~90_combout\);

-- Location: LC_X10_Y5_N7
\uREG|Div0|auto_generated|divider|divider|StageOut[81]~89\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[81]~89_combout\ = (((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(6) & !\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(6),
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[81]~89_combout\);

-- Location: LC_X10_Y2_N7
\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~42\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~42_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[1]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[1]~COUT\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[1]~COUTCOUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~42_combout\);

-- Location: LC_X11_Y5_N0
\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~37\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~37_cout0\ = CARRY((\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~42_combout\))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~37COUT1_44\ = CARRY((\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~35\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~37_cout0\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~37COUT1_44\);

-- Location: LC_X11_Y5_N1
\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~30\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~30_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~37_cout0\ $ (((!\uREG|Div0|auto_generated|divider|divider|StageOut[81]~90_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|StageOut[81]~89_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~32\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[81]~90_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[81]~89_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~37_cout0\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~32COUT1_45\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[81]~90_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[81]~89_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~37COUT1_44\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[81]~90_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[81]~89_combout\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~37_cout0\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~37COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~30_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~32\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~32COUT1_45\);

-- Location: LC_X11_Y5_N2
\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~10\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~10_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~32\ $ (((\uREG|Div0|auto_generated|divider|divider|StageOut[82]~0_combout\) # 
-- ((\uREG|Div0|auto_generated|divider|divider|StageOut[82]~44_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~12\ = CARRY((\uREG|Div0|auto_generated|divider|divider|StageOut[82]~0_combout\) # ((\uREG|Div0|auto_generated|divider|divider|StageOut[82]~44_combout\) # 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~32\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~12COUT1_46\ = CARRY((\uREG|Div0|auto_generated|divider|divider|StageOut[82]~0_combout\) # ((\uREG|Div0|auto_generated|divider|divider|StageOut[82]~44_combout\) # 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~32COUT1_45\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "1eef",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[82]~0_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[82]~44_combout\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~32\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~32COUT1_45\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~10_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~12\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~12COUT1_46\);

-- Location: LC_X11_Y5_N3
\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~15\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~15_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~12\ $ (((!\uREG|Div0|auto_generated|divider|divider|StageOut[83]~7_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|StageOut[83]~56_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~17\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[83]~7_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[83]~56_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~12\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~17COUT1_47\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[83]~7_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[83]~56_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~12COUT1_46\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[83]~7_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[83]~56_combout\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~12\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~12COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~15_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~17\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~17COUT1_47\);

-- Location: LC_X11_Y5_N4
\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~20\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~20_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~17\ $ (((!\uREG|Div0|auto_generated|divider|divider|StageOut[84]~63_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|StageOut[84]~14_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~22\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~17COUT1_47\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[84]~63_combout\) # 
-- (\uREG|Div0|auto_generated|divider|divider|StageOut[84]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[84]~63_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[84]~14_combout\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~17\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~17COUT1_47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~20_combout\,
	cout => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~22\);

-- Location: LC_X10_Y5_N8
\uREG|Div0|auto_generated|divider|divider|StageOut[86]~29\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[86]~29_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~30_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~30_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[86]~29_combout\);

-- Location: LC_X11_Y5_N9
\uREG|Div0|auto_generated|divider|divider|StageOut[86]~28\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[86]~28_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[77]~27_combout\) # 
-- ((\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~25_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~25_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\,
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|StageOut[77]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[86]~28_combout\);

-- Location: LC_X12_Y5_N7
\uREG|Div0|auto_generated|divider|divider|StageOut[85]~70\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[85]~70_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~25_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~25_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[85]~70_combout\);

-- Location: LC_X6_Y6_N0
\uREG|Div0|auto_generated|divider|divider|StageOut[85]~21\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[85]~21_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[76]~20_combout\) # 
-- ((\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~20_combout\,
	datac => \uREG|Div0|auto_generated|divider|divider|StageOut[76]~20_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[85]~21_combout\);

-- Location: LC_X11_Y5_N5
\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~25\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~25_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~22\ $ (((!\uREG|Div0|auto_generated|divider|divider|StageOut[85]~70_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|StageOut[85]~21_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~27\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[85]~70_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[85]~21_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~22\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~27COUT1_48\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[85]~70_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[85]~21_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~22\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[85]~70_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[85]~21_combout\,
	cin => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~25_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~27\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~27COUT1_48\);

-- Location: LC_X11_Y5_N6
\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~7\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~7_cout0\ = CARRY((\uREG|Div0|auto_generated|divider|divider|StageOut[86]~29_combout\) # ((\uREG|Div0|auto_generated|divider|divider|StageOut[86]~28_combout\) # 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~27\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~7COUT1_49\ = CARRY((\uREG|Div0|auto_generated|divider|divider|StageOut[86]~29_combout\) # ((\uREG|Div0|auto_generated|divider|divider|StageOut[86]~28_combout\) # 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~27COUT1_48\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ffef",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[86]~29_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[86]~28_combout\,
	cin => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~22\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~27\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~27COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~5\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~7_cout0\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~7COUT1_49\);

-- Location: LC_X11_Y5_N7
\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\ = ((((!\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~22\ & \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~7_cout0\) # 
-- (\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~22\ & \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~7COUT1_49\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~22\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~7_cout0\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~7COUT1_49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\);

-- Location: LC_X12_Y2_N1
\uREG|Div0|auto_generated|divider|divider|StageOut[89]~103\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[89]~103_combout\ = (((!\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella\(1) & \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella\(1),
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[89]~103_combout\);

-- Location: LC_X12_Y2_N8
\uREG|Div0|auto_generated|divider|divider|StageOut[89]~102\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[89]~102_combout\ = (((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(5) & !\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(5),
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[89]~102_combout\);

-- Location: LC_X10_Y4_N3
\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[1]\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella\(1) = ((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(4)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[1]~COUT\ = CARRY(((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(4))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[1]~COUTCOUT1_50\ = CARRY(((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella\(1),
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[1]~COUT\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[1]~COUTCOUT1_50\);

-- Location: LC_X10_Y4_N4
\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~42\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~42_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[1]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[1]~COUT\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[1]~COUTCOUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~42_combout\);

-- Location: LC_X11_Y2_N0
\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~37\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~37_cout0\ = CARRY(((\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~42_combout\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~37COUT1_44\ = CARRY(((\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~35\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~37_cout0\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~37COUT1_44\);

-- Location: LC_X11_Y2_N1
\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~30\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~30_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~37_cout0\ $ (((!\uREG|Div0|auto_generated|divider|divider|StageOut[89]~103_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|StageOut[89]~102_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~32\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[89]~103_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[89]~102_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~37_cout0\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~32COUT1_45\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[89]~103_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[89]~102_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~37COUT1_44\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[89]~103_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[89]~102_combout\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~37_cout0\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~37COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~30_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~32\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~32COUT1_45\);

-- Location: LC_X10_Y5_N5
\uREG|Div0|auto_generated|divider|divider|StageOut[92]~8\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[92]~8_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[83]~7_combout\) # 
-- ((\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~15_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~15_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\,
	datac => \uREG|Div0|auto_generated|divider|divider|StageOut[83]~7_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[92]~8_combout\);

-- Location: LC_X12_Y2_N2
\uREG|Div0|auto_generated|divider|divider|StageOut[92]~57\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[92]~57_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~15_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~15_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[92]~57_combout\);

-- Location: LC_X12_Y2_N3
\uREG|Div0|auto_generated|divider|divider|StageOut[91]~45\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[91]~45_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~10_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~10_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[91]~45_combout\);

-- Location: LC_X12_Y6_N9
\uREG|Div0|auto_generated|divider|divider|StageOut[91]~1\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[91]~1_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[82]~0_combout\) # 
-- ((\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~10_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~10_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\,
	datac => \uREG|Div0|auto_generated|divider|divider|StageOut[82]~0_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[91]~1_combout\);

-- Location: LC_X12_Y2_N0
\uREG|Div0|auto_generated|divider|divider|StageOut[90]~91\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[90]~91_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~30_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~30_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[90]~91_combout\);

-- Location: LC_X12_Y6_N6
\uREG|Div0|auto_generated|divider|divider|StageOut[90]~48\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[90]~48_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella\(1))) # (!\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "005c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella\(1),
	datab => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(6),
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[90]~48_combout\);

-- Location: LC_X11_Y2_N2
\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~25\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~25_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~32\ $ (((\uREG|Div0|auto_generated|divider|divider|StageOut[90]~91_combout\) # 
-- ((\uREG|Div0|auto_generated|divider|divider|StageOut[90]~48_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~27\ = CARRY((\uREG|Div0|auto_generated|divider|divider|StageOut[90]~91_combout\) # ((\uREG|Div0|auto_generated|divider|divider|StageOut[90]~48_combout\) # 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~32\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~27COUT1_46\ = CARRY((\uREG|Div0|auto_generated|divider|divider|StageOut[90]~91_combout\) # ((\uREG|Div0|auto_generated|divider|divider|StageOut[90]~48_combout\) # 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~32COUT1_45\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "1eef",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[90]~91_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[90]~48_combout\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~32\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~32COUT1_45\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~25_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~27\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~27COUT1_46\);

-- Location: LC_X11_Y2_N3
\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~10\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~10_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~27\ $ (((!\uREG|Div0|auto_generated|divider|divider|StageOut[91]~45_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|StageOut[91]~1_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~12\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[91]~45_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[91]~1_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~27\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~12COUT1_47\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[91]~45_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[91]~1_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~27COUT1_46\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[91]~45_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[91]~1_combout\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~27\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~27COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~10_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~12\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~12COUT1_47\);

-- Location: LC_X11_Y2_N4
\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~15\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~15_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~12\ $ (((!\uREG|Div0|auto_generated|divider|divider|StageOut[92]~8_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|StageOut[92]~57_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~17\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~12COUT1_47\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[92]~8_combout\) # 
-- (\uREG|Div0|auto_generated|divider|divider|StageOut[92]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[92]~8_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[92]~57_combout\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~12\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~12COUT1_47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~15_combout\,
	cout => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~17\);

-- Location: LC_X11_Y5_N8
\uREG|Div0|auto_generated|divider|divider|StageOut[94]~23\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[94]~23_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~25_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~25_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[94]~23_combout\);

-- Location: LC_X11_Y2_N9
\uREG|Div0|auto_generated|divider|divider|StageOut[94]~22\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[94]~22_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[85]~21_combout\) # 
-- ((\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[85]~21_combout\,
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~25_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[94]~22_combout\);

-- Location: LC_X12_Y2_N6
\uREG|Div0|auto_generated|divider|divider|StageOut[93]~64\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[93]~64_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~20_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~20_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[93]~64_combout\);

-- Location: LC_X10_Y5_N6
\uREG|Div0|auto_generated|divider|divider|StageOut[93]~15\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[93]~15_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[84]~14_combout\) # 
-- ((\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~20_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~20_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\,
	datac => \uREG|Div0|auto_generated|divider|divider|StageOut[84]~14_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[93]~15_combout\);

-- Location: LC_X11_Y2_N5
\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~20\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~20_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~17\ $ (((!\uREG|Div0|auto_generated|divider|divider|StageOut[93]~64_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|StageOut[93]~15_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~22\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[93]~64_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[93]~15_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~17\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~22COUT1_48\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[93]~64_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[93]~15_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~17\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[93]~64_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[93]~15_combout\,
	cin => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~20_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~22\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~22COUT1_48\);

-- Location: LC_X11_Y2_N6
\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~7\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~7_cout0\ = CARRY((\uREG|Div0|auto_generated|divider|divider|StageOut[94]~23_combout\) # ((\uREG|Div0|auto_generated|divider|divider|StageOut[94]~22_combout\) # 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~22\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~7COUT1_49\ = CARRY((\uREG|Div0|auto_generated|divider|divider|StageOut[94]~23_combout\) # ((\uREG|Div0|auto_generated|divider|divider|StageOut[94]~22_combout\) # 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~22COUT1_48\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ffef",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[94]~23_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[94]~22_combout\,
	cin => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~17\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~22\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~22COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~5\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~7_cout0\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~7COUT1_49\);

-- Location: LC_X11_Y2_N7
\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\ = ((((!\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~17\ & \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~7_cout0\) # 
-- (\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~17\ & \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~7COUT1_49\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~17\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~7_cout0\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~7COUT1_49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\);

-- Location: LC_X12_Y2_N5
\uREG|Div0|auto_generated|divider|divider|StageOut[98]~104\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[98]~104_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~30_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~30_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[98]~104_combout\);

-- Location: LC_X10_Y2_N5
\uREG|Div0|auto_generated|divider|divider|StageOut[98]~94\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[98]~94_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella\(1))) # (!\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "005c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella\(1),
	datab => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(5),
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[98]~94_combout\);

-- Location: LC_X12_Y4_N1
\uREG|Div0|auto_generated|divider|divider|StageOut[97]~109\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[97]~109_combout\ = (((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(4) & !\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(4),
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[97]~109_combout\);

-- Location: LC_X12_Y4_N9
\uREG|Div0|auto_generated|divider|divider|StageOut[97]~110\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[97]~110_combout\ = ((!\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella\(1) & ((\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella\(1),
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[97]~110_combout\);

-- Location: LC_X10_Y4_N8
\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[1]\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella\(1) = ((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(3)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[1]~COUT\ = CARRY(((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(3))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[1]~COUTCOUT1_50\ = CARRY(((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella\(1),
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[1]~COUT\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[1]~COUTCOUT1_50\);

-- Location: LC_X10_Y4_N9
\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~42\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~42_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[1]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[1]~COUT\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[1]~COUTCOUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~42_combout\);

-- Location: LC_X11_Y4_N0
\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~37\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~37_cout0\ = CARRY((\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~42_combout\))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~37COUT1_44\ = CARRY((\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~35\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~37_cout0\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~37COUT1_44\);

-- Location: LC_X11_Y4_N1
\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~30\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~30_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~37_cout0\ $ (((!\uREG|Div0|auto_generated|divider|divider|StageOut[97]~109_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|StageOut[97]~110_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~32\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[97]~109_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[97]~110_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~37_cout0\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~32COUT1_45\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[97]~109_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[97]~110_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~37COUT1_44\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[97]~109_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[97]~110_combout\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~37_cout0\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~37COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~30_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~32\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~32COUT1_45\);

-- Location: LC_X11_Y4_N2
\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~25\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~25_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~32\ $ (((\uREG|Div0|auto_generated|divider|divider|StageOut[98]~104_combout\) # 
-- ((\uREG|Div0|auto_generated|divider|divider|StageOut[98]~94_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~27\ = CARRY((\uREG|Div0|auto_generated|divider|divider|StageOut[98]~104_combout\) # ((\uREG|Div0|auto_generated|divider|divider|StageOut[98]~94_combout\) # 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~32\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~27COUT1_46\ = CARRY((\uREG|Div0|auto_generated|divider|divider|StageOut[98]~104_combout\) # ((\uREG|Div0|auto_generated|divider|divider|StageOut[98]~94_combout\) # 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~32COUT1_45\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "1eef",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[98]~104_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[98]~94_combout\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~32\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~32COUT1_45\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~25_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~27\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~27COUT1_46\);

-- Location: LC_X12_Y4_N6
\uREG|Div0|auto_generated|divider|divider|StageOut[100]~46\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[100]~46_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~10_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~10_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[100]~46_combout\);

-- Location: LC_X12_Y6_N0
\uREG|Div0|auto_generated|divider|divider|StageOut[100]~2\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[100]~2_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[91]~1_combout\) # 
-- ((\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[91]~1_combout\,
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~10_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[100]~2_combout\);

-- Location: LC_X12_Y4_N7
\uREG|Div0|auto_generated|divider|divider|StageOut[99]~92\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[99]~92_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~25_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~25_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[99]~92_combout\);

-- Location: LC_X12_Y6_N3
\uREG|Div0|auto_generated|divider|divider|StageOut[99]~49\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[99]~49_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[90]~48_combout\) # 
-- ((\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~30_combout\,
	datac => \uREG|Div0|auto_generated|divider|divider|StageOut[90]~48_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[99]~49_combout\);

-- Location: LC_X11_Y4_N3
\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~20\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~20_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~27\ $ (((!\uREG|Div0|auto_generated|divider|divider|StageOut[99]~92_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|StageOut[99]~49_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~22\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[99]~92_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[99]~49_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~27\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~22COUT1_47\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[99]~92_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[99]~49_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~27COUT1_46\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[99]~92_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[99]~49_combout\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~27\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~27COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~20_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~22\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~22COUT1_47\);

-- Location: LC_X11_Y4_N4
\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~10\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~10_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~22\ $ (((!\uREG|Div0|auto_generated|divider|divider|StageOut[100]~46_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|StageOut[100]~2_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~12\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~22COUT1_47\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[100]~46_combout\) # 
-- (\uREG|Div0|auto_generated|divider|divider|StageOut[100]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[100]~46_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[100]~2_combout\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~22\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~22COUT1_47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~10_combout\,
	cout => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~12\);

-- Location: LC_X11_Y4_N8
\uREG|Div0|auto_generated|divider|divider|StageOut[102]~16\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[102]~16_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[93]~15_combout\) # 
-- ((\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~20_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~20_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[93]~15_combout\,
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[102]~16_combout\);

-- Location: LC_X11_Y2_N8
\uREG|Div0|auto_generated|divider|divider|StageOut[102]~17\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[102]~17_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~20_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~20_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[102]~17_combout\);

-- Location: LC_X12_Y4_N3
\uREG|Div0|auto_generated|divider|divider|StageOut[101]~58\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[101]~58_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~15_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~15_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[101]~58_combout\);

-- Location: LC_X10_Y5_N0
\uREG|Div0|auto_generated|divider|divider|StageOut[101]~9\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[101]~9_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[92]~8_combout\) # 
-- ((\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~15_combout\,
	datac => \uREG|Div0|auto_generated|divider|divider|StageOut[92]~8_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[101]~9_combout\);

-- Location: LC_X11_Y4_N5
\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~15\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~15_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~12\ $ (((!\uREG|Div0|auto_generated|divider|divider|StageOut[101]~58_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|StageOut[101]~9_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~17\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[101]~58_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[101]~9_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~12\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~17COUT1_48\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[101]~58_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[101]~9_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~12\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[101]~58_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[101]~9_combout\,
	cin => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~15_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~17\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~17COUT1_48\);

-- Location: LC_X11_Y4_N6
\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~7\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~7_cout0\ = CARRY((\uREG|Div0|auto_generated|divider|divider|StageOut[102]~16_combout\) # ((\uREG|Div0|auto_generated|divider|divider|StageOut[102]~17_combout\) # 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~17\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~7COUT1_49\ = CARRY((\uREG|Div0|auto_generated|divider|divider|StageOut[102]~16_combout\) # ((\uREG|Div0|auto_generated|divider|divider|StageOut[102]~17_combout\) # 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~17COUT1_48\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ffef",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[102]~16_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[102]~17_combout\,
	cin => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~12\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~17\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~17COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~5\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~7_cout0\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~7COUT1_49\);

-- Location: LC_X11_Y4_N7
\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\ = ((((!\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~12\ & \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~7_cout0\) # 
-- (\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~12\ & \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~7COUT1_49\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~12\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~7_cout0\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~7COUT1_49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\);

-- Location: LC_X12_Y6_N1
\uREG|Div0|auto_generated|divider|divider|StageOut[107]~105\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[107]~105_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~25_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~25_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[107]~105_combout\);

-- Location: LC_X10_Y2_N0
\uREG|Div0|auto_generated|divider|divider|StageOut[107]~95\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[107]~95_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[98]~94_combout\) # 
-- ((\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~30_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~30_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\,
	datac => \uREG|Div0|auto_generated|divider|divider|StageOut[98]~94_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[107]~95_combout\);

-- Location: LC_X12_Y4_N4
\uREG|Div0|auto_generated|divider|divider|StageOut[106]~111\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[106]~111_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~30_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~30_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[106]~111_combout\);

-- Location: LC_X10_Y4_N7
\uREG|Div0|auto_generated|divider|divider|StageOut[106]~106\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[106]~106_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella\(1))) # (!\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "005c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella\(1),
	datab => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(4),
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[106]~106_combout\);

-- Location: LC_X11_Y6_N8
\uREG|Div0|auto_generated|divider|divider|StageOut[105]~114\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[105]~114_combout\ = (((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(3) & !\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(3),
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[105]~114_combout\);

-- Location: LC_X12_Y4_N5
\uREG|Div0|auto_generated|divider|divider|StageOut[105]~115\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[105]~115_combout\ = (((!\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella\(1) & \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella\(1),
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[105]~115_combout\);

-- Location: LC_X7_Y6_N5
\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[1]\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella\(1) = ((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(2)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[1]~COUT\ = CARRY(((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(2))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[1]~COUTCOUT1_50\ = CARRY(((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella\(1),
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[1]~COUT\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[1]~COUTCOUT1_50\);

-- Location: LC_X7_Y6_N6
\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~42\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~42_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[1]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[1]~COUT\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[1]~COUTCOUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~42_combout\);

-- Location: LC_X11_Y6_N0
\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~37\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~37_cout0\ = CARRY(((\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~42_combout\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~37COUT1_44\ = CARRY(((\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~35\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~37_cout0\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~37COUT1_44\);

-- Location: LC_X11_Y6_N1
\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~30\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~30_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~37_cout0\ $ (((!\uREG|Div0|auto_generated|divider|divider|StageOut[105]~114_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|StageOut[105]~115_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~32\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[105]~114_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[105]~115_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~37_cout0\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~32COUT1_45\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[105]~114_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[105]~115_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~37COUT1_44\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[105]~114_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[105]~115_combout\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~37_cout0\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~37COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~30_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~32\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~32COUT1_45\);

-- Location: LC_X11_Y6_N2
\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~25\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~25_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~32\ $ (((\uREG|Div0|auto_generated|divider|divider|StageOut[106]~111_combout\) # 
-- ((\uREG|Div0|auto_generated|divider|divider|StageOut[106]~106_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~27\ = CARRY((\uREG|Div0|auto_generated|divider|divider|StageOut[106]~111_combout\) # ((\uREG|Div0|auto_generated|divider|divider|StageOut[106]~106_combout\) # 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~32\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~27COUT1_46\ = CARRY((\uREG|Div0|auto_generated|divider|divider|StageOut[106]~111_combout\) # ((\uREG|Div0|auto_generated|divider|divider|StageOut[106]~106_combout\) # 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~32COUT1_45\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "1eef",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[106]~111_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[106]~106_combout\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~32\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~32COUT1_45\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~25_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~27\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~27COUT1_46\);

-- Location: LC_X11_Y6_N3
\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~20\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~20_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~27\ $ (((!\uREG|Div0|auto_generated|divider|divider|StageOut[107]~105_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|StageOut[107]~95_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~22\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[107]~105_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[107]~95_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~27\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~22COUT1_47\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[107]~105_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[107]~95_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~27COUT1_46\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[107]~105_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[107]~95_combout\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~27\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~27COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~20_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~22\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~22COUT1_47\);

-- Location: LC_X12_Y6_N7
\uREG|Div0|auto_generated|divider|divider|StageOut[108]~93\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[108]~93_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~20_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~20_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[108]~93_combout\);

-- Location: LC_X12_Y6_N4
\uREG|Div0|auto_generated|divider|divider|StageOut[108]~50\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[108]~50_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[99]~49_combout\) # 
-- ((\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~25_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[99]~49_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~25_combout\,
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[108]~50_combout\);

-- Location: LC_X11_Y6_N4
\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~15\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~15_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~22\ $ (((!\uREG|Div0|auto_generated|divider|divider|StageOut[108]~93_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|StageOut[108]~50_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~17\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~22COUT1_47\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[108]~93_combout\) # 
-- (\uREG|Div0|auto_generated|divider|divider|StageOut[108]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[108]~93_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[108]~50_combout\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~22\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~22COUT1_47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~15_combout\,
	cout => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~17\);

-- Location: LC_X11_Y4_N9
\uREG|Div0|auto_generated|divider|divider|StageOut[110]~11\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[110]~11_combout\ = ((\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\ & (\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\,
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[110]~11_combout\);

-- Location: LC_X10_Y5_N1
\uREG|Div0|auto_generated|divider|divider|StageOut[110]~10\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[110]~10_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[101]~9_combout\) # 
-- ((\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~15_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~15_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\,
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|StageOut[101]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[110]~10_combout\);

-- Location: LC_X12_Y6_N5
\uREG|Div0|auto_generated|divider|divider|StageOut[109]~3\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[109]~3_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[100]~2_combout\) # 
-- ((\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~10_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~10_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[100]~2_combout\,
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[109]~3_combout\);

-- Location: LC_X12_Y6_N2
\uREG|Div0|auto_generated|divider|divider|StageOut[109]~47\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[109]~47_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~10_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~10_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[109]~47_combout\);

-- Location: LC_X11_Y6_N5
\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~10\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~10_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~17\ $ (((!\uREG|Div0|auto_generated|divider|divider|StageOut[109]~3_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|StageOut[109]~47_combout\))))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~12\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[109]~3_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[109]~47_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~17\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~12COUT1_48\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[109]~3_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[109]~47_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~17\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[109]~3_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[109]~47_combout\,
	cin => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~10_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~12\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~12COUT1_48\);

-- Location: LC_X11_Y6_N6
\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~7\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~7_cout0\ = CARRY((\uREG|Div0|auto_generated|divider|divider|StageOut[110]~11_combout\) # ((\uREG|Div0|auto_generated|divider|divider|StageOut[110]~10_combout\) # 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~12\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~7COUT1_49\ = CARRY((\uREG|Div0|auto_generated|divider|divider|StageOut[110]~11_combout\) # ((\uREG|Div0|auto_generated|divider|divider|StageOut[110]~10_combout\) # 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~12COUT1_48\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ffef",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[110]~11_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[110]~10_combout\,
	cin => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~17\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~12\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~12COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~5\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~7_cout0\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~7COUT1_49\);

-- Location: LC_X11_Y6_N7
\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~0\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~0_combout\ = ((((!\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~17\ & \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~7_cout0\) # 
-- (\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~17\ & \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~7COUT1_49\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~17\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~7_cout0\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~7COUT1_49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~0_combout\);

-- Location: LC_X10_Y6_N1
\uREG|Div0|auto_generated|divider|divider|StageOut[116]~97\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[116]~97_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~20_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~20_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[116]~97_combout\);

-- Location: LC_X10_Y2_N4
\uREG|Div0|auto_generated|divider|divider|StageOut[116]~96\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[116]~96_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[107]~95_combout\) # 
-- ((\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~25_combout\,
	datac => \uREG|Div0|auto_generated|divider|divider|StageOut[107]~95_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[116]~96_combout\);

-- Location: LC_X10_Y6_N0
\uREG|Div0|auto_generated|divider|divider|StageOut[115]~108\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[115]~108_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~25_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~25_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[115]~108_combout\);

-- Location: LC_X10_Y4_N6
\uREG|Div0|auto_generated|divider|divider|StageOut[115]~107\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[115]~107_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[106]~106_combout\) # 
-- ((\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~30_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~30_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\,
	datac => \uREG|Div0|auto_generated|divider|divider|StageOut[106]~106_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[115]~107_combout\);

-- Location: LC_X10_Y6_N3
\uREG|Div0|auto_generated|divider|divider|StageOut[114]~113\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[114]~113_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~30_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~30_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[114]~113_combout\);

-- Location: LC_X10_Y4_N2
\uREG|Div0|auto_generated|divider|divider|StageOut[114]~112\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[114]~112_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\ & 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella\(1))) # (!\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "005c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella\(1),
	datab => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(3),
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[114]~112_combout\);

-- Location: LC_X11_Y6_N9
\uREG|Div0|auto_generated|divider|divider|StageOut[113]~117\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[113]~117_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella\(1) & (((\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella\(1),
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[113]~117_combout\);

-- Location: LC_X10_Y6_N4
\uREG|Div0|auto_generated|divider|divider|StageOut[113]~116\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[113]~116_combout\ = ((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(2) & ((!\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(2),
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[113]~116_combout\);

-- Location: LC_X10_Y6_N7
\uREG|Div0|auto_generated|divider|divider|StageOut[112]~119\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[112]~119_combout\ = ((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(1) & ((\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(1),
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[112]~119_combout\);

-- Location: LC_X10_Y6_N8
\uREG|Div0|auto_generated|divider|divider|StageOut[112]~118\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[112]~118_combout\ = ((\uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(1) & ((!\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uREG|Div0|auto_generated|divider|my_abs_num|result_tmp\(1),
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[112]~118_combout\);

-- Location: LC_X9_Y6_N0
\uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~37\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~37_cout0\ = CARRY((\uREG|Div0|auto_generated|divider|divider|StageOut[112]~119_combout\) # ((\uREG|Div0|auto_generated|divider|divider|StageOut[112]~118_combout\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~37COUT1_41\ = CARRY((\uREG|Div0|auto_generated|divider|divider|StageOut[112]~119_combout\) # ((\uREG|Div0|auto_generated|divider|divider|StageOut[112]~118_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffee",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[112]~119_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[112]~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~35\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~37_cout0\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~37COUT1_41\);

-- Location: LC_X9_Y6_N1
\uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~32\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~32_cout0\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[113]~117_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[113]~116_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~37_cout0\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~32COUT1_42\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[113]~117_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[113]~116_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~37COUT1_41\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff01",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[113]~117_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[113]~116_combout\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~37_cout0\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~37COUT1_41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~30\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~32_cout0\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~32COUT1_42\);

-- Location: LC_X9_Y6_N2
\uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~27\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~27_cout0\ = CARRY((\uREG|Div0|auto_generated|divider|divider|StageOut[114]~113_combout\) # ((\uREG|Div0|auto_generated|divider|divider|StageOut[114]~112_combout\) # 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~32_cout0\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~27COUT1_43\ = CARRY((\uREG|Div0|auto_generated|divider|divider|StageOut[114]~113_combout\) # ((\uREG|Div0|auto_generated|divider|divider|StageOut[114]~112_combout\) # 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~32COUT1_42\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ffef",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[114]~113_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[114]~112_combout\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~32_cout0\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~32COUT1_42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~25\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~27_cout0\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~27COUT1_43\);

-- Location: LC_X9_Y6_N3
\uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~22\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~22_cout0\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[115]~108_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[115]~107_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~27_cout0\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~22COUT1_44\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[115]~108_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[115]~107_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~27COUT1_43\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff01",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[115]~108_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[115]~107_combout\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~27_cout0\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~27COUT1_43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~20\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~22_cout0\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~22COUT1_44\);

-- Location: LC_X9_Y6_N4
\uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~17\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~17_cout\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~22COUT1_44\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[116]~97_combout\) # 
-- (\uREG|Div0|auto_generated|divider|divider|StageOut[116]~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff0e",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[116]~97_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[116]~96_combout\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~22_cout0\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~22COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~15\,
	cout => \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~17_cout\);

-- Location: LC_X10_Y6_N2
\uREG|Div0|auto_generated|divider|divider|StageOut[118]~5\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[118]~5_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~0_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~0_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[118]~5_combout\);

-- Location: LC_X12_Y6_N8
\uREG|Div0|auto_generated|divider|divider|StageOut[118]~4\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[118]~4_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[109]~3_combout\) # 
-- ((\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~10_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~10_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\,
	datac => \uREG|Div0|auto_generated|divider|divider|StageOut[109]~3_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[118]~4_combout\);

-- Location: LC_X10_Y6_N6
\uREG|Div0|auto_generated|divider|divider|StageOut[117]~51\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[117]~51_combout\ = (!\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~0_combout\ & ((\uREG|Div0|auto_generated|divider|divider|StageOut[108]~50_combout\) # 
-- ((\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~20_combout\,
	datac => \uREG|Div0|auto_generated|divider|divider|StageOut[108]~50_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[117]~51_combout\);

-- Location: LC_X10_Y6_N9
\uREG|Div0|auto_generated|divider|divider|StageOut[117]~52\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|StageOut[117]~52_combout\ = (((\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~15_combout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~15_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|StageOut[117]~52_combout\);

-- Location: LC_X9_Y6_N5
\uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~12\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~12_cout0\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[117]~51_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[117]~52_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~17_cout\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~12COUT1_45\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|StageOut[117]~51_combout\ & (!\uREG|Div0|auto_generated|divider|divider|StageOut[117]~52_combout\ & 
-- !\uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff01",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[117]~51_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[117]~52_combout\,
	cin => \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~17_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~10\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~12_cout0\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~12COUT1_45\);

-- Location: LC_X9_Y6_N6
\uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~7\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~7_cout0\ = CARRY((\uREG|Div0|auto_generated|divider|divider|StageOut[118]~5_combout\) # ((\uREG|Div0|auto_generated|divider|divider|StageOut[118]~4_combout\) # 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~12_cout0\)))
-- \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~7COUT1_46\ = CARRY((\uREG|Div0|auto_generated|divider|divider|StageOut[118]~5_combout\) # ((\uREG|Div0|auto_generated|divider|divider|StageOut[118]~4_combout\) # 
-- (!\uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~12COUT1_45\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ffef",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|StageOut[118]~5_combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|StageOut[118]~4_combout\,
	cin => \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~17_cout\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~12_cout0\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~12COUT1_45\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~5\,
	cout0 => \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~7_cout0\,
	cout1 => \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~7COUT1_46\);

-- Location: LC_X9_Y6_N7
\uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~0\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~0_combout\ = ((((!\uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~17_cout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~7_cout0\) # 
-- (\uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~17_cout\ & \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~7COUT1_46\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~17_cout\,
	cin0 => \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~7_cout0\,
	cin1 => \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~7COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~0_combout\);

-- Location: LC_X9_Y6_N8
\uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[0]\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella\(0) = ((\uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~0_combout\))
-- \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[0]~COUT\ = CARRY(((!\uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~0_combout\)))
-- \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[0]~COUTCOUT1_39\ = CARRY(((!\uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc33",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella\(0),
	cout0 => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[0]~COUT\,
	cout1 => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[0]~COUTCOUT1_39\);

-- Location: LC_X10_Y6_N5
\uREG|sortie[0]\ : maxv_lcell
-- Equation(s):
-- \uREG|sortie\(0) = DFFEAS((\uMAC|tamp\(15) & (((!\uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~0_combout\)))) # (!\uMAC|tamp\(15) & (!\uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella\(0))), \uMAE|H_REG~combout\, VCC, 
-- , , VCC, \RAZ~combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "11dd",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_REG~combout\,
	dataa => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella\(0),
	datab => \uMAC|tamp\(15),
	datac => VCC,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_15|add_sub_cella[2]~0_combout\,
	aclr => GND,
	aload => \RAZ~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uREG|sortie\(0));

-- Location: LC_X9_Y6_N9
\uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~37\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~37_combout\ = (((\uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[0]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[0]~COUT\,
	cin1 => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[0]~COUTCOUT1_39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~37_combout\);

-- Location: LC_X8_Y6_N1
\uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~0\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~0_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~0_combout\ $ ((!\uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~37_combout\))
-- \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~2\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~0_combout\ & (\uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~37_combout\)))
-- \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~2COUT1_40\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~0_combout\ & (\uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9944",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~0_combout\,
	datab => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~0_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~2\,
	cout1 => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~2COUT1_40\);

-- Location: LC_X8_Y6_N9
\uREG|sortie[1]\ : maxv_lcell
-- Equation(s):
-- \uREG|sortie\(1) = DFFEAS((\uMAC|tamp\(15) & (((\uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~0_combout\)))) # (!\uMAC|tamp\(15) & (((\uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~0_combout\)))), 
-- \uMAE|H_REG~combout\, !\RAZ~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_REG~combout\,
	dataa => \uMAC|tamp\(15),
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_14|add_sub_cella[2]~0_combout\,
	datad => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~0_combout\,
	aclr => \RAZ~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uREG|sortie\(1));

-- Location: LC_X8_Y6_N2
\uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~5\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~5_combout\ = (\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\ $ ((!\uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~2\)))
-- \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~7\ = CARRY(((\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\) # (!\uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~2\)))
-- \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~7COUT1_41\ = CARRY(((\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\) # (!\uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~2COUT1_40\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c3cf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\,
	cin0 => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~2\,
	cin1 => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~2COUT1_40\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~5_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~7\,
	cout1 => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~7COUT1_41\);

-- Location: LC_X8_Y6_N8
\uREG|sortie[2]\ : maxv_lcell
-- Equation(s):
-- \uREG|sortie\(2) = DFFEAS(((\uMAC|tamp\(15) & (\uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\)) # (!\uMAC|tamp\(15) & ((\uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~5_combout\)))), 
-- \uMAE|H_REG~combout\, !\RAZ~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_REG~combout\,
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[2]~0_combout\,
	datac => \uMAC|tamp\(15),
	datad => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~5_combout\,
	aclr => \RAZ~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uREG|sortie\(2));

-- Location: LC_X8_Y6_N3
\uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~10\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~10_combout\ = (\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\ $ ((\uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~7\)))
-- \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~12\ = CARRY(((!\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\ & !\uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~7\)))
-- \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~12COUT1_42\ = CARRY(((!\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\ & !\uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~7COUT1_41\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c03",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\,
	cin0 => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~7\,
	cin1 => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~7COUT1_41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~10_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~12\,
	cout1 => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~12COUT1_42\);

-- Location: LC_X8_Y6_N0
\uREG|sortie[3]\ : maxv_lcell
-- Equation(s):
-- \uREG|sortie\(3) = DFFEAS((\uMAC|tamp\(15) & (\uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\)) # (!\uMAC|tamp\(15) & (((\uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~10_combout\)))), 
-- \uMAE|H_REG~combout\, !\RAZ~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_REG~combout\,
	dataa => \uMAC|tamp\(15),
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~0_combout\,
	datad => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~10_combout\,
	aclr => \RAZ~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uREG|sortie\(3));

-- Location: LC_X8_Y6_N4
\uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~15\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~15_combout\ = (\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\ $ ((!\uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~12\)))
-- \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~17\ = CARRY(((\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\) # (!\uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~12COUT1_42\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c3cf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\,
	cin0 => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~12\,
	cin1 => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~12COUT1_42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~15_combout\,
	cout => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~17\);

-- Location: LC_X7_Y6_N3
\uREG|sortie[4]\ : maxv_lcell
-- Equation(s):
-- \uREG|sortie\(4) = DFFEAS(((\uMAC|tamp\(15) & (\uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\)) # (!\uMAC|tamp\(15) & ((\uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~15_combout\)))), 
-- \uMAE|H_REG~combout\, !\RAZ~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_REG~combout\,
	datab => \uMAC|tamp\(15),
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~0_combout\,
	datad => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~15_combout\,
	aclr => \RAZ~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uREG|sortie\(4));

-- Location: LC_X8_Y6_N5
\uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~20\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~20_combout\ = \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\ $ ((((\uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~17\))))
-- \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~22\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\ & ((!\uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~17\))))
-- \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~22COUT1_43\ = CARRY((!\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\ & ((!\uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~17\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a05",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\,
	cin => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~20_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~22\,
	cout1 => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~22COUT1_43\);

-- Location: LC_X7_Y6_N2
\uREG|sortie[5]\ : maxv_lcell
-- Equation(s):
-- \uREG|sortie\(5) = DFFEAS(((\uMAC|tamp\(15) & (\uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\)) # (!\uMAC|tamp\(15) & ((\uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~20_combout\)))), 
-- \uMAE|H_REG~combout\, !\RAZ~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_REG~combout\,
	datab => \uMAC|tamp\(15),
	datac => \uREG|Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~0_combout\,
	datad => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~20_combout\,
	aclr => \RAZ~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uREG|sortie\(5));

-- Location: LC_X8_Y6_N6
\uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~25\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~25_combout\ = (\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\ $ ((!(!\uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~17\ & 
-- \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~22\) # (\uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~17\ & \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~22COUT1_43\))))
-- \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~27\ = CARRY(((\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\) # (!\uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~22\)))
-- \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~27COUT1_44\ = CARRY(((\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\) # (!\uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~22COUT1_43\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c3cf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\,
	cin => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~17\,
	cin0 => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~22\,
	cin1 => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~22COUT1_43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~25_combout\,
	cout0 => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~27\,
	cout1 => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~27COUT1_44\);

-- Location: LC_X7_Y6_N4
\uREG|sortie[6]\ : maxv_lcell
-- Equation(s):
-- \uREG|sortie\(6) = DFFEAS(((\uMAC|tamp\(15) & ((\uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\))) # (!\uMAC|tamp\(15) & (\uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~25_combout\))), 
-- \uMAE|H_REG~combout\, !\RAZ~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_REG~combout\,
	datab => \uMAC|tamp\(15),
	datac => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~25_combout\,
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~0_combout\,
	aclr => \RAZ~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uREG|sortie\(6));

-- Location: LC_X8_Y6_N7
\uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~30\ : maxv_lcell
-- Equation(s):
-- \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~30_combout\ = (((!\uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~17\ & \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~27\) # 
-- (\uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~17\ & \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~27COUT1_44\) $ (\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0_combout\,
	cin => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~17\,
	cin0 => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~27\,
	cin1 => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~27COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~30_combout\);

-- Location: LC_X7_Y6_N7
\uREG|sortie[7]\ : maxv_lcell
-- Equation(s):
-- \uREG|sortie\(7) = DFFEAS((\uMAC|tamp\(15) & (!\uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0_combout\)) # (!\uMAC|tamp\(15) & (((!\uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~30_combout\)))), 
-- \uMAE|H_REG~combout\, VCC, , , VCC, \RAZ~combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4477",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \uMAE|H_REG~combout\,
	dataa => \uREG|Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~0_combout\,
	datab => \uMAC|tamp\(15),
	datac => VCC,
	datad => \uREG|Div0|auto_generated|divider|compl_add_quot|add_sub_cella[1]~30_combout\,
	aclr => GND,
	aload => \RAZ~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uREG|sortie\(7));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sortie[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \uREG|ALT_INV_sortie\(0),
	oe => VCC,
	padio => ww_sortie(0));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sortie[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \uREG|sortie\(1),
	oe => VCC,
	padio => ww_sortie(1));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sortie[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \uREG|sortie\(2),
	oe => VCC,
	padio => ww_sortie(2));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sortie[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \uREG|sortie\(3),
	oe => VCC,
	padio => ww_sortie(3));

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sortie[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \uREG|sortie\(4),
	oe => VCC,
	padio => ww_sortie(4));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sortie[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \uREG|sortie\(5),
	oe => VCC,
	padio => ww_sortie(5));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sortie[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \uREG|sortie\(6),
	oe => VCC,
	padio => ww_sortie(6));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sortie[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \uREG|ALT_INV_sortie\(7),
	oe => VCC,
	padio => ww_sortie(7));
END structure;


