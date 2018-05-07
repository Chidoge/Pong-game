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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Full Version"

-- DATE "05/07/2018 12:59:19"

-- 
-- Device: Altera EP3C16F484C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	\305game\ IS
    PORT (
	green_out : OUT std_logic;
	bt1 : IN std_logic;
	bt2 : IN std_logic;
	SW : IN std_logic_vector(0 DOWNTO 0);
	clk : IN std_logic;
	blue_out : OUT std_logic;
	red_out : OUT std_logic;
	vert_sync_out : OUT std_logic;
	horiz_sync_out : OUT std_logic;
	mouse_data : OUT std_logic;
	mouse_clk : OUT std_logic;
	seg0 : OUT std_logic_vector(6 DOWNTO 0);
	seg1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END \305game\;

-- Design Ports Information
-- green_out	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt1	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue_out	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red_out	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vert_sync_out	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horiz_sync_out	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_data	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_clk	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt2	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF \305game\ IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_green_out : std_logic;
SIGNAL ww_bt1 : std_logic;
SIGNAL ww_bt2 : std_logic;
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_blue_out : std_logic;
SIGNAL ww_red_out : std_logic;
SIGNAL ww_vert_sync_out : std_logic;
SIGNAL ww_horiz_sync_out : std_logic;
SIGNAL ww_mouse_data : std_logic;
SIGNAL ww_mouse_clk : std_logic;
SIGNAL ww_seg0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst|SYNC|vert_sync_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|clk_out_hz_temp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|New_mouse|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|Add2~2_combout\ : std_logic;
SIGNAL \inst|Add3~4_combout\ : std_logic;
SIGNAL \inst|Add1~6_combout\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Add11~7_combout\ : std_logic;
SIGNAL \inst|Add11~11_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~0_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~2_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~4_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~6_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~8_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~10_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~12_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~14_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~17\ : std_logic;
SIGNAL \inst|SYNC|Add1~18_combout\ : std_logic;
SIGNAL \inst|New_mouse|inhibit_wait_count[1]~10_combout\ : std_logic;
SIGNAL \inst|New_mouse|inhibit_wait_count[2]~12_combout\ : std_logic;
SIGNAL \inst|New_mouse|inhibit_wait_count[7]~22_combout\ : std_logic;
SIGNAL \inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|Platform_On~0_combout\ : std_logic;
SIGNAL \inst|Platform_On~1_combout\ : std_logic;
SIGNAL \inst|Platform_On~2_combout\ : std_logic;
SIGNAL \inst|Platform_On~6_combout\ : std_logic;
SIGNAL \inst|Ball_Y_motion~1_combout\ : std_logic;
SIGNAL \inst|Move_Ball:Ball_Y_motion[8]~q\ : std_logic;
SIGNAL \inst|Add11~23_combout\ : std_logic;
SIGNAL \inst|Move_Ball:Ball_Y_motion[7]~q\ : std_logic;
SIGNAL \inst|Add11~25_combout\ : std_logic;
SIGNAL \inst|Move_Ball:Ball_Y_motion[6]~q\ : std_logic;
SIGNAL \inst|Add11~27_combout\ : std_logic;
SIGNAL \inst|Move_Ball:Ball_Y_motion[5]~q\ : std_logic;
SIGNAL \inst|Add11~29_combout\ : std_logic;
SIGNAL \inst|Add11~30_combout\ : std_logic;
SIGNAL \inst|Move_Ball:Ball_Y_motion[4]~q\ : std_logic;
SIGNAL \inst|Add11~31_combout\ : std_logic;
SIGNAL \inst|Move_Ball:Ball_Y_motion[3]~q\ : std_logic;
SIGNAL \inst|Add11~33_combout\ : std_logic;
SIGNAL \inst|Add11~34_combout\ : std_logic;
SIGNAL \inst|Add11~35_combout\ : std_logic;
SIGNAL \inst|Add11~36_combout\ : std_logic;
SIGNAL \inst|Move_Ball:Ball_Y_motion[0]~q\ : std_logic;
SIGNAL \inst|Add11~39_combout\ : std_logic;
SIGNAL \inst|Move_Ball:Ball_X_motion[3]~q\ : std_logic;
SIGNAL \inst|Ball_X_motion~1_combout\ : std_logic;
SIGNAL \inst|Ball_X_motion~2_combout\ : std_logic;
SIGNAL \inst|Ball_X_motion~3_combout\ : std_logic;
SIGNAL \inst|Ball_X_motion~4_combout\ : std_logic;
SIGNAL \inst|LessThan9~0_combout\ : std_logic;
SIGNAL \inst|New_mouse|send_char~q\ : std_logic;
SIGNAL \inst|SYNC|Equal1~0_combout\ : std_logic;
SIGNAL \inst|SYNC|Equal1~1_combout\ : std_logic;
SIGNAL \inst|SYNC|Equal0~1_combout\ : std_logic;
SIGNAL \inst|New_mouse|MOUSE_CLK_FILTER~0_combout\ : std_logic;
SIGNAL \inst|New_mouse|MOUSE_CLK_FILTER~1_combout\ : std_logic;
SIGNAL \inst|New_mouse|MOUSE_CLK_FILTER~2_combout\ : std_logic;
SIGNAL \inst|New_mouse|MOUSE_CLK_FILTER~3_combout\ : std_logic;
SIGNAL \inst|New_mouse|send_char~0_combout\ : std_logic;
SIGNAL \inst|New_mouse|OUTCNT~0_combout\ : std_logic;
SIGNAL \bt1~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \inst|SYNC|vert_sync_out~clkctrl_outclk\ : std_logic;
SIGNAL \inst|New_mouse|filter[0]~feeder_combout\ : std_logic;
SIGNAL \inst|New_mouse|filter[3]~feeder_combout\ : std_logic;
SIGNAL \inst|New_mouse|filter[5]~feeder_combout\ : std_logic;
SIGNAL \inst|New_mouse|filter[4]~feeder_combout\ : std_logic;
SIGNAL \inst|New_mouse|filter[6]~feeder_combout\ : std_logic;
SIGNAL \inst|New_mouse|filter[1]~feeder_combout\ : std_logic;
SIGNAL \inst|New_mouse|filter[2]~feeder_combout\ : std_logic;
SIGNAL \mouse_data~output_o\ : std_logic;
SIGNAL \mouse_clk~output_o\ : std_logic;
SIGNAL \green_out~output_o\ : std_logic;
SIGNAL \blue_out~output_o\ : std_logic;
SIGNAL \red_out~output_o\ : std_logic;
SIGNAL \vert_sync_out~output_o\ : std_logic;
SIGNAL \horiz_sync_out~output_o\ : std_logic;
SIGNAL \seg0[6]~output_o\ : std_logic;
SIGNAL \seg0[5]~output_o\ : std_logic;
SIGNAL \seg0[4]~output_o\ : std_logic;
SIGNAL \seg0[3]~output_o\ : std_logic;
SIGNAL \seg0[2]~output_o\ : std_logic;
SIGNAL \seg0[1]~output_o\ : std_logic;
SIGNAL \seg0[0]~output_o\ : std_logic;
SIGNAL \seg1[6]~output_o\ : std_logic;
SIGNAL \seg1[5]~output_o\ : std_logic;
SIGNAL \seg1[4]~output_o\ : std_logic;
SIGNAL \seg1[3]~output_o\ : std_logic;
SIGNAL \seg1[2]~output_o\ : std_logic;
SIGNAL \seg1[1]~output_o\ : std_logic;
SIGNAL \seg1[0]~output_o\ : std_logic;
SIGNAL \inst|New_mouse|MOUSE_CLK_FILTER~feeder_combout\ : std_logic;
SIGNAL \inst|New_mouse|MOUSE_CLK_FILTER~q\ : std_logic;
SIGNAL \inst|New_mouse|MOUSE_CLK_FILTER~clkctrl_outclk\ : std_logic;
SIGNAL \inst|New_mouse|SHIFTOUT[9]~feeder_combout\ : std_logic;
SIGNAL \inst|New_mouse|inhibit_wait_count[0]~30_combout\ : std_logic;
SIGNAL \inst|New_mouse|inhibit_wait_count[1]~11\ : std_logic;
SIGNAL \inst|New_mouse|inhibit_wait_count[2]~13\ : std_logic;
SIGNAL \inst|New_mouse|inhibit_wait_count[3]~14_combout\ : std_logic;
SIGNAL \inst|New_mouse|inhibit_wait_count[3]~15\ : std_logic;
SIGNAL \inst|New_mouse|inhibit_wait_count[4]~16_combout\ : std_logic;
SIGNAL \inst|New_mouse|inhibit_wait_count[4]~17\ : std_logic;
SIGNAL \inst|New_mouse|inhibit_wait_count[5]~18_combout\ : std_logic;
SIGNAL \inst|New_mouse|inhibit_wait_count[5]~19\ : std_logic;
SIGNAL \inst|New_mouse|inhibit_wait_count[6]~20_combout\ : std_logic;
SIGNAL \inst|New_mouse|inhibit_wait_count[6]~21\ : std_logic;
SIGNAL \inst|New_mouse|inhibit_wait_count[7]~23\ : std_logic;
SIGNAL \inst|New_mouse|inhibit_wait_count[8]~24_combout\ : std_logic;
SIGNAL \inst|New_mouse|inhibit_wait_count[8]~25\ : std_logic;
SIGNAL \inst|New_mouse|inhibit_wait_count[9]~27\ : std_logic;
SIGNAL \inst|New_mouse|inhibit_wait_count[10]~28_combout\ : std_logic;
SIGNAL \inst|New_mouse|Selector0~0_combout\ : std_logic;
SIGNAL \inst|New_mouse|mouse_state.INHIBIT_TRANS~q\ : std_logic;
SIGNAL \inst|New_mouse|inhibit_wait_count[9]~26_combout\ : std_logic;
SIGNAL \inst|New_mouse|Selector1~0_combout\ : std_logic;
SIGNAL \inst|New_mouse|mouse_state.LOAD_COMMAND~q\ : std_logic;
SIGNAL \inst|New_mouse|mouse_state.LOAD_COMMAND2~feeder_combout\ : std_logic;
SIGNAL \inst|New_mouse|mouse_state.LOAD_COMMAND2~q\ : std_logic;
SIGNAL \inst|New_mouse|Selector6~0_combout\ : std_logic;
SIGNAL \inst|New_mouse|send_data~q\ : std_logic;
SIGNAL \inst|New_mouse|OUTCNT~2_combout\ : std_logic;
SIGNAL \inst|New_mouse|output_ready~feeder_combout\ : std_logic;
SIGNAL \inst|New_mouse|output_ready~q\ : std_logic;
SIGNAL \inst|New_mouse|Selector3~0_combout\ : std_logic;
SIGNAL \inst|New_mouse|mouse_state.WAIT_OUTPUT_READY~q\ : std_logic;
SIGNAL \inst|New_mouse|output_ready~0_combout\ : std_logic;
SIGNAL \inst|New_mouse|OUTCNT~3_combout\ : std_logic;
SIGNAL \inst|New_mouse|OUTCNT~1_combout\ : std_logic;
SIGNAL \inst|New_mouse|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|New_mouse|MOUSE_DATA_BUF~0_combout\ : std_logic;
SIGNAL \inst|New_mouse|SHIFTOUT[8]~3_combout\ : std_logic;
SIGNAL \inst|New_mouse|SHIFTOUT[7]~feeder_combout\ : std_logic;
SIGNAL \inst|New_mouse|SHIFTOUT[6]~feeder_combout\ : std_logic;
SIGNAL \inst|New_mouse|SHIFTOUT[5]~feeder_combout\ : std_logic;
SIGNAL \inst|New_mouse|SHIFTOUT[4]~2_combout\ : std_logic;
SIGNAL \inst|New_mouse|SHIFTOUT[3]~1_combout\ : std_logic;
SIGNAL \inst|New_mouse|SHIFTOUT[2]~0_combout\ : std_logic;
SIGNAL \inst|New_mouse|MOUSE_DATA_BUF~q\ : std_logic;
SIGNAL \inst|New_mouse|WideOr4~combout\ : std_logic;
SIGNAL \inst4|clk_out_hz_temp~0_combout\ : std_logic;
SIGNAL \inst4|clk_out_hz_temp~feeder_combout\ : std_logic;
SIGNAL \inst4|clk_out_hz_temp~q\ : std_logic;
SIGNAL \inst4|clk_out_hz_temp~clkctrl_outclk\ : std_logic;
SIGNAL \inst|SYNC|Add0~1\ : std_logic;
SIGNAL \inst|SYNC|Add0~3\ : std_logic;
SIGNAL \inst|SYNC|Add0~4_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~5\ : std_logic;
SIGNAL \inst|SYNC|Add0~6_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~7\ : std_logic;
SIGNAL \inst|SYNC|Add0~8_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~9\ : std_logic;
SIGNAL \inst|SYNC|Add0~10_combout\ : std_logic;
SIGNAL \inst|SYNC|h_count~2_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~11\ : std_logic;
SIGNAL \inst|SYNC|Add0~12_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~2_combout\ : std_logic;
SIGNAL \inst|SYNC|Equal0~0_combout\ : std_logic;
SIGNAL \inst|SYNC|Equal0~2_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~13\ : std_logic;
SIGNAL \inst|SYNC|Add0~14_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~15\ : std_logic;
SIGNAL \inst|SYNC|Add0~17\ : std_logic;
SIGNAL \inst|SYNC|Add0~18_combout\ : std_logic;
SIGNAL \inst|SYNC|h_count~0_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~11_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~6_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~7_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~8_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[2]~0_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[7]~6_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[3]~8_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[2]~9_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~9_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~10_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[5]~1_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[5]~4_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~1\ : std_logic;
SIGNAL \inst|SYNC|Add1~3\ : std_logic;
SIGNAL \inst|SYNC|Add1~5\ : std_logic;
SIGNAL \inst|SYNC|Add1~7\ : std_logic;
SIGNAL \inst|SYNC|Add1~9\ : std_logic;
SIGNAL \inst|SYNC|Add1~11\ : std_logic;
SIGNAL \inst|SYNC|Add1~13\ : std_logic;
SIGNAL \inst|SYNC|Add1~15\ : std_logic;
SIGNAL \inst|SYNC|Add1~16_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[8]~2_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[9]~3_combout\ : std_logic;
SIGNAL \inst|SYNC|LessThan7~0_combout\ : std_logic;
SIGNAL \inst|SYNC|LessThan7~1_combout\ : std_logic;
SIGNAL \inst|Add11~2_cout\ : std_logic;
SIGNAL \inst|Add11~4\ : std_logic;
SIGNAL \inst|Add11~6\ : std_logic;
SIGNAL \inst|Add11~8\ : std_logic;
SIGNAL \inst|Add11~9_combout\ : std_logic;
SIGNAL \inst|Ball_X_pos[2]~9_combout\ : std_logic;
SIGNAL \inst|Ball_X_pos[2]~10\ : std_logic;
SIGNAL \inst|Ball_X_pos[3]~11_combout\ : std_logic;
SIGNAL \inst|Ball_X_pos[3]~12\ : std_logic;
SIGNAL \inst|Ball_X_pos[4]~13_combout\ : std_logic;
SIGNAL \inst|Ball_X_pos[4]~14\ : std_logic;
SIGNAL \inst|Ball_X_pos[5]~15_combout\ : std_logic;
SIGNAL \inst|Ball_X_pos[5]~16\ : std_logic;
SIGNAL \inst|Ball_X_pos[6]~17_combout\ : std_logic;
SIGNAL \inst|Ball_X_pos[6]~18\ : std_logic;
SIGNAL \inst|Ball_X_pos[7]~19_combout\ : std_logic;
SIGNAL \inst|Ball_X_pos[7]~20\ : std_logic;
SIGNAL \inst|Ball_X_pos[8]~21_combout\ : std_logic;
SIGNAL \inst|Ball_X_pos[8]~22\ : std_logic;
SIGNAL \inst|Ball_X_pos[9]~23_combout\ : std_logic;
SIGNAL \inst|Ball_X_motion~0_combout\ : std_logic;
SIGNAL \inst|Ball_Y_motion~0_combout\ : std_logic;
SIGNAL \inst|Ball_Y_motion~4_combout\ : std_logic;
SIGNAL \inst|Ball_Y_motion~5_combout\ : std_logic;
SIGNAL \inst|Add11~10\ : std_logic;
SIGNAL \inst|Add11~12\ : std_logic;
SIGNAL \inst|Add11~13_combout\ : std_logic;
SIGNAL \inst|Add11~28_combout\ : std_logic;
SIGNAL \inst|Add11~5_combout\ : std_logic;
SIGNAL \inst|Move_Ball:Ball_Y_motion[2]~q\ : std_logic;
SIGNAL \inst|Add11~37_combout\ : std_logic;
SIGNAL \inst|Add11~3_combout\ : std_logic;
SIGNAL \inst|Move_Ball:Ball_Y_motion[1]~q\ : std_logic;
SIGNAL \inst|Add11~38_combout\ : std_logic;
SIGNAL \inst|Ball_Y_pos[0]~10_combout\ : std_logic;
SIGNAL \inst|Ball_Y_pos[0]~11\ : std_logic;
SIGNAL \inst|Ball_Y_pos[1]~13\ : std_logic;
SIGNAL \inst|Ball_Y_pos[2]~15\ : std_logic;
SIGNAL \inst|Ball_Y_pos[3]~16_combout\ : std_logic;
SIGNAL \inst|Ball_Y_pos[3]~17\ : std_logic;
SIGNAL \inst|Ball_Y_pos[4]~19\ : std_logic;
SIGNAL \inst|Ball_Y_pos[5]~20_combout\ : std_logic;
SIGNAL \inst|Ball_Y_pos[5]~21\ : std_logic;
SIGNAL \inst|Ball_Y_pos[6]~22_combout\ : std_logic;
SIGNAL \inst|LessThan21~1_combout\ : std_logic;
SIGNAL \inst|Ball_Y_pos[2]~14_combout\ : std_logic;
SIGNAL \inst|Ball_Y_pos[1]~12_combout\ : std_logic;
SIGNAL \inst|LessThan21~0_combout\ : std_logic;
SIGNAL \inst|Move_Ball:Ball_Y_motion[9]~q\ : std_logic;
SIGNAL \inst|Add11~0_combout\ : std_logic;
SIGNAL \inst|Add11~18\ : std_logic;
SIGNAL \inst|Add11~19_combout\ : std_logic;
SIGNAL \inst|Add11~22_combout\ : std_logic;
SIGNAL \inst|Ball_Y_pos[6]~23\ : std_logic;
SIGNAL \inst|Ball_Y_pos[7]~25\ : std_logic;
SIGNAL \inst|Ball_Y_pos[8]~27\ : std_logic;
SIGNAL \inst|Ball_Y_pos[9]~28_combout\ : std_logic;
SIGNAL \inst|Ball_Y_motion~2_combout\ : std_logic;
SIGNAL \inst|Ball_Y_motion~3_combout\ : std_logic;
SIGNAL \inst|Ball_Y_motion~6_combout\ : std_logic;
SIGNAL \inst|Add11~32_combout\ : std_logic;
SIGNAL \inst|Ball_Y_pos[4]~18_combout\ : std_logic;
SIGNAL \inst|LessThan20~0_combout\ : std_logic;
SIGNAL \inst|Add11~21_combout\ : std_logic;
SIGNAL \inst|Add11~14\ : std_logic;
SIGNAL \inst|Add11~15_combout\ : std_logic;
SIGNAL \inst|Add11~26_combout\ : std_logic;
SIGNAL \inst|Ball_Y_pos[7]~24_combout\ : std_logic;
SIGNAL \inst|Add11~16\ : std_logic;
SIGNAL \inst|Add11~17_combout\ : std_logic;
SIGNAL \inst|Add11~24_combout\ : std_logic;
SIGNAL \inst|Ball_Y_pos[8]~26_combout\ : std_logic;
SIGNAL \inst|Add3~1\ : std_logic;
SIGNAL \inst|Add3~3\ : std_logic;
SIGNAL \inst|Add3~5\ : std_logic;
SIGNAL \inst|Add3~7\ : std_logic;
SIGNAL \inst|Add3~8_combout\ : std_logic;
SIGNAL \inst|Add3~6_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[6]~5_combout\ : std_logic;
SIGNAL \inst|Add3~2_combout\ : std_logic;
SIGNAL \inst|Add3~0_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count~10_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count~11_combout\ : std_logic;
SIGNAL \inst|LessThan3~1_cout\ : std_logic;
SIGNAL \inst|LessThan3~3_cout\ : std_logic;
SIGNAL \inst|LessThan3~5_cout\ : std_logic;
SIGNAL \inst|LessThan3~7_cout\ : std_logic;
SIGNAL \inst|LessThan3~9_cout\ : std_logic;
SIGNAL \inst|LessThan3~11_cout\ : std_logic;
SIGNAL \inst|LessThan3~13_cout\ : std_logic;
SIGNAL \inst|LessThan3~15_cout\ : std_logic;
SIGNAL \inst|LessThan3~16_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[4]~7_combout\ : std_logic;
SIGNAL \inst|Add2~1\ : std_logic;
SIGNAL \inst|Add2~3\ : std_logic;
SIGNAL \inst|Add2~5\ : std_logic;
SIGNAL \inst|Add2~7\ : std_logic;
SIGNAL \inst|Add2~8_combout\ : std_logic;
SIGNAL \inst|Add2~6_combout\ : std_logic;
SIGNAL \inst|Add2~4_combout\ : std_logic;
SIGNAL \inst|Add2~0_combout\ : std_logic;
SIGNAL \inst|LessThan2~1_cout\ : std_logic;
SIGNAL \inst|LessThan2~3_cout\ : std_logic;
SIGNAL \inst|LessThan2~5_cout\ : std_logic;
SIGNAL \inst|LessThan2~7_cout\ : std_logic;
SIGNAL \inst|LessThan2~9_cout\ : std_logic;
SIGNAL \inst|LessThan2~11_cout\ : std_logic;
SIGNAL \inst|LessThan2~13_cout\ : std_logic;
SIGNAL \inst|LessThan2~15_cout\ : std_logic;
SIGNAL \inst|LessThan2~17_cout\ : std_logic;
SIGNAL \inst|LessThan2~18_combout\ : std_logic;
SIGNAL \inst|Ball_on~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst|Ball_X_pos[9]~24\ : std_logic;
SIGNAL \inst|Ball_X_pos[10]~25_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~16_combout\ : std_logic;
SIGNAL \inst|SYNC|h_count~1_combout\ : std_logic;
SIGNAL \inst|SYNC|LessThan6~0_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_cout\ : std_logic;
SIGNAL \inst|LessThan0~3_cout\ : std_logic;
SIGNAL \inst|LessThan0~5_cout\ : std_logic;
SIGNAL \inst|LessThan0~7_cout\ : std_logic;
SIGNAL \inst|LessThan0~9_cout\ : std_logic;
SIGNAL \inst|LessThan0~11_cout\ : std_logic;
SIGNAL \inst|LessThan0~13_cout\ : std_logic;
SIGNAL \inst|LessThan0~15_cout\ : std_logic;
SIGNAL \inst|LessThan0~16_combout\ : std_logic;
SIGNAL \inst|Add2~9\ : std_logic;
SIGNAL \inst|Add2~10_combout\ : std_logic;
SIGNAL \inst|Add3~9\ : std_logic;
SIGNAL \inst|Add3~10_combout\ : std_logic;
SIGNAL \inst|Add1~1\ : std_logic;
SIGNAL \inst|Add1~3\ : std_logic;
SIGNAL \inst|Add1~5\ : std_logic;
SIGNAL \inst|Add1~7\ : std_logic;
SIGNAL \inst|Add1~9\ : std_logic;
SIGNAL \inst|Add1~11\ : std_logic;
SIGNAL \inst|Add1~12_combout\ : std_logic;
SIGNAL \inst|Ball_on~1_combout\ : std_logic;
SIGNAL \inst|SYNC|green_out~3_combout\ : std_logic;
SIGNAL \inst|SYNC|video_on_h~feeder_combout\ : std_logic;
SIGNAL \inst|SYNC|video_on_h~q\ : std_logic;
SIGNAL \inst|SYNC|video_on_v~q\ : std_logic;
SIGNAL \inst|SYNC|red_out~2_combout\ : std_logic;
SIGNAL \inst|Draw_Score_Text~4_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~0_combout\ : std_logic;
SIGNAL \inst|LessThan18~0_combout\ : std_logic;
SIGNAL \inst|Draw_Score_Text~5_combout\ : std_logic;
SIGNAL \inst|Draw_Score_Text~6_combout\ : std_logic;
SIGNAL \inst|Draw_Score_Text~2_combout\ : std_logic;
SIGNAL \inst|Draw_Score_Text~3_combout\ : std_logic;
SIGNAL \inst|char_adr[0]~8_combout\ : std_logic;
SIGNAL \inst|Draw_Score_Text~7_combout\ : std_logic;
SIGNAL \inst|Draw_Score_Text~9_combout\ : std_logic;
SIGNAL \inst|Draw_Score_Text~10_combout\ : std_logic;
SIGNAL \inst|char_adr[2]~9_combout\ : std_logic;
SIGNAL \inst|char_adr[0]~13_combout\ : std_logic;
SIGNAL \inst|char_adr~10_combout\ : std_logic;
SIGNAL \inst|char_adr[1]~14_combout\ : std_logic;
SIGNAL \inst|LessThan9~1_combout\ : std_logic;
SIGNAL \inst|char_adr[3]~11_combout\ : std_logic;
SIGNAL \inst|char_adr[4]~12_combout\ : std_logic;
SIGNAL \inst|char_adr[4]~15_combout\ : std_logic;
SIGNAL \inst|Draw_Score_Text~8_combout\ : std_logic;
SIGNAL \inst|char_adr[5]~16_combout\ : std_logic;
SIGNAL \inst|CHAR|Mux0~0_combout\ : std_logic;
SIGNAL \inst|SYNC|green_out~0_combout\ : std_logic;
SIGNAL \inst|CHAR|Mux0~1_combout\ : std_logic;
SIGNAL \inst|SYNC|green_out~1_combout\ : std_logic;
SIGNAL \inst|SYNC|green_out~2_combout\ : std_logic;
SIGNAL \inst|SYNC|green_out~4_combout\ : std_logic;
SIGNAL \inst|SYNC|green_out~q\ : std_logic;
SIGNAL \bt2~input_o\ : std_logic;
SIGNAL \inst|Platform_On~3_combout\ : std_logic;
SIGNAL \inst|Platform_On~4_combout\ : std_logic;
SIGNAL \inst|Platform_On~5_combout\ : std_logic;
SIGNAL \inst|Platform_On~7_combout\ : std_logic;
SIGNAL \inst|Platform_On~8_combout\ : std_logic;
SIGNAL \inst|Add1~10_combout\ : std_logic;
SIGNAL \inst|Add1~8_combout\ : std_logic;
SIGNAL \inst|Add1~4_combout\ : std_logic;
SIGNAL \inst|Add1~2_combout\ : std_logic;
SIGNAL \inst|Add1~0_combout\ : std_logic;
SIGNAL \inst|LessThan1~2_cout\ : std_logic;
SIGNAL \inst|LessThan1~4_cout\ : std_logic;
SIGNAL \inst|LessThan1~6_cout\ : std_logic;
SIGNAL \inst|LessThan1~8_cout\ : std_logic;
SIGNAL \inst|LessThan1~10_cout\ : std_logic;
SIGNAL \inst|LessThan1~12_cout\ : std_logic;
SIGNAL \inst|LessThan1~14_cout\ : std_logic;
SIGNAL \inst|LessThan1~16_cout\ : std_logic;
SIGNAL \inst|LessThan1~17_combout\ : std_logic;
SIGNAL \inst|Ball_on~combout\ : std_logic;
SIGNAL \inst|SYNC|blue_out~0_combout\ : std_logic;
SIGNAL \inst|SYNC|blue_out~q\ : std_logic;
SIGNAL \inst|SYNC|red_out~3_combout\ : std_logic;
SIGNAL \inst|SYNC|red_out~q\ : std_logic;
SIGNAL \inst|SYNC|process_0~0_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~1_combout\ : std_logic;
SIGNAL \inst|SYNC|vert_sync~q\ : std_logic;
SIGNAL \inst|SYNC|vert_sync_out~feeder_combout\ : std_logic;
SIGNAL \inst|SYNC|vert_sync_out~q\ : std_logic;
SIGNAL \inst|SYNC|process_0~3_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~4_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~2_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~5_combout\ : std_logic;
SIGNAL \inst|SYNC|horiz_sync~q\ : std_logic;
SIGNAL \inst|SYNC|horiz_sync_out~feeder_combout\ : std_logic;
SIGNAL \inst|SYNC|horiz_sync_out~q\ : std_logic;
SIGNAL \inst|New_mouse|inhibit_wait_count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|New_mouse|filter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|New_mouse|SHIFTOUT\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|New_mouse|OUTCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|Ball_Y_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|SYNC|pixel_column\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|SYNC|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|SYNC|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|CHAR|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|Ball_X_pos\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|SYNC|pixel_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|New_mouse|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\ : std_logic;
SIGNAL \inst|New_mouse|ALT_INV_send_data~q\ : std_logic;
SIGNAL \inst|New_mouse|ALT_INV_mouse_state.INHIBIT_TRANS~q\ : std_logic;

BEGIN

green_out <= ww_green_out;
ww_bt1 <= bt1;
ww_bt2 <= bt2;
ww_SW <= SW;
ww_clk <= clk;
blue_out <= ww_blue_out;
red_out <= ww_red_out;
vert_sync_out <= ww_vert_sync_out;
horiz_sync_out <= ww_horiz_sync_out;
mouse_data <= ww_mouse_data;
mouse_clk <= ww_mouse_clk;
seg0 <= ww_seg0;
seg1 <= ww_seg1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst|char_adr[5]~16_combout\ & \inst|char_adr[4]~15_combout\ & \inst|char_adr[3]~11_combout\ & \inst|char_adr[2]~9_combout\ & \inst|char_adr[1]~14_combout\ & 
\inst|char_adr[0]~13_combout\ & \inst|SYNC|pixel_row\(3) & \inst|SYNC|pixel_row\(2) & \inst|SYNC|pixel_row\(1));

\inst|CHAR|altsyncram_component|auto_generated|q_a\(0) <= \inst|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst|CHAR|altsyncram_component|auto_generated|q_a\(1) <= \inst|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst|CHAR|altsyncram_component|auto_generated|q_a\(2) <= \inst|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst|CHAR|altsyncram_component|auto_generated|q_a\(3) <= \inst|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst|CHAR|altsyncram_component|auto_generated|q_a\(4) <= \inst|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst|CHAR|altsyncram_component|auto_generated|q_a\(5) <= \inst|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst|CHAR|altsyncram_component|auto_generated|q_a\(6) <= \inst|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst|CHAR|altsyncram_component|auto_generated|q_a\(7) <= \inst|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\inst|SYNC|vert_sync_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|SYNC|vert_sync_out~q\);

\inst4|clk_out_hz_temp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst4|clk_out_hz_temp~q\);

\inst|New_mouse|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|New_mouse|MOUSE_CLK_FILTER~q\);
\inst|New_mouse|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\ <= NOT \inst|New_mouse|MOUSE_CLK_FILTER~clkctrl_outclk\;
\inst|New_mouse|ALT_INV_send_data~q\ <= NOT \inst|New_mouse|send_data~q\;
\inst|New_mouse|ALT_INV_mouse_state.INHIBIT_TRANS~q\ <= NOT \inst|New_mouse|mouse_state.INHIBIT_TRANS~q\;

-- Location: LCCOMB_X28_Y10_N22
\inst|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~2_combout\ = (\inst|SYNC|pixel_row\(5) & (!\inst|Add2~1\)) # (!\inst|SYNC|pixel_row\(5) & ((\inst|Add2~1\) # (GND)))
-- \inst|Add2~3\ = CARRY((!\inst|Add2~1\) # (!\inst|SYNC|pixel_row\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_row\(5),
	datad => VCC,
	cin => \inst|Add2~1\,
	combout => \inst|Add2~2_combout\,
	cout => \inst|Add2~3\);

-- Location: LCCOMB_X27_Y10_N6
\inst|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~4_combout\ = (\inst|Ball_Y_pos\(6) & (\inst|Add3~3\ $ (GND))) # (!\inst|Ball_Y_pos\(6) & (!\inst|Add3~3\ & VCC))
-- \inst|Add3~5\ = CARRY((\inst|Ball_Y_pos\(6) & !\inst|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(6),
	datad => VCC,
	cin => \inst|Add3~3\,
	combout => \inst|Add3~4_combout\,
	cout => \inst|Add3~5\);

-- Location: LCCOMB_X24_Y10_N6
\inst|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~6_combout\ = (\inst|Ball_X_pos\(7) & (!\inst|Add1~5\)) # (!\inst|Ball_X_pos\(7) & ((\inst|Add1~5\) # (GND)))
-- \inst|Add1~7\ = CARRY((!\inst|Add1~5\) # (!\inst|Ball_X_pos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_X_pos\(7),
	datad => VCC,
	cin => \inst|Add1~5\,
	combout => \inst|Add1~6_combout\,
	cout => \inst|Add1~7\);

-- Location: LCCOMB_X23_Y10_N20
\inst|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|SYNC|pixel_column\(5) & (!\inst|Add0~1\)) # (!\inst|SYNC|pixel_column\(5) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|SYNC|pixel_column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(5),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X23_Y10_N22
\inst|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|SYNC|pixel_column\(6) & (\inst|Add0~3\ $ (GND))) # (!\inst|SYNC|pixel_column\(6) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|SYNC|pixel_column\(6) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(6),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X23_Y10_N26
\inst|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|SYNC|pixel_column\(8) & (\inst|Add0~7\ $ (GND))) # (!\inst|SYNC|pixel_column\(8) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|SYNC|pixel_column\(8) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(8),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X23_Y10_N28
\inst|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|SYNC|pixel_column\(9) & (!\inst|Add0~9\)) # (!\inst|SYNC|pixel_column\(9) & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst|SYNC|pixel_column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(9),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X23_Y10_N30
\inst|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = !\inst|Add0~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\);

-- Location: LCCOMB_X29_Y11_N18
\inst|Add11~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~7_combout\ = (\inst|Ball_Y_pos\(3) & ((\inst|Add11~6\) # (GND))) # (!\inst|Ball_Y_pos\(3) & (!\inst|Add11~6\))
-- \inst|Add11~8\ = CARRY((\inst|Ball_Y_pos\(3)) # (!\inst|Add11~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(3),
	datad => VCC,
	cin => \inst|Add11~6\,
	combout => \inst|Add11~7_combout\,
	cout => \inst|Add11~8\);

-- Location: LCCOMB_X29_Y11_N22
\inst|Add11~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~11_combout\ = (\inst|Ball_Y_pos\(5) & ((\inst|Add11~10\) # (GND))) # (!\inst|Ball_Y_pos\(5) & (!\inst|Add11~10\))
-- \inst|Add11~12\ = CARRY((\inst|Ball_Y_pos\(5)) # (!\inst|Add11~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(5),
	datad => VCC,
	cin => \inst|Add11~10\,
	combout => \inst|Add11~11_combout\,
	cout => \inst|Add11~12\);

-- Location: LCCOMB_X28_Y9_N6
\inst|SYNC|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~0_combout\ = \inst|SYNC|v_count\(0) $ (VCC)
-- \inst|SYNC|Add1~1\ = CARRY(\inst|SYNC|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(0),
	datad => VCC,
	combout => \inst|SYNC|Add1~0_combout\,
	cout => \inst|SYNC|Add1~1\);

-- Location: LCCOMB_X28_Y9_N8
\inst|SYNC|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~2_combout\ = (\inst|SYNC|v_count\(1) & (!\inst|SYNC|Add1~1\)) # (!\inst|SYNC|v_count\(1) & ((\inst|SYNC|Add1~1\) # (GND)))
-- \inst|SYNC|Add1~3\ = CARRY((!\inst|SYNC|Add1~1\) # (!\inst|SYNC|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(1),
	datad => VCC,
	cin => \inst|SYNC|Add1~1\,
	combout => \inst|SYNC|Add1~2_combout\,
	cout => \inst|SYNC|Add1~3\);

-- Location: LCCOMB_X28_Y9_N10
\inst|SYNC|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~4_combout\ = (\inst|SYNC|v_count\(2) & (\inst|SYNC|Add1~3\ $ (GND))) # (!\inst|SYNC|v_count\(2) & (!\inst|SYNC|Add1~3\ & VCC))
-- \inst|SYNC|Add1~5\ = CARRY((\inst|SYNC|v_count\(2) & !\inst|SYNC|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|v_count\(2),
	datad => VCC,
	cin => \inst|SYNC|Add1~3\,
	combout => \inst|SYNC|Add1~4_combout\,
	cout => \inst|SYNC|Add1~5\);

-- Location: LCCOMB_X28_Y9_N12
\inst|SYNC|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~6_combout\ = (\inst|SYNC|v_count\(3) & (!\inst|SYNC|Add1~5\)) # (!\inst|SYNC|v_count\(3) & ((\inst|SYNC|Add1~5\) # (GND)))
-- \inst|SYNC|Add1~7\ = CARRY((!\inst|SYNC|Add1~5\) # (!\inst|SYNC|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|v_count\(3),
	datad => VCC,
	cin => \inst|SYNC|Add1~5\,
	combout => \inst|SYNC|Add1~6_combout\,
	cout => \inst|SYNC|Add1~7\);

-- Location: LCCOMB_X28_Y9_N14
\inst|SYNC|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~8_combout\ = (\inst|SYNC|v_count\(4) & (\inst|SYNC|Add1~7\ $ (GND))) # (!\inst|SYNC|v_count\(4) & (!\inst|SYNC|Add1~7\ & VCC))
-- \inst|SYNC|Add1~9\ = CARRY((\inst|SYNC|v_count\(4) & !\inst|SYNC|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(4),
	datad => VCC,
	cin => \inst|SYNC|Add1~7\,
	combout => \inst|SYNC|Add1~8_combout\,
	cout => \inst|SYNC|Add1~9\);

-- Location: LCCOMB_X28_Y9_N16
\inst|SYNC|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~10_combout\ = (\inst|SYNC|v_count\(5) & (!\inst|SYNC|Add1~9\)) # (!\inst|SYNC|v_count\(5) & ((\inst|SYNC|Add1~9\) # (GND)))
-- \inst|SYNC|Add1~11\ = CARRY((!\inst|SYNC|Add1~9\) # (!\inst|SYNC|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|v_count\(5),
	datad => VCC,
	cin => \inst|SYNC|Add1~9\,
	combout => \inst|SYNC|Add1~10_combout\,
	cout => \inst|SYNC|Add1~11\);

-- Location: LCCOMB_X28_Y9_N18
\inst|SYNC|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~12_combout\ = (\inst|SYNC|v_count\(6) & (\inst|SYNC|Add1~11\ $ (GND))) # (!\inst|SYNC|v_count\(6) & (!\inst|SYNC|Add1~11\ & VCC))
-- \inst|SYNC|Add1~13\ = CARRY((\inst|SYNC|v_count\(6) & !\inst|SYNC|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(6),
	datad => VCC,
	cin => \inst|SYNC|Add1~11\,
	combout => \inst|SYNC|Add1~12_combout\,
	cout => \inst|SYNC|Add1~13\);

-- Location: LCCOMB_X28_Y9_N20
\inst|SYNC|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~14_combout\ = (\inst|SYNC|v_count\(7) & (!\inst|SYNC|Add1~13\)) # (!\inst|SYNC|v_count\(7) & ((\inst|SYNC|Add1~13\) # (GND)))
-- \inst|SYNC|Add1~15\ = CARRY((!\inst|SYNC|Add1~13\) # (!\inst|SYNC|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(7),
	datad => VCC,
	cin => \inst|SYNC|Add1~13\,
	combout => \inst|SYNC|Add1~14_combout\,
	cout => \inst|SYNC|Add1~15\);

-- Location: LCCOMB_X28_Y9_N22
\inst|SYNC|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~16_combout\ = (\inst|SYNC|v_count\(8) & (\inst|SYNC|Add1~15\ $ (GND))) # (!\inst|SYNC|v_count\(8) & (!\inst|SYNC|Add1~15\ & VCC))
-- \inst|SYNC|Add1~17\ = CARRY((\inst|SYNC|v_count\(8) & !\inst|SYNC|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|v_count\(8),
	datad => VCC,
	cin => \inst|SYNC|Add1~15\,
	combout => \inst|SYNC|Add1~16_combout\,
	cout => \inst|SYNC|Add1~17\);

-- Location: LCCOMB_X28_Y9_N24
\inst|SYNC|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~18_combout\ = \inst|SYNC|Add1~17\ $ (\inst|SYNC|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|SYNC|v_count\(9),
	cin => \inst|SYNC|Add1~17\,
	combout => \inst|SYNC|Add1~18_combout\);

-- Location: FF_X40_Y19_N23
\inst|New_mouse|inhibit_wait_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|New_mouse|inhibit_wait_count[7]~22_combout\,
	ena => \inst|New_mouse|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|New_mouse|inhibit_wait_count\(7));

-- Location: FF_X40_Y19_N13
\inst|New_mouse|inhibit_wait_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|New_mouse|inhibit_wait_count[2]~12_combout\,
	ena => \inst|New_mouse|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|New_mouse|inhibit_wait_count\(2));

-- Location: FF_X40_Y19_N11
\inst|New_mouse|inhibit_wait_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|New_mouse|inhibit_wait_count[1]~10_combout\,
	ena => \inst|New_mouse|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|New_mouse|inhibit_wait_count\(1));

-- Location: LCCOMB_X40_Y19_N10
\inst|New_mouse|inhibit_wait_count[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|inhibit_wait_count[1]~10_combout\ = (\inst|New_mouse|inhibit_wait_count\(1) & (\inst|New_mouse|inhibit_wait_count\(0) $ (VCC))) # (!\inst|New_mouse|inhibit_wait_count\(1) & (\inst|New_mouse|inhibit_wait_count\(0) & VCC))
-- \inst|New_mouse|inhibit_wait_count[1]~11\ = CARRY((\inst|New_mouse|inhibit_wait_count\(1) & \inst|New_mouse|inhibit_wait_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|New_mouse|inhibit_wait_count\(1),
	datab => \inst|New_mouse|inhibit_wait_count\(0),
	datad => VCC,
	combout => \inst|New_mouse|inhibit_wait_count[1]~10_combout\,
	cout => \inst|New_mouse|inhibit_wait_count[1]~11\);

-- Location: LCCOMB_X40_Y19_N12
\inst|New_mouse|inhibit_wait_count[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|inhibit_wait_count[2]~12_combout\ = (\inst|New_mouse|inhibit_wait_count\(2) & (!\inst|New_mouse|inhibit_wait_count[1]~11\)) # (!\inst|New_mouse|inhibit_wait_count\(2) & ((\inst|New_mouse|inhibit_wait_count[1]~11\) # (GND)))
-- \inst|New_mouse|inhibit_wait_count[2]~13\ = CARRY((!\inst|New_mouse|inhibit_wait_count[1]~11\) # (!\inst|New_mouse|inhibit_wait_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|New_mouse|inhibit_wait_count\(2),
	datad => VCC,
	cin => \inst|New_mouse|inhibit_wait_count[1]~11\,
	combout => \inst|New_mouse|inhibit_wait_count[2]~12_combout\,
	cout => \inst|New_mouse|inhibit_wait_count[2]~13\);

-- Location: LCCOMB_X40_Y19_N22
\inst|New_mouse|inhibit_wait_count[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|inhibit_wait_count[7]~22_combout\ = (\inst|New_mouse|inhibit_wait_count\(7) & (\inst|New_mouse|inhibit_wait_count[6]~21\ $ (GND))) # (!\inst|New_mouse|inhibit_wait_count\(7) & (!\inst|New_mouse|inhibit_wait_count[6]~21\ & VCC))
-- \inst|New_mouse|inhibit_wait_count[7]~23\ = CARRY((\inst|New_mouse|inhibit_wait_count\(7) & !\inst|New_mouse|inhibit_wait_count[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|New_mouse|inhibit_wait_count\(7),
	datad => VCC,
	cin => \inst|New_mouse|inhibit_wait_count[6]~21\,
	combout => \inst|New_mouse|inhibit_wait_count[7]~22_combout\,
	cout => \inst|New_mouse|inhibit_wait_count[7]~23\);

-- Location: LCCOMB_X22_Y10_N22
\inst|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~0_combout\ = (\inst|SYNC|pixel_column\(1)) # (\inst|SYNC|pixel_column\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|SYNC|pixel_column\(1),
	datad => \inst|SYNC|pixel_column\(0),
	combout => \inst|LessThan1~0_combout\);

-- Location: LCCOMB_X22_Y10_N12
\inst|Platform_On~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Platform_On~0_combout\ = (\inst|SYNC|pixel_column\(4) & (\inst|SYNC|pixel_column\(3) & ((\inst|LessThan1~0_combout\) # (\inst|SYNC|pixel_column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(4),
	datab => \inst|SYNC|pixel_column\(3),
	datac => \inst|LessThan1~0_combout\,
	datad => \inst|SYNC|pixel_column\(2),
	combout => \inst|Platform_On~0_combout\);

-- Location: LCCOMB_X22_Y10_N26
\inst|Platform_On~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Platform_On~1_combout\ = (!\inst|SYNC|pixel_column\(8) & (\inst|SYNC|pixel_column\(6) & ((\inst|SYNC|pixel_column\(5)) # (\inst|Platform_On~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(8),
	datab => \inst|SYNC|pixel_column\(6),
	datac => \inst|SYNC|pixel_column\(5),
	datad => \inst|Platform_On~0_combout\,
	combout => \inst|Platform_On~1_combout\);

-- Location: LCCOMB_X26_Y10_N26
\inst|Platform_On~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Platform_On~2_combout\ = (\inst|SYNC|pixel_row\(6) & (\inst|SYNC|pixel_row\(4))) # (!\inst|SYNC|pixel_row\(6) & (((!\inst|SYNC|pixel_row\(3)) # (!\inst|SYNC|pixel_row\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(4),
	datab => \inst|SYNC|pixel_row\(5),
	datac => \inst|SYNC|pixel_row\(3),
	datad => \inst|SYNC|pixel_row\(6),
	combout => \inst|Platform_On~2_combout\);

-- Location: LCCOMB_X27_Y10_N0
\inst|Platform_On~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Platform_On~6_combout\ = (\inst|SYNC|pixel_row\(3) & (\inst|SYNC|pixel_row\(2) & ((\inst|SYNC|pixel_row\(0)) # (\inst|SYNC|pixel_row\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(3),
	datab => \inst|SYNC|pixel_row\(0),
	datac => \inst|SYNC|pixel_row\(1),
	datad => \inst|SYNC|pixel_row\(2),
	combout => \inst|Platform_On~6_combout\);

-- Location: LCCOMB_X24_Y11_N30
\inst|Ball_Y_motion~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_motion~1_combout\ = (\inst|Ball_X_pos\(10)) # ((\inst|Ball_X_pos\(7) & (\inst|Ball_X_pos\(9))) # (!\inst|Ball_X_pos\(7) & ((\inst|Ball_X_pos\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(7),
	datab => \inst|Ball_X_pos\(10),
	datac => \inst|Ball_X_pos\(9),
	datad => \inst|Ball_X_pos\(8),
	combout => \inst|Ball_Y_motion~1_combout\);

-- Location: FF_X29_Y11_N1
\inst|Move_Ball:Ball_Y_motion[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add11~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Move_Ball:Ball_Y_motion[8]~q\);

-- Location: LCCOMB_X29_Y11_N6
\inst|Add11~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~23_combout\ = (\inst|Move_Ball:Ball_Y_motion[8]~q\ & ((\inst|Ball_Y_pos\(8)) # ((\inst|LessThan21~0_combout\) # (\inst|LessThan21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(8),
	datab => \inst|LessThan21~0_combout\,
	datac => \inst|LessThan21~1_combout\,
	datad => \inst|Move_Ball:Ball_Y_motion[8]~q\,
	combout => \inst|Add11~23_combout\);

-- Location: FF_X28_Y11_N3
\inst|Move_Ball:Ball_Y_motion[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add11~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Move_Ball:Ball_Y_motion[7]~q\);

-- Location: LCCOMB_X27_Y11_N14
\inst|Add11~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~25_combout\ = (\inst|Move_Ball:Ball_Y_motion[7]~q\ & ((\inst|LessThan21~0_combout\) # ((\inst|LessThan21~1_combout\) # (\inst|Ball_Y_pos\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan21~0_combout\,
	datab => \inst|LessThan21~1_combout\,
	datac => \inst|Ball_Y_pos\(8),
	datad => \inst|Move_Ball:Ball_Y_motion[7]~q\,
	combout => \inst|Add11~25_combout\);

-- Location: FF_X28_Y11_N9
\inst|Move_Ball:Ball_Y_motion[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add11~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Move_Ball:Ball_Y_motion[6]~q\);

-- Location: LCCOMB_X27_Y11_N0
\inst|Add11~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~27_combout\ = (\inst|Move_Ball:Ball_Y_motion[6]~q\ & ((\inst|Ball_Y_pos\(8)) # ((\inst|LessThan21~1_combout\) # (\inst|LessThan21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(8),
	datab => \inst|Move_Ball:Ball_Y_motion[6]~q\,
	datac => \inst|LessThan21~1_combout\,
	datad => \inst|LessThan21~0_combout\,
	combout => \inst|Add11~27_combout\);

-- Location: FF_X28_Y11_N31
\inst|Move_Ball:Ball_Y_motion[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add11~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Move_Ball:Ball_Y_motion[5]~q\);

-- Location: LCCOMB_X27_Y11_N26
\inst|Add11~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~29_combout\ = (\inst|Move_Ball:Ball_Y_motion[5]~q\ & ((\inst|LessThan21~1_combout\) # ((\inst|Ball_Y_pos\(8)) # (\inst|LessThan21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Move_Ball:Ball_Y_motion[5]~q\,
	datab => \inst|LessThan21~1_combout\,
	datac => \inst|Ball_Y_pos\(8),
	datad => \inst|LessThan21~0_combout\,
	combout => \inst|Add11~29_combout\);

-- Location: LCCOMB_X28_Y11_N30
\inst|Add11~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~30_combout\ = (\inst|Ball_Y_motion~6_combout\ & ((\inst|Add11~29_combout\) # ((!\inst|Add11~21_combout\)))) # (!\inst|Ball_Y_motion~6_combout\ & (((\inst|Add11~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add11~29_combout\,
	datab => \inst|Add11~21_combout\,
	datac => \inst|Ball_Y_motion~6_combout\,
	datad => \inst|Add11~11_combout\,
	combout => \inst|Add11~30_combout\);

-- Location: FF_X28_Y11_N1
\inst|Move_Ball:Ball_Y_motion[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add11~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Move_Ball:Ball_Y_motion[4]~q\);

-- Location: LCCOMB_X27_Y11_N12
\inst|Add11~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~31_combout\ = (\inst|Move_Ball:Ball_Y_motion[4]~q\ & ((\inst|Ball_Y_pos\(8)) # ((\inst|LessThan21~1_combout\) # (\inst|LessThan21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(8),
	datab => \inst|LessThan21~1_combout\,
	datac => \inst|Move_Ball:Ball_Y_motion[4]~q\,
	datad => \inst|LessThan21~0_combout\,
	combout => \inst|Add11~31_combout\);

-- Location: FF_X28_Y11_N7
\inst|Move_Ball:Ball_Y_motion[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add11~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Move_Ball:Ball_Y_motion[3]~q\);

-- Location: LCCOMB_X27_Y11_N2
\inst|Add11~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~33_combout\ = (\inst|Move_Ball:Ball_Y_motion[3]~q\ & ((\inst|LessThan21~1_combout\) # ((\inst|Ball_Y_pos\(8)) # (\inst|LessThan21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Move_Ball:Ball_Y_motion[3]~q\,
	datab => \inst|LessThan21~1_combout\,
	datac => \inst|Ball_Y_pos\(8),
	datad => \inst|LessThan21~0_combout\,
	combout => \inst|Add11~33_combout\);

-- Location: LCCOMB_X28_Y11_N6
\inst|Add11~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~34_combout\ = (\inst|Ball_Y_motion~6_combout\ & ((\inst|Add11~33_combout\) # ((!\inst|Add11~21_combout\)))) # (!\inst|Ball_Y_motion~6_combout\ & (((\inst|Add11~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add11~33_combout\,
	datab => \inst|Add11~21_combout\,
	datac => \inst|Ball_Y_motion~6_combout\,
	datad => \inst|Add11~7_combout\,
	combout => \inst|Add11~34_combout\);

-- Location: LCCOMB_X27_Y11_N24
\inst|Add11~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~35_combout\ = (\inst|Ball_Y_pos\(8) & (\inst|Ball_Y_pos\(9))) # (!\inst|Ball_Y_pos\(8) & (!\inst|Ball_Y_pos\(9) & ((\inst|LessThan21~1_combout\) # (\inst|LessThan21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(8),
	datab => \inst|Ball_Y_pos\(9),
	datac => \inst|LessThan21~1_combout\,
	datad => \inst|LessThan21~0_combout\,
	combout => \inst|Add11~35_combout\);

-- Location: LCCOMB_X27_Y11_N10
\inst|Add11~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~36_combout\ = (\inst|Ball_Y_pos\(8) & (!\inst|Add11~35_combout\ & ((\inst|LessThan20~0_combout\) # (!\inst|Ball_Y_pos\(7))))) # (!\inst|Ball_Y_pos\(8) & (((\inst|Add11~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(8),
	datab => \inst|Ball_Y_pos\(7),
	datac => \inst|LessThan20~0_combout\,
	datad => \inst|Add11~35_combout\,
	combout => \inst|Add11~36_combout\);

-- Location: FF_X27_Y11_N17
\inst|Move_Ball:Ball_Y_motion[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add11~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Move_Ball:Ball_Y_motion[0]~q\);

-- Location: LCCOMB_X27_Y11_N16
\inst|Add11~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~39_combout\ = (\inst|Ball_Y_motion~6_combout\ & (\inst|Add11~36_combout\ & ((\inst|Move_Ball:Ball_Y_motion[0]~q\)))) # (!\inst|Ball_Y_motion~6_combout\ & (((\inst|Ball_Y_pos\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add11~36_combout\,
	datab => \inst|Ball_Y_pos\(0),
	datac => \inst|Move_Ball:Ball_Y_motion[0]~q\,
	datad => \inst|Ball_Y_motion~6_combout\,
	combout => \inst|Add11~39_combout\);

-- Location: FF_X24_Y11_N27
\inst|Move_Ball:Ball_X_motion[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_X_motion~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Move_Ball:Ball_X_motion[3]~q\);

-- Location: LCCOMB_X23_Y11_N12
\inst|Ball_X_motion~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_motion~1_combout\ = (\inst|Ball_X_pos\(5) & ((\inst|Move_Ball:Ball_X_motion[3]~q\) # ((\inst|Ball_X_pos\(4) & \inst|Ball_X_pos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(5),
	datab => \inst|Move_Ball:Ball_X_motion[3]~q\,
	datac => \inst|Ball_X_pos\(4),
	datad => \inst|Ball_X_pos\(3),
	combout => \inst|Ball_X_motion~1_combout\);

-- Location: LCCOMB_X23_Y11_N2
\inst|Ball_X_motion~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_motion~2_combout\ = (\inst|Ball_X_pos\(8) & (!\inst|Move_Ball:Ball_X_motion[3]~q\)) # (!\inst|Ball_X_pos\(8) & ((\inst|Move_Ball:Ball_X_motion[3]~q\ & (!\inst|Ball_X_pos\(7) & \inst|Ball_X_motion~0_combout\)) # 
-- (!\inst|Move_Ball:Ball_X_motion[3]~q\ & (\inst|Ball_X_pos\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(8),
	datab => \inst|Move_Ball:Ball_X_motion[3]~q\,
	datac => \inst|Ball_X_pos\(7),
	datad => \inst|Ball_X_motion~0_combout\,
	combout => \inst|Ball_X_motion~2_combout\);

-- Location: LCCOMB_X23_Y11_N24
\inst|Ball_X_motion~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_motion~3_combout\ = (\inst|Ball_X_motion~1_combout\ & (!\inst|Move_Ball:Ball_X_motion[3]~q\ & ((\inst|Ball_X_pos\(6)) # (\inst|Ball_X_motion~2_combout\)))) # (!\inst|Ball_X_motion~1_combout\ & (\inst|Ball_X_motion~2_combout\ & 
-- ((!\inst|Ball_X_pos\(6)) # (!\inst|Move_Ball:Ball_X_motion[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_motion~1_combout\,
	datab => \inst|Move_Ball:Ball_X_motion[3]~q\,
	datac => \inst|Ball_X_pos\(6),
	datad => \inst|Ball_X_motion~2_combout\,
	combout => \inst|Ball_X_motion~3_combout\);

-- Location: LCCOMB_X24_Y11_N26
\inst|Ball_X_motion~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_motion~4_combout\ = (\inst|Ball_X_pos\(10)) # ((\inst|Ball_X_motion~3_combout\ & (\inst|Ball_X_pos\(9))) # (!\inst|Ball_X_motion~3_combout\ & ((\inst|Move_Ball:Ball_X_motion[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(9),
	datab => \inst|Ball_X_pos\(10),
	datac => \inst|Move_Ball:Ball_X_motion[3]~q\,
	datad => \inst|Ball_X_motion~3_combout\,
	combout => \inst|Ball_X_motion~4_combout\);

-- Location: LCCOMB_X22_Y10_N6
\inst|LessThan9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan9~0_combout\ = (\inst|SYNC|pixel_row\(6)) # ((\inst|SYNC|pixel_row\(7)) # ((\inst|SYNC|pixel_row\(4)) # (\inst|SYNC|pixel_row\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(6),
	datab => \inst|SYNC|pixel_row\(7),
	datac => \inst|SYNC|pixel_row\(4),
	datad => \inst|SYNC|pixel_row\(5),
	combout => \inst|LessThan9~0_combout\);

-- Location: FF_X39_Y22_N17
\inst|New_mouse|send_char\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|New_mouse|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|New_mouse|send_char~0_combout\,
	clrn => \inst|New_mouse|ALT_INV_send_data~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|New_mouse|send_char~q\);

-- Location: FF_X40_Y22_N27
\inst|New_mouse|OUTCNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|New_mouse|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|New_mouse|OUTCNT~0_combout\,
	clrn => \inst|New_mouse|ALT_INV_send_data~q\,
	ena => \inst|New_mouse|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|New_mouse|OUTCNT\(3));

-- Location: LCCOMB_X23_Y9_N10
\inst|SYNC|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Equal1~0_combout\ = (\inst|SYNC|h_count\(2)) # (((\inst|SYNC|h_count\(8)) # (!\inst|SYNC|h_count\(7))) # (!\inst|SYNC|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(2),
	datab => \inst|SYNC|h_count\(5),
	datac => \inst|SYNC|h_count\(7),
	datad => \inst|SYNC|h_count\(8),
	combout => \inst|SYNC|Equal1~0_combout\);

-- Location: LCCOMB_X23_Y9_N4
\inst|SYNC|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Equal1~1_combout\ = (\inst|SYNC|Equal1~0_combout\) # ((\inst|SYNC|h_count\(6)) # ((!\inst|SYNC|h_count\(9)) # (!\inst|SYNC|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|Equal1~0_combout\,
	datab => \inst|SYNC|h_count\(6),
	datac => \inst|SYNC|Equal0~0_combout\,
	datad => \inst|SYNC|h_count\(9),
	combout => \inst|SYNC|Equal1~1_combout\);

-- Location: LCCOMB_X23_Y9_N26
\inst|SYNC|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Equal0~1_combout\ = (\inst|SYNC|h_count\(2) & (!\inst|SYNC|h_count\(5) & (!\inst|SYNC|h_count\(7) & \inst|SYNC|h_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(2),
	datab => \inst|SYNC|h_count\(5),
	datac => \inst|SYNC|h_count\(7),
	datad => \inst|SYNC|h_count\(8),
	combout => \inst|SYNC|Equal0~1_combout\);

-- Location: FF_X40_Y15_N31
\inst|New_mouse|filter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|New_mouse|filter[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|New_mouse|filter\(2));

-- Location: FF_X40_Y15_N19
\inst|New_mouse|filter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|New_mouse|filter[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|New_mouse|filter\(4));

-- Location: FF_X40_Y15_N17
\inst|New_mouse|filter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	asdata => \inst|New_mouse|filter\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|New_mouse|filter\(7));

-- Location: LCCOMB_X40_Y15_N16
\inst|New_mouse|MOUSE_CLK_FILTER~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|MOUSE_CLK_FILTER~0_combout\ = (\inst|New_mouse|filter\(2) & (\inst|New_mouse|filter\(7) & \inst|New_mouse|filter\(4))) # (!\inst|New_mouse|filter\(2) & ((\inst|New_mouse|filter\(7)) # (\inst|New_mouse|filter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|New_mouse|filter\(2),
	datac => \inst|New_mouse|filter\(7),
	datad => \inst|New_mouse|filter\(4),
	combout => \inst|New_mouse|MOUSE_CLK_FILTER~0_combout\);

-- Location: FF_X40_Y15_N3
\inst|New_mouse|filter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|New_mouse|filter[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|New_mouse|filter\(3));

-- Location: FF_X40_Y15_N21
\inst|New_mouse|filter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|New_mouse|filter[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|New_mouse|filter\(5));

-- Location: LCCOMB_X40_Y15_N26
\inst|New_mouse|MOUSE_CLK_FILTER~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|MOUSE_CLK_FILTER~1_combout\ = (\inst|New_mouse|filter\(2) & ((\inst|New_mouse|MOUSE_CLK_FILTER~q\) # ((\inst|New_mouse|filter\(3) & \inst|New_mouse|filter\(5))))) # (!\inst|New_mouse|filter\(2) & (\inst|New_mouse|MOUSE_CLK_FILTER~q\ & 
-- ((\inst|New_mouse|filter\(3)) # (\inst|New_mouse|filter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|New_mouse|filter\(2),
	datab => \inst|New_mouse|filter\(3),
	datac => \inst|New_mouse|MOUSE_CLK_FILTER~q\,
	datad => \inst|New_mouse|filter\(5),
	combout => \inst|New_mouse|MOUSE_CLK_FILTER~1_combout\);

-- Location: FF_X40_Y15_N7
\inst|New_mouse|filter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|New_mouse|filter[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|New_mouse|filter\(0));

-- Location: FF_X40_Y15_N11
\inst|New_mouse|filter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|New_mouse|filter[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|New_mouse|filter\(1));

-- Location: FF_X40_Y15_N23
\inst|New_mouse|filter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|New_mouse|filter[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|New_mouse|filter\(6));

-- Location: LCCOMB_X40_Y15_N4
\inst|New_mouse|MOUSE_CLK_FILTER~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|MOUSE_CLK_FILTER~2_combout\ = (\inst|New_mouse|filter\(0) & ((\inst|New_mouse|MOUSE_CLK_FILTER~q\) # ((\inst|New_mouse|filter\(6) & \inst|New_mouse|filter\(1))))) # (!\inst|New_mouse|filter\(0) & (\inst|New_mouse|MOUSE_CLK_FILTER~q\ & 
-- ((\inst|New_mouse|filter\(6)) # (\inst|New_mouse|filter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|New_mouse|filter\(0),
	datab => \inst|New_mouse|MOUSE_CLK_FILTER~q\,
	datac => \inst|New_mouse|filter\(6),
	datad => \inst|New_mouse|filter\(1),
	combout => \inst|New_mouse|MOUSE_CLK_FILTER~2_combout\);

-- Location: LCCOMB_X40_Y15_N24
\inst|New_mouse|MOUSE_CLK_FILTER~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|MOUSE_CLK_FILTER~3_combout\ = (\inst|New_mouse|MOUSE_CLK_FILTER~q\ & ((\inst|New_mouse|MOUSE_CLK_FILTER~0_combout\) # ((\inst|New_mouse|MOUSE_CLK_FILTER~2_combout\) # (\inst|New_mouse|MOUSE_CLK_FILTER~1_combout\)))) # 
-- (!\inst|New_mouse|MOUSE_CLK_FILTER~q\ & (\inst|New_mouse|MOUSE_CLK_FILTER~0_combout\ & (\inst|New_mouse|MOUSE_CLK_FILTER~2_combout\ & \inst|New_mouse|MOUSE_CLK_FILTER~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|New_mouse|MOUSE_CLK_FILTER~q\,
	datab => \inst|New_mouse|MOUSE_CLK_FILTER~0_combout\,
	datac => \inst|New_mouse|MOUSE_CLK_FILTER~2_combout\,
	datad => \inst|New_mouse|MOUSE_CLK_FILTER~1_combout\,
	combout => \inst|New_mouse|MOUSE_CLK_FILTER~3_combout\);

-- Location: LCCOMB_X39_Y22_N16
\inst|New_mouse|send_char~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|send_char~0_combout\ = (\inst|New_mouse|send_char~q\) # ((\inst|New_mouse|mouse_state.WAIT_OUTPUT_READY~q\ & \inst|New_mouse|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|New_mouse|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst|New_mouse|send_char~q\,
	datad => \inst|New_mouse|LessThan0~0_combout\,
	combout => \inst|New_mouse|send_char~0_combout\);

-- Location: LCCOMB_X40_Y22_N26
\inst|New_mouse|OUTCNT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|OUTCNT~0_combout\ = (\inst|New_mouse|OUTCNT\(1) & (\inst|New_mouse|OUTCNT\(2) & (!\inst|New_mouse|OUTCNT\(3) & \inst|New_mouse|OUTCNT\(0)))) # (!\inst|New_mouse|OUTCNT\(1) & (!\inst|New_mouse|OUTCNT\(2) & (\inst|New_mouse|OUTCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|New_mouse|OUTCNT\(1),
	datab => \inst|New_mouse|OUTCNT\(2),
	datac => \inst|New_mouse|OUTCNT\(3),
	datad => \inst|New_mouse|OUTCNT\(0),
	combout => \inst|New_mouse|OUTCNT~0_combout\);

-- Location: IOIBUF_X19_Y29_N8
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\inst|SYNC|vert_sync_out~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|SYNC|vert_sync_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|SYNC|vert_sync_out~clkctrl_outclk\);

-- Location: LCCOMB_X40_Y15_N6
\inst|New_mouse|filter[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|filter[0]~feeder_combout\ = \inst|New_mouse|mouse_state.INHIBIT_TRANS~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|New_mouse|mouse_state.INHIBIT_TRANS~q\,
	combout => \inst|New_mouse|filter[0]~feeder_combout\);

-- Location: LCCOMB_X40_Y15_N2
\inst|New_mouse|filter[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|filter[3]~feeder_combout\ = \inst|New_mouse|filter\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|New_mouse|filter\(2),
	combout => \inst|New_mouse|filter[3]~feeder_combout\);

-- Location: LCCOMB_X40_Y15_N20
\inst|New_mouse|filter[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|filter[5]~feeder_combout\ = \inst|New_mouse|filter\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|New_mouse|filter\(4),
	combout => \inst|New_mouse|filter[5]~feeder_combout\);

-- Location: LCCOMB_X40_Y15_N18
\inst|New_mouse|filter[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|filter[4]~feeder_combout\ = \inst|New_mouse|filter\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|New_mouse|filter\(3),
	combout => \inst|New_mouse|filter[4]~feeder_combout\);

-- Location: LCCOMB_X40_Y15_N22
\inst|New_mouse|filter[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|filter[6]~feeder_combout\ = \inst|New_mouse|filter\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|New_mouse|filter\(5),
	combout => \inst|New_mouse|filter[6]~feeder_combout\);

-- Location: LCCOMB_X40_Y15_N10
\inst|New_mouse|filter[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|filter[1]~feeder_combout\ = \inst|New_mouse|filter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|New_mouse|filter\(0),
	combout => \inst|New_mouse|filter[1]~feeder_combout\);

-- Location: LCCOMB_X40_Y15_N30
\inst|New_mouse|filter[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|filter[2]~feeder_combout\ = \inst|New_mouse|filter\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|New_mouse|filter\(1),
	combout => \inst|New_mouse|filter[2]~feeder_combout\);

-- Location: IOOBUF_X41_Y12_N23
\mouse_data~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|New_mouse|MOUSE_DATA_BUF~q\,
	oe => \inst|New_mouse|mouse_state.WAIT_OUTPUT_READY~q\,
	devoe => ww_devoe,
	o => \mouse_data~output_o\);

-- Location: IOOBUF_X41_Y11_N2
\mouse_clk~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|New_mouse|mouse_state.INHIBIT_TRANS~q\,
	oe => \inst|New_mouse|WideOr4~combout\,
	devoe => ww_devoe,
	o => \mouse_clk~output_o\);

-- Location: IOOBUF_X41_Y20_N23
\green_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SYNC|green_out~q\,
	devoe => ww_devoe,
	o => \green_out~output_o\);

-- Location: IOOBUF_X41_Y21_N9
\blue_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SYNC|blue_out~q\,
	devoe => ww_devoe,
	o => \blue_out~output_o\);

-- Location: IOOBUF_X41_Y21_N23
\red_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SYNC|red_out~q\,
	devoe => ww_devoe,
	o => \red_out~output_o\);

-- Location: IOOBUF_X41_Y18_N23
\vert_sync_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SYNC|vert_sync_out~q\,
	devoe => ww_devoe,
	o => \vert_sync_out~output_o\);

-- Location: IOOBUF_X41_Y18_N16
\horiz_sync_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SYNC|horiz_sync_out~q\,
	devoe => ww_devoe,
	o => \horiz_sync_out~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\seg0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \seg0[6]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\seg0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg0[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\seg0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg0[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\seg0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg0[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\seg0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg0[2]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\seg0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg0[1]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\seg0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg0[0]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\seg1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \seg1[6]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\seg1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg1[5]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\seg1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg1[4]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\seg1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg1[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\seg1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg1[2]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\seg1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg1[1]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\seg1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg1[0]~output_o\);

-- Location: LCCOMB_X40_Y15_N28
\inst|New_mouse|MOUSE_CLK_FILTER~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|MOUSE_CLK_FILTER~feeder_combout\ = \inst|New_mouse|MOUSE_CLK_FILTER~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|New_mouse|MOUSE_CLK_FILTER~3_combout\,
	combout => \inst|New_mouse|MOUSE_CLK_FILTER~feeder_combout\);

-- Location: FF_X40_Y15_N29
\inst|New_mouse|MOUSE_CLK_FILTER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|New_mouse|MOUSE_CLK_FILTER~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|New_mouse|MOUSE_CLK_FILTER~q\);

-- Location: CLKCTRL_G5
\inst|New_mouse|MOUSE_CLK_FILTER~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|New_mouse|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|New_mouse|MOUSE_CLK_FILTER~clkctrl_outclk\);

-- Location: LCCOMB_X40_Y22_N12
\inst|New_mouse|SHIFTOUT[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|SHIFTOUT[9]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|New_mouse|SHIFTOUT[9]~feeder_combout\);

-- Location: LCCOMB_X40_Y19_N4
\inst|New_mouse|inhibit_wait_count[0]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|inhibit_wait_count[0]~30_combout\ = \inst|New_mouse|mouse_state.INHIBIT_TRANS~q\ $ (!\inst|New_mouse|inhibit_wait_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|New_mouse|mouse_state.INHIBIT_TRANS~q\,
	datac => \inst|New_mouse|inhibit_wait_count\(0),
	combout => \inst|New_mouse|inhibit_wait_count[0]~30_combout\);

-- Location: FF_X40_Y19_N5
\inst|New_mouse|inhibit_wait_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|New_mouse|inhibit_wait_count[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|New_mouse|inhibit_wait_count\(0));

-- Location: LCCOMB_X40_Y19_N14
\inst|New_mouse|inhibit_wait_count[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|inhibit_wait_count[3]~14_combout\ = (\inst|New_mouse|inhibit_wait_count\(3) & (\inst|New_mouse|inhibit_wait_count[2]~13\ $ (GND))) # (!\inst|New_mouse|inhibit_wait_count\(3) & (!\inst|New_mouse|inhibit_wait_count[2]~13\ & VCC))
-- \inst|New_mouse|inhibit_wait_count[3]~15\ = CARRY((\inst|New_mouse|inhibit_wait_count\(3) & !\inst|New_mouse|inhibit_wait_count[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|New_mouse|inhibit_wait_count\(3),
	datad => VCC,
	cin => \inst|New_mouse|inhibit_wait_count[2]~13\,
	combout => \inst|New_mouse|inhibit_wait_count[3]~14_combout\,
	cout => \inst|New_mouse|inhibit_wait_count[3]~15\);

-- Location: FF_X40_Y19_N15
\inst|New_mouse|inhibit_wait_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|New_mouse|inhibit_wait_count[3]~14_combout\,
	ena => \inst|New_mouse|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|New_mouse|inhibit_wait_count\(3));

-- Location: LCCOMB_X40_Y19_N16
\inst|New_mouse|inhibit_wait_count[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|inhibit_wait_count[4]~16_combout\ = (\inst|New_mouse|inhibit_wait_count\(4) & (!\inst|New_mouse|inhibit_wait_count[3]~15\)) # (!\inst|New_mouse|inhibit_wait_count\(4) & ((\inst|New_mouse|inhibit_wait_count[3]~15\) # (GND)))
-- \inst|New_mouse|inhibit_wait_count[4]~17\ = CARRY((!\inst|New_mouse|inhibit_wait_count[3]~15\) # (!\inst|New_mouse|inhibit_wait_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|New_mouse|inhibit_wait_count\(4),
	datad => VCC,
	cin => \inst|New_mouse|inhibit_wait_count[3]~15\,
	combout => \inst|New_mouse|inhibit_wait_count[4]~16_combout\,
	cout => \inst|New_mouse|inhibit_wait_count[4]~17\);

-- Location: FF_X40_Y19_N17
\inst|New_mouse|inhibit_wait_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|New_mouse|inhibit_wait_count[4]~16_combout\,
	ena => \inst|New_mouse|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|New_mouse|inhibit_wait_count\(4));

-- Location: LCCOMB_X40_Y19_N18
\inst|New_mouse|inhibit_wait_count[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|inhibit_wait_count[5]~18_combout\ = (\inst|New_mouse|inhibit_wait_count\(5) & (\inst|New_mouse|inhibit_wait_count[4]~17\ $ (GND))) # (!\inst|New_mouse|inhibit_wait_count\(5) & (!\inst|New_mouse|inhibit_wait_count[4]~17\ & VCC))
-- \inst|New_mouse|inhibit_wait_count[5]~19\ = CARRY((\inst|New_mouse|inhibit_wait_count\(5) & !\inst|New_mouse|inhibit_wait_count[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|New_mouse|inhibit_wait_count\(5),
	datad => VCC,
	cin => \inst|New_mouse|inhibit_wait_count[4]~17\,
	combout => \inst|New_mouse|inhibit_wait_count[5]~18_combout\,
	cout => \inst|New_mouse|inhibit_wait_count[5]~19\);

-- Location: FF_X40_Y19_N19
\inst|New_mouse|inhibit_wait_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|New_mouse|inhibit_wait_count[5]~18_combout\,
	ena => \inst|New_mouse|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|New_mouse|inhibit_wait_count\(5));

-- Location: LCCOMB_X40_Y19_N20
\inst|New_mouse|inhibit_wait_count[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|inhibit_wait_count[6]~20_combout\ = (\inst|New_mouse|inhibit_wait_count\(6) & (!\inst|New_mouse|inhibit_wait_count[5]~19\)) # (!\inst|New_mouse|inhibit_wait_count\(6) & ((\inst|New_mouse|inhibit_wait_count[5]~19\) # (GND)))
-- \inst|New_mouse|inhibit_wait_count[6]~21\ = CARRY((!\inst|New_mouse|inhibit_wait_count[5]~19\) # (!\inst|New_mouse|inhibit_wait_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|New_mouse|inhibit_wait_count\(6),
	datad => VCC,
	cin => \inst|New_mouse|inhibit_wait_count[5]~19\,
	combout => \inst|New_mouse|inhibit_wait_count[6]~20_combout\,
	cout => \inst|New_mouse|inhibit_wait_count[6]~21\);

-- Location: FF_X40_Y19_N21
\inst|New_mouse|inhibit_wait_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|New_mouse|inhibit_wait_count[6]~20_combout\,
	ena => \inst|New_mouse|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|New_mouse|inhibit_wait_count\(6));

-- Location: LCCOMB_X40_Y19_N24
\inst|New_mouse|inhibit_wait_count[8]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|inhibit_wait_count[8]~24_combout\ = (\inst|New_mouse|inhibit_wait_count\(8) & (!\inst|New_mouse|inhibit_wait_count[7]~23\)) # (!\inst|New_mouse|inhibit_wait_count\(8) & ((\inst|New_mouse|inhibit_wait_count[7]~23\) # (GND)))
-- \inst|New_mouse|inhibit_wait_count[8]~25\ = CARRY((!\inst|New_mouse|inhibit_wait_count[7]~23\) # (!\inst|New_mouse|inhibit_wait_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|New_mouse|inhibit_wait_count\(8),
	datad => VCC,
	cin => \inst|New_mouse|inhibit_wait_count[7]~23\,
	combout => \inst|New_mouse|inhibit_wait_count[8]~24_combout\,
	cout => \inst|New_mouse|inhibit_wait_count[8]~25\);

-- Location: FF_X40_Y19_N25
\inst|New_mouse|inhibit_wait_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|New_mouse|inhibit_wait_count[8]~24_combout\,
	ena => \inst|New_mouse|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|New_mouse|inhibit_wait_count\(8));

-- Location: LCCOMB_X40_Y19_N26
\inst|New_mouse|inhibit_wait_count[9]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|inhibit_wait_count[9]~26_combout\ = (\inst|New_mouse|inhibit_wait_count\(9) & (\inst|New_mouse|inhibit_wait_count[8]~25\ $ (GND))) # (!\inst|New_mouse|inhibit_wait_count\(9) & (!\inst|New_mouse|inhibit_wait_count[8]~25\ & VCC))
-- \inst|New_mouse|inhibit_wait_count[9]~27\ = CARRY((\inst|New_mouse|inhibit_wait_count\(9) & !\inst|New_mouse|inhibit_wait_count[8]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|New_mouse|inhibit_wait_count\(9),
	datad => VCC,
	cin => \inst|New_mouse|inhibit_wait_count[8]~25\,
	combout => \inst|New_mouse|inhibit_wait_count[9]~26_combout\,
	cout => \inst|New_mouse|inhibit_wait_count[9]~27\);

-- Location: LCCOMB_X40_Y19_N28
\inst|New_mouse|inhibit_wait_count[10]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|inhibit_wait_count[10]~28_combout\ = \inst|New_mouse|inhibit_wait_count[9]~27\ $ (\inst|New_mouse|inhibit_wait_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|New_mouse|inhibit_wait_count\(10),
	cin => \inst|New_mouse|inhibit_wait_count[9]~27\,
	combout => \inst|New_mouse|inhibit_wait_count[10]~28_combout\);

-- Location: FF_X40_Y19_N29
\inst|New_mouse|inhibit_wait_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|New_mouse|inhibit_wait_count[10]~28_combout\,
	ena => \inst|New_mouse|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|New_mouse|inhibit_wait_count\(10));

-- Location: LCCOMB_X40_Y19_N8
\inst|New_mouse|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|Selector0~0_combout\ = (\inst|New_mouse|mouse_state.INHIBIT_TRANS~q\) # ((\inst|New_mouse|inhibit_wait_count\(9) & \inst|New_mouse|inhibit_wait_count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|New_mouse|inhibit_wait_count\(9),
	datac => \inst|New_mouse|mouse_state.INHIBIT_TRANS~q\,
	datad => \inst|New_mouse|inhibit_wait_count\(10),
	combout => \inst|New_mouse|Selector0~0_combout\);

-- Location: FF_X40_Y19_N9
\inst|New_mouse|mouse_state.INHIBIT_TRANS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|New_mouse|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|New_mouse|mouse_state.INHIBIT_TRANS~q\);

-- Location: FF_X40_Y19_N27
\inst|New_mouse|inhibit_wait_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|New_mouse|inhibit_wait_count[9]~26_combout\,
	ena => \inst|New_mouse|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|New_mouse|inhibit_wait_count\(9));

-- Location: LCCOMB_X40_Y19_N6
\inst|New_mouse|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|Selector1~0_combout\ = (!\inst|New_mouse|mouse_state.INHIBIT_TRANS~q\ & (\inst|New_mouse|inhibit_wait_count\(9) & \inst|New_mouse|inhibit_wait_count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|New_mouse|mouse_state.INHIBIT_TRANS~q\,
	datac => \inst|New_mouse|inhibit_wait_count\(9),
	datad => \inst|New_mouse|inhibit_wait_count\(10),
	combout => \inst|New_mouse|Selector1~0_combout\);

-- Location: FF_X40_Y19_N7
\inst|New_mouse|mouse_state.LOAD_COMMAND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|New_mouse|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|New_mouse|mouse_state.LOAD_COMMAND~q\);

-- Location: LCCOMB_X40_Y19_N0
\inst|New_mouse|mouse_state.LOAD_COMMAND2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|mouse_state.LOAD_COMMAND2~feeder_combout\ = \inst|New_mouse|mouse_state.LOAD_COMMAND~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|New_mouse|mouse_state.LOAD_COMMAND~q\,
	combout => \inst|New_mouse|mouse_state.LOAD_COMMAND2~feeder_combout\);

-- Location: FF_X40_Y19_N1
\inst|New_mouse|mouse_state.LOAD_COMMAND2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|New_mouse|mouse_state.LOAD_COMMAND2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|New_mouse|mouse_state.LOAD_COMMAND2~q\);

-- Location: LCCOMB_X39_Y22_N6
\inst|New_mouse|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|Selector6~0_combout\ = (\inst|New_mouse|mouse_state.LOAD_COMMAND2~q\) # ((\inst|New_mouse|mouse_state.LOAD_COMMAND~q\) # ((!\inst|New_mouse|mouse_state.INHIBIT_TRANS~q\ & \inst|New_mouse|send_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|New_mouse|mouse_state.INHIBIT_TRANS~q\,
	datab => \inst|New_mouse|mouse_state.LOAD_COMMAND2~q\,
	datac => \inst|New_mouse|send_data~q\,
	datad => \inst|New_mouse|mouse_state.LOAD_COMMAND~q\,
	combout => \inst|New_mouse|Selector6~0_combout\);

-- Location: FF_X39_Y22_N7
\inst|New_mouse|send_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|New_mouse|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|New_mouse|send_data~q\);

-- Location: LCCOMB_X40_Y22_N0
\inst|New_mouse|OUTCNT~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|OUTCNT~2_combout\ = (\inst|New_mouse|OUTCNT\(3) & (!\inst|New_mouse|OUTCNT\(2) & (!\inst|New_mouse|OUTCNT\(1) & \inst|New_mouse|OUTCNT\(0)))) # (!\inst|New_mouse|OUTCNT\(3) & ((\inst|New_mouse|OUTCNT\(1) $ (\inst|New_mouse|OUTCNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|New_mouse|OUTCNT\(3),
	datab => \inst|New_mouse|OUTCNT\(2),
	datac => \inst|New_mouse|OUTCNT\(1),
	datad => \inst|New_mouse|OUTCNT\(0),
	combout => \inst|New_mouse|OUTCNT~2_combout\);

-- Location: LCCOMB_X40_Y22_N6
\inst|New_mouse|output_ready~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|output_ready~feeder_combout\ = \inst|New_mouse|LessThan0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|New_mouse|LessThan0~0_combout\,
	combout => \inst|New_mouse|output_ready~feeder_combout\);

-- Location: FF_X40_Y22_N7
\inst|New_mouse|output_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|New_mouse|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|New_mouse|output_ready~feeder_combout\,
	clrn => \inst|New_mouse|ALT_INV_send_data~q\,
	ena => \inst|New_mouse|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|New_mouse|output_ready~q\);

-- Location: LCCOMB_X39_Y22_N28
\inst|New_mouse|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|Selector3~0_combout\ = (\inst|New_mouse|mouse_state.LOAD_COMMAND2~q\) # ((\inst|New_mouse|mouse_state.WAIT_OUTPUT_READY~q\ & !\inst|New_mouse|output_ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|New_mouse|mouse_state.LOAD_COMMAND2~q\,
	datac => \inst|New_mouse|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst|New_mouse|output_ready~q\,
	combout => \inst|New_mouse|Selector3~0_combout\);

-- Location: FF_X39_Y22_N29
\inst|New_mouse|mouse_state.WAIT_OUTPUT_READY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|New_mouse|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|New_mouse|mouse_state.WAIT_OUTPUT_READY~q\);

-- Location: LCCOMB_X40_Y22_N30
\inst|New_mouse|output_ready~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|output_ready~0_combout\ = (!\inst|New_mouse|send_char~q\ & \inst|New_mouse|mouse_state.WAIT_OUTPUT_READY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|New_mouse|send_char~q\,
	datad => \inst|New_mouse|mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \inst|New_mouse|output_ready~0_combout\);

-- Location: FF_X40_Y22_N1
\inst|New_mouse|OUTCNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|New_mouse|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|New_mouse|OUTCNT~2_combout\,
	clrn => \inst|New_mouse|ALT_INV_send_data~q\,
	ena => \inst|New_mouse|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|New_mouse|OUTCNT\(1));

-- Location: LCCOMB_X40_Y22_N20
\inst|New_mouse|OUTCNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|OUTCNT~3_combout\ = (!\inst|New_mouse|OUTCNT\(0) & (((!\inst|New_mouse|OUTCNT\(2) & !\inst|New_mouse|OUTCNT\(1))) # (!\inst|New_mouse|OUTCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|New_mouse|OUTCNT\(3),
	datab => \inst|New_mouse|OUTCNT\(2),
	datac => \inst|New_mouse|OUTCNT\(0),
	datad => \inst|New_mouse|OUTCNT\(1),
	combout => \inst|New_mouse|OUTCNT~3_combout\);

-- Location: FF_X40_Y22_N21
\inst|New_mouse|OUTCNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|New_mouse|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|New_mouse|OUTCNT~3_combout\,
	clrn => \inst|New_mouse|ALT_INV_send_data~q\,
	ena => \inst|New_mouse|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|New_mouse|OUTCNT\(0));

-- Location: LCCOMB_X40_Y22_N22
\inst|New_mouse|OUTCNT~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|OUTCNT~1_combout\ = (!\inst|New_mouse|OUTCNT\(3) & (\inst|New_mouse|OUTCNT\(2) $ (((\inst|New_mouse|OUTCNT\(0) & \inst|New_mouse|OUTCNT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|New_mouse|OUTCNT\(3),
	datab => \inst|New_mouse|OUTCNT\(0),
	datac => \inst|New_mouse|OUTCNT\(2),
	datad => \inst|New_mouse|OUTCNT\(1),
	combout => \inst|New_mouse|OUTCNT~1_combout\);

-- Location: FF_X40_Y22_N23
\inst|New_mouse|OUTCNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|New_mouse|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|New_mouse|OUTCNT~1_combout\,
	clrn => \inst|New_mouse|ALT_INV_send_data~q\,
	ena => \inst|New_mouse|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|New_mouse|OUTCNT\(2));

-- Location: LCCOMB_X40_Y22_N18
\inst|New_mouse|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|LessThan0~0_combout\ = (\inst|New_mouse|OUTCNT\(3) & ((\inst|New_mouse|OUTCNT\(2)) # (\inst|New_mouse|OUTCNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|New_mouse|OUTCNT\(3),
	datac => \inst|New_mouse|OUTCNT\(2),
	datad => \inst|New_mouse|OUTCNT\(1),
	combout => \inst|New_mouse|LessThan0~0_combout\);

-- Location: LCCOMB_X40_Y22_N14
\inst|New_mouse|MOUSE_DATA_BUF~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|MOUSE_DATA_BUF~0_combout\ = (!\inst|New_mouse|send_char~q\ & (!\inst|New_mouse|LessThan0~0_combout\ & \inst|New_mouse|mouse_state.WAIT_OUTPUT_READY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|New_mouse|send_char~q\,
	datab => \inst|New_mouse|LessThan0~0_combout\,
	datad => \inst|New_mouse|mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \inst|New_mouse|MOUSE_DATA_BUF~0_combout\);

-- Location: FF_X40_Y22_N13
\inst|New_mouse|SHIFTOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|New_mouse|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|New_mouse|SHIFTOUT[9]~feeder_combout\,
	clrn => \inst|New_mouse|ALT_INV_send_data~q\,
	ena => \inst|New_mouse|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|New_mouse|SHIFTOUT\(9));

-- Location: LCCOMB_X40_Y22_N4
\inst|New_mouse|SHIFTOUT[8]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|SHIFTOUT[8]~3_combout\ = !\inst|New_mouse|SHIFTOUT\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|New_mouse|SHIFTOUT\(9),
	combout => \inst|New_mouse|SHIFTOUT[8]~3_combout\);

-- Location: FF_X40_Y22_N5
\inst|New_mouse|SHIFTOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|New_mouse|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|New_mouse|SHIFTOUT[8]~3_combout\,
	clrn => \inst|New_mouse|ALT_INV_send_data~q\,
	ena => \inst|New_mouse|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|New_mouse|SHIFTOUT\(8));

-- Location: LCCOMB_X40_Y22_N8
\inst|New_mouse|SHIFTOUT[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|SHIFTOUT[7]~feeder_combout\ = \inst|New_mouse|SHIFTOUT\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|New_mouse|SHIFTOUT\(8),
	combout => \inst|New_mouse|SHIFTOUT[7]~feeder_combout\);

-- Location: FF_X40_Y22_N9
\inst|New_mouse|SHIFTOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|New_mouse|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|New_mouse|SHIFTOUT[7]~feeder_combout\,
	clrn => \inst|New_mouse|ALT_INV_send_data~q\,
	ena => \inst|New_mouse|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|New_mouse|SHIFTOUT\(7));

-- Location: LCCOMB_X40_Y22_N28
\inst|New_mouse|SHIFTOUT[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|SHIFTOUT[6]~feeder_combout\ = \inst|New_mouse|SHIFTOUT\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|New_mouse|SHIFTOUT\(7),
	combout => \inst|New_mouse|SHIFTOUT[6]~feeder_combout\);

-- Location: FF_X40_Y22_N29
\inst|New_mouse|SHIFTOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|New_mouse|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|New_mouse|SHIFTOUT[6]~feeder_combout\,
	clrn => \inst|New_mouse|ALT_INV_send_data~q\,
	ena => \inst|New_mouse|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|New_mouse|SHIFTOUT\(6));

-- Location: LCCOMB_X40_Y22_N2
\inst|New_mouse|SHIFTOUT[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|SHIFTOUT[5]~feeder_combout\ = \inst|New_mouse|SHIFTOUT\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|New_mouse|SHIFTOUT\(6),
	combout => \inst|New_mouse|SHIFTOUT[5]~feeder_combout\);

-- Location: FF_X40_Y22_N3
\inst|New_mouse|SHIFTOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|New_mouse|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|New_mouse|SHIFTOUT[5]~feeder_combout\,
	clrn => \inst|New_mouse|ALT_INV_send_data~q\,
	ena => \inst|New_mouse|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|New_mouse|SHIFTOUT\(5));

-- Location: LCCOMB_X40_Y22_N16
\inst|New_mouse|SHIFTOUT[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|SHIFTOUT[4]~2_combout\ = !\inst|New_mouse|SHIFTOUT\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|New_mouse|SHIFTOUT\(5),
	combout => \inst|New_mouse|SHIFTOUT[4]~2_combout\);

-- Location: FF_X40_Y22_N17
\inst|New_mouse|SHIFTOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|New_mouse|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|New_mouse|SHIFTOUT[4]~2_combout\,
	clrn => \inst|New_mouse|ALT_INV_send_data~q\,
	ena => \inst|New_mouse|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|New_mouse|SHIFTOUT\(4));

-- Location: LCCOMB_X40_Y22_N24
\inst|New_mouse|SHIFTOUT[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|SHIFTOUT[3]~1_combout\ = !\inst|New_mouse|SHIFTOUT\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|New_mouse|SHIFTOUT\(4),
	combout => \inst|New_mouse|SHIFTOUT[3]~1_combout\);

-- Location: FF_X40_Y22_N25
\inst|New_mouse|SHIFTOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|New_mouse|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|New_mouse|SHIFTOUT[3]~1_combout\,
	clrn => \inst|New_mouse|ALT_INV_send_data~q\,
	ena => \inst|New_mouse|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|New_mouse|SHIFTOUT\(3));

-- Location: LCCOMB_X40_Y22_N10
\inst|New_mouse|SHIFTOUT[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|SHIFTOUT[2]~0_combout\ = !\inst|New_mouse|SHIFTOUT\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|New_mouse|SHIFTOUT\(3),
	combout => \inst|New_mouse|SHIFTOUT[2]~0_combout\);

-- Location: FF_X40_Y22_N11
\inst|New_mouse|SHIFTOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|New_mouse|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|New_mouse|SHIFTOUT[2]~0_combout\,
	clrn => \inst|New_mouse|ALT_INV_send_data~q\,
	ena => \inst|New_mouse|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|New_mouse|SHIFTOUT\(2));

-- Location: FF_X40_Y22_N31
\inst|New_mouse|SHIFTOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|New_mouse|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst|New_mouse|SHIFTOUT\(2),
	clrn => \inst|New_mouse|ALT_INV_send_data~q\,
	sload => VCC,
	ena => \inst|New_mouse|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|New_mouse|SHIFTOUT\(1));

-- Location: FF_X40_Y22_N15
\inst|New_mouse|MOUSE_DATA_BUF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|New_mouse|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst|New_mouse|SHIFTOUT\(1),
	clrn => \inst|New_mouse|ALT_INV_send_data~q\,
	sload => VCC,
	ena => \inst|New_mouse|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|New_mouse|MOUSE_DATA_BUF~q\);

-- Location: LCCOMB_X40_Y19_N30
\inst|New_mouse|WideOr4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|New_mouse|WideOr4~combout\ = (\inst|New_mouse|mouse_state.LOAD_COMMAND2~q\) # ((\inst|New_mouse|mouse_state.LOAD_COMMAND~q\) # (!\inst|New_mouse|mouse_state.INHIBIT_TRANS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|New_mouse|mouse_state.LOAD_COMMAND2~q\,
	datac => \inst|New_mouse|mouse_state.INHIBIT_TRANS~q\,
	datad => \inst|New_mouse|mouse_state.LOAD_COMMAND~q\,
	combout => \inst|New_mouse|WideOr4~combout\);

-- Location: LCCOMB_X19_Y28_N4
\inst4|clk_out_hz_temp~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|clk_out_hz_temp~0_combout\ = !\inst4|clk_out_hz_temp~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|clk_out_hz_temp~q\,
	combout => \inst4|clk_out_hz_temp~0_combout\);

-- Location: LCCOMB_X19_Y28_N0
\inst4|clk_out_hz_temp~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|clk_out_hz_temp~feeder_combout\ = \inst4|clk_out_hz_temp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|clk_out_hz_temp~0_combout\,
	combout => \inst4|clk_out_hz_temp~feeder_combout\);

-- Location: FF_X19_Y28_N1
\inst4|clk_out_hz_temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst4|clk_out_hz_temp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clk_out_hz_temp~q\);

-- Location: CLKCTRL_G11
\inst4|clk_out_hz_temp~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst4|clk_out_hz_temp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst4|clk_out_hz_temp~clkctrl_outclk\);

-- Location: LCCOMB_X22_Y9_N10
\inst|SYNC|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~0_combout\ = \inst|SYNC|h_count\(0) $ (VCC)
-- \inst|SYNC|Add0~1\ = CARRY(\inst|SYNC|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(0),
	datad => VCC,
	combout => \inst|SYNC|Add0~0_combout\,
	cout => \inst|SYNC|Add0~1\);

-- Location: LCCOMB_X22_Y9_N12
\inst|SYNC|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~2_combout\ = (\inst|SYNC|h_count\(1) & (!\inst|SYNC|Add0~1\)) # (!\inst|SYNC|h_count\(1) & ((\inst|SYNC|Add0~1\) # (GND)))
-- \inst|SYNC|Add0~3\ = CARRY((!\inst|SYNC|Add0~1\) # (!\inst|SYNC|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(1),
	datad => VCC,
	cin => \inst|SYNC|Add0~1\,
	combout => \inst|SYNC|Add0~2_combout\,
	cout => \inst|SYNC|Add0~3\);

-- Location: LCCOMB_X22_Y9_N14
\inst|SYNC|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~4_combout\ = (\inst|SYNC|h_count\(2) & (\inst|SYNC|Add0~3\ $ (GND))) # (!\inst|SYNC|h_count\(2) & (!\inst|SYNC|Add0~3\ & VCC))
-- \inst|SYNC|Add0~5\ = CARRY((\inst|SYNC|h_count\(2) & !\inst|SYNC|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|h_count\(2),
	datad => VCC,
	cin => \inst|SYNC|Add0~3\,
	combout => \inst|SYNC|Add0~4_combout\,
	cout => \inst|SYNC|Add0~5\);

-- Location: FF_X22_Y9_N15
\inst|SYNC|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|SYNC|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(2));

-- Location: LCCOMB_X22_Y9_N16
\inst|SYNC|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~6_combout\ = (\inst|SYNC|h_count\(3) & (!\inst|SYNC|Add0~5\)) # (!\inst|SYNC|h_count\(3) & ((\inst|SYNC|Add0~5\) # (GND)))
-- \inst|SYNC|Add0~7\ = CARRY((!\inst|SYNC|Add0~5\) # (!\inst|SYNC|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|h_count\(3),
	datad => VCC,
	cin => \inst|SYNC|Add0~5\,
	combout => \inst|SYNC|Add0~6_combout\,
	cout => \inst|SYNC|Add0~7\);

-- Location: FF_X22_Y9_N17
\inst|SYNC|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|SYNC|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(3));

-- Location: LCCOMB_X22_Y9_N18
\inst|SYNC|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~8_combout\ = (\inst|SYNC|h_count\(4) & (\inst|SYNC|Add0~7\ $ (GND))) # (!\inst|SYNC|h_count\(4) & (!\inst|SYNC|Add0~7\ & VCC))
-- \inst|SYNC|Add0~9\ = CARRY((\inst|SYNC|h_count\(4) & !\inst|SYNC|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|h_count\(4),
	datad => VCC,
	cin => \inst|SYNC|Add0~7\,
	combout => \inst|SYNC|Add0~8_combout\,
	cout => \inst|SYNC|Add0~9\);

-- Location: FF_X22_Y9_N19
\inst|SYNC|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|SYNC|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(4));

-- Location: LCCOMB_X22_Y9_N20
\inst|SYNC|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~10_combout\ = (\inst|SYNC|h_count\(5) & (!\inst|SYNC|Add0~9\)) # (!\inst|SYNC|h_count\(5) & ((\inst|SYNC|Add0~9\) # (GND)))
-- \inst|SYNC|Add0~11\ = CARRY((!\inst|SYNC|Add0~9\) # (!\inst|SYNC|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|h_count\(5),
	datad => VCC,
	cin => \inst|SYNC|Add0~9\,
	combout => \inst|SYNC|Add0~10_combout\,
	cout => \inst|SYNC|Add0~11\);

-- Location: LCCOMB_X23_Y9_N28
\inst|SYNC|h_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|h_count~2_combout\ = (!\inst|SYNC|Equal0~2_combout\ & \inst|SYNC|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|SYNC|Equal0~2_combout\,
	datad => \inst|SYNC|Add0~10_combout\,
	combout => \inst|SYNC|h_count~2_combout\);

-- Location: FF_X23_Y9_N29
\inst|SYNC|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|SYNC|h_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(5));

-- Location: LCCOMB_X22_Y9_N22
\inst|SYNC|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~12_combout\ = (\inst|SYNC|h_count\(6) & (\inst|SYNC|Add0~11\ $ (GND))) # (!\inst|SYNC|h_count\(6) & (!\inst|SYNC|Add0~11\ & VCC))
-- \inst|SYNC|Add0~13\ = CARRY((\inst|SYNC|h_count\(6) & !\inst|SYNC|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(6),
	datad => VCC,
	cin => \inst|SYNC|Add0~11\,
	combout => \inst|SYNC|Add0~12_combout\,
	cout => \inst|SYNC|Add0~13\);

-- Location: FF_X22_Y9_N23
\inst|SYNC|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|SYNC|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(6));

-- Location: FF_X22_Y9_N13
\inst|SYNC|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|SYNC|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(1));

-- Location: LCCOMB_X22_Y9_N6
\inst|SYNC|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Equal0~0_combout\ = (\inst|SYNC|h_count\(0) & (\inst|SYNC|h_count\(3) & (\inst|SYNC|h_count\(4) & \inst|SYNC|h_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(0),
	datab => \inst|SYNC|h_count\(3),
	datac => \inst|SYNC|h_count\(4),
	datad => \inst|SYNC|h_count\(1),
	combout => \inst|SYNC|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y9_N8
\inst|SYNC|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Equal0~2_combout\ = (\inst|SYNC|Equal0~1_combout\ & (!\inst|SYNC|h_count\(6) & (\inst|SYNC|Equal0~0_combout\ & \inst|SYNC|h_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|Equal0~1_combout\,
	datab => \inst|SYNC|h_count\(6),
	datac => \inst|SYNC|Equal0~0_combout\,
	datad => \inst|SYNC|h_count\(9),
	combout => \inst|SYNC|Equal0~2_combout\);

-- Location: LCCOMB_X22_Y9_N24
\inst|SYNC|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~14_combout\ = (\inst|SYNC|h_count\(7) & (!\inst|SYNC|Add0~13\)) # (!\inst|SYNC|h_count\(7) & ((\inst|SYNC|Add0~13\) # (GND)))
-- \inst|SYNC|Add0~15\ = CARRY((!\inst|SYNC|Add0~13\) # (!\inst|SYNC|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|h_count\(7),
	datad => VCC,
	cin => \inst|SYNC|Add0~13\,
	combout => \inst|SYNC|Add0~14_combout\,
	cout => \inst|SYNC|Add0~15\);

-- Location: FF_X22_Y9_N25
\inst|SYNC|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|SYNC|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(7));

-- Location: LCCOMB_X22_Y9_N26
\inst|SYNC|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~16_combout\ = (\inst|SYNC|h_count\(8) & (\inst|SYNC|Add0~15\ $ (GND))) # (!\inst|SYNC|h_count\(8) & (!\inst|SYNC|Add0~15\ & VCC))
-- \inst|SYNC|Add0~17\ = CARRY((\inst|SYNC|h_count\(8) & !\inst|SYNC|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(8),
	datad => VCC,
	cin => \inst|SYNC|Add0~15\,
	combout => \inst|SYNC|Add0~16_combout\,
	cout => \inst|SYNC|Add0~17\);

-- Location: LCCOMB_X22_Y9_N28
\inst|SYNC|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~18_combout\ = \inst|SYNC|h_count\(9) $ (\inst|SYNC|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|h_count\(9),
	cin => \inst|SYNC|Add0~17\,
	combout => \inst|SYNC|Add0~18_combout\);

-- Location: LCCOMB_X23_Y9_N0
\inst|SYNC|h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|h_count~0_combout\ = (!\inst|SYNC|Equal0~2_combout\ & \inst|SYNC|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|SYNC|Equal0~2_combout\,
	datad => \inst|SYNC|Add0~18_combout\,
	combout => \inst|SYNC|h_count~0_combout\);

-- Location: FF_X23_Y9_N1
\inst|SYNC|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|SYNC|h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(9));

-- Location: LCCOMB_X27_Y9_N8
\inst|SYNC|process_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~11_combout\ = (!\inst|SYNC|h_count\(9)) # (!\inst|SYNC|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(9),
	datac => \inst|SYNC|h_count\(9),
	combout => \inst|SYNC|process_0~11_combout\);

-- Location: LCCOMB_X23_Y9_N22
\inst|SYNC|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~6_combout\ = ((!\inst|SYNC|h_count\(2) & ((!\inst|SYNC|h_count\(1)) # (!\inst|SYNC|h_count\(0))))) # (!\inst|SYNC|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(0),
	datab => \inst|SYNC|h_count\(1),
	datac => \inst|SYNC|h_count\(3),
	datad => \inst|SYNC|h_count\(2),
	combout => \inst|SYNC|process_0~6_combout\);

-- Location: LCCOMB_X23_Y9_N12
\inst|SYNC|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~7_combout\ = (!\inst|SYNC|h_count\(6) & (((\inst|SYNC|process_0~6_combout\) # (!\inst|SYNC|h_count\(4))) # (!\inst|SYNC|h_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(5),
	datab => \inst|SYNC|h_count\(4),
	datac => \inst|SYNC|process_0~6_combout\,
	datad => \inst|SYNC|h_count\(6),
	combout => \inst|SYNC|process_0~7_combout\);

-- Location: LCCOMB_X24_Y9_N0
\inst|SYNC|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~8_combout\ = (!\inst|SYNC|h_count\(8) & ((\inst|SYNC|process_0~7_combout\) # (!\inst|SYNC|h_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(8),
	datac => \inst|SYNC|h_count\(7),
	datad => \inst|SYNC|process_0~7_combout\,
	combout => \inst|SYNC|process_0~8_combout\);

-- Location: LCCOMB_X27_Y9_N18
\inst|SYNC|v_count[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[2]~0_combout\ = (!\inst|SYNC|Equal1~1_combout\ & ((\inst|SYNC|process_0~11_combout\) # ((\inst|SYNC|process_0~10_combout\) # (\inst|SYNC|process_0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|Equal1~1_combout\,
	datab => \inst|SYNC|process_0~11_combout\,
	datac => \inst|SYNC|process_0~10_combout\,
	datad => \inst|SYNC|process_0~8_combout\,
	combout => \inst|SYNC|v_count[2]~0_combout\);

-- Location: LCCOMB_X27_Y9_N26
\inst|SYNC|v_count[7]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[7]~6_combout\ = (\inst|SYNC|Add1~14_combout\ & ((\inst|SYNC|v_count[2]~0_combout\) # ((!\inst|SYNC|v_count[5]~1_combout\ & \inst|SYNC|v_count\(7))))) # (!\inst|SYNC|Add1~14_combout\ & (!\inst|SYNC|v_count[5]~1_combout\ & 
-- (\inst|SYNC|v_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|Add1~14_combout\,
	datab => \inst|SYNC|v_count[5]~1_combout\,
	datac => \inst|SYNC|v_count\(7),
	datad => \inst|SYNC|v_count[2]~0_combout\,
	combout => \inst|SYNC|v_count[7]~6_combout\);

-- Location: FF_X27_Y9_N27
\inst|SYNC|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|SYNC|v_count[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(7));

-- Location: LCCOMB_X28_Y9_N0
\inst|SYNC|v_count[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[3]~8_combout\ = (\inst|SYNC|Add1~6_combout\ & ((\inst|SYNC|v_count[2]~0_combout\) # ((!\inst|SYNC|v_count[5]~1_combout\ & \inst|SYNC|v_count\(3))))) # (!\inst|SYNC|Add1~6_combout\ & (!\inst|SYNC|v_count[5]~1_combout\ & 
-- (\inst|SYNC|v_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|Add1~6_combout\,
	datab => \inst|SYNC|v_count[5]~1_combout\,
	datac => \inst|SYNC|v_count\(3),
	datad => \inst|SYNC|v_count[2]~0_combout\,
	combout => \inst|SYNC|v_count[3]~8_combout\);

-- Location: FF_X28_Y9_N1
\inst|SYNC|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|SYNC|v_count[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(3));

-- Location: LCCOMB_X28_Y9_N2
\inst|SYNC|v_count[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[2]~9_combout\ = (\inst|SYNC|Add1~4_combout\ & ((\inst|SYNC|v_count[2]~0_combout\) # ((!\inst|SYNC|v_count[5]~1_combout\ & \inst|SYNC|v_count\(2))))) # (!\inst|SYNC|Add1~4_combout\ & (!\inst|SYNC|v_count[5]~1_combout\ & 
-- (\inst|SYNC|v_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|Add1~4_combout\,
	datab => \inst|SYNC|v_count[5]~1_combout\,
	datac => \inst|SYNC|v_count\(2),
	datad => \inst|SYNC|v_count[2]~0_combout\,
	combout => \inst|SYNC|v_count[2]~9_combout\);

-- Location: FF_X28_Y9_N3
\inst|SYNC|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|SYNC|v_count[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(2));

-- Location: LCCOMB_X28_Y9_N26
\inst|SYNC|process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~9_combout\ = (!\inst|SYNC|v_count\(4) & (!\inst|SYNC|v_count\(5) & ((!\inst|SYNC|v_count\(2)) # (!\inst|SYNC|v_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(4),
	datab => \inst|SYNC|v_count\(3),
	datac => \inst|SYNC|v_count\(5),
	datad => \inst|SYNC|v_count\(2),
	combout => \inst|SYNC|process_0~9_combout\);

-- Location: LCCOMB_X27_Y9_N14
\inst|SYNC|process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~10_combout\ = (!\inst|SYNC|v_count\(6) & (!\inst|SYNC|v_count\(8) & (!\inst|SYNC|v_count\(7) & \inst|SYNC|process_0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(6),
	datab => \inst|SYNC|v_count\(8),
	datac => \inst|SYNC|v_count\(7),
	datad => \inst|SYNC|process_0~9_combout\,
	combout => \inst|SYNC|process_0~10_combout\);

-- Location: LCCOMB_X27_Y9_N20
\inst|SYNC|v_count[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[5]~1_combout\ = ((!\inst|SYNC|process_0~11_combout\ & (!\inst|SYNC|process_0~10_combout\ & !\inst|SYNC|process_0~8_combout\))) # (!\inst|SYNC|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|Equal1~1_combout\,
	datab => \inst|SYNC|process_0~11_combout\,
	datac => \inst|SYNC|process_0~10_combout\,
	datad => \inst|SYNC|process_0~8_combout\,
	combout => \inst|SYNC|v_count[5]~1_combout\);

-- Location: LCCOMB_X27_Y9_N6
\inst|SYNC|v_count[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[5]~4_combout\ = (\inst|SYNC|Add1~10_combout\ & ((\inst|SYNC|v_count[2]~0_combout\) # ((!\inst|SYNC|v_count[5]~1_combout\ & \inst|SYNC|v_count\(5))))) # (!\inst|SYNC|Add1~10_combout\ & (!\inst|SYNC|v_count[5]~1_combout\ & 
-- (\inst|SYNC|v_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|Add1~10_combout\,
	datab => \inst|SYNC|v_count[5]~1_combout\,
	datac => \inst|SYNC|v_count\(5),
	datad => \inst|SYNC|v_count[2]~0_combout\,
	combout => \inst|SYNC|v_count[5]~4_combout\);

-- Location: FF_X27_Y9_N7
\inst|SYNC|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|SYNC|v_count[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(5));

-- Location: LCCOMB_X27_Y9_N28
\inst|SYNC|v_count[8]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[8]~2_combout\ = (\inst|SYNC|v_count[5]~1_combout\ & (\inst|SYNC|Add1~16_combout\ & ((\inst|SYNC|v_count[2]~0_combout\)))) # (!\inst|SYNC|v_count[5]~1_combout\ & ((\inst|SYNC|v_count\(8)) # ((\inst|SYNC|Add1~16_combout\ & 
-- \inst|SYNC|v_count[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count[5]~1_combout\,
	datab => \inst|SYNC|Add1~16_combout\,
	datac => \inst|SYNC|v_count\(8),
	datad => \inst|SYNC|v_count[2]~0_combout\,
	combout => \inst|SYNC|v_count[8]~2_combout\);

-- Location: FF_X27_Y9_N29
\inst|SYNC|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|SYNC|v_count[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(8));

-- Location: LCCOMB_X28_Y9_N30
\inst|SYNC|v_count[9]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[9]~3_combout\ = (\inst|SYNC|Add1~18_combout\ & ((\inst|SYNC|v_count[2]~0_combout\) # ((!\inst|SYNC|v_count[5]~1_combout\ & \inst|SYNC|v_count\(9))))) # (!\inst|SYNC|Add1~18_combout\ & (!\inst|SYNC|v_count[5]~1_combout\ & 
-- (\inst|SYNC|v_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|Add1~18_combout\,
	datab => \inst|SYNC|v_count[5]~1_combout\,
	datac => \inst|SYNC|v_count\(9),
	datad => \inst|SYNC|v_count[2]~0_combout\,
	combout => \inst|SYNC|v_count[9]~3_combout\);

-- Location: FF_X28_Y9_N31
\inst|SYNC|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|SYNC|v_count[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(9));

-- Location: LCCOMB_X27_Y9_N24
\inst|SYNC|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|LessThan7~0_combout\ = (\inst|SYNC|v_count\(6) & (\inst|SYNC|v_count\(8) & (\inst|SYNC|v_count\(7) & \inst|SYNC|v_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(6),
	datab => \inst|SYNC|v_count\(8),
	datac => \inst|SYNC|v_count\(7),
	datad => \inst|SYNC|v_count\(5),
	combout => \inst|SYNC|LessThan7~0_combout\);

-- Location: LCCOMB_X27_Y9_N22
\inst|SYNC|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|LessThan7~1_combout\ = (!\inst|SYNC|v_count\(9) & !\inst|SYNC|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|SYNC|v_count\(9),
	datad => \inst|SYNC|LessThan7~0_combout\,
	combout => \inst|SYNC|LessThan7~1_combout\);

-- Location: FF_X28_Y10_N29
\inst|SYNC|pixel_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count\(8),
	sload => VCC,
	ena => \inst|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(8));

-- Location: LCCOMB_X29_Y11_N12
\inst|Add11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~2_cout\ = CARRY(!\inst|Ball_Y_pos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(0),
	datad => VCC,
	cout => \inst|Add11~2_cout\);

-- Location: LCCOMB_X29_Y11_N14
\inst|Add11~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~3_combout\ = (\inst|Ball_Y_pos\(1) & ((\inst|Add11~2_cout\) # (GND))) # (!\inst|Ball_Y_pos\(1) & (!\inst|Add11~2_cout\))
-- \inst|Add11~4\ = CARRY((\inst|Ball_Y_pos\(1)) # (!\inst|Add11~2_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(1),
	datad => VCC,
	cin => \inst|Add11~2_cout\,
	combout => \inst|Add11~3_combout\,
	cout => \inst|Add11~4\);

-- Location: LCCOMB_X29_Y11_N16
\inst|Add11~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~5_combout\ = (\inst|Ball_Y_pos\(2) & (!\inst|Add11~4\ & VCC)) # (!\inst|Ball_Y_pos\(2) & (\inst|Add11~4\ $ (GND)))
-- \inst|Add11~6\ = CARRY((!\inst|Ball_Y_pos\(2) & !\inst|Add11~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(2),
	datad => VCC,
	cin => \inst|Add11~4\,
	combout => \inst|Add11~5_combout\,
	cout => \inst|Add11~6\);

-- Location: LCCOMB_X29_Y11_N20
\inst|Add11~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~9_combout\ = (\inst|Ball_Y_pos\(4) & (!\inst|Add11~8\ & VCC)) # (!\inst|Ball_Y_pos\(4) & (\inst|Add11~8\ $ (GND)))
-- \inst|Add11~10\ = CARRY((!\inst|Ball_Y_pos\(4) & !\inst|Add11~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_Y_pos\(4),
	datad => VCC,
	cin => \inst|Add11~8\,
	combout => \inst|Add11~9_combout\,
	cout => \inst|Add11~10\);

-- Location: LCCOMB_X24_Y11_N0
\inst|Ball_X_pos[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_pos[2]~9_combout\ = \inst|Ball_X_pos\(2) $ (VCC)
-- \inst|Ball_X_pos[2]~10\ = CARRY(\inst|Ball_X_pos\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_X_pos\(2),
	datad => VCC,
	combout => \inst|Ball_X_pos[2]~9_combout\,
	cout => \inst|Ball_X_pos[2]~10\);

-- Location: FF_X24_Y11_N1
\inst|Ball_X_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_X_pos[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_X_pos\(2));

-- Location: LCCOMB_X24_Y11_N2
\inst|Ball_X_pos[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_pos[3]~11_combout\ = (\inst|Ball_X_motion~4_combout\ & ((\inst|Ball_X_pos\(3) & (\inst|Ball_X_pos[2]~10\ & VCC)) # (!\inst|Ball_X_pos\(3) & (!\inst|Ball_X_pos[2]~10\)))) # (!\inst|Ball_X_motion~4_combout\ & ((\inst|Ball_X_pos\(3) & 
-- (!\inst|Ball_X_pos[2]~10\)) # (!\inst|Ball_X_pos\(3) & ((\inst|Ball_X_pos[2]~10\) # (GND)))))
-- \inst|Ball_X_pos[3]~12\ = CARRY((\inst|Ball_X_motion~4_combout\ & (!\inst|Ball_X_pos\(3) & !\inst|Ball_X_pos[2]~10\)) # (!\inst|Ball_X_motion~4_combout\ & ((!\inst|Ball_X_pos[2]~10\) # (!\inst|Ball_X_pos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_motion~4_combout\,
	datab => \inst|Ball_X_pos\(3),
	datad => VCC,
	cin => \inst|Ball_X_pos[2]~10\,
	combout => \inst|Ball_X_pos[3]~11_combout\,
	cout => \inst|Ball_X_pos[3]~12\);

-- Location: FF_X24_Y11_N3
\inst|Ball_X_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_X_pos[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_X_pos\(3));

-- Location: LCCOMB_X24_Y11_N4
\inst|Ball_X_pos[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_pos[4]~13_combout\ = ((\inst|Ball_X_motion~4_combout\ $ (\inst|Ball_X_pos\(4) $ (!\inst|Ball_X_pos[3]~12\)))) # (GND)
-- \inst|Ball_X_pos[4]~14\ = CARRY((\inst|Ball_X_motion~4_combout\ & ((\inst|Ball_X_pos\(4)) # (!\inst|Ball_X_pos[3]~12\))) # (!\inst|Ball_X_motion~4_combout\ & (\inst|Ball_X_pos\(4) & !\inst|Ball_X_pos[3]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_motion~4_combout\,
	datab => \inst|Ball_X_pos\(4),
	datad => VCC,
	cin => \inst|Ball_X_pos[3]~12\,
	combout => \inst|Ball_X_pos[4]~13_combout\,
	cout => \inst|Ball_X_pos[4]~14\);

-- Location: FF_X24_Y11_N5
\inst|Ball_X_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_X_pos[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_X_pos\(4));

-- Location: LCCOMB_X24_Y11_N6
\inst|Ball_X_pos[5]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_pos[5]~15_combout\ = (\inst|Ball_X_motion~4_combout\ & ((\inst|Ball_X_pos\(5) & (\inst|Ball_X_pos[4]~14\ & VCC)) # (!\inst|Ball_X_pos\(5) & (!\inst|Ball_X_pos[4]~14\)))) # (!\inst|Ball_X_motion~4_combout\ & ((\inst|Ball_X_pos\(5) & 
-- (!\inst|Ball_X_pos[4]~14\)) # (!\inst|Ball_X_pos\(5) & ((\inst|Ball_X_pos[4]~14\) # (GND)))))
-- \inst|Ball_X_pos[5]~16\ = CARRY((\inst|Ball_X_motion~4_combout\ & (!\inst|Ball_X_pos\(5) & !\inst|Ball_X_pos[4]~14\)) # (!\inst|Ball_X_motion~4_combout\ & ((!\inst|Ball_X_pos[4]~14\) # (!\inst|Ball_X_pos\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_motion~4_combout\,
	datab => \inst|Ball_X_pos\(5),
	datad => VCC,
	cin => \inst|Ball_X_pos[4]~14\,
	combout => \inst|Ball_X_pos[5]~15_combout\,
	cout => \inst|Ball_X_pos[5]~16\);

-- Location: FF_X24_Y11_N7
\inst|Ball_X_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_X_pos[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_X_pos\(5));

-- Location: LCCOMB_X24_Y11_N8
\inst|Ball_X_pos[6]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_pos[6]~17_combout\ = ((\inst|Ball_X_motion~4_combout\ $ (\inst|Ball_X_pos\(6) $ (!\inst|Ball_X_pos[5]~16\)))) # (GND)
-- \inst|Ball_X_pos[6]~18\ = CARRY((\inst|Ball_X_motion~4_combout\ & ((\inst|Ball_X_pos\(6)) # (!\inst|Ball_X_pos[5]~16\))) # (!\inst|Ball_X_motion~4_combout\ & (\inst|Ball_X_pos\(6) & !\inst|Ball_X_pos[5]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_motion~4_combout\,
	datab => \inst|Ball_X_pos\(6),
	datad => VCC,
	cin => \inst|Ball_X_pos[5]~16\,
	combout => \inst|Ball_X_pos[6]~17_combout\,
	cout => \inst|Ball_X_pos[6]~18\);

-- Location: FF_X24_Y11_N9
\inst|Ball_X_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_X_pos[6]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_X_pos\(6));

-- Location: LCCOMB_X24_Y11_N10
\inst|Ball_X_pos[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_pos[7]~19_combout\ = (\inst|Ball_X_motion~4_combout\ & ((\inst|Ball_X_pos\(7) & (\inst|Ball_X_pos[6]~18\ & VCC)) # (!\inst|Ball_X_pos\(7) & (!\inst|Ball_X_pos[6]~18\)))) # (!\inst|Ball_X_motion~4_combout\ & ((\inst|Ball_X_pos\(7) & 
-- (!\inst|Ball_X_pos[6]~18\)) # (!\inst|Ball_X_pos\(7) & ((\inst|Ball_X_pos[6]~18\) # (GND)))))
-- \inst|Ball_X_pos[7]~20\ = CARRY((\inst|Ball_X_motion~4_combout\ & (!\inst|Ball_X_pos\(7) & !\inst|Ball_X_pos[6]~18\)) # (!\inst|Ball_X_motion~4_combout\ & ((!\inst|Ball_X_pos[6]~18\) # (!\inst|Ball_X_pos\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_motion~4_combout\,
	datab => \inst|Ball_X_pos\(7),
	datad => VCC,
	cin => \inst|Ball_X_pos[6]~18\,
	combout => \inst|Ball_X_pos[7]~19_combout\,
	cout => \inst|Ball_X_pos[7]~20\);

-- Location: FF_X24_Y11_N11
\inst|Ball_X_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_X_pos[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_X_pos\(7));

-- Location: LCCOMB_X24_Y11_N12
\inst|Ball_X_pos[8]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_pos[8]~21_combout\ = ((\inst|Ball_X_motion~4_combout\ $ (\inst|Ball_X_pos\(8) $ (!\inst|Ball_X_pos[7]~20\)))) # (GND)
-- \inst|Ball_X_pos[8]~22\ = CARRY((\inst|Ball_X_motion~4_combout\ & ((\inst|Ball_X_pos\(8)) # (!\inst|Ball_X_pos[7]~20\))) # (!\inst|Ball_X_motion~4_combout\ & (\inst|Ball_X_pos\(8) & !\inst|Ball_X_pos[7]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_motion~4_combout\,
	datab => \inst|Ball_X_pos\(8),
	datad => VCC,
	cin => \inst|Ball_X_pos[7]~20\,
	combout => \inst|Ball_X_pos[8]~21_combout\,
	cout => \inst|Ball_X_pos[8]~22\);

-- Location: FF_X24_Y11_N13
\inst|Ball_X_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_X_pos[8]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_X_pos\(8));

-- Location: LCCOMB_X24_Y11_N14
\inst|Ball_X_pos[9]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_pos[9]~23_combout\ = (\inst|Ball_X_motion~4_combout\ & ((\inst|Ball_X_pos\(9) & (\inst|Ball_X_pos[8]~22\ & VCC)) # (!\inst|Ball_X_pos\(9) & (!\inst|Ball_X_pos[8]~22\)))) # (!\inst|Ball_X_motion~4_combout\ & ((\inst|Ball_X_pos\(9) & 
-- (!\inst|Ball_X_pos[8]~22\)) # (!\inst|Ball_X_pos\(9) & ((\inst|Ball_X_pos[8]~22\) # (GND)))))
-- \inst|Ball_X_pos[9]~24\ = CARRY((\inst|Ball_X_motion~4_combout\ & (!\inst|Ball_X_pos\(9) & !\inst|Ball_X_pos[8]~22\)) # (!\inst|Ball_X_motion~4_combout\ & ((!\inst|Ball_X_pos[8]~22\) # (!\inst|Ball_X_pos\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_motion~4_combout\,
	datab => \inst|Ball_X_pos\(9),
	datad => VCC,
	cin => \inst|Ball_X_pos[8]~22\,
	combout => \inst|Ball_X_pos[9]~23_combout\,
	cout => \inst|Ball_X_pos[9]~24\);

-- Location: FF_X24_Y11_N15
\inst|Ball_X_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_X_pos[9]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_X_pos\(9));

-- Location: LCCOMB_X24_Y11_N18
\inst|Ball_X_motion~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_motion~0_combout\ = (!\inst|Ball_X_pos\(4) & ((!\inst|Ball_X_pos\(3)) # (!\inst|Ball_X_pos\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_X_pos\(2),
	datac => \inst|Ball_X_pos\(4),
	datad => \inst|Ball_X_pos\(3),
	combout => \inst|Ball_X_motion~0_combout\);

-- Location: LCCOMB_X24_Y11_N24
\inst|Ball_Y_motion~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_motion~0_combout\ = (!\inst|Ball_X_pos\(9) & (((\inst|Ball_X_motion~0_combout\) # (!\inst|Ball_X_pos\(6))) # (!\inst|Ball_X_pos\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(5),
	datab => \inst|Ball_X_pos\(6),
	datac => \inst|Ball_X_pos\(9),
	datad => \inst|Ball_X_motion~0_combout\,
	combout => \inst|Ball_Y_motion~0_combout\);

-- Location: LCCOMB_X24_Y11_N28
\inst|Ball_Y_motion~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_motion~4_combout\ = (\inst|Ball_X_pos\(5)) # ((\inst|Ball_X_pos\(3) & (\inst|Ball_X_pos\(4) & \inst|Ball_X_pos\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(5),
	datab => \inst|Ball_X_pos\(3),
	datac => \inst|Ball_X_pos\(4),
	datad => \inst|Ball_X_pos\(2),
	combout => \inst|Ball_Y_motion~4_combout\);

-- Location: LCCOMB_X24_Y11_N22
\inst|Ball_Y_motion~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_motion~5_combout\ = (!\inst|Ball_X_pos\(8) & (\inst|Ball_X_pos\(6) & \inst|Ball_Y_motion~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(8),
	datac => \inst|Ball_X_pos\(6),
	datad => \inst|Ball_Y_motion~4_combout\,
	combout => \inst|Ball_Y_motion~5_combout\);

-- Location: LCCOMB_X29_Y11_N24
\inst|Add11~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~13_combout\ = (\inst|Ball_Y_pos\(6) & (!\inst|Add11~12\ & VCC)) # (!\inst|Ball_Y_pos\(6) & (\inst|Add11~12\ $ (GND)))
-- \inst|Add11~14\ = CARRY((!\inst|Ball_Y_pos\(6) & !\inst|Add11~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_Y_pos\(6),
	datad => VCC,
	cin => \inst|Add11~12\,
	combout => \inst|Add11~13_combout\,
	cout => \inst|Add11~14\);

-- Location: LCCOMB_X28_Y11_N8
\inst|Add11~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~28_combout\ = (\inst|Ball_Y_motion~6_combout\ & ((\inst|Add11~27_combout\) # ((!\inst|Add11~21_combout\)))) # (!\inst|Ball_Y_motion~6_combout\ & (((\inst|Add11~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add11~27_combout\,
	datab => \inst|Add11~21_combout\,
	datac => \inst|Ball_Y_motion~6_combout\,
	datad => \inst|Add11~13_combout\,
	combout => \inst|Add11~28_combout\);

-- Location: FF_X29_Y11_N9
\inst|Move_Ball:Ball_Y_motion[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add11~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Move_Ball:Ball_Y_motion[2]~q\);

-- Location: LCCOMB_X29_Y11_N8
\inst|Add11~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~37_combout\ = (\inst|Ball_Y_motion~6_combout\ & (((\inst|Move_Ball:Ball_Y_motion[2]~q\)) # (!\inst|Add11~36_combout\))) # (!\inst|Ball_Y_motion~6_combout\ & (((\inst|Add11~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add11~36_combout\,
	datab => \inst|Add11~5_combout\,
	datac => \inst|Move_Ball:Ball_Y_motion[2]~q\,
	datad => \inst|Ball_Y_motion~6_combout\,
	combout => \inst|Add11~37_combout\);

-- Location: FF_X29_Y11_N11
\inst|Move_Ball:Ball_Y_motion[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add11~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Move_Ball:Ball_Y_motion[1]~q\);

-- Location: LCCOMB_X29_Y11_N10
\inst|Add11~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~38_combout\ = (\inst|Ball_Y_motion~6_combout\ & (\inst|Add11~36_combout\ & ((\inst|Move_Ball:Ball_Y_motion[1]~q\)))) # (!\inst|Ball_Y_motion~6_combout\ & (((\inst|Add11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add11~36_combout\,
	datab => \inst|Add11~3_combout\,
	datac => \inst|Move_Ball:Ball_Y_motion[1]~q\,
	datad => \inst|Ball_Y_motion~6_combout\,
	combout => \inst|Add11~38_combout\);

-- Location: LCCOMB_X28_Y11_N10
\inst|Ball_Y_pos[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_pos[0]~10_combout\ = (\inst|Add11~39_combout\ & (\inst|Ball_Y_pos\(0) $ (VCC))) # (!\inst|Add11~39_combout\ & (\inst|Ball_Y_pos\(0) & VCC))
-- \inst|Ball_Y_pos[0]~11\ = CARRY((\inst|Add11~39_combout\ & \inst|Ball_Y_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add11~39_combout\,
	datab => \inst|Ball_Y_pos\(0),
	datad => VCC,
	combout => \inst|Ball_Y_pos[0]~10_combout\,
	cout => \inst|Ball_Y_pos[0]~11\);

-- Location: FF_X28_Y11_N11
\inst|Ball_Y_pos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_pos[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(0));

-- Location: LCCOMB_X28_Y11_N12
\inst|Ball_Y_pos[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_pos[1]~12_combout\ = (\inst|Ball_Y_pos\(1) & ((\inst|Add11~38_combout\ & (\inst|Ball_Y_pos[0]~11\ & VCC)) # (!\inst|Add11~38_combout\ & (!\inst|Ball_Y_pos[0]~11\)))) # (!\inst|Ball_Y_pos\(1) & ((\inst|Add11~38_combout\ & 
-- (!\inst|Ball_Y_pos[0]~11\)) # (!\inst|Add11~38_combout\ & ((\inst|Ball_Y_pos[0]~11\) # (GND)))))
-- \inst|Ball_Y_pos[1]~13\ = CARRY((\inst|Ball_Y_pos\(1) & (!\inst|Add11~38_combout\ & !\inst|Ball_Y_pos[0]~11\)) # (!\inst|Ball_Y_pos\(1) & ((!\inst|Ball_Y_pos[0]~11\) # (!\inst|Add11~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(1),
	datab => \inst|Add11~38_combout\,
	datad => VCC,
	cin => \inst|Ball_Y_pos[0]~11\,
	combout => \inst|Ball_Y_pos[1]~12_combout\,
	cout => \inst|Ball_Y_pos[1]~13\);

-- Location: LCCOMB_X28_Y11_N14
\inst|Ball_Y_pos[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_pos[2]~14_combout\ = ((\inst|Ball_Y_pos\(2) $ (\inst|Add11~37_combout\ $ (!\inst|Ball_Y_pos[1]~13\)))) # (GND)
-- \inst|Ball_Y_pos[2]~15\ = CARRY((\inst|Ball_Y_pos\(2) & ((\inst|Add11~37_combout\) # (!\inst|Ball_Y_pos[1]~13\))) # (!\inst|Ball_Y_pos\(2) & (\inst|Add11~37_combout\ & !\inst|Ball_Y_pos[1]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(2),
	datab => \inst|Add11~37_combout\,
	datad => VCC,
	cin => \inst|Ball_Y_pos[1]~13\,
	combout => \inst|Ball_Y_pos[2]~14_combout\,
	cout => \inst|Ball_Y_pos[2]~15\);

-- Location: LCCOMB_X28_Y11_N16
\inst|Ball_Y_pos[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_pos[3]~16_combout\ = (\inst|Add11~34_combout\ & ((\inst|Ball_Y_pos\(3) & (\inst|Ball_Y_pos[2]~15\ & VCC)) # (!\inst|Ball_Y_pos\(3) & (!\inst|Ball_Y_pos[2]~15\)))) # (!\inst|Add11~34_combout\ & ((\inst|Ball_Y_pos\(3) & 
-- (!\inst|Ball_Y_pos[2]~15\)) # (!\inst|Ball_Y_pos\(3) & ((\inst|Ball_Y_pos[2]~15\) # (GND)))))
-- \inst|Ball_Y_pos[3]~17\ = CARRY((\inst|Add11~34_combout\ & (!\inst|Ball_Y_pos\(3) & !\inst|Ball_Y_pos[2]~15\)) # (!\inst|Add11~34_combout\ & ((!\inst|Ball_Y_pos[2]~15\) # (!\inst|Ball_Y_pos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add11~34_combout\,
	datab => \inst|Ball_Y_pos\(3),
	datad => VCC,
	cin => \inst|Ball_Y_pos[2]~15\,
	combout => \inst|Ball_Y_pos[3]~16_combout\,
	cout => \inst|Ball_Y_pos[3]~17\);

-- Location: FF_X28_Y11_N17
\inst|Ball_Y_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_pos[3]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(3));

-- Location: LCCOMB_X28_Y11_N18
\inst|Ball_Y_pos[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_pos[4]~18_combout\ = ((\inst|Ball_Y_pos\(4) $ (\inst|Add11~32_combout\ $ (!\inst|Ball_Y_pos[3]~17\)))) # (GND)
-- \inst|Ball_Y_pos[4]~19\ = CARRY((\inst|Ball_Y_pos\(4) & ((\inst|Add11~32_combout\) # (!\inst|Ball_Y_pos[3]~17\))) # (!\inst|Ball_Y_pos\(4) & (\inst|Add11~32_combout\ & !\inst|Ball_Y_pos[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(4),
	datab => \inst|Add11~32_combout\,
	datad => VCC,
	cin => \inst|Ball_Y_pos[3]~17\,
	combout => \inst|Ball_Y_pos[4]~18_combout\,
	cout => \inst|Ball_Y_pos[4]~19\);

-- Location: LCCOMB_X28_Y11_N20
\inst|Ball_Y_pos[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_pos[5]~20_combout\ = (\inst|Add11~30_combout\ & ((\inst|Ball_Y_pos\(5) & (\inst|Ball_Y_pos[4]~19\ & VCC)) # (!\inst|Ball_Y_pos\(5) & (!\inst|Ball_Y_pos[4]~19\)))) # (!\inst|Add11~30_combout\ & ((\inst|Ball_Y_pos\(5) & 
-- (!\inst|Ball_Y_pos[4]~19\)) # (!\inst|Ball_Y_pos\(5) & ((\inst|Ball_Y_pos[4]~19\) # (GND)))))
-- \inst|Ball_Y_pos[5]~21\ = CARRY((\inst|Add11~30_combout\ & (!\inst|Ball_Y_pos\(5) & !\inst|Ball_Y_pos[4]~19\)) # (!\inst|Add11~30_combout\ & ((!\inst|Ball_Y_pos[4]~19\) # (!\inst|Ball_Y_pos\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add11~30_combout\,
	datab => \inst|Ball_Y_pos\(5),
	datad => VCC,
	cin => \inst|Ball_Y_pos[4]~19\,
	combout => \inst|Ball_Y_pos[5]~20_combout\,
	cout => \inst|Ball_Y_pos[5]~21\);

-- Location: FF_X28_Y11_N21
\inst|Ball_Y_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_pos[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(5));

-- Location: LCCOMB_X28_Y11_N22
\inst|Ball_Y_pos[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_pos[6]~22_combout\ = ((\inst|Ball_Y_pos\(6) $ (\inst|Add11~28_combout\ $ (!\inst|Ball_Y_pos[5]~21\)))) # (GND)
-- \inst|Ball_Y_pos[6]~23\ = CARRY((\inst|Ball_Y_pos\(6) & ((\inst|Add11~28_combout\) # (!\inst|Ball_Y_pos[5]~21\))) # (!\inst|Ball_Y_pos\(6) & (\inst|Add11~28_combout\ & !\inst|Ball_Y_pos[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(6),
	datab => \inst|Add11~28_combout\,
	datad => VCC,
	cin => \inst|Ball_Y_pos[5]~21\,
	combout => \inst|Ball_Y_pos[6]~22_combout\,
	cout => \inst|Ball_Y_pos[6]~23\);

-- Location: FF_X28_Y11_N23
\inst|Ball_Y_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_pos[6]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(6));

-- Location: LCCOMB_X27_Y11_N4
\inst|LessThan21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan21~1_combout\ = (\inst|Ball_Y_pos\(5)) # ((\inst|Ball_Y_pos\(7)) # ((\inst|Ball_Y_pos\(6)) # (\inst|Ball_Y_pos\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(5),
	datab => \inst|Ball_Y_pos\(7),
	datac => \inst|Ball_Y_pos\(6),
	datad => \inst|Ball_Y_pos\(4),
	combout => \inst|LessThan21~1_combout\);

-- Location: FF_X28_Y11_N15
\inst|Ball_Y_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_pos[2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(2));

-- Location: FF_X28_Y11_N13
\inst|Ball_Y_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_pos[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(1));

-- Location: LCCOMB_X28_Y11_N4
\inst|LessThan21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan21~0_combout\ = (\inst|Ball_Y_pos\(3) & ((\inst|Ball_Y_pos\(0)) # ((\inst|Ball_Y_pos\(2)) # (\inst|Ball_Y_pos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(0),
	datab => \inst|Ball_Y_pos\(3),
	datac => \inst|Ball_Y_pos\(2),
	datad => \inst|Ball_Y_pos\(1),
	combout => \inst|LessThan21~0_combout\);

-- Location: FF_X29_Y11_N5
\inst|Move_Ball:Ball_Y_motion[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add11~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Move_Ball:Ball_Y_motion[9]~q\);

-- Location: LCCOMB_X29_Y11_N2
\inst|Add11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~0_combout\ = (\inst|Move_Ball:Ball_Y_motion[9]~q\ & ((\inst|Ball_Y_pos\(8)) # ((\inst|LessThan21~1_combout\) # (\inst|LessThan21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(8),
	datab => \inst|LessThan21~1_combout\,
	datac => \inst|LessThan21~0_combout\,
	datad => \inst|Move_Ball:Ball_Y_motion[9]~q\,
	combout => \inst|Add11~0_combout\);

-- Location: LCCOMB_X29_Y11_N28
\inst|Add11~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~17_combout\ = (\inst|Ball_Y_pos\(8) & (!\inst|Add11~16\ & VCC)) # (!\inst|Ball_Y_pos\(8) & (\inst|Add11~16\ $ (GND)))
-- \inst|Add11~18\ = CARRY((!\inst|Ball_Y_pos\(8) & !\inst|Add11~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(8),
	datad => VCC,
	cin => \inst|Add11~16\,
	combout => \inst|Add11~17_combout\,
	cout => \inst|Add11~18\);

-- Location: LCCOMB_X29_Y11_N30
\inst|Add11~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~19_combout\ = \inst|Add11~18\ $ (!\inst|Ball_Y_pos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|Ball_Y_pos\(9),
	cin => \inst|Add11~18\,
	combout => \inst|Add11~19_combout\);

-- Location: LCCOMB_X29_Y11_N4
\inst|Add11~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~22_combout\ = (\inst|Ball_Y_motion~6_combout\ & (((\inst|Add11~0_combout\)) # (!\inst|Add11~21_combout\))) # (!\inst|Ball_Y_motion~6_combout\ & (((\inst|Add11~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add11~21_combout\,
	datab => \inst|Add11~0_combout\,
	datac => \inst|Add11~19_combout\,
	datad => \inst|Ball_Y_motion~6_combout\,
	combout => \inst|Add11~22_combout\);

-- Location: LCCOMB_X28_Y11_N24
\inst|Ball_Y_pos[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_pos[7]~24_combout\ = (\inst|Ball_Y_pos\(7) & ((\inst|Add11~26_combout\ & (\inst|Ball_Y_pos[6]~23\ & VCC)) # (!\inst|Add11~26_combout\ & (!\inst|Ball_Y_pos[6]~23\)))) # (!\inst|Ball_Y_pos\(7) & ((\inst|Add11~26_combout\ & 
-- (!\inst|Ball_Y_pos[6]~23\)) # (!\inst|Add11~26_combout\ & ((\inst|Ball_Y_pos[6]~23\) # (GND)))))
-- \inst|Ball_Y_pos[7]~25\ = CARRY((\inst|Ball_Y_pos\(7) & (!\inst|Add11~26_combout\ & !\inst|Ball_Y_pos[6]~23\)) # (!\inst|Ball_Y_pos\(7) & ((!\inst|Ball_Y_pos[6]~23\) # (!\inst|Add11~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(7),
	datab => \inst|Add11~26_combout\,
	datad => VCC,
	cin => \inst|Ball_Y_pos[6]~23\,
	combout => \inst|Ball_Y_pos[7]~24_combout\,
	cout => \inst|Ball_Y_pos[7]~25\);

-- Location: LCCOMB_X28_Y11_N26
\inst|Ball_Y_pos[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_pos[8]~26_combout\ = ((\inst|Ball_Y_pos\(8) $ (\inst|Add11~24_combout\ $ (!\inst|Ball_Y_pos[7]~25\)))) # (GND)
-- \inst|Ball_Y_pos[8]~27\ = CARRY((\inst|Ball_Y_pos\(8) & ((\inst|Add11~24_combout\) # (!\inst|Ball_Y_pos[7]~25\))) # (!\inst|Ball_Y_pos\(8) & (\inst|Add11~24_combout\ & !\inst|Ball_Y_pos[7]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(8),
	datab => \inst|Add11~24_combout\,
	datad => VCC,
	cin => \inst|Ball_Y_pos[7]~25\,
	combout => \inst|Ball_Y_pos[8]~26_combout\,
	cout => \inst|Ball_Y_pos[8]~27\);

-- Location: LCCOMB_X28_Y11_N28
\inst|Ball_Y_pos[9]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_pos[9]~28_combout\ = \inst|Ball_Y_pos\(9) $ (\inst|Ball_Y_pos[8]~27\ $ (\inst|Add11~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_Y_pos\(9),
	datad => \inst|Add11~22_combout\,
	cin => \inst|Ball_Y_pos[8]~27\,
	combout => \inst|Ball_Y_pos[9]~28_combout\);

-- Location: FF_X28_Y11_N29
\inst|Ball_Y_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_pos[9]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(9));

-- Location: LCCOMB_X27_Y11_N18
\inst|Ball_Y_motion~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_motion~2_combout\ = ((!\inst|Ball_Y_pos\(6) & ((!\inst|Ball_Y_pos\(4)) # (!\inst|Ball_Y_pos\(5))))) # (!\inst|Ball_Y_pos\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(7),
	datab => \inst|Ball_Y_pos\(6),
	datac => \inst|Ball_Y_pos\(5),
	datad => \inst|Ball_Y_pos\(4),
	combout => \inst|Ball_Y_motion~2_combout\);

-- Location: LCCOMB_X27_Y11_N20
\inst|Ball_Y_motion~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_motion~3_combout\ = (!\inst|Ball_Y_pos\(9) & ((\inst|Ball_Y_motion~2_combout\) # (!\inst|Ball_Y_pos\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_Y_pos\(9),
	datac => \inst|Ball_Y_pos\(8),
	datad => \inst|Ball_Y_motion~2_combout\,
	combout => \inst|Ball_Y_motion~3_combout\);

-- Location: LCCOMB_X24_Y11_N20
\inst|Ball_Y_motion~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_motion~6_combout\ = (\inst|Ball_Y_motion~1_combout\) # ((\inst|Ball_Y_motion~0_combout\) # ((\inst|Ball_Y_motion~5_combout\) # (\inst|Ball_Y_motion~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_motion~1_combout\,
	datab => \inst|Ball_Y_motion~0_combout\,
	datac => \inst|Ball_Y_motion~5_combout\,
	datad => \inst|Ball_Y_motion~3_combout\,
	combout => \inst|Ball_Y_motion~6_combout\);

-- Location: LCCOMB_X28_Y11_N0
\inst|Add11~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~32_combout\ = (\inst|Ball_Y_motion~6_combout\ & ((\inst|Add11~31_combout\) # ((!\inst|Add11~21_combout\)))) # (!\inst|Ball_Y_motion~6_combout\ & (((\inst|Add11~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add11~31_combout\,
	datab => \inst|Add11~21_combout\,
	datac => \inst|Add11~9_combout\,
	datad => \inst|Ball_Y_motion~6_combout\,
	combout => \inst|Add11~32_combout\);

-- Location: FF_X28_Y11_N19
\inst|Ball_Y_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_pos[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(4));

-- Location: LCCOMB_X27_Y11_N22
\inst|LessThan20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan20~0_combout\ = ((!\inst|Ball_Y_pos\(5) & ((!\inst|Ball_Y_pos\(3)) # (!\inst|Ball_Y_pos\(4))))) # (!\inst|Ball_Y_pos\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(5),
	datab => \inst|Ball_Y_pos\(4),
	datac => \inst|Ball_Y_pos\(3),
	datad => \inst|Ball_Y_pos\(6),
	combout => \inst|LessThan20~0_combout\);

-- Location: LCCOMB_X27_Y11_N28
\inst|Add11~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~21_combout\ = (!\inst|Ball_Y_pos\(9) & (((\inst|LessThan20~0_combout\) # (!\inst|Ball_Y_pos\(7))) # (!\inst|Ball_Y_pos\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(8),
	datab => \inst|Ball_Y_pos\(7),
	datac => \inst|LessThan20~0_combout\,
	datad => \inst|Ball_Y_pos\(9),
	combout => \inst|Add11~21_combout\);

-- Location: LCCOMB_X29_Y11_N26
\inst|Add11~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~15_combout\ = (\inst|Ball_Y_pos\(7) & ((\inst|Add11~14\) # (GND))) # (!\inst|Ball_Y_pos\(7) & (!\inst|Add11~14\))
-- \inst|Add11~16\ = CARRY((\inst|Ball_Y_pos\(7)) # (!\inst|Add11~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_Y_pos\(7),
	datad => VCC,
	cin => \inst|Add11~14\,
	combout => \inst|Add11~15_combout\,
	cout => \inst|Add11~16\);

-- Location: LCCOMB_X28_Y11_N2
\inst|Add11~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~26_combout\ = (\inst|Ball_Y_motion~6_combout\ & ((\inst|Add11~25_combout\) # ((!\inst|Add11~21_combout\)))) # (!\inst|Ball_Y_motion~6_combout\ & (((\inst|Add11~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add11~25_combout\,
	datab => \inst|Add11~21_combout\,
	datac => \inst|Ball_Y_motion~6_combout\,
	datad => \inst|Add11~15_combout\,
	combout => \inst|Add11~26_combout\);

-- Location: FF_X28_Y11_N25
\inst|Ball_Y_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_pos[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(7));

-- Location: LCCOMB_X29_Y11_N0
\inst|Add11~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~24_combout\ = (\inst|Ball_Y_motion~6_combout\ & ((\inst|Add11~23_combout\) # ((!\inst|Add11~21_combout\)))) # (!\inst|Ball_Y_motion~6_combout\ & (((\inst|Add11~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add11~23_combout\,
	datab => \inst|Add11~17_combout\,
	datac => \inst|Add11~21_combout\,
	datad => \inst|Ball_Y_motion~6_combout\,
	combout => \inst|Add11~24_combout\);

-- Location: FF_X28_Y11_N27
\inst|Ball_Y_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_pos[8]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(8));

-- Location: LCCOMB_X27_Y10_N2
\inst|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~0_combout\ = (\inst|Ball_Y_pos\(4) & (\inst|Ball_Y_pos\(3) $ (VCC))) # (!\inst|Ball_Y_pos\(4) & (\inst|Ball_Y_pos\(3) & VCC))
-- \inst|Add3~1\ = CARRY((\inst|Ball_Y_pos\(4) & \inst|Ball_Y_pos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(4),
	datab => \inst|Ball_Y_pos\(3),
	datad => VCC,
	combout => \inst|Add3~0_combout\,
	cout => \inst|Add3~1\);

-- Location: LCCOMB_X27_Y10_N4
\inst|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~2_combout\ = (\inst|Ball_Y_pos\(5) & (!\inst|Add3~1\)) # (!\inst|Ball_Y_pos\(5) & ((\inst|Add3~1\) # (GND)))
-- \inst|Add3~3\ = CARRY((!\inst|Add3~1\) # (!\inst|Ball_Y_pos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_Y_pos\(5),
	datad => VCC,
	cin => \inst|Add3~1\,
	combout => \inst|Add3~2_combout\,
	cout => \inst|Add3~3\);

-- Location: LCCOMB_X27_Y10_N8
\inst|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~6_combout\ = (\inst|Ball_Y_pos\(7) & (!\inst|Add3~5\)) # (!\inst|Ball_Y_pos\(7) & ((\inst|Add3~5\) # (GND)))
-- \inst|Add3~7\ = CARRY((!\inst|Add3~5\) # (!\inst|Ball_Y_pos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(7),
	datad => VCC,
	cin => \inst|Add3~5\,
	combout => \inst|Add3~6_combout\,
	cout => \inst|Add3~7\);

-- Location: LCCOMB_X27_Y10_N10
\inst|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~8_combout\ = (\inst|Ball_Y_pos\(8) & (\inst|Add3~7\ $ (GND))) # (!\inst|Ball_Y_pos\(8) & (!\inst|Add3~7\ & VCC))
-- \inst|Add3~9\ = CARRY((\inst|Ball_Y_pos\(8) & !\inst|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_Y_pos\(8),
	datad => VCC,
	cin => \inst|Add3~7\,
	combout => \inst|Add3~8_combout\,
	cout => \inst|Add3~9\);

-- Location: LCCOMB_X27_Y9_N12
\inst|SYNC|v_count[6]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[6]~5_combout\ = (\inst|SYNC|Add1~12_combout\ & ((\inst|SYNC|v_count[2]~0_combout\) # ((!\inst|SYNC|v_count[5]~1_combout\ & \inst|SYNC|v_count\(6))))) # (!\inst|SYNC|Add1~12_combout\ & (!\inst|SYNC|v_count[5]~1_combout\ & 
-- (\inst|SYNC|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|Add1~12_combout\,
	datab => \inst|SYNC|v_count[5]~1_combout\,
	datac => \inst|SYNC|v_count\(6),
	datad => \inst|SYNC|v_count[2]~0_combout\,
	combout => \inst|SYNC|v_count[6]~5_combout\);

-- Location: FF_X27_Y9_N13
\inst|SYNC|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|SYNC|v_count[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(6));

-- Location: FF_X28_Y10_N25
\inst|SYNC|pixel_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count\(6),
	sload => VCC,
	ena => \inst|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(6));

-- Location: LCCOMB_X27_Y9_N10
\inst|SYNC|v_count~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count~10_combout\ = (\inst|SYNC|Add1~2_combout\ & ((\inst|SYNC|process_0~10_combout\) # ((\inst|SYNC|process_0~11_combout\) # (\inst|SYNC|process_0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|Add1~2_combout\,
	datab => \inst|SYNC|process_0~10_combout\,
	datac => \inst|SYNC|process_0~11_combout\,
	datad => \inst|SYNC|process_0~8_combout\,
	combout => \inst|SYNC|v_count~10_combout\);

-- Location: FF_X27_Y9_N11
\inst|SYNC|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|SYNC|v_count~10_combout\,
	ena => \inst|SYNC|v_count[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(1));

-- Location: FF_X27_Y10_N1
\inst|SYNC|pixel_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count\(1),
	sload => VCC,
	ena => \inst|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(1));

-- Location: LCCOMB_X27_Y9_N16
\inst|SYNC|v_count~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count~11_combout\ = (\inst|SYNC|Add1~0_combout\ & ((\inst|SYNC|process_0~11_combout\) # ((\inst|SYNC|process_0~10_combout\) # (\inst|SYNC|process_0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|Add1~0_combout\,
	datab => \inst|SYNC|process_0~11_combout\,
	datac => \inst|SYNC|process_0~10_combout\,
	datad => \inst|SYNC|process_0~8_combout\,
	combout => \inst|SYNC|v_count~11_combout\);

-- Location: FF_X27_Y9_N17
\inst|SYNC|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|SYNC|v_count~11_combout\,
	ena => \inst|SYNC|v_count[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(0));

-- Location: FF_X28_Y10_N1
\inst|SYNC|pixel_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count\(0),
	sload => VCC,
	ena => \inst|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(0));

-- Location: LCCOMB_X27_Y10_N14
\inst|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~1_cout\ = CARRY((!\inst|Ball_Y_pos\(0) & \inst|SYNC|pixel_row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(0),
	datab => \inst|SYNC|pixel_row\(0),
	datad => VCC,
	cout => \inst|LessThan3~1_cout\);

-- Location: LCCOMB_X27_Y10_N16
\inst|LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~3_cout\ = CARRY((\inst|Ball_Y_pos\(1) & ((!\inst|LessThan3~1_cout\) # (!\inst|SYNC|pixel_row\(1)))) # (!\inst|Ball_Y_pos\(1) & (!\inst|SYNC|pixel_row\(1) & !\inst|LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(1),
	datab => \inst|SYNC|pixel_row\(1),
	datad => VCC,
	cin => \inst|LessThan3~1_cout\,
	cout => \inst|LessThan3~3_cout\);

-- Location: LCCOMB_X27_Y10_N18
\inst|LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~5_cout\ = CARRY((\inst|SYNC|pixel_row\(2) & ((!\inst|LessThan3~3_cout\) # (!\inst|Ball_Y_pos\(2)))) # (!\inst|SYNC|pixel_row\(2) & (!\inst|Ball_Y_pos\(2) & !\inst|LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(2),
	datab => \inst|Ball_Y_pos\(2),
	datad => VCC,
	cin => \inst|LessThan3~3_cout\,
	cout => \inst|LessThan3~5_cout\);

-- Location: LCCOMB_X27_Y10_N20
\inst|LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~7_cout\ = CARRY((\inst|SYNC|pixel_row\(3) & (!\inst|Ball_Y_pos\(3) & !\inst|LessThan3~5_cout\)) # (!\inst|SYNC|pixel_row\(3) & ((!\inst|LessThan3~5_cout\) # (!\inst|Ball_Y_pos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(3),
	datab => \inst|Ball_Y_pos\(3),
	datad => VCC,
	cin => \inst|LessThan3~5_cout\,
	cout => \inst|LessThan3~7_cout\);

-- Location: LCCOMB_X27_Y10_N22
\inst|LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~9_cout\ = CARRY((\inst|SYNC|pixel_row\(4) & ((!\inst|LessThan3~7_cout\) # (!\inst|Add3~0_combout\))) # (!\inst|SYNC|pixel_row\(4) & (!\inst|Add3~0_combout\ & !\inst|LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(4),
	datab => \inst|Add3~0_combout\,
	datad => VCC,
	cin => \inst|LessThan3~7_cout\,
	cout => \inst|LessThan3~9_cout\);

-- Location: LCCOMB_X27_Y10_N24
\inst|LessThan3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~11_cout\ = CARRY((\inst|SYNC|pixel_row\(5) & (\inst|Add3~2_combout\ & !\inst|LessThan3~9_cout\)) # (!\inst|SYNC|pixel_row\(5) & ((\inst|Add3~2_combout\) # (!\inst|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(5),
	datab => \inst|Add3~2_combout\,
	datad => VCC,
	cin => \inst|LessThan3~9_cout\,
	cout => \inst|LessThan3~11_cout\);

-- Location: LCCOMB_X27_Y10_N26
\inst|LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~13_cout\ = CARRY((\inst|Add3~4_combout\ & (\inst|SYNC|pixel_row\(6) & !\inst|LessThan3~11_cout\)) # (!\inst|Add3~4_combout\ & ((\inst|SYNC|pixel_row\(6)) # (!\inst|LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~4_combout\,
	datab => \inst|SYNC|pixel_row\(6),
	datad => VCC,
	cin => \inst|LessThan3~11_cout\,
	cout => \inst|LessThan3~13_cout\);

-- Location: LCCOMB_X27_Y10_N28
\inst|LessThan3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~15_cout\ = CARRY((\inst|SYNC|pixel_row\(7) & (\inst|Add3~6_combout\ & !\inst|LessThan3~13_cout\)) # (!\inst|SYNC|pixel_row\(7) & ((\inst|Add3~6_combout\) # (!\inst|LessThan3~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(7),
	datab => \inst|Add3~6_combout\,
	datad => VCC,
	cin => \inst|LessThan3~13_cout\,
	cout => \inst|LessThan3~15_cout\);

-- Location: LCCOMB_X27_Y10_N30
\inst|LessThan3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~16_combout\ = (\inst|SYNC|pixel_row\(8) & ((!\inst|Add3~8_combout\) # (!\inst|LessThan3~15_cout\))) # (!\inst|SYNC|pixel_row\(8) & (!\inst|LessThan3~15_cout\ & !\inst|Add3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_row\(8),
	datad => \inst|Add3~8_combout\,
	cin => \inst|LessThan3~15_cout\,
	combout => \inst|LessThan3~16_combout\);

-- Location: FF_X28_Y10_N23
\inst|SYNC|pixel_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count\(5),
	sload => VCC,
	ena => \inst|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(5));

-- Location: LCCOMB_X27_Y9_N0
\inst|SYNC|v_count[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[4]~7_combout\ = (\inst|SYNC|Add1~8_combout\ & ((\inst|SYNC|v_count[2]~0_combout\) # ((!\inst|SYNC|v_count[5]~1_combout\ & \inst|SYNC|v_count\(4))))) # (!\inst|SYNC|Add1~8_combout\ & (!\inst|SYNC|v_count[5]~1_combout\ & 
-- (\inst|SYNC|v_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|Add1~8_combout\,
	datab => \inst|SYNC|v_count[5]~1_combout\,
	datac => \inst|SYNC|v_count\(4),
	datad => \inst|SYNC|v_count[2]~0_combout\,
	combout => \inst|SYNC|v_count[4]~7_combout\);

-- Location: FF_X27_Y9_N1
\inst|SYNC|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|SYNC|v_count[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(4));

-- Location: FF_X28_Y10_N15
\inst|SYNC|pixel_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count\(4),
	sload => VCC,
	ena => \inst|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(4));

-- Location: LCCOMB_X28_Y10_N20
\inst|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~0_combout\ = (\inst|SYNC|pixel_row\(3) & (\inst|SYNC|pixel_row\(4) $ (VCC))) # (!\inst|SYNC|pixel_row\(3) & (\inst|SYNC|pixel_row\(4) & VCC))
-- \inst|Add2~1\ = CARRY((\inst|SYNC|pixel_row\(3) & \inst|SYNC|pixel_row\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(3),
	datab => \inst|SYNC|pixel_row\(4),
	datad => VCC,
	combout => \inst|Add2~0_combout\,
	cout => \inst|Add2~1\);

-- Location: LCCOMB_X28_Y10_N24
\inst|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~4_combout\ = (\inst|SYNC|pixel_row\(6) & (\inst|Add2~3\ $ (GND))) # (!\inst|SYNC|pixel_row\(6) & (!\inst|Add2~3\ & VCC))
-- \inst|Add2~5\ = CARRY((\inst|SYNC|pixel_row\(6) & !\inst|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(6),
	datad => VCC,
	cin => \inst|Add2~3\,
	combout => \inst|Add2~4_combout\,
	cout => \inst|Add2~5\);

-- Location: LCCOMB_X28_Y10_N26
\inst|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~6_combout\ = (\inst|SYNC|pixel_row\(7) & (!\inst|Add2~5\)) # (!\inst|SYNC|pixel_row\(7) & ((\inst|Add2~5\) # (GND)))
-- \inst|Add2~7\ = CARRY((!\inst|Add2~5\) # (!\inst|SYNC|pixel_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(7),
	datad => VCC,
	cin => \inst|Add2~5\,
	combout => \inst|Add2~6_combout\,
	cout => \inst|Add2~7\);

-- Location: LCCOMB_X28_Y10_N28
\inst|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~8_combout\ = (\inst|SYNC|pixel_row\(8) & (\inst|Add2~7\ $ (GND))) # (!\inst|SYNC|pixel_row\(8) & (!\inst|Add2~7\ & VCC))
-- \inst|Add2~9\ = CARRY((\inst|SYNC|pixel_row\(8) & !\inst|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_row\(8),
	datad => VCC,
	cin => \inst|Add2~7\,
	combout => \inst|Add2~8_combout\,
	cout => \inst|Add2~9\);

-- Location: FF_X28_Y10_N5
\inst|SYNC|pixel_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count\(2),
	sload => VCC,
	ena => \inst|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(2));

-- Location: LCCOMB_X28_Y10_N0
\inst|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~1_cout\ = CARRY((\inst|Ball_Y_pos\(0) & !\inst|SYNC|pixel_row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(0),
	datab => \inst|SYNC|pixel_row\(0),
	datad => VCC,
	cout => \inst|LessThan2~1_cout\);

-- Location: LCCOMB_X28_Y10_N2
\inst|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~3_cout\ = CARRY((\inst|SYNC|pixel_row\(1) & ((!\inst|LessThan2~1_cout\) # (!\inst|Ball_Y_pos\(1)))) # (!\inst|SYNC|pixel_row\(1) & (!\inst|Ball_Y_pos\(1) & !\inst|LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(1),
	datab => \inst|Ball_Y_pos\(1),
	datad => VCC,
	cin => \inst|LessThan2~1_cout\,
	cout => \inst|LessThan2~3_cout\);

-- Location: LCCOMB_X28_Y10_N4
\inst|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~5_cout\ = CARRY((\inst|Ball_Y_pos\(2) & ((!\inst|LessThan2~3_cout\) # (!\inst|SYNC|pixel_row\(2)))) # (!\inst|Ball_Y_pos\(2) & (!\inst|SYNC|pixel_row\(2) & !\inst|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(2),
	datab => \inst|SYNC|pixel_row\(2),
	datad => VCC,
	cin => \inst|LessThan2~3_cout\,
	cout => \inst|LessThan2~5_cout\);

-- Location: LCCOMB_X28_Y10_N6
\inst|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~7_cout\ = CARRY((\inst|SYNC|pixel_row\(3) & (!\inst|Ball_Y_pos\(3) & !\inst|LessThan2~5_cout\)) # (!\inst|SYNC|pixel_row\(3) & ((!\inst|LessThan2~5_cout\) # (!\inst|Ball_Y_pos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(3),
	datab => \inst|Ball_Y_pos\(3),
	datad => VCC,
	cin => \inst|LessThan2~5_cout\,
	cout => \inst|LessThan2~7_cout\);

-- Location: LCCOMB_X28_Y10_N8
\inst|LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~9_cout\ = CARRY((\inst|Ball_Y_pos\(4) & ((!\inst|LessThan2~7_cout\) # (!\inst|Add2~0_combout\))) # (!\inst|Ball_Y_pos\(4) & (!\inst|Add2~0_combout\ & !\inst|LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(4),
	datab => \inst|Add2~0_combout\,
	datad => VCC,
	cin => \inst|LessThan2~7_cout\,
	cout => \inst|LessThan2~9_cout\);

-- Location: LCCOMB_X28_Y10_N10
\inst|LessThan2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~11_cout\ = CARRY((\inst|Add2~2_combout\ & ((!\inst|LessThan2~9_cout\) # (!\inst|Ball_Y_pos\(5)))) # (!\inst|Add2~2_combout\ & (!\inst|Ball_Y_pos\(5) & !\inst|LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~2_combout\,
	datab => \inst|Ball_Y_pos\(5),
	datad => VCC,
	cin => \inst|LessThan2~9_cout\,
	cout => \inst|LessThan2~11_cout\);

-- Location: LCCOMB_X28_Y10_N12
\inst|LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~13_cout\ = CARRY((\inst|Ball_Y_pos\(6) & ((!\inst|LessThan2~11_cout\) # (!\inst|Add2~4_combout\))) # (!\inst|Ball_Y_pos\(6) & (!\inst|Add2~4_combout\ & !\inst|LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(6),
	datab => \inst|Add2~4_combout\,
	datad => VCC,
	cin => \inst|LessThan2~11_cout\,
	cout => \inst|LessThan2~13_cout\);

-- Location: LCCOMB_X28_Y10_N14
\inst|LessThan2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~15_cout\ = CARRY((\inst|Ball_Y_pos\(7) & (\inst|Add2~6_combout\ & !\inst|LessThan2~13_cout\)) # (!\inst|Ball_Y_pos\(7) & ((\inst|Add2~6_combout\) # (!\inst|LessThan2~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(7),
	datab => \inst|Add2~6_combout\,
	datad => VCC,
	cin => \inst|LessThan2~13_cout\,
	cout => \inst|LessThan2~15_cout\);

-- Location: LCCOMB_X28_Y10_N16
\inst|LessThan2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~17_cout\ = CARRY((\inst|Ball_Y_pos\(8) & ((!\inst|LessThan2~15_cout\) # (!\inst|Add2~8_combout\))) # (!\inst|Ball_Y_pos\(8) & (!\inst|Add2~8_combout\ & !\inst|LessThan2~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(8),
	datab => \inst|Add2~8_combout\,
	datad => VCC,
	cin => \inst|LessThan2~15_cout\,
	cout => \inst|LessThan2~17_cout\);

-- Location: LCCOMB_X28_Y10_N18
\inst|LessThan2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~18_combout\ = (\inst|Add2~10_combout\ & (\inst|Ball_Y_pos\(9) & \inst|LessThan2~17_cout\)) # (!\inst|Add2~10_combout\ & ((\inst|Ball_Y_pos\(9)) # (\inst|LessThan2~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~10_combout\,
	datab => \inst|Ball_Y_pos\(9),
	cin => \inst|LessThan2~17_cout\,
	combout => \inst|LessThan2~18_combout\);

-- Location: LCCOMB_X26_Y10_N2
\inst|Ball_on~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_on~0_combout\ = (!\inst|LessThan3~16_combout\ & !\inst|LessThan2~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|LessThan3~16_combout\,
	datad => \inst|LessThan2~18_combout\,
	combout => \inst|Ball_on~0_combout\);

-- Location: IOIBUF_X0_Y24_N1
\SW[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X24_Y11_N16
\inst|Ball_X_pos[10]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_pos[10]~25_combout\ = \inst|Ball_X_motion~4_combout\ $ (\inst|Ball_X_pos[9]~24\ $ (!\inst|Ball_X_pos\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_motion~4_combout\,
	datad => \inst|Ball_X_pos\(10),
	cin => \inst|Ball_X_pos[9]~24\,
	combout => \inst|Ball_X_pos[10]~25_combout\);

-- Location: FF_X24_Y11_N17
\inst|Ball_X_pos[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_X_pos[10]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_X_pos\(10));

-- Location: LCCOMB_X23_Y9_N2
\inst|SYNC|h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|h_count~1_combout\ = (!\inst|SYNC|Equal0~2_combout\ & \inst|SYNC|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|Equal0~2_combout\,
	datac => \inst|SYNC|Add0~16_combout\,
	combout => \inst|SYNC|h_count~1_combout\);

-- Location: FF_X23_Y9_N3
\inst|SYNC|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|SYNC|h_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(8));

-- Location: LCCOMB_X26_Y10_N22
\inst|SYNC|LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|LessThan6~0_combout\ = ((!\inst|SYNC|h_count\(7) & !\inst|SYNC|h_count\(8))) # (!\inst|SYNC|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|h_count\(9),
	datac => \inst|SYNC|h_count\(7),
	datad => \inst|SYNC|h_count\(8),
	combout => \inst|SYNC|LessThan6~0_combout\);

-- Location: FF_X22_Y10_N5
\inst|SYNC|pixel_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	asdata => \inst|SYNC|h_count\(9),
	sload => VCC,
	ena => \inst|SYNC|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(9));

-- Location: FF_X23_Y10_N27
\inst|SYNC|pixel_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	asdata => \inst|SYNC|h_count\(8),
	sload => VCC,
	ena => \inst|SYNC|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(8));

-- Location: FF_X23_Y10_N23
\inst|SYNC|pixel_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	asdata => \inst|SYNC|h_count\(6),
	sload => VCC,
	ena => \inst|SYNC|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(6));

-- Location: FF_X23_Y10_N21
\inst|SYNC|pixel_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	asdata => \inst|SYNC|h_count\(5),
	sload => VCC,
	ena => \inst|SYNC|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(5));

-- Location: FF_X23_Y10_N5
\inst|SYNC|pixel_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	asdata => \inst|SYNC|h_count\(4),
	sload => VCC,
	ena => \inst|SYNC|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(4));

-- Location: LCCOMB_X23_Y10_N18
\inst|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = (\inst|SYNC|pixel_column\(3) & (\inst|SYNC|pixel_column\(4) $ (VCC))) # (!\inst|SYNC|pixel_column\(3) & (\inst|SYNC|pixel_column\(4) & VCC))
-- \inst|Add0~1\ = CARRY((\inst|SYNC|pixel_column\(3) & \inst|SYNC|pixel_column\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(3),
	datab => \inst|SYNC|pixel_column\(4),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCCOMB_X23_Y10_N24
\inst|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|SYNC|pixel_column\(7) & (!\inst|Add0~5\)) # (!\inst|SYNC|pixel_column\(7) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|SYNC|pixel_column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(7),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: FF_X24_Y10_N17
\inst|SYNC|pixel_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	asdata => \inst|SYNC|h_count\(2),
	sload => VCC,
	ena => \inst|SYNC|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(2));

-- Location: LCCOMB_X23_Y10_N0
\inst|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_cout\ = CARRY((\inst|Ball_X_pos\(2) & !\inst|SYNC|pixel_column\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(2),
	datab => \inst|SYNC|pixel_column\(2),
	datad => VCC,
	cout => \inst|LessThan0~1_cout\);

-- Location: LCCOMB_X23_Y10_N2
\inst|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_cout\ = CARRY((\inst|SYNC|pixel_column\(3) & (!\inst|Ball_X_pos\(3) & !\inst|LessThan0~1_cout\)) # (!\inst|SYNC|pixel_column\(3) & ((!\inst|LessThan0~1_cout\) # (!\inst|Ball_X_pos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(3),
	datab => \inst|Ball_X_pos\(3),
	datad => VCC,
	cin => \inst|LessThan0~1_cout\,
	cout => \inst|LessThan0~3_cout\);

-- Location: LCCOMB_X23_Y10_N4
\inst|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~5_cout\ = CARRY((\inst|Ball_X_pos\(4) & ((!\inst|LessThan0~3_cout\) # (!\inst|Add0~0_combout\))) # (!\inst|Ball_X_pos\(4) & (!\inst|Add0~0_combout\ & !\inst|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(4),
	datab => \inst|Add0~0_combout\,
	datad => VCC,
	cin => \inst|LessThan0~3_cout\,
	cout => \inst|LessThan0~5_cout\);

-- Location: LCCOMB_X23_Y10_N6
\inst|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~7_cout\ = CARRY((\inst|Add0~2_combout\ & ((!\inst|LessThan0~5_cout\) # (!\inst|Ball_X_pos\(5)))) # (!\inst|Add0~2_combout\ & (!\inst|Ball_X_pos\(5) & !\inst|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~2_combout\,
	datab => \inst|Ball_X_pos\(5),
	datad => VCC,
	cin => \inst|LessThan0~5_cout\,
	cout => \inst|LessThan0~7_cout\);

-- Location: LCCOMB_X23_Y10_N8
\inst|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~9_cout\ = CARRY((\inst|Add0~4_combout\ & (\inst|Ball_X_pos\(6) & !\inst|LessThan0~7_cout\)) # (!\inst|Add0~4_combout\ & ((\inst|Ball_X_pos\(6)) # (!\inst|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~4_combout\,
	datab => \inst|Ball_X_pos\(6),
	datad => VCC,
	cin => \inst|LessThan0~7_cout\,
	cout => \inst|LessThan0~9_cout\);

-- Location: LCCOMB_X23_Y10_N10
\inst|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~11_cout\ = CARRY((\inst|Ball_X_pos\(7) & (\inst|Add0~6_combout\ & !\inst|LessThan0~9_cout\)) # (!\inst|Ball_X_pos\(7) & ((\inst|Add0~6_combout\) # (!\inst|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(7),
	datab => \inst|Add0~6_combout\,
	datad => VCC,
	cin => \inst|LessThan0~9_cout\,
	cout => \inst|LessThan0~11_cout\);

-- Location: LCCOMB_X23_Y10_N12
\inst|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~13_cout\ = CARRY((\inst|Add0~8_combout\ & (\inst|Ball_X_pos\(8) & !\inst|LessThan0~11_cout\)) # (!\inst|Add0~8_combout\ & ((\inst|Ball_X_pos\(8)) # (!\inst|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~8_combout\,
	datab => \inst|Ball_X_pos\(8),
	datad => VCC,
	cin => \inst|LessThan0~11_cout\,
	cout => \inst|LessThan0~13_cout\);

-- Location: LCCOMB_X23_Y10_N14
\inst|LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~15_cout\ = CARRY((\inst|Ball_X_pos\(9) & (\inst|Add0~10_combout\ & !\inst|LessThan0~13_cout\)) # (!\inst|Ball_X_pos\(9) & ((\inst|Add0~10_combout\) # (!\inst|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(9),
	datab => \inst|Add0~10_combout\,
	datad => VCC,
	cin => \inst|LessThan0~13_cout\,
	cout => \inst|LessThan0~15_cout\);

-- Location: LCCOMB_X23_Y10_N16
\inst|LessThan0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~16_combout\ = (\inst|Add0~12_combout\ & (\inst|Ball_X_pos\(10) & !\inst|LessThan0~15_cout\)) # (!\inst|Add0~12_combout\ & ((\inst|Ball_X_pos\(10)) # (!\inst|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~12_combout\,
	datab => \inst|Ball_X_pos\(10),
	cin => \inst|LessThan0~15_cout\,
	combout => \inst|LessThan0~16_combout\);

-- Location: LCCOMB_X28_Y10_N30
\inst|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~10_combout\ = \inst|Add2~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add2~9\,
	combout => \inst|Add2~10_combout\);

-- Location: LCCOMB_X27_Y10_N12
\inst|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~10_combout\ = \inst|Add3~9\ $ (\inst|Ball_Y_pos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|Ball_Y_pos\(9),
	cin => \inst|Add3~9\,
	combout => \inst|Add3~10_combout\);

-- Location: LCCOMB_X24_Y10_N0
\inst|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~0_combout\ = (\inst|Ball_X_pos\(3) & (\inst|Ball_X_pos\(4) $ (VCC))) # (!\inst|Ball_X_pos\(3) & (\inst|Ball_X_pos\(4) & VCC))
-- \inst|Add1~1\ = CARRY((\inst|Ball_X_pos\(3) & \inst|Ball_X_pos\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(3),
	datab => \inst|Ball_X_pos\(4),
	datad => VCC,
	combout => \inst|Add1~0_combout\,
	cout => \inst|Add1~1\);

-- Location: LCCOMB_X24_Y10_N2
\inst|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~2_combout\ = (\inst|Ball_X_pos\(5) & (!\inst|Add1~1\)) # (!\inst|Ball_X_pos\(5) & ((\inst|Add1~1\) # (GND)))
-- \inst|Add1~3\ = CARRY((!\inst|Add1~1\) # (!\inst|Ball_X_pos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_X_pos\(5),
	datad => VCC,
	cin => \inst|Add1~1\,
	combout => \inst|Add1~2_combout\,
	cout => \inst|Add1~3\);

-- Location: LCCOMB_X24_Y10_N4
\inst|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~4_combout\ = (\inst|Ball_X_pos\(6) & (\inst|Add1~3\ $ (GND))) # (!\inst|Ball_X_pos\(6) & (!\inst|Add1~3\ & VCC))
-- \inst|Add1~5\ = CARRY((\inst|Ball_X_pos\(6) & !\inst|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(6),
	datad => VCC,
	cin => \inst|Add1~3\,
	combout => \inst|Add1~4_combout\,
	cout => \inst|Add1~5\);

-- Location: LCCOMB_X24_Y10_N8
\inst|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~8_combout\ = (\inst|Ball_X_pos\(8) & (\inst|Add1~7\ $ (GND))) # (!\inst|Ball_X_pos\(8) & (!\inst|Add1~7\ & VCC))
-- \inst|Add1~9\ = CARRY((\inst|Ball_X_pos\(8) & !\inst|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_X_pos\(8),
	datad => VCC,
	cin => \inst|Add1~7\,
	combout => \inst|Add1~8_combout\,
	cout => \inst|Add1~9\);

-- Location: LCCOMB_X24_Y10_N10
\inst|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~10_combout\ = (\inst|Ball_X_pos\(9) & (!\inst|Add1~9\)) # (!\inst|Ball_X_pos\(9) & ((\inst|Add1~9\) # (GND)))
-- \inst|Add1~11\ = CARRY((!\inst|Add1~9\) # (!\inst|Ball_X_pos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(9),
	datad => VCC,
	cin => \inst|Add1~9\,
	combout => \inst|Add1~10_combout\,
	cout => \inst|Add1~11\);

-- Location: LCCOMB_X24_Y10_N12
\inst|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~12_combout\ = \inst|Ball_X_pos\(10) $ (!\inst|Add1~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(10),
	cin => \inst|Add1~11\,
	combout => \inst|Add1~12_combout\);

-- Location: LCCOMB_X26_Y10_N6
\inst|Ball_on~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_on~1_combout\ = (!\inst|Add0~12_combout\ & (!\inst|Add2~10_combout\ & (!\inst|Add3~10_combout\ & !\inst|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~12_combout\,
	datab => \inst|Add2~10_combout\,
	datac => \inst|Add3~10_combout\,
	datad => \inst|Add1~12_combout\,
	combout => \inst|Ball_on~1_combout\);

-- Location: LCCOMB_X26_Y10_N4
\inst|SYNC|green_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|green_out~3_combout\ = ((\inst|LessThan0~16_combout\) # (!\inst|Ball_on~1_combout\)) # (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \inst|LessThan0~16_combout\,
	datad => \inst|Ball_on~1_combout\,
	combout => \inst|SYNC|green_out~3_combout\);

-- Location: LCCOMB_X26_Y10_N8
\inst|SYNC|video_on_h~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|video_on_h~feeder_combout\ = \inst|SYNC|LessThan6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|SYNC|LessThan6~0_combout\,
	combout => \inst|SYNC|video_on_h~feeder_combout\);

-- Location: FF_X26_Y10_N9
\inst|SYNC|video_on_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|SYNC|video_on_h~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|video_on_h~q\);

-- Location: FF_X27_Y10_N9
\inst|SYNC|video_on_v\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	asdata => \inst|SYNC|LessThan7~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|video_on_v~q\);

-- Location: LCCOMB_X26_Y10_N18
\inst|SYNC|red_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|red_out~2_combout\ = (\inst|SYNC|video_on_h~q\ & \inst|SYNC|video_on_v~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|video_on_h~q\,
	datac => \inst|SYNC|video_on_v~q\,
	combout => \inst|SYNC|red_out~2_combout\);

-- Location: FF_X28_Y10_N21
\inst|SYNC|pixel_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count\(3),
	sload => VCC,
	ena => \inst|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(3));

-- Location: FF_X23_Y10_N25
\inst|SYNC|pixel_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	asdata => \inst|SYNC|h_count\(7),
	sload => VCC,
	ena => \inst|SYNC|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(7));

-- Location: LCCOMB_X22_Y10_N30
\inst|Draw_Score_Text~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Draw_Score_Text~4_combout\ = (!\inst|SYNC|pixel_column\(9) & (!\inst|SYNC|pixel_column\(7) & !\inst|SYNC|pixel_column\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(9),
	datab => \inst|SYNC|pixel_column\(7),
	datad => \inst|SYNC|pixel_column\(8),
	combout => \inst|Draw_Score_Text~4_combout\);

-- Location: FF_X22_Y9_N11
\inst|SYNC|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|SYNC|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(0));

-- Location: FF_X22_Y10_N31
\inst|SYNC|pixel_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	asdata => \inst|SYNC|h_count\(0),
	sload => VCC,
	ena => \inst|SYNC|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(0));

-- Location: FF_X22_Y10_N21
\inst|SYNC|pixel_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	asdata => \inst|SYNC|h_count\(1),
	sload => VCC,
	ena => \inst|SYNC|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(1));

-- Location: FF_X23_Y10_N19
\inst|SYNC|pixel_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	asdata => \inst|SYNC|h_count\(3),
	sload => VCC,
	ena => \inst|SYNC|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(3));

-- Location: LCCOMB_X22_Y10_N20
\inst|LessThan18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan18~0_combout\ = (!\inst|SYNC|pixel_column\(2) & (!\inst|SYNC|pixel_column\(0) & (!\inst|SYNC|pixel_column\(1) & !\inst|SYNC|pixel_column\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(2),
	datab => \inst|SYNC|pixel_column\(0),
	datac => \inst|SYNC|pixel_column\(1),
	datad => \inst|SYNC|pixel_column\(3),
	combout => \inst|LessThan18~0_combout\);

-- Location: LCCOMB_X22_Y10_N0
\inst|Draw_Score_Text~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Draw_Score_Text~5_combout\ = (\inst|Draw_Score_Text~4_combout\ & (\inst|SYNC|pixel_column\(4) $ (!\inst|LessThan18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(4),
	datac => \inst|Draw_Score_Text~4_combout\,
	datad => \inst|LessThan18~0_combout\,
	combout => \inst|Draw_Score_Text~5_combout\);

-- Location: LCCOMB_X21_Y10_N24
\inst|Draw_Score_Text~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Draw_Score_Text~6_combout\ = (\inst|SYNC|pixel_column\(6)) # ((\inst|SYNC|pixel_column\(5)) # (!\inst|Draw_Score_Text~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(6),
	datac => \inst|Draw_Score_Text~5_combout\,
	datad => \inst|SYNC|pixel_column\(5),
	combout => \inst|Draw_Score_Text~6_combout\);

-- Location: LCCOMB_X22_Y10_N24
\inst|Draw_Score_Text~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Draw_Score_Text~2_combout\ = (\inst|SYNC|pixel_column\(9)) # ((\inst|SYNC|pixel_column\(7)) # ((\inst|SYNC|pixel_column\(8)) # (\inst|SYNC|pixel_column\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(9),
	datab => \inst|SYNC|pixel_column\(7),
	datac => \inst|SYNC|pixel_column\(8),
	datad => \inst|SYNC|pixel_column\(6),
	combout => \inst|Draw_Score_Text~2_combout\);

-- Location: LCCOMB_X22_Y10_N14
\inst|Draw_Score_Text~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Draw_Score_Text~3_combout\ = (\inst|Draw_Score_Text~2_combout\) # ((\inst|SYNC|pixel_column\(4) & ((\inst|LessThan18~0_combout\) # (\inst|SYNC|pixel_column\(5)))) # (!\inst|SYNC|pixel_column\(4) & ((!\inst|SYNC|pixel_column\(5)) # 
-- (!\inst|LessThan18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(4),
	datab => \inst|LessThan18~0_combout\,
	datac => \inst|SYNC|pixel_column\(5),
	datad => \inst|Draw_Score_Text~2_combout\,
	combout => \inst|Draw_Score_Text~3_combout\);

-- Location: LCCOMB_X21_Y10_N22
\inst|char_adr[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|char_adr[0]~8_combout\ = (!\inst|LessThan9~0_combout\ & (!\inst|SYNC|pixel_row\(8) & (\inst|Draw_Score_Text~6_combout\ & \inst|Draw_Score_Text~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan9~0_combout\,
	datab => \inst|SYNC|pixel_row\(8),
	datac => \inst|Draw_Score_Text~6_combout\,
	datad => \inst|Draw_Score_Text~3_combout\,
	combout => \inst|char_adr[0]~8_combout\);

-- Location: LCCOMB_X21_Y10_N20
\inst|Draw_Score_Text~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Draw_Score_Text~7_combout\ = (!\inst|SYNC|pixel_column\(6) & (\inst|Draw_Score_Text~5_combout\ & \inst|SYNC|pixel_column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(6),
	datac => \inst|Draw_Score_Text~5_combout\,
	datad => \inst|SYNC|pixel_column\(5),
	combout => \inst|Draw_Score_Text~7_combout\);

-- Location: LCCOMB_X22_Y10_N8
\inst|Draw_Score_Text~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Draw_Score_Text~9_combout\ = (\inst|SYNC|pixel_column\(4) & (!\inst|SYNC|pixel_column\(6) & (\inst|SYNC|pixel_column\(5) & !\inst|LessThan18~0_combout\))) # (!\inst|SYNC|pixel_column\(4) & (\inst|SYNC|pixel_column\(6) & (!\inst|SYNC|pixel_column\(5) 
-- & \inst|LessThan18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(4),
	datab => \inst|SYNC|pixel_column\(6),
	datac => \inst|SYNC|pixel_column\(5),
	datad => \inst|LessThan18~0_combout\,
	combout => \inst|Draw_Score_Text~9_combout\);

-- Location: LCCOMB_X22_Y10_N2
\inst|Draw_Score_Text~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Draw_Score_Text~10_combout\ = (!\inst|SYNC|pixel_column\(9) & (\inst|Draw_Score_Text~9_combout\ & (!\inst|SYNC|pixel_column\(8) & !\inst|SYNC|pixel_column\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(9),
	datab => \inst|Draw_Score_Text~9_combout\,
	datac => \inst|SYNC|pixel_column\(8),
	datad => \inst|SYNC|pixel_column\(7),
	combout => \inst|Draw_Score_Text~10_combout\);

-- Location: LCCOMB_X21_Y10_N12
\inst|char_adr[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|char_adr[2]~9_combout\ = (\inst|char_adr[0]~8_combout\ & ((\inst|Draw_Score_Text~7_combout\) # ((!\inst|Draw_Score_Text~8_combout\ & !\inst|Draw_Score_Text~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Draw_Score_Text~8_combout\,
	datab => \inst|Draw_Score_Text~7_combout\,
	datac => \inst|char_adr[0]~8_combout\,
	datad => \inst|Draw_Score_Text~10_combout\,
	combout => \inst|char_adr[2]~9_combout\);

-- Location: LCCOMB_X21_Y10_N26
\inst|char_adr[0]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|char_adr[0]~13_combout\ = (\inst|char_adr[2]~9_combout\) # ((!\inst|LessThan9~0_combout\ & (!\inst|SYNC|pixel_row\(8) & !\inst|char_adr[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan9~0_combout\,
	datab => \inst|SYNC|pixel_row\(8),
	datac => \inst|char_adr[0]~8_combout\,
	datad => \inst|char_adr[2]~9_combout\,
	combout => \inst|char_adr[0]~13_combout\);

-- Location: LCCOMB_X21_Y10_N0
\inst|char_adr~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|char_adr~10_combout\ = (!\inst|Draw_Score_Text~10_combout\ & (\inst|Draw_Score_Text~6_combout\ & (!\inst|Draw_Score_Text~7_combout\ & \inst|Draw_Score_Text~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Draw_Score_Text~10_combout\,
	datab => \inst|Draw_Score_Text~6_combout\,
	datac => \inst|Draw_Score_Text~7_combout\,
	datad => \inst|Draw_Score_Text~3_combout\,
	combout => \inst|char_adr~10_combout\);

-- Location: LCCOMB_X21_Y10_N16
\inst|char_adr[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|char_adr[1]~14_combout\ = (!\inst|LessThan9~0_combout\ & (!\inst|SYNC|pixel_row\(8) & !\inst|char_adr~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan9~0_combout\,
	datab => \inst|SYNC|pixel_row\(8),
	datad => \inst|char_adr~10_combout\,
	combout => \inst|char_adr[1]~14_combout\);

-- Location: LCCOMB_X21_Y10_N2
\inst|LessThan9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan9~1_combout\ = (\inst|LessThan9~0_combout\) # (\inst|SYNC|pixel_row\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan9~0_combout\,
	datad => \inst|SYNC|pixel_row\(8),
	combout => \inst|LessThan9~1_combout\);

-- Location: LCCOMB_X21_Y10_N6
\inst|char_adr[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|char_adr[3]~11_combout\ = (\inst|Draw_Score_Text~7_combout\ & (\inst|Draw_Score_Text~3_combout\ & (\inst|Draw_Score_Text~6_combout\ & !\inst|LessThan9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Draw_Score_Text~7_combout\,
	datab => \inst|Draw_Score_Text~3_combout\,
	datac => \inst|Draw_Score_Text~6_combout\,
	datad => \inst|LessThan9~1_combout\,
	combout => \inst|char_adr[3]~11_combout\);

-- Location: LCCOMB_X21_Y10_N4
\inst|char_adr[4]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|char_adr[4]~12_combout\ = (\inst|Draw_Score_Text~10_combout\ & (!\inst|LessThan9~1_combout\ & (!\inst|Draw_Score_Text~7_combout\ & \inst|Draw_Score_Text~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Draw_Score_Text~10_combout\,
	datab => \inst|LessThan9~1_combout\,
	datac => \inst|Draw_Score_Text~7_combout\,
	datad => \inst|Draw_Score_Text~3_combout\,
	combout => \inst|char_adr[4]~12_combout\);

-- Location: LCCOMB_X21_Y10_N18
\inst|char_adr[4]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|char_adr[4]~15_combout\ = (\inst|char_adr[4]~12_combout\) # ((!\inst|LessThan9~0_combout\ & (!\inst|Draw_Score_Text~6_combout\ & !\inst|SYNC|pixel_row\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan9~0_combout\,
	datab => \inst|Draw_Score_Text~6_combout\,
	datac => \inst|char_adr[4]~12_combout\,
	datad => \inst|SYNC|pixel_row\(8),
	combout => \inst|char_adr[4]~15_combout\);

-- Location: LCCOMB_X21_Y10_N10
\inst|Draw_Score_Text~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Draw_Score_Text~8_combout\ = ((\inst|SYNC|pixel_column\(5)) # (!\inst|Draw_Score_Text~5_combout\)) # (!\inst|SYNC|pixel_column\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(6),
	datac => \inst|Draw_Score_Text~5_combout\,
	datad => \inst|SYNC|pixel_column\(5),
	combout => \inst|Draw_Score_Text~8_combout\);

-- Location: LCCOMB_X21_Y10_N8
\inst|char_adr[5]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|char_adr[5]~16_combout\ = (\inst|LessThan9~0_combout\) # ((\inst|SYNC|pixel_row\(8)) # ((\inst|char_adr~10_combout\ & \inst|Draw_Score_Text~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan9~0_combout\,
	datab => \inst|SYNC|pixel_row\(8),
	datac => \inst|char_adr~10_combout\,
	datad => \inst|Draw_Score_Text~8_combout\,
	combout => \inst|char_adr[5]~16_combout\);

-- Location: M9K_X25_Y10_N0
\inst|CHAR|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"000000060001800060001E0006000180007E00000007E001800060001E0006000180007E000000078001B00066001980066001B0007800000003C00198006000180006000198003C00000007C001980066001F0006600198007C000000066001980066001F80066000F0001800000003C001980006000F8006600198003C0000",
	mem_init3 => X"0003C001980066000F0006600198003C00000001800060001800060000C00198007E00000003C001980066001F0006000198003C00000003C00198000600018007C00180007E00000000600018007F00198001E00038000600000003C00198000600070000600198003C00000007E00180003000030000600198003C00000007E00060001800060003800060001800000003C001980066001D8006E00198003C000000060000C000180003000060000C0000000000018000600000000000000000000000000000000000000000001F80000000000000000C00018000600000000000000000000000000000000000600018001F80018000600000000000000001",
	mem_init2 => X"98003C003FC003C00198000000000003000060000C00030000C00060003000000000C000600030000C0003000060000C00000000000000000000000001800030000600000003F001980067000E0003C00198003C00000004600198003000060000C001980062000000018001F00006000F00060000F800180000000660019800FF0019800FF001980066000000000000000000000000066001980066000000018000000000000600018000600018000000000000000000000000000000000000000000010000C0007F001FC0030000400000000600018000600018001F8003C00060000000000003C00030000C00030000C00030003C000000018000F0007E00",
	mem_init1 => X"060001800060001800000003C000C00030000C00030000C0003C00000007E00180003000060000C00018007E000000018000600018000F0006600198006600000006600198003C00060003C001980066000000063001DC007F001AC00630018C0063000000018000F0006600198006600198006600000003C00198006600198006600198006600000001800060001800060001800060007E00000003C001980006000F0006000198003C000000066001B00078001F0006600198007C00000000E000F0006600198006600198003C000000060001800060001F0006600198007C00000003C00198006600198006600198003C00000006600198006E001F8007E0",
	mem_init0 => X"01D800660000000630018C0063001AC007F001DC006300000007E001800060001800060001800060000000066001B00078001C00078001B00066000000038001B0000C00030000C00030001E00000003C00060001800060001800060003C000000066001980066001F8006600198006600000003C001980066001B8006000198003C000000060001800060001E0006000180007E00000007E001800060001E0006000180007E000000078001B00066001980066001B0007800000003C00198006000180006000198003C00000007C001980066001F0006600198007C000000066001980066001F80066000F0001800000003C001880060001B8006E00198003C",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "tcgrom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ball:inst|char_rom:CHAR|altsyncram:altsyncram_component|altsyncram_kt91:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 9,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	portaaddr => \inst|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X26_Y10_N20
\inst|CHAR|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|CHAR|Mux0~0_combout\ = (\inst|SYNC|pixel_column\(2) & ((\inst|SYNC|pixel_column\(1)) # ((\inst|CHAR|altsyncram_component|auto_generated|q_a\(1))))) # (!\inst|SYNC|pixel_column\(2) & (!\inst|SYNC|pixel_column\(1) & 
-- ((\inst|CHAR|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(2),
	datab => \inst|SYNC|pixel_column\(1),
	datac => \inst|CHAR|altsyncram_component|auto_generated|q_a\(1),
	datad => \inst|CHAR|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst|CHAR|Mux0~0_combout\);

-- Location: LCCOMB_X26_Y10_N30
\inst|SYNC|green_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|green_out~0_combout\ = (\inst|SYNC|pixel_column\(1) & ((\inst|CHAR|Mux0~0_combout\ & ((\inst|CHAR|altsyncram_component|auto_generated|q_a\(0)))) # (!\inst|CHAR|Mux0~0_combout\ & (\inst|CHAR|altsyncram_component|auto_generated|q_a\(2))))) # 
-- (!\inst|SYNC|pixel_column\(1) & (((\inst|CHAR|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(1),
	datab => \inst|CHAR|altsyncram_component|auto_generated|q_a\(2),
	datac => \inst|CHAR|altsyncram_component|auto_generated|q_a\(0),
	datad => \inst|CHAR|Mux0~0_combout\,
	combout => \inst|SYNC|green_out~0_combout\);

-- Location: LCCOMB_X26_Y10_N24
\inst|CHAR|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|CHAR|Mux0~1_combout\ = (\inst|SYNC|pixel_column\(2) & ((\inst|SYNC|pixel_column\(1)) # ((\inst|CHAR|altsyncram_component|auto_generated|q_a\(5))))) # (!\inst|SYNC|pixel_column\(2) & (!\inst|SYNC|pixel_column\(1) & 
-- ((\inst|CHAR|altsyncram_component|auto_generated|q_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(2),
	datab => \inst|SYNC|pixel_column\(1),
	datac => \inst|CHAR|altsyncram_component|auto_generated|q_a\(5),
	datad => \inst|CHAR|altsyncram_component|auto_generated|q_a\(7),
	combout => \inst|CHAR|Mux0~1_combout\);

-- Location: LCCOMB_X26_Y10_N10
\inst|SYNC|green_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|green_out~1_combout\ = (\inst|SYNC|pixel_column\(1) & ((\inst|CHAR|Mux0~1_combout\ & ((\inst|CHAR|altsyncram_component|auto_generated|q_a\(4)))) # (!\inst|CHAR|Mux0~1_combout\ & (\inst|CHAR|altsyncram_component|auto_generated|q_a\(6))))) # 
-- (!\inst|SYNC|pixel_column\(1) & (((\inst|CHAR|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(1),
	datab => \inst|CHAR|altsyncram_component|auto_generated|q_a\(6),
	datac => \inst|CHAR|altsyncram_component|auto_generated|q_a\(4),
	datad => \inst|CHAR|Mux0~1_combout\,
	combout => \inst|SYNC|green_out~1_combout\);

-- Location: LCCOMB_X26_Y10_N16
\inst|SYNC|green_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|green_out~2_combout\ = (\inst|SYNC|red_out~2_combout\ & ((\inst|SYNC|pixel_column\(3) & (!\inst|SYNC|green_out~0_combout\)) # (!\inst|SYNC|pixel_column\(3) & ((!\inst|SYNC|green_out~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(3),
	datab => \inst|SYNC|red_out~2_combout\,
	datac => \inst|SYNC|green_out~0_combout\,
	datad => \inst|SYNC|green_out~1_combout\,
	combout => \inst|SYNC|green_out~2_combout\);

-- Location: LCCOMB_X26_Y10_N28
\inst|SYNC|green_out~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|green_out~4_combout\ = (\inst|SYNC|green_out~2_combout\ & ((\inst|LessThan1~17_combout\) # ((\inst|SYNC|green_out~3_combout\) # (!\inst|Ball_on~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~17_combout\,
	datab => \inst|Ball_on~0_combout\,
	datac => \inst|SYNC|green_out~3_combout\,
	datad => \inst|SYNC|green_out~2_combout\,
	combout => \inst|SYNC|green_out~4_combout\);

-- Location: FF_X26_Y10_N29
\inst|SYNC|green_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|SYNC|green_out~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|green_out~q\);

-- Location: IOIBUF_X0_Y21_N8
\bt2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bt2,
	o => \bt2~input_o\);

-- Location: LCCOMB_X22_Y10_N28
\inst|Platform_On~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Platform_On~3_combout\ = (((!\inst|SYNC|pixel_column\(3) & !\inst|SYNC|pixel_column\(2))) # (!\inst|SYNC|pixel_column\(5))) # (!\inst|SYNC|pixel_column\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(4),
	datab => \inst|SYNC|pixel_column\(3),
	datac => \inst|SYNC|pixel_column\(5),
	datad => \inst|SYNC|pixel_column\(2),
	combout => \inst|Platform_On~3_combout\);

-- Location: LCCOMB_X22_Y10_N4
\inst|Platform_On~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Platform_On~4_combout\ = (\inst|Platform_On~2_combout\) # ((!\inst|SYNC|pixel_column\(9) & ((\inst|Platform_On~3_combout\) # (!\inst|SYNC|pixel_column\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Platform_On~2_combout\,
	datab => \inst|SYNC|pixel_column\(6),
	datac => \inst|SYNC|pixel_column\(9),
	datad => \inst|Platform_On~3_combout\,
	combout => \inst|Platform_On~4_combout\);

-- Location: FF_X28_Y10_N27
\inst|SYNC|pixel_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count\(7),
	sload => VCC,
	ena => \inst|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(7));

-- Location: LCCOMB_X22_Y10_N18
\inst|Platform_On~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Platform_On~5_combout\ = ((\inst|SYNC|pixel_column\(7) & (\inst|SYNC|pixel_column\(9))) # (!\inst|SYNC|pixel_column\(7) & ((\inst|SYNC|pixel_column\(8))))) # (!\inst|SYNC|pixel_row\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(9),
	datab => \inst|SYNC|pixel_column\(7),
	datac => \inst|SYNC|pixel_column\(8),
	datad => \inst|SYNC|pixel_row\(7),
	combout => \inst|Platform_On~5_combout\);

-- Location: LCCOMB_X22_Y10_N16
\inst|Platform_On~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Platform_On~7_combout\ = (\inst|Platform_On~5_combout\) # ((!\inst|SYNC|pixel_row\(4) & ((\inst|Platform_On~6_combout\) # (\inst|SYNC|pixel_row\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Platform_On~6_combout\,
	datab => \inst|Platform_On~5_combout\,
	datac => \inst|SYNC|pixel_row\(4),
	datad => \inst|SYNC|pixel_row\(5),
	combout => \inst|Platform_On~7_combout\);

-- Location: LCCOMB_X22_Y10_N10
\inst|Platform_On~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Platform_On~8_combout\ = (\inst|Platform_On~1_combout\) # (((\inst|Platform_On~4_combout\) # (\inst|Platform_On~7_combout\)) # (!\inst|SYNC|pixel_row\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Platform_On~1_combout\,
	datab => \inst|SYNC|pixel_row\(8),
	datac => \inst|Platform_On~4_combout\,
	datad => \inst|Platform_On~7_combout\,
	combout => \inst|Platform_On~8_combout\);

-- Location: LCCOMB_X24_Y10_N14
\inst|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~2_cout\ = CARRY(\inst|LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~0_combout\,
	datad => VCC,
	cout => \inst|LessThan1~2_cout\);

-- Location: LCCOMB_X24_Y10_N16
\inst|LessThan1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~4_cout\ = CARRY((\inst|SYNC|pixel_column\(2) & (\inst|Ball_X_pos\(2) & !\inst|LessThan1~2_cout\)) # (!\inst|SYNC|pixel_column\(2) & ((\inst|Ball_X_pos\(2)) # (!\inst|LessThan1~2_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(2),
	datab => \inst|Ball_X_pos\(2),
	datad => VCC,
	cin => \inst|LessThan1~2_cout\,
	cout => \inst|LessThan1~4_cout\);

-- Location: LCCOMB_X24_Y10_N18
\inst|LessThan1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~6_cout\ = CARRY((\inst|Ball_X_pos\(3) & ((\inst|SYNC|pixel_column\(3)) # (!\inst|LessThan1~4_cout\))) # (!\inst|Ball_X_pos\(3) & (\inst|SYNC|pixel_column\(3) & !\inst|LessThan1~4_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(3),
	datab => \inst|SYNC|pixel_column\(3),
	datad => VCC,
	cin => \inst|LessThan1~4_cout\,
	cout => \inst|LessThan1~6_cout\);

-- Location: LCCOMB_X24_Y10_N20
\inst|LessThan1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~8_cout\ = CARRY((\inst|SYNC|pixel_column\(4) & (\inst|Add1~0_combout\ & !\inst|LessThan1~6_cout\)) # (!\inst|SYNC|pixel_column\(4) & ((\inst|Add1~0_combout\) # (!\inst|LessThan1~6_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(4),
	datab => \inst|Add1~0_combout\,
	datad => VCC,
	cin => \inst|LessThan1~6_cout\,
	cout => \inst|LessThan1~8_cout\);

-- Location: LCCOMB_X24_Y10_N22
\inst|LessThan1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~10_cout\ = CARRY((\inst|SYNC|pixel_column\(5) & ((!\inst|LessThan1~8_cout\) # (!\inst|Add1~2_combout\))) # (!\inst|SYNC|pixel_column\(5) & (!\inst|Add1~2_combout\ & !\inst|LessThan1~8_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(5),
	datab => \inst|Add1~2_combout\,
	datad => VCC,
	cin => \inst|LessThan1~8_cout\,
	cout => \inst|LessThan1~10_cout\);

-- Location: LCCOMB_X24_Y10_N24
\inst|LessThan1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~12_cout\ = CARRY((\inst|SYNC|pixel_column\(6) & (\inst|Add1~4_combout\ & !\inst|LessThan1~10_cout\)) # (!\inst|SYNC|pixel_column\(6) & ((\inst|Add1~4_combout\) # (!\inst|LessThan1~10_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(6),
	datab => \inst|Add1~4_combout\,
	datad => VCC,
	cin => \inst|LessThan1~10_cout\,
	cout => \inst|LessThan1~12_cout\);

-- Location: LCCOMB_X24_Y10_N26
\inst|LessThan1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~14_cout\ = CARRY((\inst|Add1~6_combout\ & (\inst|SYNC|pixel_column\(7) & !\inst|LessThan1~12_cout\)) # (!\inst|Add1~6_combout\ & ((\inst|SYNC|pixel_column\(7)) # (!\inst|LessThan1~12_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~6_combout\,
	datab => \inst|SYNC|pixel_column\(7),
	datad => VCC,
	cin => \inst|LessThan1~12_cout\,
	cout => \inst|LessThan1~14_cout\);

-- Location: LCCOMB_X24_Y10_N28
\inst|LessThan1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~16_cout\ = CARRY((\inst|SYNC|pixel_column\(8) & (\inst|Add1~8_combout\ & !\inst|LessThan1~14_cout\)) # (!\inst|SYNC|pixel_column\(8) & ((\inst|Add1~8_combout\) # (!\inst|LessThan1~14_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(8),
	datab => \inst|Add1~8_combout\,
	datad => VCC,
	cin => \inst|LessThan1~14_cout\,
	cout => \inst|LessThan1~16_cout\);

-- Location: LCCOMB_X24_Y10_N30
\inst|LessThan1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~17_combout\ = (\inst|SYNC|pixel_column\(9) & ((!\inst|Add1~10_combout\) # (!\inst|LessThan1~16_cout\))) # (!\inst|SYNC|pixel_column\(9) & (!\inst|LessThan1~16_cout\ & !\inst|Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(9),
	datad => \inst|Add1~10_combout\,
	cin => \inst|LessThan1~16_cout\,
	combout => \inst|LessThan1~17_combout\);

-- Location: LCCOMB_X26_Y10_N12
\inst|Ball_on\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_on~combout\ = (\inst|Ball_on~1_combout\ & (!\inst|LessThan1~17_combout\ & (!\inst|LessThan0~16_combout\ & \inst|Ball_on~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_on~1_combout\,
	datab => \inst|LessThan1~17_combout\,
	datac => \inst|LessThan0~16_combout\,
	datad => \inst|Ball_on~0_combout\,
	combout => \inst|Ball_on~combout\);

-- Location: LCCOMB_X26_Y10_N14
\inst|SYNC|blue_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|blue_out~0_combout\ = (\inst|SYNC|red_out~2_combout\ & (\inst|Platform_On~8_combout\ & ((!\inst|Ball_on~combout\) # (!\bt2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|red_out~2_combout\,
	datab => \bt2~input_o\,
	datac => \inst|Platform_On~8_combout\,
	datad => \inst|Ball_on~combout\,
	combout => \inst|SYNC|blue_out~0_combout\);

-- Location: FF_X26_Y10_N15
\inst|SYNC|blue_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|SYNC|blue_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|blue_out~q\);

-- Location: LCCOMB_X26_Y10_N0
\inst|SYNC|red_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|red_out~3_combout\ = (\inst|SYNC|video_on_h~q\ & (\inst|SYNC|video_on_v~q\ & !\inst|Ball_on~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|video_on_h~q\,
	datac => \inst|SYNC|video_on_v~q\,
	datad => \inst|Ball_on~combout\,
	combout => \inst|SYNC|red_out~3_combout\);

-- Location: FF_X26_Y10_N1
\inst|SYNC|red_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|SYNC|red_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|red_out~q\);

-- Location: LCCOMB_X28_Y9_N4
\inst|SYNC|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~0_combout\ = ((\inst|SYNC|v_count\(1) $ (!\inst|SYNC|v_count\(0))) # (!\inst|SYNC|v_count\(2))) # (!\inst|SYNC|v_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(1),
	datab => \inst|SYNC|v_count\(3),
	datac => \inst|SYNC|v_count\(0),
	datad => \inst|SYNC|v_count\(2),
	combout => \inst|SYNC|process_0~0_combout\);

-- Location: LCCOMB_X28_Y9_N28
\inst|SYNC|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~1_combout\ = (\inst|SYNC|v_count\(4)) # (((\inst|SYNC|process_0~0_combout\) # (\inst|SYNC|v_count\(9))) # (!\inst|SYNC|LessThan7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(4),
	datab => \inst|SYNC|LessThan7~0_combout\,
	datac => \inst|SYNC|process_0~0_combout\,
	datad => \inst|SYNC|v_count\(9),
	combout => \inst|SYNC|process_0~1_combout\);

-- Location: FF_X28_Y9_N29
\inst|SYNC|vert_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|SYNC|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|vert_sync~q\);

-- Location: LCCOMB_X40_Y15_N14
\inst|SYNC|vert_sync_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|vert_sync_out~feeder_combout\ = \inst|SYNC|vert_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SYNC|vert_sync~q\,
	combout => \inst|SYNC|vert_sync_out~feeder_combout\);

-- Location: FF_X40_Y15_N15
\inst|SYNC|vert_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|SYNC|vert_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|vert_sync_out~q\);

-- Location: LCCOMB_X22_Y9_N30
\inst|SYNC|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~3_combout\ = (\inst|SYNC|h_count\(2)) # ((\inst|SYNC|h_count\(1) & (!\inst|SYNC|h_count\(5) & \inst|SYNC|h_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(1),
	datab => \inst|SYNC|h_count\(5),
	datac => \inst|SYNC|h_count\(2),
	datad => \inst|SYNC|h_count\(0),
	combout => \inst|SYNC|process_0~3_combout\);

-- Location: LCCOMB_X22_Y9_N4
\inst|SYNC|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~4_combout\ = (\inst|SYNC|h_count\(4) & ((\inst|SYNC|h_count\(3)) # (\inst|SYNC|process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|h_count\(3),
	datac => \inst|SYNC|process_0~3_combout\,
	datad => \inst|SYNC|h_count\(4),
	combout => \inst|SYNC|process_0~4_combout\);

-- Location: LCCOMB_X22_Y9_N8
\inst|SYNC|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~2_combout\ = (\inst|SYNC|h_count\(7) & (\inst|SYNC|h_count\(9) & !\inst|SYNC|h_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|h_count\(7),
	datac => \inst|SYNC|h_count\(9),
	datad => \inst|SYNC|h_count\(8),
	combout => \inst|SYNC|process_0~2_combout\);

-- Location: LCCOMB_X22_Y9_N2
\inst|SYNC|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~5_combout\ = ((\inst|SYNC|h_count\(6) & (\inst|SYNC|process_0~4_combout\ & \inst|SYNC|h_count\(5))) # (!\inst|SYNC|h_count\(6) & (!\inst|SYNC|process_0~4_combout\ & !\inst|SYNC|h_count\(5)))) # (!\inst|SYNC|process_0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(6),
	datab => \inst|SYNC|process_0~4_combout\,
	datac => \inst|SYNC|process_0~2_combout\,
	datad => \inst|SYNC|h_count\(5),
	combout => \inst|SYNC|process_0~5_combout\);

-- Location: FF_X22_Y9_N3
\inst|SYNC|horiz_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|SYNC|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|horiz_sync~q\);

-- Location: LCCOMB_X22_Y9_N0
\inst|SYNC|horiz_sync_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|horiz_sync_out~feeder_combout\ = \inst|SYNC|horiz_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SYNC|horiz_sync~q\,
	combout => \inst|SYNC|horiz_sync_out~feeder_combout\);

-- Location: FF_X22_Y9_N1
\inst|SYNC|horiz_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clk_out_hz_temp~clkctrl_outclk\,
	d => \inst|SYNC|horiz_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|horiz_sync_out~q\);

-- Location: IOIBUF_X0_Y23_N15
\bt1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bt1,
	o => \bt1~input_o\);

ww_green_out <= \green_out~output_o\;

ww_blue_out <= \blue_out~output_o\;

ww_red_out <= \red_out~output_o\;

ww_vert_sync_out <= \vert_sync_out~output_o\;

ww_horiz_sync_out <= \horiz_sync_out~output_o\;

ww_mouse_data <= \mouse_data~output_o\;

ww_mouse_clk <= \mouse_clk~output_o\;

ww_seg0(6) <= \seg0[6]~output_o\;

ww_seg0(5) <= \seg0[5]~output_o\;

ww_seg0(4) <= \seg0[4]~output_o\;

ww_seg0(3) <= \seg0[3]~output_o\;

ww_seg0(2) <= \seg0[2]~output_o\;

ww_seg0(1) <= \seg0[1]~output_o\;

ww_seg0(0) <= \seg0[0]~output_o\;

ww_seg1(6) <= \seg1[6]~output_o\;

ww_seg1(5) <= \seg1[5]~output_o\;

ww_seg1(4) <= \seg1[4]~output_o\;

ww_seg1(3) <= \seg1[3]~output_o\;

ww_seg1(2) <= \seg1[2]~output_o\;

ww_seg1(1) <= \seg1[1]~output_o\;

ww_seg1(0) <= \seg1[0]~output_o\;
END structure;


