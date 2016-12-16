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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "12/16/2016 19:30:32"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
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

ENTITY 	darkroom_top IS
    PORT (
	sensor0_led : OUT std_logic;
	clock_50 : IN std_logic;
	spi_reset_n : IN std_logic;
	spi_sclk : IN std_logic;
	spi_ss_n : IN std_logic;
	spi_mosi : IN std_logic;
	SW0 : IN std_logic;
	SW1 : IN std_logic;
	sensor0 : IN std_logic;
	led_fifo_full : OUT std_logic;
	button1_reset : IN std_logic;
	button0_read : IN std_logic;
	spi_miso : OUT std_logic;
	spi_trdy : OUT std_logic;
	error_led : OUT std_logic;
	LCD0 : OUT std_logic_vector(7 DOWNTO 0);
	LCD1 : OUT std_logic_vector(7 DOWNTO 0);
	LCD2 : OUT std_logic_vector(7 DOWNTO 0);
	LCD3 : OUT std_logic_vector(7 DOWNTO 0);
	led : OUT std_logic_vector(3 DOWNTO 0);
	SW2 : IN std_logic
	);
END darkroom_top;

-- Design Ports Information
-- sensor0_led	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_reset_n	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- led_fifo_full	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_miso	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- spi_trdy	=>  Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- error_led	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD0[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD0[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD0[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD0[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD0[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD0[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD1[7]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD1[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD1[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD1[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD1[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD1[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD1[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD2[7]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD2[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD2[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD2[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD2[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD2[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD2[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD2[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD3[7]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD3[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD3[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD3[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD3[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD3[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD3[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW0	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_50	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button0_read	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button1_reset	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_mosi	=>  Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- spi_sclk	=>  Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sensor0	=>  Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- spi_ss_n	=>  Location: PIN_V5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW1	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF darkroom_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sensor0_led : std_logic;
SIGNAL ww_clock_50 : std_logic;
SIGNAL ww_spi_reset_n : std_logic;
SIGNAL ww_spi_sclk : std_logic;
SIGNAL ww_spi_ss_n : std_logic;
SIGNAL ww_spi_mosi : std_logic;
SIGNAL ww_SW0 : std_logic;
SIGNAL ww_SW1 : std_logic;
SIGNAL ww_sensor0 : std_logic;
SIGNAL ww_led_fifo_full : std_logic;
SIGNAL ww_button1_reset : std_logic;
SIGNAL ww_button0_read : std_logic;
SIGNAL ww_spi_miso : std_logic;
SIGNAL ww_spi_trdy : std_logic;
SIGNAL ww_error_led : std_logic;
SIGNAL ww_LCD0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LCD1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LCD2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LCD3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_led : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW2 : std_logic;
SIGNAL \inst|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst13|spi_slave_0|process_1~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst8|Add1~0_combout\ : std_logic;
SIGNAL \inst15|Add0~0_combout\ : std_logic;
SIGNAL \inst15|Add0~10_combout\ : std_logic;
SIGNAL \inst15|Add0~14_combout\ : std_logic;
SIGNAL \inst15|Add0~16_combout\ : std_logic;
SIGNAL \inst15|Add0~18_combout\ : std_logic;
SIGNAL \inst15|Add0~20_combout\ : std_logic;
SIGNAL \inst15|Add0~22_combout\ : std_logic;
SIGNAL \inst15|Add0~24_combout\ : std_logic;
SIGNAL \inst15|Add0~26_combout\ : std_logic;
SIGNAL \inst15|Add0~28_combout\ : std_logic;
SIGNAL \inst15|Add0~30_combout\ : std_logic;
SIGNAL \inst15|Add0~36_combout\ : std_logic;
SIGNAL \inst15|Add0~46_combout\ : std_logic;
SIGNAL \inst15|Add0~61\ : std_logic;
SIGNAL \inst15|Add0~62_combout\ : std_logic;
SIGNAL \inst15|sweep_duration_A[0]~16_combout\ : std_logic;
SIGNAL \inst15|sweep_duration_A[1]~18_combout\ : std_logic;
SIGNAL \inst15|sweep_duration_A[2]~20_combout\ : std_logic;
SIGNAL \inst15|sweep_duration_A[3]~22_combout\ : std_logic;
SIGNAL \inst15|sweep_duration_A[4]~24_combout\ : std_logic;
SIGNAL \inst15|sweep_duration_A[5]~26_combout\ : std_logic;
SIGNAL \inst15|sweep_duration_A[6]~28_combout\ : std_logic;
SIGNAL \inst15|sweep_duration_A[7]~30_combout\ : std_logic;
SIGNAL \inst15|sweep_duration_A[8]~32_combout\ : std_logic;
SIGNAL \inst15|sweep_duration_A[12]~40_combout\ : std_logic;
SIGNAL \inst15|sweep_duration_A[14]~45\ : std_logic;
SIGNAL \inst15|sweep_duration_A[15]~46_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Head[0]~q\ : std_logic;
SIGNAL \inst8|fifo_proc~0_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Tail[5]~q\ : std_logic;
SIGNAL \inst8|fifo_proc~7_combout\ : std_logic;
SIGNAL \inst15|result~q\ : std_logic;
SIGNAL \inst8|Full~2_combout\ : std_logic;
SIGNAL \inst8|Full~3_combout\ : std_logic;
SIGNAL \inst8|Full~4_combout\ : std_logic;
SIGNAL \inst8|Full~5_combout\ : std_logic;
SIGNAL \inst8|Head~2_combout\ : std_logic;
SIGNAL \inst8|Tail~6_combout\ : std_logic;
SIGNAL \inst15|LessThan4~0_combout\ : std_logic;
SIGNAL \inst15|LessThan4~1_combout\ : std_logic;
SIGNAL \inst15|LessThan2~1_combout\ : std_logic;
SIGNAL \inst15|LessThan2~2_combout\ : std_logic;
SIGNAL \inst15|LessThan2~3_combout\ : std_logic;
SIGNAL \inst15|LessThan3~0_combout\ : std_logic;
SIGNAL \inst15|LessThan3~1_combout\ : std_logic;
SIGNAL \inst15|result~0_combout\ : std_logic;
SIGNAL \inst15|LessThan2~7_combout\ : std_logic;
SIGNAL \inst15|start_valid_sync[3]~2_combout\ : std_logic;
SIGNAL \inst15|result~2_combout\ : std_logic;
SIGNAL \inst15|result~3_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|miso~0_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|roe~q\ : std_logic;
SIGNAL \inst13|spi_slave_0|rrdy~0_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|roe~0_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|roe~1_combout\ : std_logic;
SIGNAL \inst9|LPM_MUX_component|auto_generated|result_node[15]~0_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~9_combout\ : std_logic;
SIGNAL \inst15|Equal0~0_combout\ : std_logic;
SIGNAL \inst15|Equal0~1_combout\ : std_logic;
SIGNAL \inst15|Equal0~2_combout\ : std_logic;
SIGNAL \inst15|Equal0~3_combout\ : std_logic;
SIGNAL \inst15|Equal0~4_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~15_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~17_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~21_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~36_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~51_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~52_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~53_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~56_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~59_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~60_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~62_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~69_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~71_combout\ : std_logic;
SIGNAL \inst15|LessThan6~3_combout\ : std_logic;
SIGNAL \inst15|LessThan6~4_combout\ : std_logic;
SIGNAL \inst15|LessThan6~5_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~75_combout\ : std_logic;
SIGNAL \inst15|LessThan6~6_combout\ : std_logic;
SIGNAL \inst15|LessThan6~7_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~76_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~78_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~86_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~106_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~110_combout\ : std_logic;
SIGNAL \inst9|LPM_MUX_component|auto_generated|result_node[12]~3_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[9]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[9]~27_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[8]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[8]~30_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[8]~31_combout\ : std_logic;
SIGNAL \inst9|LPM_MUX_component|auto_generated|result_node[8]~7_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[7]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[7]~34_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[7]~35_combout\ : std_logic;
SIGNAL \inst9|LPM_MUX_component|auto_generated|result_node[7]~8_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[6]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[6]~38_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[6]~39_combout\ : std_logic;
SIGNAL \inst9|LPM_MUX_component|auto_generated|result_node[6]~9_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[5]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[5]~42_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[5]~43_combout\ : std_logic;
SIGNAL \inst9|LPM_MUX_component|auto_generated|result_node[5]~10_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[4]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[4]~46_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[4]~47_combout\ : std_logic;
SIGNAL \inst9|LPM_MUX_component|auto_generated|result_node[4]~11_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[3]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[3]~50_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[3]~51_combout\ : std_logic;
SIGNAL \inst9|LPM_MUX_component|auto_generated|result_node[3]~12_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[2]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[2]~54_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[2]~55_combout\ : std_logic;
SIGNAL \inst9|LPM_MUX_component|auto_generated|result_node[2]~13_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[1]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[1]~58_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[1]~59_combout\ : std_logic;
SIGNAL \inst9|LPM_MUX_component|auto_generated|result_node[1]~14_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[0]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[0]~62_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[0]~63_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~111_combout\ : std_logic;
SIGNAL \inst15|start_valid_sync[3]~5_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[8]~29_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[7]~33_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[6]~37_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[5]~41_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[4]~45_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[3]~49_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[2]~53_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[1]~57_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[0]~61_combout\ : std_logic;
SIGNAL \spi_reset_n~input_o\ : std_logic;
SIGNAL \SW2~input_o\ : std_logic;
SIGNAL \sensor0~input_o\ : std_logic;
SIGNAL \inst15|start_valid_sync[29]~feeder_combout\ : std_logic;
SIGNAL \inst15|start_valid_sync[28]~feeder_combout\ : std_logic;
SIGNAL \inst15|start_valid_sync[27]~feeder_combout\ : std_logic;
SIGNAL \inst15|start_valid_sync[25]~feeder_combout\ : std_logic;
SIGNAL \inst15|start_valid_sync[24]~feeder_combout\ : std_logic;
SIGNAL \inst15|start_valid_sync[21]~feeder_combout\ : std_logic;
SIGNAL \inst15|start_valid_sync[20]~feeder_combout\ : std_logic;
SIGNAL \inst15|start_valid_sync[17]~feeder_combout\ : std_logic;
SIGNAL \inst15|start_valid_sync[15]~feeder_combout\ : std_logic;
SIGNAL \inst15|start_valid_sync[7]~feeder_combout\ : std_logic;
SIGNAL \spi_sclk~input_o\ : std_logic;
SIGNAL \spi_mosi~input_o\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[1]~feeder_combout\ : std_logic;
SIGNAL \spi_ss_n~input_o\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[2]~0_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|rd_add~0_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|rd_add~q\ : std_logic;
SIGNAL \SW0~input_o\ : std_logic;
SIGNAL \inst13|spi_tx_ena~q\ : std_logic;
SIGNAL \inst13|spi_slave_0|process_1~2_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|process_1~2clkctrl_outclk\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[15]~1_combout\ : std_logic;
SIGNAL \SW1~input_o\ : std_logic;
SIGNAL \inst1|temp[31]~93_combout\ : std_logic;
SIGNAL \inst1|temp[30]~32\ : std_logic;
SIGNAL \inst1|temp[29]~33_combout\ : std_logic;
SIGNAL \inst1|temp[29]~34\ : std_logic;
SIGNAL \inst1|temp[28]~36\ : std_logic;
SIGNAL \inst1|temp[27]~37_combout\ : std_logic;
SIGNAL \inst1|temp[27]~38\ : std_logic;
SIGNAL \inst1|temp[26]~40\ : std_logic;
SIGNAL \inst1|temp[25]~42\ : std_logic;
SIGNAL \inst1|temp[24]~43_combout\ : std_logic;
SIGNAL \inst1|temp[24]~44\ : std_logic;
SIGNAL \inst1|temp[23]~45_combout\ : std_logic;
SIGNAL \inst1|temp[23]~46\ : std_logic;
SIGNAL \inst1|temp[22]~47_combout\ : std_logic;
SIGNAL \inst1|temp[22]~48\ : std_logic;
SIGNAL \inst1|temp[21]~49_combout\ : std_logic;
SIGNAL \inst1|temp[21]~50\ : std_logic;
SIGNAL \inst1|temp[20]~52\ : std_logic;
SIGNAL \inst1|temp[19]~53_combout\ : std_logic;
SIGNAL \inst1|temp[19]~54\ : std_logic;
SIGNAL \inst1|temp[18]~56\ : std_logic;
SIGNAL \inst1|temp[17]~57_combout\ : std_logic;
SIGNAL \inst1|temp[17]~58\ : std_logic;
SIGNAL \inst1|temp[16]~60\ : std_logic;
SIGNAL \inst1|temp[15]~61_combout\ : std_logic;
SIGNAL \inst1|temp[15]~62\ : std_logic;
SIGNAL \inst1|temp[14]~63_combout\ : std_logic;
SIGNAL \inst1|temp[14]~64\ : std_logic;
SIGNAL \inst1|temp[13]~65_combout\ : std_logic;
SIGNAL \inst1|temp[13]~66\ : std_logic;
SIGNAL \inst1|temp[12]~68\ : std_logic;
SIGNAL \inst1|temp[11]~69_combout\ : std_logic;
SIGNAL \inst1|temp[11]~70\ : std_logic;
SIGNAL \inst1|temp[10]~72\ : std_logic;
SIGNAL \inst1|temp[9]~74\ : std_logic;
SIGNAL \inst1|temp[8]~75_combout\ : std_logic;
SIGNAL \inst1|temp[8]~76\ : std_logic;
SIGNAL \inst1|temp[7]~77_combout\ : std_logic;
SIGNAL \inst1|temp[7]~78\ : std_logic;
SIGNAL \inst1|temp[6]~79_combout\ : std_logic;
SIGNAL \inst1|temp[9]~73_combout\ : std_logic;
SIGNAL \inst1|temp[10]~71_combout\ : std_logic;
SIGNAL \inst1|temp[12]~67_combout\ : std_logic;
SIGNAL \inst1|temp[16]~59_combout\ : std_logic;
SIGNAL \inst1|temp[18]~55_combout\ : std_logic;
SIGNAL \inst1|temp[20]~51_combout\ : std_logic;
SIGNAL \inst1|temp[25]~41_combout\ : std_logic;
SIGNAL \inst1|temp[26]~39_combout\ : std_logic;
SIGNAL \inst1|temp[28]~35_combout\ : std_logic;
SIGNAL \inst1|temp[30]~31_combout\ : std_logic;
SIGNAL \inst15|Add0~1\ : std_logic;
SIGNAL \inst15|Add0~3\ : std_logic;
SIGNAL \inst15|Add0~5\ : std_logic;
SIGNAL \inst15|Add0~7\ : std_logic;
SIGNAL \inst15|Add0~9\ : std_logic;
SIGNAL \inst15|Add0~11\ : std_logic;
SIGNAL \inst15|Add0~13\ : std_logic;
SIGNAL \inst15|Add0~15\ : std_logic;
SIGNAL \inst15|Add0~17\ : std_logic;
SIGNAL \inst15|Add0~19\ : std_logic;
SIGNAL \inst15|Add0~21\ : std_logic;
SIGNAL \inst15|Add0~23\ : std_logic;
SIGNAL \inst15|Add0~25\ : std_logic;
SIGNAL \inst15|Add0~27\ : std_logic;
SIGNAL \inst15|Add0~29\ : std_logic;
SIGNAL \inst15|Add0~31\ : std_logic;
SIGNAL \inst15|Add0~33\ : std_logic;
SIGNAL \inst15|Add0~35\ : std_logic;
SIGNAL \inst15|Add0~37\ : std_logic;
SIGNAL \inst15|Add0~39\ : std_logic;
SIGNAL \inst15|Add0~41\ : std_logic;
SIGNAL \inst15|Add0~43\ : std_logic;
SIGNAL \inst15|Add0~45\ : std_logic;
SIGNAL \inst15|Add0~47\ : std_logic;
SIGNAL \inst15|Add0~49\ : std_logic;
SIGNAL \inst15|Add0~50_combout\ : std_logic;
SIGNAL \inst15|Add0~48_combout\ : std_logic;
SIGNAL \inst1|temp[6]~80\ : std_logic;
SIGNAL \inst1|temp[5]~81_combout\ : std_logic;
SIGNAL \inst15|Add0~51\ : std_logic;
SIGNAL \inst15|Add0~52_combout\ : std_logic;
SIGNAL \inst15|LessThan2~0_combout\ : std_logic;
SIGNAL \inst15|Add0~34_combout\ : std_logic;
SIGNAL \inst15|Add0~38_combout\ : std_logic;
SIGNAL \inst15|Add0~32_combout\ : std_logic;
SIGNAL \inst15|LessThan2~4_combout\ : std_logic;
SIGNAL \inst15|Add0~44_combout\ : std_logic;
SIGNAL \inst15|Add0~42_combout\ : std_logic;
SIGNAL \inst15|Add0~40_combout\ : std_logic;
SIGNAL \inst15|LessThan2~5_combout\ : std_logic;
SIGNAL \inst15|LessThan2~6_combout\ : std_logic;
SIGNAL \inst15|Add0~6_combout\ : std_logic;
SIGNAL \inst15|Add0~2_combout\ : std_logic;
SIGNAL \inst15|Add0~4_combout\ : std_logic;
SIGNAL \inst15|LessThan1~1_combout\ : std_logic;
SIGNAL \inst15|Add0~8_combout\ : std_logic;
SIGNAL \inst15|LessThan1~0_combout\ : std_logic;
SIGNAL \inst15|Add0~12_combout\ : std_logic;
SIGNAL \inst15|LessThan1~2_combout\ : std_logic;
SIGNAL \inst15|LessThan1~3_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~113_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~44_combout\ : std_logic;
SIGNAL \inst1|temp[5]~82\ : std_logic;
SIGNAL \inst1|temp[4]~84\ : std_logic;
SIGNAL \inst1|temp[3]~85_combout\ : std_logic;
SIGNAL \inst1|temp[3]~86\ : std_logic;
SIGNAL \inst1|temp[2]~88\ : std_logic;
SIGNAL \inst1|temp[1]~89_combout\ : std_logic;
SIGNAL \inst1|temp[1]~90\ : std_logic;
SIGNAL \inst1|temp[0]~91_combout\ : std_logic;
SIGNAL \inst15|Equal0~5_combout\ : std_logic;
SIGNAL \inst15|start_valid_sync[8]~feeder_combout\ : std_logic;
SIGNAL \inst15|Equal0~6_combout\ : std_logic;
SIGNAL \inst15|start_valid_sync[3]~feeder_combout\ : std_logic;
SIGNAL \inst15|Equal0~7_combout\ : std_logic;
SIGNAL \inst15|Equal0~8_combout\ : std_logic;
SIGNAL \inst15|Equal0~9_combout\ : std_logic;
SIGNAL \inst15|Equal0~10_combout\ : std_logic;
SIGNAL \inst1|temp[4]~83_combout\ : std_logic;
SIGNAL \inst15|Add0~53\ : std_logic;
SIGNAL \inst15|Add0~54_combout\ : std_logic;
SIGNAL \inst15|result~1_combout\ : std_logic;
SIGNAL \inst1|temp[2]~87_combout\ : std_logic;
SIGNAL \inst15|Add0~55\ : std_logic;
SIGNAL \inst15|Add0~57\ : std_logic;
SIGNAL \inst15|Add0~59\ : std_logic;
SIGNAL \inst15|Add0~60_combout\ : std_logic;
SIGNAL \inst15|LessThan0~2_combout\ : std_logic;
SIGNAL \inst15|LessThan0~3_combout\ : std_logic;
SIGNAL \inst15|Add0~56_combout\ : std_logic;
SIGNAL \inst15|Add0~58_combout\ : std_logic;
SIGNAL \inst15|LessThan0~0_combout\ : std_logic;
SIGNAL \inst15|LessThan0~1_combout\ : std_logic;
SIGNAL \inst15|LessThan0~4_combout\ : std_logic;
SIGNAL \inst15|start_valid_sync[3]~3_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~16_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~28_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~94_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~30_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~31_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~95_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~11_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~29_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~97_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~24_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~27_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~96_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~93_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~25_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~26_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~90_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~34_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~35_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~92_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~32_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~33_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~91_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~10_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~12_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~54_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~104_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~109_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~68_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~114_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~65_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~66_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~105_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~57_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~58_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~107_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~18_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~77_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~108_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~22_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~23_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~37_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~38_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~102_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~55_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~13_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~103_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~39_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~40_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~101_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~49_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~48_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~50_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~100_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~14_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~41_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~45_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~98_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~46_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~47_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~99_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~42_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~43_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~85_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~70_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~84_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~79_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~112_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~80_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~87_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~8_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~72_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~73_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~89_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~74_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~88_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~81_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~82_combout\ : std_logic;
SIGNAL \inst15|LessThan6~9_combout\ : std_logic;
SIGNAL \inst15|LessThan6~8_combout\ : std_logic;
SIGNAL \inst15|LessThan6~10_combout\ : std_logic;
SIGNAL \inst15|process_0~0_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~19_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~20_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~83_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~67_combout\ : std_logic;
SIGNAL \inst15|LessThan6~1_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~61_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~63_combout\ : std_logic;
SIGNAL \inst15|LessThan6~0_combout\ : std_logic;
SIGNAL \inst15|stop_valid_sync~64_combout\ : std_logic;
SIGNAL \inst15|LessThan6~2_combout\ : std_logic;
SIGNAL \inst15|process_0~1_combout\ : std_logic;
SIGNAL \inst15|start_valid_sync[3]~4_combout\ : std_logic;
SIGNAL \inst15|start_valid_sync[5]~feeder_combout\ : std_logic;
SIGNAL \inst15|sweep_duration_A[0]~17\ : std_logic;
SIGNAL \inst15|sweep_duration_A[1]~19\ : std_logic;
SIGNAL \inst15|sweep_duration_A[2]~21\ : std_logic;
SIGNAL \inst15|sweep_duration_A[3]~23\ : std_logic;
SIGNAL \inst15|sweep_duration_A[4]~25\ : std_logic;
SIGNAL \inst15|sweep_duration_A[5]~27\ : std_logic;
SIGNAL \inst15|sweep_duration_A[6]~29\ : std_logic;
SIGNAL \inst15|sweep_duration_A[7]~31\ : std_logic;
SIGNAL \inst15|sweep_duration_A[8]~33\ : std_logic;
SIGNAL \inst15|sweep_duration_A[9]~35\ : std_logic;
SIGNAL \inst15|sweep_duration_A[10]~37\ : std_logic;
SIGNAL \inst15|sweep_duration_A[11]~39\ : std_logic;
SIGNAL \inst15|sweep_duration_A[12]~41\ : std_logic;
SIGNAL \inst15|sweep_duration_A[13]~43\ : std_logic;
SIGNAL \inst15|sweep_duration_A[14]~44_combout\ : std_logic;
SIGNAL \inst9|LPM_MUX_component|auto_generated|result_node[14]~1_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[14]~5_combout\ : std_logic;
SIGNAL \inst15|sweep_duration_A[13]~42_combout\ : std_logic;
SIGNAL \inst9|LPM_MUX_component|auto_generated|result_node[13]~2_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[13]~9_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[12]~13_combout\ : std_logic;
SIGNAL \inst15|sweep_duration_A[11]~38_combout\ : std_logic;
SIGNAL \inst9|LPM_MUX_component|auto_generated|result_node[11]~4_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[11]~17_combout\ : std_logic;
SIGNAL \inst15|sweep_duration_A[10]~36_combout\ : std_logic;
SIGNAL \inst9|LPM_MUX_component|auto_generated|result_node[10]~5_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[10]~21_combout\ : std_logic;
SIGNAL \inst15|sweep_duration_A[9]~34_combout\ : std_logic;
SIGNAL \inst9|LPM_MUX_component|auto_generated|result_node[9]~6_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[9]~25_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[9]~26_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[10]~23_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|process_1~1_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[5]~feeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[6]~feeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[12]~feeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[13]~feeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[14]~feeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[15]~feeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[16]~feeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[17]~feeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[23]~feeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|process_1~0_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|process_1~3_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[10]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[10]~22_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[11]~19_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[11]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[11]~18_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[12]~15_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[12]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[12]~14_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[13]~11_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[13]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[13]~10_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[14]~7_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[14]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[14]~6_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[15]~3_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[15]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[15]~2_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|wr_add~0_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|wr_add~q\ : std_logic;
SIGNAL \inst13|spi_slave_0|rrdy~1_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|rrdy~q\ : std_logic;
SIGNAL \inst13|spi_slave_0|miso~1_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|miso~2_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|miso~3_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|miso~4_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|miso~reg0_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|miso~enfeeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|miso~en_q\ : std_logic;
SIGNAL \clock_50~input_o\ : std_logic;
SIGNAL \clock_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst13|prev_data~feeder_combout\ : std_logic;
SIGNAL \inst13|prev_data~q\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \button0_read~input_o\ : std_logic;
SIGNAL \button1_reset~input_o\ : std_logic;
SIGNAL \inst8|Looped~2_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Looped~q\ : std_logic;
SIGNAL \inst8|Add0~0_combout\ : std_logic;
SIGNAL \inst8|Tail~1_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Tail[0]~q\ : std_logic;
SIGNAL \inst8|Add0~4_combout\ : std_logic;
SIGNAL \inst8|Tail~3_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Tail[2]~q\ : std_logic;
SIGNAL \inst8|Add0~2_combout\ : std_logic;
SIGNAL \inst8|Tail~2_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Tail[1]~q\ : std_logic;
SIGNAL \inst8|Looped~0_combout\ : std_logic;
SIGNAL \inst8|Add0~11\ : std_logic;
SIGNAL \inst8|Add0~12_combout\ : std_logic;
SIGNAL \inst8|Tail~8_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Tail[6]~q\ : std_logic;
SIGNAL \inst8|Add0~6_combout\ : std_logic;
SIGNAL \inst8|Tail~4_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Tail[3]~q\ : std_logic;
SIGNAL \inst8|Add0~8_combout\ : std_logic;
SIGNAL \inst8|Tail~5_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Tail[4]~q\ : std_logic;
SIGNAL \inst8|Looped~1_combout\ : std_logic;
SIGNAL \inst8|fifo_proc~5_combout\ : std_logic;
SIGNAL \inst8|Add1~10_combout\ : std_logic;
SIGNAL \inst8|Head~5_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Head[5]~q\ : std_logic;
SIGNAL \inst8|fifo_proc~8_combout\ : std_logic;
SIGNAL \inst8|Add1~2_combout\ : std_logic;
SIGNAL \inst8|Head~1_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Head[1]~q\ : std_logic;
SIGNAL \inst8|fifo_proc~6_combout\ : std_logic;
SIGNAL \inst8|Add0~13\ : std_logic;
SIGNAL \inst8|Add0~14_combout\ : std_logic;
SIGNAL \inst8|fifo_proc~9_combout\ : std_logic;
SIGNAL \inst8|fifo_proc~10_combout\ : std_logic;
SIGNAL \inst8|Head~0_combout\ : std_logic;
SIGNAL \inst8|Add1~1\ : std_logic;
SIGNAL \inst8|Add1~3\ : std_logic;
SIGNAL \inst8|Add1~4_combout\ : std_logic;
SIGNAL \inst8|Head~4_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Head[2]~q\ : std_logic;
SIGNAL \inst8|Add1~5\ : std_logic;
SIGNAL \inst8|Add1~6_combout\ : std_logic;
SIGNAL \inst8|Head~3_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Head[3]~q\ : std_logic;
SIGNAL \inst8|Add1~7\ : std_logic;
SIGNAL \inst8|Add1~8_combout\ : std_logic;
SIGNAL \inst8|Head~6_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Head[4]~q\ : std_logic;
SIGNAL \inst8|Add1~9\ : std_logic;
SIGNAL \inst8|Add1~11\ : std_logic;
SIGNAL \inst8|Add1~13\ : std_logic;
SIGNAL \inst8|Add1~14_combout\ : std_logic;
SIGNAL \inst8|Head~8_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Head[7]~q\ : std_logic;
SIGNAL \inst8|Add1~12_combout\ : std_logic;
SIGNAL \inst8|Head~7_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Head[6]~q\ : std_logic;
SIGNAL \inst8|Tail~7_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Tail[7]~q\ : std_logic;
SIGNAL \inst8|fifo_proc~3_combout\ : std_logic;
SIGNAL \inst8|fifo_proc~1_combout\ : std_logic;
SIGNAL \inst8|fifo_proc~2_combout\ : std_logic;
SIGNAL \inst8|fifo_proc~4_combout\ : std_logic;
SIGNAL \inst8|Tail~0_combout\ : std_logic;
SIGNAL \inst8|Add0~1\ : std_logic;
SIGNAL \inst8|Add0~3\ : std_logic;
SIGNAL \inst8|Add0~5\ : std_logic;
SIGNAL \inst8|Add0~7\ : std_logic;
SIGNAL \inst8|Add0~9\ : std_logic;
SIGNAL \inst8|Add0~10_combout\ : std_logic;
SIGNAL \inst8|Full~1_combout\ : std_logic;
SIGNAL \inst8|Full~0_combout\ : std_logic;
SIGNAL \inst8|Full~6_combout\ : std_logic;
SIGNAL \inst8|Full~7_combout\ : std_logic;
SIGNAL \inst8|Full~8_combout\ : std_logic;
SIGNAL \inst8|Full~q\ : std_logic;
SIGNAL \inst13|spi_slave_0|trdy~0_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|trdy~1_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|trdy~q\ : std_logic;
SIGNAL \inst13|spi_tx_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst13|spi_slave_0|bit_cnt\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \inst9|LPM_MUX_component|auto_generated|result_node\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst15|t_0\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst15|sweep_duration_A\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst15|stop_valid_sync\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst15|start_valid_sync\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|temp\ : std_logic_vector(0 TO 31);
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_spi_ss_n~input_o\ : std_logic;
SIGNAL \ALT_INV_sensor0~input_o\ : std_logic;
SIGNAL \ALT_INV_spi_sclk~input_o\ : std_logic;
SIGNAL \inst13|spi_slave_0|ALT_INV_trdy~q\ : std_logic;

BEGIN

sensor0_led <= ww_sensor0_led;
ww_clock_50 <= clock_50;
ww_spi_reset_n <= spi_reset_n;
ww_spi_sclk <= spi_sclk;
ww_spi_ss_n <= spi_ss_n;
ww_spi_mosi <= spi_mosi;
ww_SW0 <= SW0;
ww_SW1 <= SW1;
ww_sensor0 <= sensor0;
led_fifo_full <= ww_led_fifo_full;
ww_button1_reset <= button1_reset;
ww_button0_read <= button0_read;
spi_miso <= ww_spi_miso;
spi_trdy <= ww_spi_trdy;
error_led <= ww_error_led;
LCD0 <= ww_LCD0;
LCD1 <= ww_LCD1;
LCD2 <= ww_LCD2;
LCD3 <= ww_LCD3;
led <= ww_led;
ww_SW2 <= SW2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clock_50~input_o\);

\inst|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(4);

\inst13|spi_slave_0|process_1~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst13|spi_slave_0|process_1~2_combout\);

\inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|altpll_component|auto_generated|wire_pll1_clk\(0));

\clock_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_50~input_o\);
\inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\ <= NOT \inst13|spi_slave_0|process_1~2clkctrl_outclk\;
\ALT_INV_spi_ss_n~input_o\ <= NOT \spi_ss_n~input_o\;
\ALT_INV_sensor0~input_o\ <= NOT \sensor0~input_o\;
\ALT_INV_spi_sclk~input_o\ <= NOT \spi_sclk~input_o\;
\inst13|spi_slave_0|ALT_INV_trdy~q\ <= NOT \inst13|spi_slave_0|trdy~q\;

-- Location: LCCOMB_X10_Y9_N4
\inst8|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Add1~0_combout\ = (\inst8|fifo_proc:Head[0]~q\ & (\inst8|Head~0_combout\ $ (GND))) # (!\inst8|fifo_proc:Head[0]~q\ & (!\inst8|Head~0_combout\ & VCC))
-- \inst8|Add1~1\ = CARRY((\inst8|fifo_proc:Head[0]~q\ & !\inst8|Head~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Head[0]~q\,
	datab => \inst8|Head~0_combout\,
	datad => VCC,
	combout => \inst8|Add1~0_combout\,
	cout => \inst8|Add1~1\);

-- Location: LCCOMB_X7_Y12_N0
\inst15|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Add0~0_combout\ = (\inst1|temp\(31) & ((GND) # (!\inst15|t_0\(0)))) # (!\inst1|temp\(31) & (\inst15|t_0\(0) $ (GND)))
-- \inst15|Add0~1\ = CARRY((\inst1|temp\(31)) # (!\inst15|t_0\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(31),
	datab => \inst15|t_0\(0),
	datad => VCC,
	combout => \inst15|Add0~0_combout\,
	cout => \inst15|Add0~1\);

-- Location: LCCOMB_X7_Y12_N10
\inst15|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Add0~10_combout\ = (\inst1|temp\(26) & ((\inst15|t_0\(5) & (!\inst15|Add0~9\)) # (!\inst15|t_0\(5) & (\inst15|Add0~9\ & VCC)))) # (!\inst1|temp\(26) & ((\inst15|t_0\(5) & ((\inst15|Add0~9\) # (GND))) # (!\inst15|t_0\(5) & (!\inst15|Add0~9\))))
-- \inst15|Add0~11\ = CARRY((\inst1|temp\(26) & (\inst15|t_0\(5) & !\inst15|Add0~9\)) # (!\inst1|temp\(26) & ((\inst15|t_0\(5)) # (!\inst15|Add0~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(26),
	datab => \inst15|t_0\(5),
	datad => VCC,
	cin => \inst15|Add0~9\,
	combout => \inst15|Add0~10_combout\,
	cout => \inst15|Add0~11\);

-- Location: LCCOMB_X7_Y12_N14
\inst15|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Add0~14_combout\ = (\inst15|t_0\(7) & ((\inst1|temp\(24) & (!\inst15|Add0~13\)) # (!\inst1|temp\(24) & ((\inst15|Add0~13\) # (GND))))) # (!\inst15|t_0\(7) & ((\inst1|temp\(24) & (\inst15|Add0~13\ & VCC)) # (!\inst1|temp\(24) & 
-- (!\inst15|Add0~13\))))
-- \inst15|Add0~15\ = CARRY((\inst15|t_0\(7) & ((!\inst15|Add0~13\) # (!\inst1|temp\(24)))) # (!\inst15|t_0\(7) & (!\inst1|temp\(24) & !\inst15|Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|t_0\(7),
	datab => \inst1|temp\(24),
	datad => VCC,
	cin => \inst15|Add0~13\,
	combout => \inst15|Add0~14_combout\,
	cout => \inst15|Add0~15\);

-- Location: LCCOMB_X7_Y12_N16
\inst15|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Add0~16_combout\ = ((\inst1|temp\(23) $ (\inst15|t_0\(8) $ (\inst15|Add0~15\)))) # (GND)
-- \inst15|Add0~17\ = CARRY((\inst1|temp\(23) & ((!\inst15|Add0~15\) # (!\inst15|t_0\(8)))) # (!\inst1|temp\(23) & (!\inst15|t_0\(8) & !\inst15|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(23),
	datab => \inst15|t_0\(8),
	datad => VCC,
	cin => \inst15|Add0~15\,
	combout => \inst15|Add0~16_combout\,
	cout => \inst15|Add0~17\);

-- Location: LCCOMB_X7_Y12_N18
\inst15|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Add0~18_combout\ = (\inst1|temp\(22) & ((\inst15|t_0\(9) & (!\inst15|Add0~17\)) # (!\inst15|t_0\(9) & (\inst15|Add0~17\ & VCC)))) # (!\inst1|temp\(22) & ((\inst15|t_0\(9) & ((\inst15|Add0~17\) # (GND))) # (!\inst15|t_0\(9) & (!\inst15|Add0~17\))))
-- \inst15|Add0~19\ = CARRY((\inst1|temp\(22) & (\inst15|t_0\(9) & !\inst15|Add0~17\)) # (!\inst1|temp\(22) & ((\inst15|t_0\(9)) # (!\inst15|Add0~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(22),
	datab => \inst15|t_0\(9),
	datad => VCC,
	cin => \inst15|Add0~17\,
	combout => \inst15|Add0~18_combout\,
	cout => \inst15|Add0~19\);

-- Location: LCCOMB_X7_Y12_N20
\inst15|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Add0~20_combout\ = ((\inst15|t_0\(10) $ (\inst1|temp\(21) $ (\inst15|Add0~19\)))) # (GND)
-- \inst15|Add0~21\ = CARRY((\inst15|t_0\(10) & (\inst1|temp\(21) & !\inst15|Add0~19\)) # (!\inst15|t_0\(10) & ((\inst1|temp\(21)) # (!\inst15|Add0~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|t_0\(10),
	datab => \inst1|temp\(21),
	datad => VCC,
	cin => \inst15|Add0~19\,
	combout => \inst15|Add0~20_combout\,
	cout => \inst15|Add0~21\);

-- Location: LCCOMB_X7_Y12_N22
\inst15|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Add0~22_combout\ = (\inst15|t_0\(11) & ((\inst1|temp\(20) & (!\inst15|Add0~21\)) # (!\inst1|temp\(20) & ((\inst15|Add0~21\) # (GND))))) # (!\inst15|t_0\(11) & ((\inst1|temp\(20) & (\inst15|Add0~21\ & VCC)) # (!\inst1|temp\(20) & 
-- (!\inst15|Add0~21\))))
-- \inst15|Add0~23\ = CARRY((\inst15|t_0\(11) & ((!\inst15|Add0~21\) # (!\inst1|temp\(20)))) # (!\inst15|t_0\(11) & (!\inst1|temp\(20) & !\inst15|Add0~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|t_0\(11),
	datab => \inst1|temp\(20),
	datad => VCC,
	cin => \inst15|Add0~21\,
	combout => \inst15|Add0~22_combout\,
	cout => \inst15|Add0~23\);

-- Location: LCCOMB_X7_Y12_N24
\inst15|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Add0~24_combout\ = ((\inst1|temp\(19) $ (\inst15|t_0\(12) $ (\inst15|Add0~23\)))) # (GND)
-- \inst15|Add0~25\ = CARRY((\inst1|temp\(19) & ((!\inst15|Add0~23\) # (!\inst15|t_0\(12)))) # (!\inst1|temp\(19) & (!\inst15|t_0\(12) & !\inst15|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(19),
	datab => \inst15|t_0\(12),
	datad => VCC,
	cin => \inst15|Add0~23\,
	combout => \inst15|Add0~24_combout\,
	cout => \inst15|Add0~25\);

-- Location: LCCOMB_X7_Y12_N26
\inst15|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Add0~26_combout\ = (\inst1|temp\(18) & ((\inst15|t_0\(13) & (!\inst15|Add0~25\)) # (!\inst15|t_0\(13) & (\inst15|Add0~25\ & VCC)))) # (!\inst1|temp\(18) & ((\inst15|t_0\(13) & ((\inst15|Add0~25\) # (GND))) # (!\inst15|t_0\(13) & 
-- (!\inst15|Add0~25\))))
-- \inst15|Add0~27\ = CARRY((\inst1|temp\(18) & (\inst15|t_0\(13) & !\inst15|Add0~25\)) # (!\inst1|temp\(18) & ((\inst15|t_0\(13)) # (!\inst15|Add0~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(18),
	datab => \inst15|t_0\(13),
	datad => VCC,
	cin => \inst15|Add0~25\,
	combout => \inst15|Add0~26_combout\,
	cout => \inst15|Add0~27\);

-- Location: LCCOMB_X7_Y12_N28
\inst15|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Add0~28_combout\ = ((\inst1|temp\(17) $ (\inst15|t_0\(14) $ (\inst15|Add0~27\)))) # (GND)
-- \inst15|Add0~29\ = CARRY((\inst1|temp\(17) & ((!\inst15|Add0~27\) # (!\inst15|t_0\(14)))) # (!\inst1|temp\(17) & (!\inst15|t_0\(14) & !\inst15|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(17),
	datab => \inst15|t_0\(14),
	datad => VCC,
	cin => \inst15|Add0~27\,
	combout => \inst15|Add0~28_combout\,
	cout => \inst15|Add0~29\);

-- Location: LCCOMB_X7_Y12_N30
\inst15|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Add0~30_combout\ = (\inst1|temp\(16) & ((\inst15|t_0\(15) & (!\inst15|Add0~29\)) # (!\inst15|t_0\(15) & (\inst15|Add0~29\ & VCC)))) # (!\inst1|temp\(16) & ((\inst15|t_0\(15) & ((\inst15|Add0~29\) # (GND))) # (!\inst15|t_0\(15) & 
-- (!\inst15|Add0~29\))))
-- \inst15|Add0~31\ = CARRY((\inst1|temp\(16) & (\inst15|t_0\(15) & !\inst15|Add0~29\)) # (!\inst1|temp\(16) & ((\inst15|t_0\(15)) # (!\inst15|Add0~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(16),
	datab => \inst15|t_0\(15),
	datad => VCC,
	cin => \inst15|Add0~29\,
	combout => \inst15|Add0~30_combout\,
	cout => \inst15|Add0~31\);

-- Location: LCCOMB_X7_Y11_N4
\inst15|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Add0~36_combout\ = ((\inst15|t_0\(18) $ (\inst1|temp\(13) $ (\inst15|Add0~35\)))) # (GND)
-- \inst15|Add0~37\ = CARRY((\inst15|t_0\(18) & (\inst1|temp\(13) & !\inst15|Add0~35\)) # (!\inst15|t_0\(18) & ((\inst1|temp\(13)) # (!\inst15|Add0~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|t_0\(18),
	datab => \inst1|temp\(13),
	datad => VCC,
	cin => \inst15|Add0~35\,
	combout => \inst15|Add0~36_combout\,
	cout => \inst15|Add0~37\);

-- Location: LCCOMB_X7_Y11_N14
\inst15|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Add0~46_combout\ = (\inst15|t_0\(23) & ((\inst1|temp\(8) & (!\inst15|Add0~45\)) # (!\inst1|temp\(8) & ((\inst15|Add0~45\) # (GND))))) # (!\inst15|t_0\(23) & ((\inst1|temp\(8) & (\inst15|Add0~45\ & VCC)) # (!\inst1|temp\(8) & (!\inst15|Add0~45\))))
-- \inst15|Add0~47\ = CARRY((\inst15|t_0\(23) & ((!\inst15|Add0~45\) # (!\inst1|temp\(8)))) # (!\inst15|t_0\(23) & (!\inst1|temp\(8) & !\inst15|Add0~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|t_0\(23),
	datab => \inst1|temp\(8),
	datad => VCC,
	cin => \inst15|Add0~45\,
	combout => \inst15|Add0~46_combout\,
	cout => \inst15|Add0~47\);

-- Location: LCCOMB_X7_Y11_N28
\inst15|Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Add0~60_combout\ = ((\inst1|temp\(1) $ (\inst15|t_0\(30) $ (\inst15|Add0~59\)))) # (GND)
-- \inst15|Add0~61\ = CARRY((\inst1|temp\(1) & ((!\inst15|Add0~59\) # (!\inst15|t_0\(30)))) # (!\inst1|temp\(1) & (!\inst15|t_0\(30) & !\inst15|Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(1),
	datab => \inst15|t_0\(30),
	datad => VCC,
	cin => \inst15|Add0~59\,
	combout => \inst15|Add0~60_combout\,
	cout => \inst15|Add0~61\);

-- Location: LCCOMB_X7_Y11_N30
\inst15|Add0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Add0~62_combout\ = \inst1|temp\(0) $ (\inst15|Add0~61\ $ (!\inst15|t_0\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|temp\(0),
	datad => \inst15|t_0\(31),
	cin => \inst15|Add0~61\,
	combout => \inst15|Add0~62_combout\);

-- Location: FF_X9_Y7_N31
\inst15|sweep_duration_A[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|sweep_duration_A[15]~46_combout\,
	ena => \inst15|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|sweep_duration_A\(15));

-- Location: LCCOMB_X9_Y7_N0
\inst15|sweep_duration_A[0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|sweep_duration_A[0]~16_combout\ = (\inst15|stop_valid_sync~54_combout\ & ((GND) # (!\inst15|start_valid_sync\(0)))) # (!\inst15|stop_valid_sync~54_combout\ & (\inst15|start_valid_sync\(0) $ (GND)))
-- \inst15|sweep_duration_A[0]~17\ = CARRY((\inst15|stop_valid_sync~54_combout\) # (!\inst15|start_valid_sync\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~54_combout\,
	datab => \inst15|start_valid_sync\(0),
	datad => VCC,
	combout => \inst15|sweep_duration_A[0]~16_combout\,
	cout => \inst15|sweep_duration_A[0]~17\);

-- Location: LCCOMB_X9_Y7_N2
\inst15|sweep_duration_A[1]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|sweep_duration_A[1]~18_combout\ = (\inst15|stop_valid_sync~52_combout\ & ((\inst15|start_valid_sync\(1) & (!\inst15|sweep_duration_A[0]~17\)) # (!\inst15|start_valid_sync\(1) & (\inst15|sweep_duration_A[0]~17\ & VCC)))) # 
-- (!\inst15|stop_valid_sync~52_combout\ & ((\inst15|start_valid_sync\(1) & ((\inst15|sweep_duration_A[0]~17\) # (GND))) # (!\inst15|start_valid_sync\(1) & (!\inst15|sweep_duration_A[0]~17\))))
-- \inst15|sweep_duration_A[1]~19\ = CARRY((\inst15|stop_valid_sync~52_combout\ & (\inst15|start_valid_sync\(1) & !\inst15|sweep_duration_A[0]~17\)) # (!\inst15|stop_valid_sync~52_combout\ & ((\inst15|start_valid_sync\(1)) # 
-- (!\inst15|sweep_duration_A[0]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~52_combout\,
	datab => \inst15|start_valid_sync\(1),
	datad => VCC,
	cin => \inst15|sweep_duration_A[0]~17\,
	combout => \inst15|sweep_duration_A[1]~18_combout\,
	cout => \inst15|sweep_duration_A[1]~19\);

-- Location: LCCOMB_X9_Y7_N4
\inst15|sweep_duration_A[2]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|sweep_duration_A[2]~20_combout\ = ((\inst15|stop_valid_sync~51_combout\ $ (\inst15|start_valid_sync\(2) $ (\inst15|sweep_duration_A[1]~19\)))) # (GND)
-- \inst15|sweep_duration_A[2]~21\ = CARRY((\inst15|stop_valid_sync~51_combout\ & ((!\inst15|sweep_duration_A[1]~19\) # (!\inst15|start_valid_sync\(2)))) # (!\inst15|stop_valid_sync~51_combout\ & (!\inst15|start_valid_sync\(2) & 
-- !\inst15|sweep_duration_A[1]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~51_combout\,
	datab => \inst15|start_valid_sync\(2),
	datad => VCC,
	cin => \inst15|sweep_duration_A[1]~19\,
	combout => \inst15|sweep_duration_A[2]~20_combout\,
	cout => \inst15|sweep_duration_A[2]~21\);

-- Location: LCCOMB_X9_Y7_N6
\inst15|sweep_duration_A[3]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|sweep_duration_A[3]~22_combout\ = (\inst15|start_valid_sync\(3) & ((\inst15|stop_valid_sync~50_combout\ & (!\inst15|sweep_duration_A[2]~21\)) # (!\inst15|stop_valid_sync~50_combout\ & ((\inst15|sweep_duration_A[2]~21\) # (GND))))) # 
-- (!\inst15|start_valid_sync\(3) & ((\inst15|stop_valid_sync~50_combout\ & (\inst15|sweep_duration_A[2]~21\ & VCC)) # (!\inst15|stop_valid_sync~50_combout\ & (!\inst15|sweep_duration_A[2]~21\))))
-- \inst15|sweep_duration_A[3]~23\ = CARRY((\inst15|start_valid_sync\(3) & ((!\inst15|sweep_duration_A[2]~21\) # (!\inst15|stop_valid_sync~50_combout\))) # (!\inst15|start_valid_sync\(3) & (!\inst15|stop_valid_sync~50_combout\ & 
-- !\inst15|sweep_duration_A[2]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|start_valid_sync\(3),
	datab => \inst15|stop_valid_sync~50_combout\,
	datad => VCC,
	cin => \inst15|sweep_duration_A[2]~21\,
	combout => \inst15|sweep_duration_A[3]~22_combout\,
	cout => \inst15|sweep_duration_A[3]~23\);

-- Location: LCCOMB_X9_Y7_N8
\inst15|sweep_duration_A[4]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|sweep_duration_A[4]~24_combout\ = ((\inst15|start_valid_sync\(4) $ (\inst15|stop_valid_sync~47_combout\ $ (\inst15|sweep_duration_A[3]~23\)))) # (GND)
-- \inst15|sweep_duration_A[4]~25\ = CARRY((\inst15|start_valid_sync\(4) & (\inst15|stop_valid_sync~47_combout\ & !\inst15|sweep_duration_A[3]~23\)) # (!\inst15|start_valid_sync\(4) & ((\inst15|stop_valid_sync~47_combout\) # 
-- (!\inst15|sweep_duration_A[3]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|start_valid_sync\(4),
	datab => \inst15|stop_valid_sync~47_combout\,
	datad => VCC,
	cin => \inst15|sweep_duration_A[3]~23\,
	combout => \inst15|sweep_duration_A[4]~24_combout\,
	cout => \inst15|sweep_duration_A[4]~25\);

-- Location: LCCOMB_X9_Y7_N10
\inst15|sweep_duration_A[5]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|sweep_duration_A[5]~26_combout\ = (\inst15|stop_valid_sync~45_combout\ & ((\inst15|start_valid_sync\(5) & (!\inst15|sweep_duration_A[4]~25\)) # (!\inst15|start_valid_sync\(5) & (\inst15|sweep_duration_A[4]~25\ & VCC)))) # 
-- (!\inst15|stop_valid_sync~45_combout\ & ((\inst15|start_valid_sync\(5) & ((\inst15|sweep_duration_A[4]~25\) # (GND))) # (!\inst15|start_valid_sync\(5) & (!\inst15|sweep_duration_A[4]~25\))))
-- \inst15|sweep_duration_A[5]~27\ = CARRY((\inst15|stop_valid_sync~45_combout\ & (\inst15|start_valid_sync\(5) & !\inst15|sweep_duration_A[4]~25\)) # (!\inst15|stop_valid_sync~45_combout\ & ((\inst15|start_valid_sync\(5)) # 
-- (!\inst15|sweep_duration_A[4]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~45_combout\,
	datab => \inst15|start_valid_sync\(5),
	datad => VCC,
	cin => \inst15|sweep_duration_A[4]~25\,
	combout => \inst15|sweep_duration_A[5]~26_combout\,
	cout => \inst15|sweep_duration_A[5]~27\);

-- Location: LCCOMB_X9_Y7_N12
\inst15|sweep_duration_A[6]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|sweep_duration_A[6]~28_combout\ = ((\inst15|stop_valid_sync~43_combout\ $ (\inst15|start_valid_sync\(6) $ (\inst15|sweep_duration_A[5]~27\)))) # (GND)
-- \inst15|sweep_duration_A[6]~29\ = CARRY((\inst15|stop_valid_sync~43_combout\ & ((!\inst15|sweep_duration_A[5]~27\) # (!\inst15|start_valid_sync\(6)))) # (!\inst15|stop_valid_sync~43_combout\ & (!\inst15|start_valid_sync\(6) & 
-- !\inst15|sweep_duration_A[5]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~43_combout\,
	datab => \inst15|start_valid_sync\(6),
	datad => VCC,
	cin => \inst15|sweep_duration_A[5]~27\,
	combout => \inst15|sweep_duration_A[6]~28_combout\,
	cout => \inst15|sweep_duration_A[6]~29\);

-- Location: LCCOMB_X9_Y7_N14
\inst15|sweep_duration_A[7]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|sweep_duration_A[7]~30_combout\ = (\inst15|start_valid_sync\(7) & ((\inst15|stop_valid_sync~40_combout\ & (!\inst15|sweep_duration_A[6]~29\)) # (!\inst15|stop_valid_sync~40_combout\ & ((\inst15|sweep_duration_A[6]~29\) # (GND))))) # 
-- (!\inst15|start_valid_sync\(7) & ((\inst15|stop_valid_sync~40_combout\ & (\inst15|sweep_duration_A[6]~29\ & VCC)) # (!\inst15|stop_valid_sync~40_combout\ & (!\inst15|sweep_duration_A[6]~29\))))
-- \inst15|sweep_duration_A[7]~31\ = CARRY((\inst15|start_valid_sync\(7) & ((!\inst15|sweep_duration_A[6]~29\) # (!\inst15|stop_valid_sync~40_combout\))) # (!\inst15|start_valid_sync\(7) & (!\inst15|stop_valid_sync~40_combout\ & 
-- !\inst15|sweep_duration_A[6]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|start_valid_sync\(7),
	datab => \inst15|stop_valid_sync~40_combout\,
	datad => VCC,
	cin => \inst15|sweep_duration_A[6]~29\,
	combout => \inst15|sweep_duration_A[7]~30_combout\,
	cout => \inst15|sweep_duration_A[7]~31\);

-- Location: LCCOMB_X9_Y7_N16
\inst15|sweep_duration_A[8]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|sweep_duration_A[8]~32_combout\ = ((\inst15|stop_valid_sync~36_combout\ $ (\inst15|start_valid_sync\(8) $ (\inst15|sweep_duration_A[7]~31\)))) # (GND)
-- \inst15|sweep_duration_A[8]~33\ = CARRY((\inst15|stop_valid_sync~36_combout\ & ((!\inst15|sweep_duration_A[7]~31\) # (!\inst15|start_valid_sync\(8)))) # (!\inst15|stop_valid_sync~36_combout\ & (!\inst15|start_valid_sync\(8) & 
-- !\inst15|sweep_duration_A[7]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~36_combout\,
	datab => \inst15|start_valid_sync\(8),
	datad => VCC,
	cin => \inst15|sweep_duration_A[7]~31\,
	combout => \inst15|sweep_duration_A[8]~32_combout\,
	cout => \inst15|sweep_duration_A[8]~33\);

-- Location: LCCOMB_X9_Y7_N24
\inst15|sweep_duration_A[12]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|sweep_duration_A[12]~40_combout\ = ((\inst15|stop_valid_sync~29_combout\ $ (\inst15|start_valid_sync\(12) $ (\inst15|sweep_duration_A[11]~39\)))) # (GND)
-- \inst15|sweep_duration_A[12]~41\ = CARRY((\inst15|stop_valid_sync~29_combout\ & ((!\inst15|sweep_duration_A[11]~39\) # (!\inst15|start_valid_sync\(12)))) # (!\inst15|stop_valid_sync~29_combout\ & (!\inst15|start_valid_sync\(12) & 
-- !\inst15|sweep_duration_A[11]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~29_combout\,
	datab => \inst15|start_valid_sync\(12),
	datad => VCC,
	cin => \inst15|sweep_duration_A[11]~39\,
	combout => \inst15|sweep_duration_A[12]~40_combout\,
	cout => \inst15|sweep_duration_A[12]~41\);

-- Location: LCCOMB_X9_Y7_N28
\inst15|sweep_duration_A[14]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|sweep_duration_A[14]~44_combout\ = ((\inst15|stop_valid_sync~26_combout\ $ (\inst15|start_valid_sync\(14) $ (\inst15|sweep_duration_A[13]~43\)))) # (GND)
-- \inst15|sweep_duration_A[14]~45\ = CARRY((\inst15|stop_valid_sync~26_combout\ & ((!\inst15|sweep_duration_A[13]~43\) # (!\inst15|start_valid_sync\(14)))) # (!\inst15|stop_valid_sync~26_combout\ & (!\inst15|start_valid_sync\(14) & 
-- !\inst15|sweep_duration_A[13]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~26_combout\,
	datab => \inst15|start_valid_sync\(14),
	datad => VCC,
	cin => \inst15|sweep_duration_A[13]~43\,
	combout => \inst15|sweep_duration_A[14]~44_combout\,
	cout => \inst15|sweep_duration_A[14]~45\);

-- Location: LCCOMB_X9_Y7_N30
\inst15|sweep_duration_A[15]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|sweep_duration_A[15]~46_combout\ = \inst15|start_valid_sync\(15) $ (\inst15|sweep_duration_A[14]~45\ $ (!\inst15|stop_valid_sync~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|start_valid_sync\(15),
	datad => \inst15|stop_valid_sync~20_combout\,
	cin => \inst15|sweep_duration_A[14]~45\,
	combout => \inst15|sweep_duration_A[15]~46_combout\);

-- Location: FF_X9_Y7_N25
\inst15|sweep_duration_A[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|sweep_duration_A[12]~40_combout\,
	ena => \inst15|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|sweep_duration_A\(12));

-- Location: FF_X9_Y7_N17
\inst15|sweep_duration_A[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|sweep_duration_A[8]~32_combout\,
	ena => \inst15|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|sweep_duration_A\(8));

-- Location: FF_X9_Y7_N15
\inst15|sweep_duration_A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|sweep_duration_A[7]~30_combout\,
	ena => \inst15|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|sweep_duration_A\(7));

-- Location: FF_X9_Y7_N13
\inst15|sweep_duration_A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|sweep_duration_A[6]~28_combout\,
	ena => \inst15|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|sweep_duration_A\(6));

-- Location: FF_X9_Y7_N11
\inst15|sweep_duration_A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|sweep_duration_A[5]~26_combout\,
	ena => \inst15|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|sweep_duration_A\(5));

-- Location: FF_X9_Y7_N9
\inst15|sweep_duration_A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|sweep_duration_A[4]~24_combout\,
	ena => \inst15|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|sweep_duration_A\(4));

-- Location: FF_X9_Y7_N7
\inst15|sweep_duration_A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|sweep_duration_A[3]~22_combout\,
	ena => \inst15|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|sweep_duration_A\(3));

-- Location: FF_X9_Y7_N5
\inst15|sweep_duration_A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|sweep_duration_A[2]~20_combout\,
	ena => \inst15|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|sweep_duration_A\(2));

-- Location: FF_X9_Y7_N3
\inst15|sweep_duration_A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|sweep_duration_A[1]~18_combout\,
	ena => \inst15|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|sweep_duration_A\(1));

-- Location: FF_X9_Y7_N1
\inst15|sweep_duration_A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|sweep_duration_A[0]~16_combout\,
	ena => \inst15|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|sweep_duration_A\(0));

-- Location: FF_X9_Y9_N27
\inst8|fifo_proc:Head[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|Head~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc:Head[0]~q\);

-- Location: LCCOMB_X9_Y9_N4
\inst8|fifo_proc~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc~0_combout\ = (\inst8|fifo_proc:Tail[1]~q\ & (\inst8|fifo_proc:Head[1]~q\ & (\inst8|fifo_proc:Head[0]~q\ $ (!\inst8|fifo_proc:Tail[0]~q\)))) # (!\inst8|fifo_proc:Tail[1]~q\ & (!\inst8|fifo_proc:Head[1]~q\ & (\inst8|fifo_proc:Head[0]~q\ $ 
-- (!\inst8|fifo_proc:Tail[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Tail[1]~q\,
	datab => \inst8|fifo_proc:Head[1]~q\,
	datac => \inst8|fifo_proc:Head[0]~q\,
	datad => \inst8|fifo_proc:Tail[0]~q\,
	combout => \inst8|fifo_proc~0_combout\);

-- Location: FF_X11_Y9_N11
\inst8|fifo_proc:Tail[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|Tail~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc:Tail[5]~q\);

-- Location: LCCOMB_X12_Y9_N26
\inst8|fifo_proc~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc~7_combout\ = (\inst8|Add0~6_combout\ & (\inst8|fifo_proc:Head[3]~q\ & (\inst8|Add0~4_combout\ $ (!\inst8|fifo_proc:Head[2]~q\)))) # (!\inst8|Add0~6_combout\ & (!\inst8|fifo_proc:Head[3]~q\ & (\inst8|Add0~4_combout\ $ 
-- (!\inst8|fifo_proc:Head[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~6_combout\,
	datab => \inst8|fifo_proc:Head[3]~q\,
	datac => \inst8|Add0~4_combout\,
	datad => \inst8|fifo_proc:Head[2]~q\,
	combout => \inst8|fifo_proc~7_combout\);

-- Location: FF_X8_Y12_N1
\inst15|result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|result~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|result~q\);

-- Location: LCCOMB_X10_Y9_N20
\inst8|Full~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Full~2_combout\ = (\inst8|Add0~14_combout\ & (\inst8|Add1~14_combout\ & (\inst8|Add1~12_combout\ $ (!\inst8|Add0~12_combout\)))) # (!\inst8|Add0~14_combout\ & (!\inst8|Add1~14_combout\ & (\inst8|Add1~12_combout\ $ (!\inst8|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~14_combout\,
	datab => \inst8|Add1~12_combout\,
	datac => \inst8|Add1~14_combout\,
	datad => \inst8|Add0~12_combout\,
	combout => \inst8|Full~2_combout\);

-- Location: LCCOMB_X9_Y9_N0
\inst8|Full~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Full~3_combout\ = (\inst15|result~q\ & (\inst8|fifo_proc:Head[1]~q\ & (\inst8|fifo_proc:Head[0]~q\ & \inst8|fifo_proc:Head[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|result~q\,
	datab => \inst8|fifo_proc:Head[1]~q\,
	datac => \inst8|fifo_proc:Head[0]~q\,
	datad => \inst8|fifo_proc:Head[2]~q\,
	combout => \inst8|Full~3_combout\);

-- Location: LCCOMB_X11_Y9_N22
\inst8|Full~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Full~4_combout\ = (\inst8|fifo_proc:Head[6]~q\ & (\inst8|fifo_proc:Head[4]~q\ & (\inst8|fifo_proc:Head[5]~q\ & \inst8|fifo_proc:Head[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Head[6]~q\,
	datab => \inst8|fifo_proc:Head[4]~q\,
	datac => \inst8|fifo_proc:Head[5]~q\,
	datad => \inst8|fifo_proc:Head[3]~q\,
	combout => \inst8|Full~4_combout\);

-- Location: LCCOMB_X9_Y9_N10
\inst8|Full~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Full~5_combout\ = (\inst8|Full~4_combout\ & (\inst8|Full~3_combout\ & \inst8|fifo_proc:Head[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Full~4_combout\,
	datab => \inst8|Full~3_combout\,
	datad => \inst8|fifo_proc:Head[7]~q\,
	combout => \inst8|Full~5_combout\);

-- Location: LCCOMB_X9_Y9_N26
\inst8|Head~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Head~2_combout\ = (!\button1_reset~input_o\ & \inst8|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button1_reset~input_o\,
	datad => \inst8|Add1~0_combout\,
	combout => \inst8|Head~2_combout\);

-- Location: LCCOMB_X11_Y9_N10
\inst8|Tail~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Tail~6_combout\ = (\inst8|Add0~10_combout\ & !\button1_reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|Add0~10_combout\,
	datad => \button1_reset~input_o\,
	combout => \inst8|Tail~6_combout\);

-- Location: LCCOMB_X8_Y12_N18
\inst15|LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan4~0_combout\ = (!\inst15|Add0~10_combout\ & (!\inst15|Add0~8_combout\ & ((!\inst15|Add0~4_combout\) # (!\inst15|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Add0~10_combout\,
	datab => \inst15|Add0~6_combout\,
	datac => \inst15|Add0~4_combout\,
	datad => \inst15|Add0~8_combout\,
	combout => \inst15|LessThan4~0_combout\);

-- Location: LCCOMB_X8_Y12_N4
\inst15|LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan4~1_combout\ = ((!\inst15|Add0~12_combout\ & \inst15|LessThan4~0_combout\)) # (!\inst15|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Add0~12_combout\,
	datab => \inst15|LessThan4~0_combout\,
	datad => \inst15|Add0~14_combout\,
	combout => \inst15|LessThan4~1_combout\);

-- Location: LCCOMB_X8_Y11_N10
\inst15|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan2~1_combout\ = (!\inst15|Add0~18_combout\ & (!\inst15|Add0~22_combout\ & (!\inst15|Add0~16_combout\ & !\inst15|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Add0~18_combout\,
	datab => \inst15|Add0~22_combout\,
	datac => \inst15|Add0~16_combout\,
	datad => \inst15|Add0~20_combout\,
	combout => \inst15|LessThan2~1_combout\);

-- Location: LCCOMB_X7_Y13_N8
\inst15|LessThan2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan2~2_combout\ = (!\inst15|Add0~26_combout\ & !\inst15|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|Add0~26_combout\,
	datad => \inst15|Add0~24_combout\,
	combout => \inst15|LessThan2~2_combout\);

-- Location: LCCOMB_X8_Y11_N12
\inst15|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan2~3_combout\ = (!\inst15|Add0~30_combout\ & (\inst15|LessThan2~2_combout\ & (!\inst15|Add0~28_combout\ & \inst15|LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Add0~30_combout\,
	datab => \inst15|LessThan2~2_combout\,
	datac => \inst15|Add0~28_combout\,
	datad => \inst15|LessThan2~1_combout\,
	combout => \inst15|LessThan2~3_combout\);

-- Location: LCCOMB_X8_Y12_N14
\inst15|LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan3~0_combout\ = (\inst15|Add0~12_combout\ & \inst15|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Add0~12_combout\,
	datad => \inst15|Add0~10_combout\,
	combout => \inst15|LessThan3~0_combout\);

-- Location: LCCOMB_X8_Y12_N10
\inst15|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan3~1_combout\ = (\inst15|Add0~14_combout\) # ((\inst15|LessThan3~0_combout\ & ((\inst15|Add0~8_combout\) # (!\inst15|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Add0~8_combout\,
	datab => \inst15|LessThan0~2_combout\,
	datac => \inst15|LessThan3~0_combout\,
	datad => \inst15|Add0~14_combout\,
	combout => \inst15|LessThan3~1_combout\);

-- Location: LCCOMB_X8_Y12_N28
\inst15|result~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|result~0_combout\ = (((\inst15|Add0~60_combout\) # (!\inst15|LessThan3~1_combout\)) # (!\inst15|LessThan4~1_combout\)) # (!\inst15|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|LessThan0~1_combout\,
	datab => \inst15|LessThan4~1_combout\,
	datac => \inst15|Add0~60_combout\,
	datad => \inst15|LessThan3~1_combout\,
	combout => \inst15|result~0_combout\);

-- Location: LCCOMB_X8_Y12_N20
\inst15|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan2~7_combout\ = (\inst15|LessThan0~2_combout\ & (!\inst15|Add0~8_combout\ & ((!\inst15|Add0~0_combout\) # (!\inst15|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Add0~2_combout\,
	datab => \inst15|LessThan0~2_combout\,
	datac => \inst15|Add0~0_combout\,
	datad => \inst15|Add0~8_combout\,
	combout => \inst15|LessThan2~7_combout\);

-- Location: LCCOMB_X8_Y12_N30
\inst15|start_valid_sync[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|start_valid_sync[3]~2_combout\ = (\inst15|LessThan0~1_combout\ & (!\inst15|Add0~14_combout\ & ((\inst15|LessThan2~7_combout\) # (!\inst15|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|LessThan0~1_combout\,
	datab => \inst15|LessThan2~7_combout\,
	datac => \inst15|LessThan3~0_combout\,
	datad => \inst15|Add0~14_combout\,
	combout => \inst15|start_valid_sync[3]~2_combout\);

-- Location: LCCOMB_X8_Y12_N16
\inst15|result~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|result~2_combout\ = (\inst15|result~0_combout\ & (\inst15|result~q\ & ((\inst15|result~1_combout\) # (\inst15|Add0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|result~1_combout\,
	datab => \inst15|result~0_combout\,
	datac => \inst15|Add0~60_combout\,
	datad => \inst15|result~q\,
	combout => \inst15|result~2_combout\);

-- Location: LCCOMB_X8_Y12_N0
\inst15|result~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|result~3_combout\ = (\inst15|Add0~62_combout\) # ((\inst15|result~2_combout\) # ((!\inst15|Add0~60_combout\ & \inst15|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Add0~62_combout\,
	datab => \inst15|result~2_combout\,
	datac => \inst15|Add0~60_combout\,
	datad => \inst15|LessThan0~4_combout\,
	combout => \inst15|result~3_combout\);

-- Location: LCCOMB_X20_Y1_N4
\inst13|spi_slave_0|miso~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|miso~0_combout\ = (!\inst13|spi_slave_0|trdy~q\ & \inst13|spi_slave_0|bit_cnt\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|trdy~q\,
	datac => \inst13|spi_slave_0|bit_cnt\(8),
	combout => \inst13|spi_slave_0|miso~0_combout\);

-- Location: FF_X19_Y1_N3
\inst13|spi_slave_0|roe\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_sclk~input_o\,
	d => \inst13|spi_slave_0|roe~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|roe~q\);

-- Location: FF_X8_Y6_N11
\inst13|spi_tx_data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst9|LPM_MUX_component|auto_generated|result_node[15]~0_combout\,
	ena => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(15));

-- Location: LCCOMB_X19_Y1_N12
\inst13|spi_slave_0|rrdy~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|rrdy~0_combout\ = (\inst13|spi_slave_0|bit_cnt\(10) & (\inst13|spi_slave_0|wr_add~q\ & ((\spi_mosi~input_o\)))) # (!\inst13|spi_slave_0|bit_cnt\(10) & (((\inst13|spi_slave_0|rrdy~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|bit_cnt\(10),
	datab => \inst13|spi_slave_0|wr_add~q\,
	datac => \inst13|spi_slave_0|rrdy~q\,
	datad => \spi_mosi~input_o\,
	combout => \inst13|spi_slave_0|rrdy~0_combout\);

-- Location: LCCOMB_X20_Y1_N12
\inst13|spi_slave_0|roe~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|roe~0_combout\ = (\inst13|spi_slave_0|wr_add~q\ & ((\inst13|spi_slave_0|bit_cnt\(11) & (\spi_mosi~input_o\)) # (!\inst13|spi_slave_0|bit_cnt\(11) & ((\inst13|spi_slave_0|roe~q\))))) # (!\inst13|spi_slave_0|wr_add~q\ & 
-- (((\inst13|spi_slave_0|roe~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_mosi~input_o\,
	datab => \inst13|spi_slave_0|wr_add~q\,
	datac => \inst13|spi_slave_0|bit_cnt\(11),
	datad => \inst13|spi_slave_0|roe~q\,
	combout => \inst13|spi_slave_0|roe~0_combout\);

-- Location: LCCOMB_X19_Y1_N2
\inst13|spi_slave_0|roe~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|roe~1_combout\ = (\inst13|spi_slave_0|roe~0_combout\) # ((!\inst13|spi_slave_0|wr_add~q\ & (\inst13|spi_slave_0|rrdy~q\ & \inst13|spi_slave_0|bit_cnt\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|wr_add~q\,
	datab => \inst13|spi_slave_0|rrdy~q\,
	datac => \inst13|spi_slave_0|roe~0_combout\,
	datad => \inst13|spi_slave_0|bit_cnt\(24),
	combout => \inst13|spi_slave_0|roe~1_combout\);

-- Location: LCCOMB_X8_Y6_N10
\inst9|LPM_MUX_component|auto_generated|result_node[15]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|LPM_MUX_component|auto_generated|result_node[15]~0_combout\ = (\inst15|sweep_duration_A\(15) & \SW1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|sweep_duration_A\(15),
	datad => \SW1~input_o\,
	combout => \inst9|LPM_MUX_component|auto_generated|result_node[15]~0_combout\);

-- Location: FF_X8_Y8_N31
\inst15|stop_valid_sync[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|stop_valid_sync~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|stop_valid_sync\(22));

-- Location: LCCOMB_X7_Y8_N14
\inst15|stop_valid_sync~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~9_combout\ = (\inst15|stop_valid_sync~8_combout\ & (!\inst15|stop_valid_sync\(27) & (!\inst15|stop_valid_sync\(28) & !\inst15|stop_valid_sync\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~8_combout\,
	datab => \inst15|stop_valid_sync\(27),
	datac => \inst15|stop_valid_sync\(28),
	datad => \inst15|stop_valid_sync\(26),
	combout => \inst15|stop_valid_sync~9_combout\);

-- Location: FF_X7_Y9_N25
\inst15|start_valid_sync[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst15|t_0\(30),
	sload => VCC,
	ena => \inst15|start_valid_sync[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|start_valid_sync\(30));

-- Location: FF_X7_Y9_N11
\inst15|start_valid_sync[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|start_valid_sync[29]~feeder_combout\,
	ena => \inst15|start_valid_sync[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|start_valid_sync\(29));

-- Location: FF_X7_Y8_N11
\inst15|start_valid_sync[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|start_valid_sync[28]~feeder_combout\,
	ena => \inst15|start_valid_sync[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|start_valid_sync\(28));

-- Location: FF_X7_Y9_N29
\inst15|start_valid_sync[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|start_valid_sync[27]~feeder_combout\,
	ena => \inst15|start_valid_sync[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|start_valid_sync\(27));

-- Location: LCCOMB_X7_Y9_N24
\inst15|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Equal0~0_combout\ = (!\inst15|start_valid_sync\(29) & (!\inst15|start_valid_sync\(28) & (!\inst15|start_valid_sync\(30) & !\inst15|start_valid_sync\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|start_valid_sync\(29),
	datab => \inst15|start_valid_sync\(28),
	datac => \inst15|start_valid_sync\(30),
	datad => \inst15|start_valid_sync\(27),
	combout => \inst15|Equal0~0_combout\);

-- Location: FF_X7_Y8_N13
\inst15|start_valid_sync[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst15|t_0\(26),
	sload => VCC,
	ena => \inst15|start_valid_sync[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|start_valid_sync\(26));

-- Location: FF_X8_Y9_N17
\inst15|start_valid_sync[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|start_valid_sync[25]~feeder_combout\,
	ena => \inst15|start_valid_sync[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|start_valid_sync\(25));

-- Location: FF_X7_Y8_N31
\inst15|start_valid_sync[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|start_valid_sync[24]~feeder_combout\,
	ena => \inst15|start_valid_sync[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|start_valid_sync\(24));

-- Location: FF_X7_Y8_N1
\inst15|start_valid_sync[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst15|t_0\(23),
	sload => VCC,
	ena => \inst15|start_valid_sync[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|start_valid_sync\(23));

-- Location: LCCOMB_X7_Y8_N12
\inst15|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Equal0~1_combout\ = (!\inst15|start_valid_sync\(24) & (!\inst15|start_valid_sync\(23) & (!\inst15|start_valid_sync\(26) & !\inst15|start_valid_sync\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|start_valid_sync\(24),
	datab => \inst15|start_valid_sync\(23),
	datac => \inst15|start_valid_sync\(26),
	datad => \inst15|start_valid_sync\(25),
	combout => \inst15|Equal0~1_combout\);

-- Location: FF_X7_Y9_N23
\inst15|start_valid_sync[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst15|t_0\(22),
	sload => VCC,
	ena => \inst15|start_valid_sync[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|start_valid_sync\(22));

-- Location: FF_X7_Y9_N17
\inst15|start_valid_sync[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|start_valid_sync[21]~feeder_combout\,
	ena => \inst15|start_valid_sync[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|start_valid_sync\(21));

-- Location: FF_X7_Y9_N27
\inst15|start_valid_sync[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|start_valid_sync[20]~feeder_combout\,
	ena => \inst15|start_valid_sync[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|start_valid_sync\(20));

-- Location: FF_X7_Y9_N21
\inst15|start_valid_sync[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst15|t_0\(19),
	sload => VCC,
	ena => \inst15|start_valid_sync[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|start_valid_sync\(19));

-- Location: LCCOMB_X7_Y9_N22
\inst15|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Equal0~2_combout\ = (!\inst15|start_valid_sync\(20) & (!\inst15|start_valid_sync\(21) & (!\inst15|start_valid_sync\(22) & !\inst15|start_valid_sync\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|start_valid_sync\(20),
	datab => \inst15|start_valid_sync\(21),
	datac => \inst15|start_valid_sync\(22),
	datad => \inst15|start_valid_sync\(19),
	combout => \inst15|Equal0~2_combout\);

-- Location: FF_X7_Y9_N7
\inst15|start_valid_sync[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst15|t_0\(18),
	sload => VCC,
	ena => \inst15|start_valid_sync[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|start_valid_sync\(18));

-- Location: FF_X7_Y9_N1
\inst15|start_valid_sync[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|start_valid_sync[17]~feeder_combout\,
	ena => \inst15|start_valid_sync[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|start_valid_sync\(17));

-- Location: FF_X7_Y9_N3
\inst15|start_valid_sync[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst15|t_0\(16),
	sload => VCC,
	ena => \inst15|start_valid_sync[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|start_valid_sync\(16));

-- Location: FF_X7_Y9_N13
\inst15|start_valid_sync[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|start_valid_sync[15]~feeder_combout\,
	ena => \inst15|start_valid_sync[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|start_valid_sync\(15));

-- Location: LCCOMB_X7_Y9_N6
\inst15|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Equal0~3_combout\ = (!\inst15|start_valid_sync\(15) & (!\inst15|start_valid_sync\(17) & (!\inst15|start_valid_sync\(18) & !\inst15|start_valid_sync\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|start_valid_sync\(15),
	datab => \inst15|start_valid_sync\(17),
	datac => \inst15|start_valid_sync\(18),
	datad => \inst15|start_valid_sync\(16),
	combout => \inst15|Equal0~3_combout\);

-- Location: LCCOMB_X7_Y9_N14
\inst15|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Equal0~4_combout\ = (\inst15|Equal0~1_combout\ & (\inst15|Equal0~0_combout\ & (\inst15|Equal0~2_combout\ & \inst15|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Equal0~1_combout\,
	datab => \inst15|Equal0~0_combout\,
	datac => \inst15|Equal0~2_combout\,
	datad => \inst15|Equal0~3_combout\,
	combout => \inst15|Equal0~4_combout\);

-- Location: FF_X9_Y8_N27
\inst15|start_valid_sync[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|start_valid_sync[7]~feeder_combout\,
	ena => \inst15|start_valid_sync[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|start_valid_sync\(7));

-- Location: LCCOMB_X9_Y10_N20
\inst15|stop_valid_sync~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~15_combout\ = (!\inst15|stop_valid_sync\(2) & (\inst15|stop_valid_sync~14_combout\ & \inst15|stop_valid_sync~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync\(2),
	datab => \inst15|stop_valid_sync~14_combout\,
	datac => \inst15|stop_valid_sync~13_combout\,
	combout => \inst15|stop_valid_sync~15_combout\);

-- Location: LCCOMB_X8_Y9_N30
\inst15|stop_valid_sync~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~17_combout\ = (\inst15|stop_valid_sync~9_combout\ & (!\inst15|stop_valid_sync\(0) & (\inst15|stop_valid_sync~16_combout\ & \inst15|stop_valid_sync~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~9_combout\,
	datab => \inst15|stop_valid_sync\(0),
	datac => \inst15|stop_valid_sync~16_combout\,
	datad => \inst15|stop_valid_sync~12_combout\,
	combout => \inst15|stop_valid_sync~17_combout\);

-- Location: FF_X11_Y8_N31
\inst15|stop_valid_sync[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|stop_valid_sync~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|stop_valid_sync\(20));

-- Location: FF_X10_Y8_N23
\inst15|stop_valid_sync[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|stop_valid_sync~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|stop_valid_sync\(16));

-- Location: LCCOMB_X10_Y8_N26
\inst15|stop_valid_sync~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~21_combout\ = (!\inst15|stop_valid_sync\(15) & !\inst15|stop_valid_sync\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|stop_valid_sync\(15),
	datac => \inst15|stop_valid_sync\(16),
	combout => \inst15|stop_valid_sync~21_combout\);

-- Location: LCCOMB_X9_Y8_N0
\inst15|stop_valid_sync~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~36_combout\ = (\inst15|stop_valid_sync\(8)) # ((\inst15|t_0\(8) & (!\inst15|stop_valid_sync\(9) & \inst15|stop_valid_sync~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|t_0\(8),
	datab => \inst15|stop_valid_sync\(8),
	datac => \inst15|stop_valid_sync\(9),
	datad => \inst15|stop_valid_sync~34_combout\,
	combout => \inst15|stop_valid_sync~36_combout\);

-- Location: LCCOMB_X9_Y10_N12
\inst15|stop_valid_sync~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~51_combout\ = (\inst15|stop_valid_sync\(2)) # ((\inst15|stop_valid_sync~48_combout\ & (\inst15|t_0\(2) & \inst15|stop_valid_sync~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync\(2),
	datab => \inst15|stop_valid_sync~48_combout\,
	datac => \inst15|t_0\(2),
	datad => \inst15|stop_valid_sync~14_combout\,
	combout => \inst15|stop_valid_sync~51_combout\);

-- Location: LCCOMB_X9_Y10_N6
\inst15|stop_valid_sync~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~52_combout\ = (\inst15|stop_valid_sync\(1)) # ((\inst15|t_0\(1) & (\inst15|stop_valid_sync~39_combout\ & !\inst15|stop_valid_sync\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|t_0\(1),
	datab => \inst15|stop_valid_sync~39_combout\,
	datac => \inst15|stop_valid_sync\(1),
	datad => \inst15|stop_valid_sync\(7),
	combout => \inst15|stop_valid_sync~52_combout\);

-- Location: LCCOMB_X8_Y9_N26
\inst15|stop_valid_sync~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~53_combout\ = (\inst15|stop_valid_sync~9_combout\ & (\inst15|stop_valid_sync~22_combout\ & \inst15|t_0\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~9_combout\,
	datab => \inst15|stop_valid_sync~22_combout\,
	datac => \inst15|t_0\(0),
	combout => \inst15|stop_valid_sync~53_combout\);

-- Location: LCCOMB_X10_Y8_N14
\inst15|stop_valid_sync~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~56_combout\ = (\inst15|stop_valid_sync~17_combout\ & (!\inst15|stop_valid_sync\(17) & (\inst15|stop_valid_sync~21_combout\ & !\inst15|stop_valid_sync\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~17_combout\,
	datab => \inst15|stop_valid_sync\(17),
	datac => \inst15|stop_valid_sync~21_combout\,
	datad => \inst15|stop_valid_sync\(21),
	combout => \inst15|stop_valid_sync~56_combout\);

-- Location: LCCOMB_X8_Y9_N22
\inst15|stop_valid_sync~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~59_combout\ = (\inst15|stop_valid_sync~12_combout\ & (!\inst15|stop_valid_sync\(0) & (\inst15|stop_valid_sync~16_combout\ & \inst15|stop_valid_sync~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~12_combout\,
	datab => \inst15|stop_valid_sync\(0),
	datac => \inst15|stop_valid_sync~16_combout\,
	datad => \inst15|stop_valid_sync~22_combout\,
	combout => \inst15|stop_valid_sync~59_combout\);

-- Location: LCCOMB_X7_Y8_N2
\inst15|stop_valid_sync~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~60_combout\ = (\inst15|stop_valid_sync~59_combout\ & (!\inst15|stop_valid_sync\(26) & (!\inst15|stop_valid_sync\(28) & !\inst15|stop_valid_sync\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~59_combout\,
	datab => \inst15|stop_valid_sync\(26),
	datac => \inst15|stop_valid_sync\(28),
	datad => \inst15|stop_valid_sync\(27),
	combout => \inst15|stop_valid_sync~60_combout\);

-- Location: LCCOMB_X8_Y8_N8
\inst15|stop_valid_sync~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~62_combout\ = (\inst15|stop_valid_sync\(22)) # ((!\inst15|stop_valid_sync\(23) & (\inst15|stop_valid_sync~61_combout\ & \inst15|t_0\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync\(22),
	datab => \inst15|stop_valid_sync\(23),
	datac => \inst15|stop_valid_sync~61_combout\,
	datad => \inst15|t_0\(22),
	combout => \inst15|stop_valid_sync~62_combout\);

-- Location: LCCOMB_X11_Y8_N22
\inst15|stop_valid_sync~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~69_combout\ = (\inst15|stop_valid_sync\(18)) # ((\inst15|stop_valid_sync~56_combout\ & \inst15|stop_valid_sync~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~56_combout\,
	datab => \inst15|stop_valid_sync~68_combout\,
	datad => \inst15|stop_valid_sync\(18),
	combout => \inst15|stop_valid_sync~69_combout\);

-- Location: LCCOMB_X8_Y8_N22
\inst15|stop_valid_sync~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~71_combout\ = (!\inst15|stop_valid_sync\(22) & (!\inst15|stop_valid_sync\(23) & \inst15|t_0\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync\(22),
	datab => \inst15|stop_valid_sync\(23),
	datad => \inst15|t_0\(24),
	combout => \inst15|stop_valid_sync~71_combout\);

-- Location: LCCOMB_X8_Y8_N16
\inst15|LessThan6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan6~3_combout\ = (\inst15|stop_valid_sync~69_combout\) # ((\inst15|stop_valid_sync\(24)) # ((\inst15|stop_valid_sync~71_combout\ & \inst15|stop_valid_sync~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~71_combout\,
	datab => \inst15|stop_valid_sync~69_combout\,
	datac => \inst15|stop_valid_sync\(24),
	datad => \inst15|stop_valid_sync~70_combout\,
	combout => \inst15|LessThan6~3_combout\);

-- Location: LCCOMB_X7_Y8_N26
\inst15|LessThan6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan6~4_combout\ = (\inst15|stop_valid_sync~73_combout\) # ((\inst15|stop_valid_sync\(28)) # ((\inst15|stop_valid_sync~72_combout\ & \inst15|stop_valid_sync~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~73_combout\,
	datab => \inst15|stop_valid_sync\(28),
	datac => \inst15|stop_valid_sync~72_combout\,
	datad => \inst15|stop_valid_sync~74_combout\,
	combout => \inst15|LessThan6~4_combout\);

-- Location: LCCOMB_X9_Y8_N18
\inst15|LessThan6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan6~5_combout\ = (\inst15|stop_valid_sync~52_combout\) # ((\inst15|stop_valid_sync~40_combout\) # ((\inst15|stop_valid_sync~31_combout\) # (\inst15|stop_valid_sync~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~52_combout\,
	datab => \inst15|stop_valid_sync~40_combout\,
	datac => \inst15|stop_valid_sync~31_combout\,
	datad => \inst15|stop_valid_sync~47_combout\,
	combout => \inst15|LessThan6~5_combout\);

-- Location: LCCOMB_X8_Y10_N6
\inst15|stop_valid_sync~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~75_combout\ = (\inst15|stop_valid_sync\(30)) # ((\inst15|t_0\(30) & (\inst15|stop_valid_sync~30_combout\ & !\inst15|stop_valid_sync\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|t_0\(30),
	datab => \inst15|stop_valid_sync~30_combout\,
	datac => \inst15|stop_valid_sync\(11),
	datad => \inst15|stop_valid_sync\(30),
	combout => \inst15|stop_valid_sync~75_combout\);

-- Location: LCCOMB_X9_Y8_N28
\inst15|LessThan6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan6~6_combout\ = (\inst15|stop_valid_sync~33_combout\) # ((\inst15|stop_valid_sync~75_combout\) # ((\inst15|stop_valid_sync~26_combout\) # (\inst15|stop_valid_sync~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~33_combout\,
	datab => \inst15|stop_valid_sync~75_combout\,
	datac => \inst15|stop_valid_sync~26_combout\,
	datad => \inst15|stop_valid_sync~50_combout\,
	combout => \inst15|LessThan6~6_combout\);

-- Location: LCCOMB_X9_Y8_N14
\inst15|LessThan6~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan6~7_combout\ = (\inst15|LessThan6~4_combout\) # ((\inst15|LessThan6~5_combout\) # ((\inst15|LessThan6~3_combout\) # (\inst15|LessThan6~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|LessThan6~4_combout\,
	datab => \inst15|LessThan6~5_combout\,
	datac => \inst15|LessThan6~3_combout\,
	datad => \inst15|LessThan6~6_combout\,
	combout => \inst15|LessThan6~7_combout\);

-- Location: LCCOMB_X10_Y8_N10
\inst15|stop_valid_sync~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~76_combout\ = (!\inst15|stop_valid_sync\(16) & (!\inst15|stop_valid_sync\(21) & (!\inst15|stop_valid_sync\(15) & \inst15|stop_valid_sync~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync\(16),
	datab => \inst15|stop_valid_sync\(21),
	datac => \inst15|stop_valid_sync\(15),
	datad => \inst15|stop_valid_sync~17_combout\,
	combout => \inst15|stop_valid_sync~76_combout\);

-- Location: LCCOMB_X10_Y8_N6
\inst15|stop_valid_sync~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~78_combout\ = (\inst15|stop_valid_sync\(21)) # ((\inst15|stop_valid_sync~18_combout\ & (\inst15|t_0\(21) & \inst15|stop_valid_sync~111_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~18_combout\,
	datab => \inst15|t_0\(21),
	datac => \inst15|stop_valid_sync~111_combout\,
	datad => \inst15|stop_valid_sync\(21),
	combout => \inst15|stop_valid_sync~78_combout\);

-- Location: LCCOMB_X8_Y8_N30
\inst15|stop_valid_sync~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~86_combout\ = (!\inst15|process_0~1_combout\ & \inst15|stop_valid_sync~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|process_0~1_combout\,
	datac => \inst15|stop_valid_sync~62_combout\,
	combout => \inst15|stop_valid_sync~86_combout\);

-- Location: LCCOMB_X11_Y8_N30
\inst15|stop_valid_sync~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~106_combout\ = (!\inst15|process_0~1_combout\ & \inst15|stop_valid_sync~64_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|process_0~1_combout\,
	datad => \inst15|stop_valid_sync~64_combout\,
	combout => \inst15|stop_valid_sync~106_combout\);

-- Location: LCCOMB_X10_Y8_N22
\inst15|stop_valid_sync~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~110_combout\ = (!\inst15|process_0~1_combout\ & \inst15|stop_valid_sync~67_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|process_0~1_combout\,
	datad => \inst15|stop_valid_sync~67_combout\,
	combout => \inst15|stop_valid_sync~110_combout\);

-- Location: FF_X6_Y7_N7
\inst13|spi_tx_data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst9|LPM_MUX_component|auto_generated|result_node[12]~3_combout\,
	ena => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(12));

-- Location: LCCOMB_X6_Y7_N6
\inst9|LPM_MUX_component|auto_generated|result_node[12]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|LPM_MUX_component|auto_generated|result_node[12]~3_combout\ = (\inst15|sweep_duration_A\(12) & \SW1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|sweep_duration_A\(12),
	datac => \SW1~input_o\,
	combout => \inst9|LPM_MUX_component|auto_generated|result_node[12]~3_combout\);

-- Location: FF_X7_Y7_N31
\inst13|spi_slave_0|tx_buf[9]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[9]~27_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[9]~_emulated_q\);

-- Location: LCCOMB_X7_Y7_N30
\inst13|spi_slave_0|tx_buf[9]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[9]~27_combout\ = \inst13|spi_slave_0|tx_buf[9]~25_combout\ $ (\inst13|spi_slave_0|tx_buf[8]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[9]~25_combout\,
	datad => \inst13|spi_slave_0|tx_buf[8]~30_combout\,
	combout => \inst13|spi_slave_0|tx_buf[9]~27_combout\);

-- Location: FF_X7_Y7_N21
\inst13|spi_slave_0|tx_buf[8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[8]~31_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[8]~_emulated_q\);

-- Location: FF_X7_Y7_N7
\inst13|spi_tx_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst9|LPM_MUX_component|auto_generated|result_node[8]~7_combout\,
	ena => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(8));

-- Location: LCCOMB_X7_Y7_N24
\inst13|spi_slave_0|tx_buf[8]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[8]~30_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_tx_data\(8))) # (!\inst13|spi_slave_0|process_1~2_combout\ & ((\inst13|spi_slave_0|tx_buf[8]~_emulated_q\ $ (\inst13|spi_slave_0|tx_buf[8]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_tx_data\(8),
	datab => \inst13|spi_slave_0|tx_buf[8]~_emulated_q\,
	datac => \inst13|spi_slave_0|process_1~2_combout\,
	datad => \inst13|spi_slave_0|tx_buf[8]~29_combout\,
	combout => \inst13|spi_slave_0|tx_buf[8]~30_combout\);

-- Location: LCCOMB_X7_Y7_N20
\inst13|spi_slave_0|tx_buf[8]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[8]~31_combout\ = \inst13|spi_slave_0|tx_buf[8]~29_combout\ $ (\inst13|spi_slave_0|tx_buf[7]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[8]~29_combout\,
	datac => \inst13|spi_slave_0|tx_buf[7]~34_combout\,
	combout => \inst13|spi_slave_0|tx_buf[8]~31_combout\);

-- Location: LCCOMB_X7_Y7_N6
\inst9|LPM_MUX_component|auto_generated|result_node[8]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|LPM_MUX_component|auto_generated|result_node[8]~7_combout\ = (\SW1~input_o\ & \inst15|sweep_duration_A\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW1~input_o\,
	datad => \inst15|sweep_duration_A\(8),
	combout => \inst9|LPM_MUX_component|auto_generated|result_node[8]~7_combout\);

-- Location: FF_X7_Y7_N11
\inst13|spi_slave_0|tx_buf[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[7]~35_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[7]~_emulated_q\);

-- Location: FF_X7_Y7_N13
\inst13|spi_tx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst9|LPM_MUX_component|auto_generated|result_node[7]~8_combout\,
	ena => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(7));

-- Location: LCCOMB_X7_Y7_N14
\inst13|spi_slave_0|tx_buf[7]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[7]~34_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(7))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[7]~_emulated_q\ $ 
-- ((\inst13|spi_slave_0|tx_buf[7]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[7]~_emulated_q\,
	datab => \inst13|spi_slave_0|process_1~2_combout\,
	datac => \inst13|spi_slave_0|tx_buf[7]~33_combout\,
	datad => \inst13|spi_tx_data\(7),
	combout => \inst13|spi_slave_0|tx_buf[7]~34_combout\);

-- Location: LCCOMB_X7_Y7_N10
\inst13|spi_slave_0|tx_buf[7]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[7]~35_combout\ = \inst13|spi_slave_0|tx_buf[7]~33_combout\ $ (\inst13|spi_slave_0|tx_buf[6]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|spi_slave_0|tx_buf[7]~33_combout\,
	datad => \inst13|spi_slave_0|tx_buf[6]~38_combout\,
	combout => \inst13|spi_slave_0|tx_buf[7]~35_combout\);

-- Location: LCCOMB_X7_Y7_N12
\inst9|LPM_MUX_component|auto_generated|result_node[7]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|LPM_MUX_component|auto_generated|result_node[7]~8_combout\ = (\SW1~input_o\ & \inst15|sweep_duration_A\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW1~input_o\,
	datad => \inst15|sweep_duration_A\(7),
	combout => \inst9|LPM_MUX_component|auto_generated|result_node[7]~8_combout\);

-- Location: FF_X8_Y7_N9
\inst13|spi_slave_0|tx_buf[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[6]~39_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[6]~_emulated_q\);

-- Location: FF_X8_Y7_N27
\inst13|spi_tx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst9|LPM_MUX_component|auto_generated|result_node[6]~9_combout\,
	ena => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(6));

-- Location: LCCOMB_X8_Y7_N4
\inst13|spi_slave_0|tx_buf[6]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[6]~38_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(6))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[6]~_emulated_q\ $ 
-- (((\inst13|spi_slave_0|tx_buf[6]~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|process_1~2_combout\,
	datab => \inst13|spi_slave_0|tx_buf[6]~_emulated_q\,
	datac => \inst13|spi_tx_data\(6),
	datad => \inst13|spi_slave_0|tx_buf[6]~37_combout\,
	combout => \inst13|spi_slave_0|tx_buf[6]~38_combout\);

-- Location: LCCOMB_X8_Y7_N8
\inst13|spi_slave_0|tx_buf[6]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[6]~39_combout\ = \inst13|spi_slave_0|tx_buf[6]~37_combout\ $ (\inst13|spi_slave_0|tx_buf[5]~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[6]~37_combout\,
	datad => \inst13|spi_slave_0|tx_buf[5]~42_combout\,
	combout => \inst13|spi_slave_0|tx_buf[6]~39_combout\);

-- Location: LCCOMB_X8_Y7_N26
\inst9|LPM_MUX_component|auto_generated|result_node[6]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|LPM_MUX_component|auto_generated|result_node[6]~9_combout\ = (\SW1~input_o\ & \inst15|sweep_duration_A\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW1~input_o\,
	datac => \inst15|sweep_duration_A\(6),
	combout => \inst9|LPM_MUX_component|auto_generated|result_node[6]~9_combout\);

-- Location: FF_X8_Y7_N7
\inst13|spi_slave_0|tx_buf[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[5]~43_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[5]~_emulated_q\);

-- Location: FF_X8_Y7_N25
\inst13|spi_tx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst9|LPM_MUX_component|auto_generated|result_node[5]~10_combout\,
	ena => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(5));

-- Location: LCCOMB_X8_Y7_N2
\inst13|spi_slave_0|tx_buf[5]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[5]~42_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_tx_data\(5))) # (!\inst13|spi_slave_0|process_1~2_combout\ & ((\inst13|spi_slave_0|tx_buf[5]~41_combout\ $ (\inst13|spi_slave_0|tx_buf[5]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|process_1~2_combout\,
	datab => \inst13|spi_tx_data\(5),
	datac => \inst13|spi_slave_0|tx_buf[5]~41_combout\,
	datad => \inst13|spi_slave_0|tx_buf[5]~_emulated_q\,
	combout => \inst13|spi_slave_0|tx_buf[5]~42_combout\);

-- Location: LCCOMB_X8_Y7_N6
\inst13|spi_slave_0|tx_buf[5]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[5]~43_combout\ = \inst13|spi_slave_0|tx_buf[5]~41_combout\ $ (\inst13|spi_slave_0|tx_buf[4]~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[5]~41_combout\,
	datad => \inst13|spi_slave_0|tx_buf[4]~46_combout\,
	combout => \inst13|spi_slave_0|tx_buf[5]~43_combout\);

-- Location: LCCOMB_X8_Y7_N24
\inst9|LPM_MUX_component|auto_generated|result_node[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|LPM_MUX_component|auto_generated|result_node[5]~10_combout\ = (\SW1~input_o\ & \inst15|sweep_duration_A\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW1~input_o\,
	datac => \inst15|sweep_duration_A\(5),
	combout => \inst9|LPM_MUX_component|auto_generated|result_node[5]~10_combout\);

-- Location: FF_X8_Y7_N21
\inst13|spi_slave_0|tx_buf[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[4]~47_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[4]~_emulated_q\);

-- Location: FF_X8_Y7_N31
\inst13|spi_tx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst9|LPM_MUX_component|auto_generated|result_node[4]~11_combout\,
	ena => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(4));

-- Location: LCCOMB_X8_Y7_N0
\inst13|spi_slave_0|tx_buf[4]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[4]~46_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(4))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[4]~45_combout\ $ 
-- (((\inst13|spi_slave_0|tx_buf[4]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|process_1~2_combout\,
	datab => \inst13|spi_slave_0|tx_buf[4]~45_combout\,
	datac => \inst13|spi_tx_data\(4),
	datad => \inst13|spi_slave_0|tx_buf[4]~_emulated_q\,
	combout => \inst13|spi_slave_0|tx_buf[4]~46_combout\);

-- Location: LCCOMB_X8_Y7_N20
\inst13|spi_slave_0|tx_buf[4]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[4]~47_combout\ = \inst13|spi_slave_0|tx_buf[4]~45_combout\ $ (\inst13|spi_slave_0|tx_buf[3]~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[4]~45_combout\,
	datac => \inst13|spi_slave_0|tx_buf[3]~50_combout\,
	combout => \inst13|spi_slave_0|tx_buf[4]~47_combout\);

-- Location: LCCOMB_X8_Y7_N30
\inst9|LPM_MUX_component|auto_generated|result_node[4]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|LPM_MUX_component|auto_generated|result_node[4]~11_combout\ = (\SW1~input_o\ & \inst15|sweep_duration_A\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW1~input_o\,
	datac => \inst15|sweep_duration_A\(4),
	combout => \inst9|LPM_MUX_component|auto_generated|result_node[4]~11_combout\);

-- Location: FF_X8_Y7_N11
\inst13|spi_slave_0|tx_buf[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[3]~51_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[3]~_emulated_q\);

-- Location: FF_X8_Y7_N13
\inst13|spi_tx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst9|LPM_MUX_component|auto_generated|result_node[3]~12_combout\,
	ena => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(3));

-- Location: LCCOMB_X8_Y7_N14
\inst13|spi_slave_0|tx_buf[3]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[3]~50_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(3))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[3]~_emulated_q\ $ 
-- ((\inst13|spi_slave_0|tx_buf[3]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[3]~_emulated_q\,
	datab => \inst13|spi_slave_0|process_1~2_combout\,
	datac => \inst13|spi_slave_0|tx_buf[3]~49_combout\,
	datad => \inst13|spi_tx_data\(3),
	combout => \inst13|spi_slave_0|tx_buf[3]~50_combout\);

-- Location: LCCOMB_X8_Y7_N10
\inst13|spi_slave_0|tx_buf[3]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[3]~51_combout\ = \inst13|spi_slave_0|tx_buf[3]~49_combout\ $ (\inst13|spi_slave_0|tx_buf[2]~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|spi_slave_0|tx_buf[3]~49_combout\,
	datad => \inst13|spi_slave_0|tx_buf[2]~54_combout\,
	combout => \inst13|spi_slave_0|tx_buf[3]~51_combout\);

-- Location: LCCOMB_X8_Y7_N12
\inst9|LPM_MUX_component|auto_generated|result_node[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|LPM_MUX_component|auto_generated|result_node[3]~12_combout\ = (\SW1~input_o\ & \inst15|sweep_duration_A\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW1~input_o\,
	datad => \inst15|sweep_duration_A\(3),
	combout => \inst9|LPM_MUX_component|auto_generated|result_node[3]~12_combout\);

-- Location: FF_X8_Y6_N7
\inst13|spi_slave_0|tx_buf[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[2]~55_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[2]~_emulated_q\);

-- Location: FF_X8_Y6_N25
\inst13|spi_tx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst9|LPM_MUX_component|auto_generated|result_node[2]~13_combout\,
	ena => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(2));

-- Location: LCCOMB_X8_Y6_N2
\inst13|spi_slave_0|tx_buf[2]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[2]~54_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(2))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[2]~_emulated_q\ $ 
-- ((\inst13|spi_slave_0|tx_buf[2]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[2]~_emulated_q\,
	datab => \inst13|spi_slave_0|tx_buf[2]~53_combout\,
	datac => \inst13|spi_slave_0|process_1~2_combout\,
	datad => \inst13|spi_tx_data\(2),
	combout => \inst13|spi_slave_0|tx_buf[2]~54_combout\);

-- Location: LCCOMB_X8_Y6_N6
\inst13|spi_slave_0|tx_buf[2]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[2]~55_combout\ = \inst13|spi_slave_0|tx_buf[2]~53_combout\ $ (\inst13|spi_slave_0|tx_buf[1]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[2]~53_combout\,
	datac => \inst13|spi_slave_0|tx_buf[1]~58_combout\,
	combout => \inst13|spi_slave_0|tx_buf[2]~55_combout\);

-- Location: LCCOMB_X8_Y6_N24
\inst9|LPM_MUX_component|auto_generated|result_node[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|LPM_MUX_component|auto_generated|result_node[2]~13_combout\ = (\inst15|sweep_duration_A\(2) & \SW1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|sweep_duration_A\(2),
	datad => \SW1~input_o\,
	combout => \inst9|LPM_MUX_component|auto_generated|result_node[2]~13_combout\);

-- Location: FF_X8_Y6_N13
\inst13|spi_slave_0|tx_buf[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[1]~59_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[1]~_emulated_q\);

-- Location: FF_X8_Y6_N31
\inst13|spi_tx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst9|LPM_MUX_component|auto_generated|result_node[1]~14_combout\,
	ena => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(1));

-- Location: LCCOMB_X8_Y6_N8
\inst13|spi_slave_0|tx_buf[1]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[1]~58_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_tx_data\(1))) # (!\inst13|spi_slave_0|process_1~2_combout\ & ((\inst13|spi_slave_0|tx_buf[1]~57_combout\ $ (\inst13|spi_slave_0|tx_buf[1]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_tx_data\(1),
	datab => \inst13|spi_slave_0|tx_buf[1]~57_combout\,
	datac => \inst13|spi_slave_0|process_1~2_combout\,
	datad => \inst13|spi_slave_0|tx_buf[1]~_emulated_q\,
	combout => \inst13|spi_slave_0|tx_buf[1]~58_combout\);

-- Location: LCCOMB_X8_Y6_N12
\inst13|spi_slave_0|tx_buf[1]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[1]~59_combout\ = \inst13|spi_slave_0|tx_buf[1]~57_combout\ $ (\inst13|spi_slave_0|tx_buf[0]~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[1]~57_combout\,
	datac => \inst13|spi_slave_0|tx_buf[0]~62_combout\,
	combout => \inst13|spi_slave_0|tx_buf[1]~59_combout\);

-- Location: LCCOMB_X8_Y6_N30
\inst9|LPM_MUX_component|auto_generated|result_node[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|LPM_MUX_component|auto_generated|result_node[1]~14_combout\ = (\inst15|sweep_duration_A\(1) & \SW1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|sweep_duration_A\(1),
	datad => \SW1~input_o\,
	combout => \inst9|LPM_MUX_component|auto_generated|result_node[1]~14_combout\);

-- Location: FF_X8_Y6_N27
\inst13|spi_slave_0|tx_buf[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[0]~63_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[0]~_emulated_q\);

-- Location: FF_X8_Y6_N5
\inst13|spi_tx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst9|LPM_MUX_component|auto_generated|result_node\(0),
	ena => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(0));

-- Location: LCCOMB_X8_Y6_N14
\inst13|spi_slave_0|tx_buf[0]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[0]~62_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(0))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[0]~61_combout\ $ 
-- (((\inst13|spi_slave_0|tx_buf[0]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[0]~61_combout\,
	datab => \inst13|spi_tx_data\(0),
	datac => \inst13|spi_slave_0|process_1~2_combout\,
	datad => \inst13|spi_slave_0|tx_buf[0]~_emulated_q\,
	combout => \inst13|spi_slave_0|tx_buf[0]~62_combout\);

-- Location: LCCOMB_X8_Y6_N26
\inst13|spi_slave_0|tx_buf[0]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[0]~63_combout\ = \inst13|spi_slave_0|tx_buf[0]~61_combout\ $ (\inst13|spi_slave_0|tx_buf[15]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|spi_slave_0|tx_buf[0]~61_combout\,
	datad => \inst13|spi_slave_0|tx_buf[15]~2_combout\,
	combout => \inst13|spi_slave_0|tx_buf[0]~63_combout\);

-- Location: LCCOMB_X8_Y6_N4
\inst9|LPM_MUX_component|auto_generated|result_node[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|LPM_MUX_component|auto_generated|result_node\(0) = (\inst15|sweep_duration_A\(0)) # (!\SW1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|sweep_duration_A\(0),
	datad => \SW1~input_o\,
	combout => \inst9|LPM_MUX_component|auto_generated|result_node\(0));

-- Location: LCCOMB_X10_Y8_N30
\inst15|stop_valid_sync~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~111_combout\ = (!\inst15|stop_valid_sync\(16) & (!\inst15|stop_valid_sync\(15) & (!\inst15|stop_valid_sync\(17) & \inst15|stop_valid_sync~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync\(16),
	datab => \inst15|stop_valid_sync\(15),
	datac => \inst15|stop_valid_sync\(17),
	datad => \inst15|stop_valid_sync~17_combout\,
	combout => \inst15|stop_valid_sync~111_combout\);

-- Location: LCCOMB_X8_Y11_N30
\inst15|start_valid_sync[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|start_valid_sync[3]~5_combout\ = ((\inst15|start_valid_sync\(31)) # (!\inst15|Equal0~9_combout\)) # (!\inst15|start_valid_sync[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|start_valid_sync[3]~2_combout\,
	datab => \inst15|Equal0~9_combout\,
	datad => \inst15|start_valid_sync\(31),
	combout => \inst15|start_valid_sync[3]~5_combout\);

-- Location: LCCOMB_X7_Y7_N28
\inst13|spi_slave_0|tx_buf[8]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[8]~29_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_tx_data\(8))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_slave_0|tx_buf[8]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_tx_data\(8),
	datab => \inst13|spi_slave_0|tx_buf[8]~29_combout\,
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[8]~29_combout\);

-- Location: LCCOMB_X7_Y7_N22
\inst13|spi_slave_0|tx_buf[7]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[7]~33_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_tx_data\(7))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_slave_0|tx_buf[7]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_tx_data\(7),
	datac => \inst13|spi_slave_0|tx_buf[7]~33_combout\,
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[7]~33_combout\);

-- Location: LCCOMB_X8_Y7_N16
\inst13|spi_slave_0|tx_buf[6]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[6]~37_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_tx_data\(6)))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_slave_0|tx_buf[6]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[6]~37_combout\,
	datac => \inst13|spi_tx_data\(6),
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[6]~37_combout\);

-- Location: LCCOMB_X8_Y7_N18
\inst13|spi_slave_0|tx_buf[5]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[5]~41_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_tx_data\(5))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_slave_0|tx_buf[5]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_tx_data\(5),
	datac => \inst13|spi_slave_0|tx_buf[5]~41_combout\,
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[5]~41_combout\);

-- Location: LCCOMB_X8_Y7_N28
\inst13|spi_slave_0|tx_buf[4]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[4]~45_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_tx_data\(4)))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_slave_0|tx_buf[4]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[4]~45_combout\,
	datac => \inst13|spi_tx_data\(4),
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[4]~45_combout\);

-- Location: LCCOMB_X8_Y7_N22
\inst13|spi_slave_0|tx_buf[3]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[3]~49_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_tx_data\(3))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_slave_0|tx_buf[3]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_tx_data\(3),
	datac => \inst13|spi_slave_0|tx_buf[3]~49_combout\,
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[3]~49_combout\);

-- Location: LCCOMB_X8_Y6_N18
\inst13|spi_slave_0|tx_buf[2]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[2]~53_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_tx_data\(2))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_slave_0|tx_buf[2]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_tx_data\(2),
	datac => \inst13|spi_slave_0|tx_buf[2]~53_combout\,
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[2]~53_combout\);

-- Location: LCCOMB_X8_Y6_N20
\inst13|spi_slave_0|tx_buf[1]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[1]~57_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_tx_data\(1)))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_slave_0|tx_buf[1]~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[1]~57_combout\,
	datac => \inst13|spi_tx_data\(1),
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[1]~57_combout\);

-- Location: LCCOMB_X8_Y6_N22
\inst13|spi_slave_0|tx_buf[0]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[0]~61_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_tx_data\(0))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_slave_0|tx_buf[0]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_tx_data\(0),
	datac => \inst13|spi_slave_0|tx_buf[0]~61_combout\,
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[0]~61_combout\);

-- Location: IOIBUF_X1_Y0_N15
\sensor0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensor0,
	o => \sensor0~input_o\);

-- Location: LCCOMB_X7_Y9_N10
\inst15|start_valid_sync[29]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|start_valid_sync[29]~feeder_combout\ = \inst15|t_0\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst15|t_0\(29),
	combout => \inst15|start_valid_sync[29]~feeder_combout\);

-- Location: LCCOMB_X7_Y8_N10
\inst15|start_valid_sync[28]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|start_valid_sync[28]~feeder_combout\ = \inst15|t_0\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst15|t_0\(28),
	combout => \inst15|start_valid_sync[28]~feeder_combout\);

-- Location: LCCOMB_X7_Y9_N28
\inst15|start_valid_sync[27]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|start_valid_sync[27]~feeder_combout\ = \inst15|t_0\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst15|t_0\(27),
	combout => \inst15|start_valid_sync[27]~feeder_combout\);

-- Location: LCCOMB_X8_Y9_N16
\inst15|start_valid_sync[25]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|start_valid_sync[25]~feeder_combout\ = \inst15|t_0\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst15|t_0\(25),
	combout => \inst15|start_valid_sync[25]~feeder_combout\);

-- Location: LCCOMB_X7_Y8_N30
\inst15|start_valid_sync[24]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|start_valid_sync[24]~feeder_combout\ = \inst15|t_0\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst15|t_0\(24),
	combout => \inst15|start_valid_sync[24]~feeder_combout\);

-- Location: LCCOMB_X7_Y9_N16
\inst15|start_valid_sync[21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|start_valid_sync[21]~feeder_combout\ = \inst15|t_0\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst15|t_0\(21),
	combout => \inst15|start_valid_sync[21]~feeder_combout\);

-- Location: LCCOMB_X7_Y9_N26
\inst15|start_valid_sync[20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|start_valid_sync[20]~feeder_combout\ = \inst15|t_0\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst15|t_0\(20),
	combout => \inst15|start_valid_sync[20]~feeder_combout\);

-- Location: LCCOMB_X7_Y9_N0
\inst15|start_valid_sync[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|start_valid_sync[17]~feeder_combout\ = \inst15|t_0\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst15|t_0\(17),
	combout => \inst15|start_valid_sync[17]~feeder_combout\);

-- Location: LCCOMB_X7_Y9_N12
\inst15|start_valid_sync[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|start_valid_sync[15]~feeder_combout\ = \inst15|t_0\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst15|t_0\(15),
	combout => \inst15|start_valid_sync[15]~feeder_combout\);

-- Location: LCCOMB_X9_Y8_N26
\inst15|start_valid_sync[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|start_valid_sync[7]~feeder_combout\ = \inst15|t_0\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst15|t_0\(7),
	combout => \inst15|start_valid_sync[7]~feeder_combout\);

-- Location: IOOBUF_X19_Y0_N23
\spi_miso~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|spi_slave_0|miso~reg0_q\,
	oe => \inst13|spi_slave_0|miso~en_q\,
	devoe => ww_devoe,
	o => ww_spi_miso);

-- Location: IOOBUF_X0_Y27_N16
\sensor0_led~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|prev_data~q\,
	devoe => ww_devoe,
	o => ww_sensor0_led);

-- Location: IOOBUF_X0_Y24_N23
\led_fifo_full~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Full~q\,
	devoe => ww_devoe,
	o => ww_led_fifo_full);

-- Location: IOOBUF_X19_Y0_N16
\spi_trdy~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|spi_slave_0|ALT_INV_trdy~q\,
	devoe => ww_devoe,
	o => ww_spi_trdy);

-- Location: IOOBUF_X0_Y27_N9
\error_led~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_error_led);

-- Location: IOOBUF_X23_Y29_N9
\LCD0[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_LCD0(7));

-- Location: IOOBUF_X26_Y29_N16
\LCD0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_LCD0(6));

-- Location: IOOBUF_X28_Y29_N23
\LCD0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LCD0(5));

-- Location: IOOBUF_X26_Y29_N9
\LCD0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LCD0(4));

-- Location: IOOBUF_X28_Y29_N30
\LCD0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LCD0(3));

-- Location: IOOBUF_X26_Y29_N2
\LCD0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LCD0(2));

-- Location: IOOBUF_X21_Y29_N30
\LCD0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LCD0(1));

-- Location: IOOBUF_X21_Y29_N23
\LCD0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LCD0(0));

-- Location: IOOBUF_X26_Y29_N30
\LCD1[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_LCD1(7));

-- Location: IOOBUF_X26_Y29_N23
\LCD1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_LCD1(6));

-- Location: IOOBUF_X28_Y29_N16
\LCD1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LCD1(5));

-- Location: IOOBUF_X23_Y29_N30
\LCD1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LCD1(4));

-- Location: IOOBUF_X23_Y29_N23
\LCD1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LCD1(3));

-- Location: IOOBUF_X23_Y29_N2
\LCD1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LCD1(2));

-- Location: IOOBUF_X21_Y29_N9
\LCD1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LCD1(1));

-- Location: IOOBUF_X21_Y29_N2
\LCD1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LCD1(0));

-- Location: IOOBUF_X32_Y29_N16
\LCD2[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_LCD2(7));

-- Location: IOOBUF_X37_Y29_N2
\LCD2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_LCD2(6));

-- Location: IOOBUF_X30_Y29_N23
\LCD2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LCD2(5));

-- Location: IOOBUF_X30_Y29_N16
\LCD2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LCD2(4));

-- Location: IOOBUF_X30_Y29_N2
\LCD2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LCD2(3));

-- Location: IOOBUF_X28_Y29_N2
\LCD2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LCD2(2));

-- Location: IOOBUF_X30_Y29_N30
\LCD2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LCD2(1));

-- Location: IOOBUF_X32_Y29_N30
\LCD2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LCD2(0));

-- Location: IOOBUF_X39_Y29_N23
\LCD3[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_LCD3(7));

-- Location: IOOBUF_X39_Y29_N30
\LCD3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_LCD3(6));

-- Location: IOOBUF_X37_Y29_N30
\LCD3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LCD3(5));

-- Location: IOOBUF_X37_Y29_N23
\LCD3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LCD3(4));

-- Location: IOOBUF_X32_Y29_N2
\LCD3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LCD3(3));

-- Location: IOOBUF_X32_Y29_N9
\LCD3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LCD3(2));

-- Location: IOOBUF_X39_Y29_N16
\LCD3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LCD3(1));

-- Location: IOOBUF_X32_Y29_N23
\LCD3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LCD3(0));

-- Location: IOOBUF_X0_Y21_N16
\led[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|temp\(16),
	devoe => ww_devoe,
	o => ww_led(3));

-- Location: IOOBUF_X0_Y21_N23
\led[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|temp\(17),
	devoe => ww_devoe,
	o => ww_led(2));

-- Location: IOOBUF_X0_Y20_N2
\led[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|temp\(18),
	devoe => ww_devoe,
	o => ww_led(1));

-- Location: IOOBUF_X0_Y20_N9
\led[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|temp\(19),
	devoe => ww_devoe,
	o => ww_led(0));

-- Location: IOIBUF_X9_Y0_N15
\spi_sclk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_spi_sclk,
	o => \spi_sclk~input_o\);

-- Location: IOIBUF_X19_Y0_N8
\spi_mosi~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_spi_mosi,
	o => \spi_mosi~input_o\);

-- Location: LCCOMB_X20_Y1_N28
\inst13|spi_slave_0|bit_cnt[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|bit_cnt[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst13|spi_slave_0|bit_cnt[1]~feeder_combout\);

-- Location: IOIBUF_X3_Y0_N29
\spi_ss_n~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_spi_ss_n,
	o => \spi_ss_n~input_o\);

-- Location: FF_X20_Y1_N29
\inst13|spi_slave_0|bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|bit_cnt[1]~feeder_combout\,
	clrn => \ALT_INV_spi_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(1));

-- Location: LCCOMB_X20_Y1_N18
\inst13|spi_slave_0|bit_cnt[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|bit_cnt[2]~0_combout\ = !\inst13|spi_slave_0|bit_cnt\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|spi_slave_0|bit_cnt\(1),
	combout => \inst13|spi_slave_0|bit_cnt[2]~0_combout\);

-- Location: FF_X20_Y1_N19
\inst13|spi_slave_0|bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|bit_cnt[2]~0_combout\,
	clrn => \ALT_INV_spi_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(2));

-- Location: LCCOMB_X19_Y1_N14
\inst13|spi_slave_0|rd_add~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|rd_add~0_combout\ = (\inst13|spi_slave_0|bit_cnt\(2) & (\spi_mosi~input_o\)) # (!\inst13|spi_slave_0|bit_cnt\(2) & ((\inst13|spi_slave_0|rd_add~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_mosi~input_o\,
	datac => \inst13|spi_slave_0|rd_add~q\,
	datad => \inst13|spi_slave_0|bit_cnt\(2),
	combout => \inst13|spi_slave_0|rd_add~0_combout\);

-- Location: FF_X19_Y1_N15
\inst13|spi_slave_0|rd_add\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_sclk~input_o\,
	d => \inst13|spi_slave_0|rd_add~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|rd_add~q\);

-- Location: IOIBUF_X0_Y24_N1
\SW0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW0,
	o => \SW0~input_o\);

-- Location: FF_X21_Y1_N29
\inst13|spi_tx_ena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	asdata => \SW0~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_ena~q\);

-- Location: LCCOMB_X21_Y1_N28
\inst13|spi_slave_0|process_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|process_1~2_combout\ = (\spi_ss_n~input_o\ & \inst13|spi_tx_ena~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_ss_n~input_o\,
	datac => \inst13|spi_tx_ena~q\,
	combout => \inst13|spi_slave_0|process_1~2_combout\);

-- Location: CLKCTRL_G15
\inst13|spi_slave_0|process_1~2clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst13|spi_slave_0|process_1~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst13|spi_slave_0|process_1~2clkctrl_outclk\);

-- Location: LCCOMB_X8_Y6_N16
\inst13|spi_slave_0|tx_buf[15]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[15]~1_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_tx_data\(15))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_slave_0|tx_buf[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_tx_data\(15),
	datab => \inst13|spi_slave_0|tx_buf[15]~1_combout\,
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[15]~1_combout\);

-- Location: IOIBUF_X0_Y27_N1
\SW1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1,
	o => \SW1~input_o\);

-- Location: LCCOMB_X6_Y12_N0
\inst1|temp[31]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|temp[31]~93_combout\ = !\inst1|temp\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|temp\(31),
	combout => \inst1|temp[31]~93_combout\);

-- Location: FF_X6_Y12_N1
\inst1|temp[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|temp[31]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(31));

-- Location: LCCOMB_X6_Y12_N2
\inst1|temp[30]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|temp[30]~31_combout\ = (\inst1|temp\(30) & (\inst1|temp\(31) $ (VCC))) # (!\inst1|temp\(30) & (\inst1|temp\(31) & VCC))
-- \inst1|temp[30]~32\ = CARRY((\inst1|temp\(30) & \inst1|temp\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(30),
	datab => \inst1|temp\(31),
	datad => VCC,
	combout => \inst1|temp[30]~31_combout\,
	cout => \inst1|temp[30]~32\);

-- Location: LCCOMB_X6_Y12_N4
\inst1|temp[29]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|temp[29]~33_combout\ = (\inst1|temp\(29) & (!\inst1|temp[30]~32\)) # (!\inst1|temp\(29) & ((\inst1|temp[30]~32\) # (GND)))
-- \inst1|temp[29]~34\ = CARRY((!\inst1|temp[30]~32\) # (!\inst1|temp\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|temp\(29),
	datad => VCC,
	cin => \inst1|temp[30]~32\,
	combout => \inst1|temp[29]~33_combout\,
	cout => \inst1|temp[29]~34\);

-- Location: FF_X6_Y12_N5
\inst1|temp[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|temp[29]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(29));

-- Location: LCCOMB_X6_Y12_N6
\inst1|temp[28]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|temp[28]~35_combout\ = (\inst1|temp\(28) & (\inst1|temp[29]~34\ $ (GND))) # (!\inst1|temp\(28) & (!\inst1|temp[29]~34\ & VCC))
-- \inst1|temp[28]~36\ = CARRY((\inst1|temp\(28) & !\inst1|temp[29]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(28),
	datad => VCC,
	cin => \inst1|temp[29]~34\,
	combout => \inst1|temp[28]~35_combout\,
	cout => \inst1|temp[28]~36\);

-- Location: LCCOMB_X6_Y12_N8
\inst1|temp[27]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|temp[27]~37_combout\ = (\inst1|temp\(27) & (!\inst1|temp[28]~36\)) # (!\inst1|temp\(27) & ((\inst1|temp[28]~36\) # (GND)))
-- \inst1|temp[27]~38\ = CARRY((!\inst1|temp[28]~36\) # (!\inst1|temp\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|temp\(27),
	datad => VCC,
	cin => \inst1|temp[28]~36\,
	combout => \inst1|temp[27]~37_combout\,
	cout => \inst1|temp[27]~38\);

-- Location: FF_X6_Y12_N9
\inst1|temp[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|temp[27]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(27));

-- Location: LCCOMB_X6_Y12_N10
\inst1|temp[26]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|temp[26]~39_combout\ = (\inst1|temp\(26) & (\inst1|temp[27]~38\ $ (GND))) # (!\inst1|temp\(26) & (!\inst1|temp[27]~38\ & VCC))
-- \inst1|temp[26]~40\ = CARRY((\inst1|temp\(26) & !\inst1|temp[27]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(26),
	datad => VCC,
	cin => \inst1|temp[27]~38\,
	combout => \inst1|temp[26]~39_combout\,
	cout => \inst1|temp[26]~40\);

-- Location: LCCOMB_X6_Y12_N12
\inst1|temp[25]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|temp[25]~41_combout\ = (\inst1|temp\(25) & (!\inst1|temp[26]~40\)) # (!\inst1|temp\(25) & ((\inst1|temp[26]~40\) # (GND)))
-- \inst1|temp[25]~42\ = CARRY((!\inst1|temp[26]~40\) # (!\inst1|temp\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(25),
	datad => VCC,
	cin => \inst1|temp[26]~40\,
	combout => \inst1|temp[25]~41_combout\,
	cout => \inst1|temp[25]~42\);

-- Location: LCCOMB_X6_Y12_N14
\inst1|temp[24]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|temp[24]~43_combout\ = (\inst1|temp\(24) & (\inst1|temp[25]~42\ $ (GND))) # (!\inst1|temp\(24) & (!\inst1|temp[25]~42\ & VCC))
-- \inst1|temp[24]~44\ = CARRY((\inst1|temp\(24) & !\inst1|temp[25]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|temp\(24),
	datad => VCC,
	cin => \inst1|temp[25]~42\,
	combout => \inst1|temp[24]~43_combout\,
	cout => \inst1|temp[24]~44\);

-- Location: FF_X6_Y12_N15
\inst1|temp[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|temp[24]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(24));

-- Location: LCCOMB_X6_Y12_N16
\inst1|temp[23]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|temp[23]~45_combout\ = (\inst1|temp\(23) & (!\inst1|temp[24]~44\)) # (!\inst1|temp\(23) & ((\inst1|temp[24]~44\) # (GND)))
-- \inst1|temp[23]~46\ = CARRY((!\inst1|temp[24]~44\) # (!\inst1|temp\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|temp\(23),
	datad => VCC,
	cin => \inst1|temp[24]~44\,
	combout => \inst1|temp[23]~45_combout\,
	cout => \inst1|temp[23]~46\);

-- Location: FF_X6_Y12_N17
\inst1|temp[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|temp[23]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(23));

-- Location: LCCOMB_X6_Y12_N18
\inst1|temp[22]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|temp[22]~47_combout\ = (\inst1|temp\(22) & (\inst1|temp[23]~46\ $ (GND))) # (!\inst1|temp\(22) & (!\inst1|temp[23]~46\ & VCC))
-- \inst1|temp[22]~48\ = CARRY((\inst1|temp\(22) & !\inst1|temp[23]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|temp\(22),
	datad => VCC,
	cin => \inst1|temp[23]~46\,
	combout => \inst1|temp[22]~47_combout\,
	cout => \inst1|temp[22]~48\);

-- Location: FF_X6_Y12_N19
\inst1|temp[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|temp[22]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(22));

-- Location: LCCOMB_X6_Y12_N20
\inst1|temp[21]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|temp[21]~49_combout\ = (\inst1|temp\(21) & (!\inst1|temp[22]~48\)) # (!\inst1|temp\(21) & ((\inst1|temp[22]~48\) # (GND)))
-- \inst1|temp[21]~50\ = CARRY((!\inst1|temp[22]~48\) # (!\inst1|temp\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|temp\(21),
	datad => VCC,
	cin => \inst1|temp[22]~48\,
	combout => \inst1|temp[21]~49_combout\,
	cout => \inst1|temp[21]~50\);

-- Location: FF_X6_Y12_N21
\inst1|temp[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|temp[21]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(21));

-- Location: LCCOMB_X6_Y12_N22
\inst1|temp[20]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|temp[20]~51_combout\ = (\inst1|temp\(20) & (\inst1|temp[21]~50\ $ (GND))) # (!\inst1|temp\(20) & (!\inst1|temp[21]~50\ & VCC))
-- \inst1|temp[20]~52\ = CARRY((\inst1|temp\(20) & !\inst1|temp[21]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(20),
	datad => VCC,
	cin => \inst1|temp[21]~50\,
	combout => \inst1|temp[20]~51_combout\,
	cout => \inst1|temp[20]~52\);

-- Location: LCCOMB_X6_Y12_N24
\inst1|temp[19]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|temp[19]~53_combout\ = (\inst1|temp\(19) & (!\inst1|temp[20]~52\)) # (!\inst1|temp\(19) & ((\inst1|temp[20]~52\) # (GND)))
-- \inst1|temp[19]~54\ = CARRY((!\inst1|temp[20]~52\) # (!\inst1|temp\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|temp\(19),
	datad => VCC,
	cin => \inst1|temp[20]~52\,
	combout => \inst1|temp[19]~53_combout\,
	cout => \inst1|temp[19]~54\);

-- Location: FF_X6_Y12_N25
\inst1|temp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|temp[19]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(19));

-- Location: LCCOMB_X6_Y12_N26
\inst1|temp[18]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|temp[18]~55_combout\ = (\inst1|temp\(18) & (\inst1|temp[19]~54\ $ (GND))) # (!\inst1|temp\(18) & (!\inst1|temp[19]~54\ & VCC))
-- \inst1|temp[18]~56\ = CARRY((\inst1|temp\(18) & !\inst1|temp[19]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(18),
	datad => VCC,
	cin => \inst1|temp[19]~54\,
	combout => \inst1|temp[18]~55_combout\,
	cout => \inst1|temp[18]~56\);

-- Location: LCCOMB_X6_Y12_N28
\inst1|temp[17]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|temp[17]~57_combout\ = (\inst1|temp\(17) & (!\inst1|temp[18]~56\)) # (!\inst1|temp\(17) & ((\inst1|temp[18]~56\) # (GND)))
-- \inst1|temp[17]~58\ = CARRY((!\inst1|temp[18]~56\) # (!\inst1|temp\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|temp\(17),
	datad => VCC,
	cin => \inst1|temp[18]~56\,
	combout => \inst1|temp[17]~57_combout\,
	cout => \inst1|temp[17]~58\);

-- Location: FF_X6_Y12_N29
\inst1|temp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|temp[17]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(17));

-- Location: FF_X7_Y12_N29
\inst15|t_0[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sensor0~input_o\,
	asdata => \inst1|temp\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|t_0\(14));

-- Location: LCCOMB_X6_Y12_N30
\inst1|temp[16]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|temp[16]~59_combout\ = (\inst1|temp\(16) & (\inst1|temp[17]~58\ $ (GND))) # (!\inst1|temp\(16) & (!\inst1|temp[17]~58\ & VCC))
-- \inst1|temp[16]~60\ = CARRY((\inst1|temp\(16) & !\inst1|temp[17]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(16),
	datad => VCC,
	cin => \inst1|temp[17]~58\,
	combout => \inst1|temp[16]~59_combout\,
	cout => \inst1|temp[16]~60\);

-- Location: LCCOMB_X6_Y11_N0
\inst1|temp[15]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|temp[15]~61_combout\ = (\inst1|temp\(15) & (!\inst1|temp[16]~60\)) # (!\inst1|temp\(15) & ((\inst1|temp[16]~60\) # (GND)))
-- \inst1|temp[15]~62\ = CARRY((!\inst1|temp[16]~60\) # (!\inst1|temp\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|temp\(15),
	datad => VCC,
	cin => \inst1|temp[16]~60\,
	combout => \inst1|temp[15]~61_combout\,
	cout => \inst1|temp[15]~62\);

-- Location: FF_X6_Y11_N1
\inst1|temp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|temp[15]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(15));

-- Location: LCCOMB_X6_Y11_N2
\inst1|temp[14]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|temp[14]~63_combout\ = (\inst1|temp\(14) & (\inst1|temp[15]~62\ $ (GND))) # (!\inst1|temp\(14) & (!\inst1|temp[15]~62\ & VCC))
-- \inst1|temp[14]~64\ = CARRY((\inst1|temp\(14) & !\inst1|temp[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|temp\(14),
	datad => VCC,
	cin => \inst1|temp[15]~62\,
	combout => \inst1|temp[14]~63_combout\,
	cout => \inst1|temp[14]~64\);

-- Location: FF_X6_Y11_N3
\inst1|temp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|temp[14]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(14));

-- Location: LCCOMB_X6_Y11_N4
\inst1|temp[13]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|temp[13]~65_combout\ = (\inst1|temp\(13) & (!\inst1|temp[14]~64\)) # (!\inst1|temp\(13) & ((\inst1|temp[14]~64\) # (GND)))
-- \inst1|temp[13]~66\ = CARRY((!\inst1|temp[14]~64\) # (!\inst1|temp\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|temp\(13),
	datad => VCC,
	cin => \inst1|temp[14]~64\,
	combout => \inst1|temp[13]~65_combout\,
	cout => \inst1|temp[13]~66\);

-- Location: FF_X6_Y11_N5
\inst1|temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|temp[13]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(13));

-- Location: LCCOMB_X6_Y11_N6
\inst1|temp[12]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|temp[12]~67_combout\ = (\inst1|temp\(12) & (\inst1|temp[13]~66\ $ (GND))) # (!\inst1|temp\(12) & (!\inst1|temp[13]~66\ & VCC))
-- \inst1|temp[12]~68\ = CARRY((\inst1|temp\(12) & !\inst1|temp[13]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(12),
	datad => VCC,
	cin => \inst1|temp[13]~66\,
	combout => \inst1|temp[12]~67_combout\,
	cout => \inst1|temp[12]~68\);

-- Location: LCCOMB_X6_Y11_N8
\inst1|temp[11]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|temp[11]~69_combout\ = (\inst1|temp\(11) & (!\inst1|temp[12]~68\)) # (!\inst1|temp\(11) & ((\inst1|temp[12]~68\) # (GND)))
-- \inst1|temp[11]~70\ = CARRY((!\inst1|temp[12]~68\) # (!\inst1|temp\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|temp\(11),
	datad => VCC,
	cin => \inst1|temp[12]~68\,
	combout => \inst1|temp[11]~69_combout\,
	cout => \inst1|temp[11]~70\);

-- Location: FF_X6_Y11_N9
\inst1|temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|temp[11]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(11));

-- Location: LCCOMB_X6_Y11_N10
\inst1|temp[10]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|temp[10]~71_combout\ = (\inst1|temp\(10) & (\inst1|temp[11]~70\ $ (GND))) # (!\inst1|temp\(10) & (!\inst1|temp[11]~70\ & VCC))
-- \inst1|temp[10]~72\ = CARRY((\inst1|temp\(10) & !\inst1|temp[11]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(10),
	datad => VCC,
	cin => \inst1|temp[11]~70\,
	combout => \inst1|temp[10]~71_combout\,
	cout => \inst1|temp[10]~72\);

-- Location: LCCOMB_X6_Y11_N12
\inst1|temp[9]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|temp[9]~73_combout\ = (\inst1|temp\(9) & (!\inst1|temp[10]~72\)) # (!\inst1|temp\(9) & ((\inst1|temp[10]~72\) # (GND)))
-- \inst1|temp[9]~74\ = CARRY((!\inst1|temp[10]~72\) # (!\inst1|temp\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(9),
	datad => VCC,
	cin => \inst1|temp[10]~72\,
	combout => \inst1|temp[9]~73_combout\,
	cout => \inst1|temp[9]~74\);

-- Location: LCCOMB_X6_Y11_N14
\inst1|temp[8]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|temp[8]~75_combout\ = (\inst1|temp\(8) & (\inst1|temp[9]~74\ $ (GND))) # (!\inst1|temp\(8) & (!\inst1|temp[9]~74\ & VCC))
-- \inst1|temp[8]~76\ = CARRY((\inst1|temp\(8) & !\inst1|temp[9]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|temp\(8),
	datad => VCC,
	cin => \inst1|temp[9]~74\,
	combout => \inst1|temp[8]~75_combout\,
	cout => \inst1|temp[8]~76\);

-- Location: FF_X6_Y11_N15
\inst1|temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|temp[8]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(8));

-- Location: LCCOMB_X6_Y11_N16
\inst1|temp[7]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|temp[7]~77_combout\ = (\inst1|temp\(7) & (!\inst1|temp[8]~76\)) # (!\inst1|temp\(7) & ((\inst1|temp[8]~76\) # (GND)))
-- \inst1|temp[7]~78\ = CARRY((!\inst1|temp[8]~76\) # (!\inst1|temp\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|temp\(7),
	datad => VCC,
	cin => \inst1|temp[8]~76\,
	combout => \inst1|temp[7]~77_combout\,
	cout => \inst1|temp[7]~78\);

-- Location: FF_X6_Y11_N17
\inst1|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|temp[7]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(7));

-- Location: LCCOMB_X6_Y11_N18
\inst1|temp[6]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|temp[6]~79_combout\ = (\inst1|temp\(6) & (\inst1|temp[7]~78\ $ (GND))) # (!\inst1|temp\(6) & (!\inst1|temp[7]~78\ & VCC))
-- \inst1|temp[6]~80\ = CARRY((\inst1|temp\(6) & !\inst1|temp[7]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|temp\(6),
	datad => VCC,
	cin => \inst1|temp[7]~78\,
	combout => \inst1|temp[6]~79_combout\,
	cout => \inst1|temp[6]~80\);

-- Location: FF_X6_Y11_N19
\inst1|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|temp[6]~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(6));

-- Location: FF_X7_Y11_N17
\inst15|t_0[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sensor0~input_o\,
	asdata => \inst1|temp\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|t_0\(24));

-- Location: FF_X6_Y11_N13
\inst1|temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|temp[9]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(9));

-- Location: FF_X7_Y11_N13
\inst15|t_0[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sensor0~input_o\,
	asdata => \inst1|temp\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|t_0\(22));

-- Location: FF_X6_Y11_N11
\inst1|temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|temp[10]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(10));

-- Location: FF_X7_Y11_N11
\inst15|t_0[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sensor0~input_o\,
	asdata => \inst1|temp\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|t_0\(21));

-- Location: FF_X6_Y11_N7
\inst1|temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|temp[12]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(12));

-- Location: FF_X7_Y11_N1
\inst15|t_0[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sensor0~input_o\,
	asdata => \inst1|temp\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|t_0\(16));

-- Location: FF_X6_Y12_N31
\inst1|temp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|temp[16]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(16));

-- Location: FF_X7_Y12_N31
\inst15|t_0[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sensor0~input_o\,
	asdata => \inst1|temp\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|t_0\(15));

-- Location: FF_X6_Y12_N27
\inst1|temp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|temp[18]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(18));

-- Location: FF_X7_Y12_N27
\inst15|t_0[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sensor0~input_o\,
	asdata => \inst1|temp\(18),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|t_0\(13));

-- Location: FF_X7_Y12_N25
\inst15|t_0[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sensor0~input_o\,
	asdata => \inst1|temp\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|t_0\(12));

-- Location: FF_X6_Y12_N23
\inst1|temp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|temp[20]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(20));

-- Location: FF_X7_Y12_N19
\inst15|t_0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sensor0~input_o\,
	asdata => \inst1|temp\(22),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|t_0\(9));

-- Location: FF_X7_Y12_N17
\inst15|t_0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sensor0~input_o\,
	asdata => \inst1|temp\(23),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|t_0\(8));

-- Location: FF_X6_Y12_N13
\inst1|temp[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|temp[25]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(25));

-- Location: FF_X6_Y12_N11
\inst1|temp[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|temp[26]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(26));

-- Location: FF_X7_Y12_N11
\inst15|t_0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sensor0~input_o\,
	asdata => \inst1|temp\(26),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|t_0\(5));

-- Location: FF_X6_Y12_N7
\inst1|temp[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|temp[28]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(28));

-- Location: FF_X6_Y12_N3
\inst1|temp[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|temp[30]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(30));

-- Location: FF_X7_Y12_N1
\inst15|t_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sensor0~input_o\,
	asdata => \inst1|temp\(31),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|t_0\(0));

-- Location: LCCOMB_X7_Y12_N2
\inst15|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Add0~2_combout\ = (\inst15|t_0\(1) & ((\inst1|temp\(30) & (!\inst15|Add0~1\)) # (!\inst1|temp\(30) & ((\inst15|Add0~1\) # (GND))))) # (!\inst15|t_0\(1) & ((\inst1|temp\(30) & (\inst15|Add0~1\ & VCC)) # (!\inst1|temp\(30) & (!\inst15|Add0~1\))))
-- \inst15|Add0~3\ = CARRY((\inst15|t_0\(1) & ((!\inst15|Add0~1\) # (!\inst1|temp\(30)))) # (!\inst15|t_0\(1) & (!\inst1|temp\(30) & !\inst15|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|t_0\(1),
	datab => \inst1|temp\(30),
	datad => VCC,
	cin => \inst15|Add0~1\,
	combout => \inst15|Add0~2_combout\,
	cout => \inst15|Add0~3\);

-- Location: LCCOMB_X7_Y12_N4
\inst15|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Add0~4_combout\ = ((\inst15|t_0\(2) $ (\inst1|temp\(29) $ (\inst15|Add0~3\)))) # (GND)
-- \inst15|Add0~5\ = CARRY((\inst15|t_0\(2) & (\inst1|temp\(29) & !\inst15|Add0~3\)) # (!\inst15|t_0\(2) & ((\inst1|temp\(29)) # (!\inst15|Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|t_0\(2),
	datab => \inst1|temp\(29),
	datad => VCC,
	cin => \inst15|Add0~3\,
	combout => \inst15|Add0~4_combout\,
	cout => \inst15|Add0~5\);

-- Location: LCCOMB_X7_Y12_N6
\inst15|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Add0~6_combout\ = (\inst15|t_0\(3) & ((\inst1|temp\(28) & (!\inst15|Add0~5\)) # (!\inst1|temp\(28) & ((\inst15|Add0~5\) # (GND))))) # (!\inst15|t_0\(3) & ((\inst1|temp\(28) & (\inst15|Add0~5\ & VCC)) # (!\inst1|temp\(28) & (!\inst15|Add0~5\))))
-- \inst15|Add0~7\ = CARRY((\inst15|t_0\(3) & ((!\inst15|Add0~5\) # (!\inst1|temp\(28)))) # (!\inst15|t_0\(3) & (!\inst1|temp\(28) & !\inst15|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|t_0\(3),
	datab => \inst1|temp\(28),
	datad => VCC,
	cin => \inst15|Add0~5\,
	combout => \inst15|Add0~6_combout\,
	cout => \inst15|Add0~7\);

-- Location: LCCOMB_X7_Y12_N8
\inst15|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Add0~8_combout\ = ((\inst15|t_0\(4) $ (\inst1|temp\(27) $ (\inst15|Add0~7\)))) # (GND)
-- \inst15|Add0~9\ = CARRY((\inst15|t_0\(4) & (\inst1|temp\(27) & !\inst15|Add0~7\)) # (!\inst15|t_0\(4) & ((\inst1|temp\(27)) # (!\inst15|Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|t_0\(4),
	datab => \inst1|temp\(27),
	datad => VCC,
	cin => \inst15|Add0~7\,
	combout => \inst15|Add0~8_combout\,
	cout => \inst15|Add0~9\);

-- Location: LCCOMB_X7_Y12_N12
\inst15|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Add0~12_combout\ = ((\inst15|t_0\(6) $ (\inst1|temp\(25) $ (\inst15|Add0~11\)))) # (GND)
-- \inst15|Add0~13\ = CARRY((\inst15|t_0\(6) & (\inst1|temp\(25) & !\inst15|Add0~11\)) # (!\inst15|t_0\(6) & ((\inst1|temp\(25)) # (!\inst15|Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|t_0\(6),
	datab => \inst1|temp\(25),
	datad => VCC,
	cin => \inst15|Add0~11\,
	combout => \inst15|Add0~12_combout\,
	cout => \inst15|Add0~13\);

-- Location: LCCOMB_X7_Y11_N0
\inst15|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Add0~32_combout\ = ((\inst1|temp\(15) $ (\inst15|t_0\(16) $ (\inst15|Add0~31\)))) # (GND)
-- \inst15|Add0~33\ = CARRY((\inst1|temp\(15) & ((!\inst15|Add0~31\) # (!\inst15|t_0\(16)))) # (!\inst1|temp\(15) & (!\inst15|t_0\(16) & !\inst15|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(15),
	datab => \inst15|t_0\(16),
	datad => VCC,
	cin => \inst15|Add0~31\,
	combout => \inst15|Add0~32_combout\,
	cout => \inst15|Add0~33\);

-- Location: LCCOMB_X7_Y11_N2
\inst15|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Add0~34_combout\ = (\inst15|t_0\(17) & ((\inst1|temp\(14) & (!\inst15|Add0~33\)) # (!\inst1|temp\(14) & ((\inst15|Add0~33\) # (GND))))) # (!\inst15|t_0\(17) & ((\inst1|temp\(14) & (\inst15|Add0~33\ & VCC)) # (!\inst1|temp\(14) & 
-- (!\inst15|Add0~33\))))
-- \inst15|Add0~35\ = CARRY((\inst15|t_0\(17) & ((!\inst15|Add0~33\) # (!\inst1|temp\(14)))) # (!\inst15|t_0\(17) & (!\inst1|temp\(14) & !\inst15|Add0~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|t_0\(17),
	datab => \inst1|temp\(14),
	datad => VCC,
	cin => \inst15|Add0~33\,
	combout => \inst15|Add0~34_combout\,
	cout => \inst15|Add0~35\);

-- Location: LCCOMB_X7_Y11_N6
\inst15|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Add0~38_combout\ = (\inst15|t_0\(19) & ((\inst1|temp\(12) & (!\inst15|Add0~37\)) # (!\inst1|temp\(12) & ((\inst15|Add0~37\) # (GND))))) # (!\inst15|t_0\(19) & ((\inst1|temp\(12) & (\inst15|Add0~37\ & VCC)) # (!\inst1|temp\(12) & 
-- (!\inst15|Add0~37\))))
-- \inst15|Add0~39\ = CARRY((\inst15|t_0\(19) & ((!\inst15|Add0~37\) # (!\inst1|temp\(12)))) # (!\inst15|t_0\(19) & (!\inst1|temp\(12) & !\inst15|Add0~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|t_0\(19),
	datab => \inst1|temp\(12),
	datad => VCC,
	cin => \inst15|Add0~37\,
	combout => \inst15|Add0~38_combout\,
	cout => \inst15|Add0~39\);

-- Location: LCCOMB_X7_Y11_N8
\inst15|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Add0~40_combout\ = ((\inst15|t_0\(20) $ (\inst1|temp\(11) $ (\inst15|Add0~39\)))) # (GND)
-- \inst15|Add0~41\ = CARRY((\inst15|t_0\(20) & (\inst1|temp\(11) & !\inst15|Add0~39\)) # (!\inst15|t_0\(20) & ((\inst1|temp\(11)) # (!\inst15|Add0~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|t_0\(20),
	datab => \inst1|temp\(11),
	datad => VCC,
	cin => \inst15|Add0~39\,
	combout => \inst15|Add0~40_combout\,
	cout => \inst15|Add0~41\);

-- Location: LCCOMB_X7_Y11_N10
\inst15|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Add0~42_combout\ = (\inst1|temp\(10) & ((\inst15|t_0\(21) & (!\inst15|Add0~41\)) # (!\inst15|t_0\(21) & (\inst15|Add0~41\ & VCC)))) # (!\inst1|temp\(10) & ((\inst15|t_0\(21) & ((\inst15|Add0~41\) # (GND))) # (!\inst15|t_0\(21) & 
-- (!\inst15|Add0~41\))))
-- \inst15|Add0~43\ = CARRY((\inst1|temp\(10) & (\inst15|t_0\(21) & !\inst15|Add0~41\)) # (!\inst1|temp\(10) & ((\inst15|t_0\(21)) # (!\inst15|Add0~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(10),
	datab => \inst15|t_0\(21),
	datad => VCC,
	cin => \inst15|Add0~41\,
	combout => \inst15|Add0~42_combout\,
	cout => \inst15|Add0~43\);

-- Location: LCCOMB_X7_Y11_N12
\inst15|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Add0~44_combout\ = ((\inst1|temp\(9) $ (\inst15|t_0\(22) $ (\inst15|Add0~43\)))) # (GND)
-- \inst15|Add0~45\ = CARRY((\inst1|temp\(9) & ((!\inst15|Add0~43\) # (!\inst15|t_0\(22)))) # (!\inst1|temp\(9) & (!\inst15|t_0\(22) & !\inst15|Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(9),
	datab => \inst15|t_0\(22),
	datad => VCC,
	cin => \inst15|Add0~43\,
	combout => \inst15|Add0~44_combout\,
	cout => \inst15|Add0~45\);

-- Location: LCCOMB_X7_Y11_N16
\inst15|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Add0~48_combout\ = ((\inst1|temp\(7) $ (\inst15|t_0\(24) $ (\inst15|Add0~47\)))) # (GND)
-- \inst15|Add0~49\ = CARRY((\inst1|temp\(7) & ((!\inst15|Add0~47\) # (!\inst15|t_0\(24)))) # (!\inst1|temp\(7) & (!\inst15|t_0\(24) & !\inst15|Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(7),
	datab => \inst15|t_0\(24),
	datad => VCC,
	cin => \inst15|Add0~47\,
	combout => \inst15|Add0~48_combout\,
	cout => \inst15|Add0~49\);

-- Location: LCCOMB_X7_Y11_N18
\inst15|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Add0~50_combout\ = (\inst15|t_0\(25) & ((\inst1|temp\(6) & (!\inst15|Add0~49\)) # (!\inst1|temp\(6) & ((\inst15|Add0~49\) # (GND))))) # (!\inst15|t_0\(25) & ((\inst1|temp\(6) & (\inst15|Add0~49\ & VCC)) # (!\inst1|temp\(6) & (!\inst15|Add0~49\))))
-- \inst15|Add0~51\ = CARRY((\inst15|t_0\(25) & ((!\inst15|Add0~49\) # (!\inst1|temp\(6)))) # (!\inst15|t_0\(25) & (!\inst1|temp\(6) & !\inst15|Add0~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|t_0\(25),
	datab => \inst1|temp\(6),
	datad => VCC,
	cin => \inst15|Add0~49\,
	combout => \inst15|Add0~50_combout\,
	cout => \inst15|Add0~51\);

-- Location: LCCOMB_X6_Y11_N20
\inst1|temp[5]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|temp[5]~81_combout\ = (\inst1|temp\(5) & (!\inst1|temp[6]~80\)) # (!\inst1|temp\(5) & ((\inst1|temp[6]~80\) # (GND)))
-- \inst1|temp[5]~82\ = CARRY((!\inst1|temp[6]~80\) # (!\inst1|temp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|temp\(5),
	datad => VCC,
	cin => \inst1|temp[6]~80\,
	combout => \inst1|temp[5]~81_combout\,
	cout => \inst1|temp[5]~82\);

-- Location: FF_X6_Y11_N21
\inst1|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|temp[5]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(5));

-- Location: FF_X7_Y11_N21
\inst15|t_0[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sensor0~input_o\,
	asdata => \inst1|temp\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|t_0\(26));

-- Location: LCCOMB_X7_Y11_N20
\inst15|Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Add0~52_combout\ = ((\inst1|temp\(5) $ (\inst15|t_0\(26) $ (\inst15|Add0~51\)))) # (GND)
-- \inst15|Add0~53\ = CARRY((\inst1|temp\(5) & ((!\inst15|Add0~51\) # (!\inst15|t_0\(26)))) # (!\inst1|temp\(5) & (!\inst15|t_0\(26) & !\inst15|Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(5),
	datab => \inst15|t_0\(26),
	datad => VCC,
	cin => \inst15|Add0~51\,
	combout => \inst15|Add0~52_combout\,
	cout => \inst15|Add0~53\);

-- Location: LCCOMB_X8_Y11_N0
\inst15|LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan2~0_combout\ = (!\inst15|Add0~50_combout\ & (!\inst15|Add0~48_combout\ & !\inst15|Add0~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|Add0~50_combout\,
	datac => \inst15|Add0~48_combout\,
	datad => \inst15|Add0~52_combout\,
	combout => \inst15|LessThan2~0_combout\);

-- Location: LCCOMB_X9_Y12_N0
\inst15|LessThan2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan2~4_combout\ = (!\inst15|Add0~36_combout\ & (!\inst15|Add0~34_combout\ & (!\inst15|Add0~38_combout\ & !\inst15|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Add0~36_combout\,
	datab => \inst15|Add0~34_combout\,
	datac => \inst15|Add0~38_combout\,
	datad => \inst15|Add0~32_combout\,
	combout => \inst15|LessThan2~4_combout\);

-- Location: LCCOMB_X10_Y11_N8
\inst15|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan2~5_combout\ = (!\inst15|Add0~42_combout\ & !\inst15|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|Add0~42_combout\,
	datad => \inst15|Add0~40_combout\,
	combout => \inst15|LessThan2~5_combout\);

-- Location: LCCOMB_X8_Y11_N22
\inst15|LessThan2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan2~6_combout\ = (!\inst15|Add0~46_combout\ & (\inst15|LessThan2~4_combout\ & (!\inst15|Add0~44_combout\ & \inst15|LessThan2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Add0~46_combout\,
	datab => \inst15|LessThan2~4_combout\,
	datac => \inst15|Add0~44_combout\,
	datad => \inst15|LessThan2~5_combout\,
	combout => \inst15|LessThan2~6_combout\);

-- Location: LCCOMB_X8_Y12_N24
\inst15|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan1~1_combout\ = (\inst15|Add0~6_combout\ & ((\inst15|Add0~4_combout\) # ((\inst15|Add0~0_combout\ & \inst15|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Add0~0_combout\,
	datab => \inst15|Add0~6_combout\,
	datac => \inst15|Add0~2_combout\,
	datad => \inst15|Add0~4_combout\,
	combout => \inst15|LessThan1~1_combout\);

-- Location: LCCOMB_X8_Y12_N22
\inst15|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan1~0_combout\ = (\inst15|Add0~10_combout\ & \inst15|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Add0~10_combout\,
	datad => \inst15|Add0~8_combout\,
	combout => \inst15|LessThan1~0_combout\);

-- Location: LCCOMB_X8_Y12_N26
\inst15|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan1~2_combout\ = (\inst15|Add0~14_combout\) # ((\inst15|Add0~12_combout\) # ((\inst15|LessThan1~1_combout\ & \inst15|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Add0~14_combout\,
	datab => \inst15|LessThan1~1_combout\,
	datac => \inst15|LessThan1~0_combout\,
	datad => \inst15|Add0~12_combout\,
	combout => \inst15|LessThan1~2_combout\);

-- Location: LCCOMB_X8_Y11_N4
\inst15|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan1~3_combout\ = (((\inst15|LessThan1~2_combout\) # (!\inst15|LessThan2~6_combout\)) # (!\inst15|LessThan2~0_combout\)) # (!\inst15|LessThan2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|LessThan2~3_combout\,
	datab => \inst15|LessThan2~0_combout\,
	datac => \inst15|LessThan2~6_combout\,
	datad => \inst15|LessThan1~2_combout\,
	combout => \inst15|LessThan1~3_combout\);

-- Location: LCCOMB_X9_Y11_N2
\inst15|stop_valid_sync~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~113_combout\ = (!\inst15|process_0~1_combout\ & ((\inst15|stop_valid_sync\(6)) # ((\inst15|stop_valid_sync~41_combout\ & \inst15|stop_valid_sync~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~41_combout\,
	datab => \inst15|stop_valid_sync~42_combout\,
	datac => \inst15|stop_valid_sync\(6),
	datad => \inst15|process_0~1_combout\,
	combout => \inst15|stop_valid_sync~113_combout\);

-- Location: FF_X9_Y11_N3
\inst15|stop_valid_sync[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|stop_valid_sync~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|stop_valid_sync\(6));

-- Location: LCCOMB_X9_Y11_N0
\inst15|stop_valid_sync~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~44_combout\ = (!\inst15|stop_valid_sync\(31) & (!\inst15|stop_valid_sync\(4) & \inst15|t_0\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync\(31),
	datab => \inst15|stop_valid_sync\(4),
	datad => \inst15|t_0\(5),
	combout => \inst15|stop_valid_sync~44_combout\);

-- Location: LCCOMB_X6_Y11_N22
\inst1|temp[4]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|temp[4]~83_combout\ = (\inst1|temp\(4) & (\inst1|temp[5]~82\ $ (GND))) # (!\inst1|temp\(4) & (!\inst1|temp[5]~82\ & VCC))
-- \inst1|temp[4]~84\ = CARRY((\inst1|temp\(4) & !\inst1|temp[5]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(4),
	datad => VCC,
	cin => \inst1|temp[5]~82\,
	combout => \inst1|temp[4]~83_combout\,
	cout => \inst1|temp[4]~84\);

-- Location: LCCOMB_X6_Y11_N24
\inst1|temp[3]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|temp[3]~85_combout\ = (\inst1|temp\(3) & (!\inst1|temp[4]~84\)) # (!\inst1|temp\(3) & ((\inst1|temp[4]~84\) # (GND)))
-- \inst1|temp[3]~86\ = CARRY((!\inst1|temp[4]~84\) # (!\inst1|temp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|temp\(3),
	datad => VCC,
	cin => \inst1|temp[4]~84\,
	combout => \inst1|temp[3]~85_combout\,
	cout => \inst1|temp[3]~86\);

-- Location: FF_X6_Y11_N25
\inst1|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|temp[3]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(3));

-- Location: LCCOMB_X6_Y11_N26
\inst1|temp[2]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|temp[2]~87_combout\ = (\inst1|temp\(2) & (\inst1|temp[3]~86\ $ (GND))) # (!\inst1|temp\(2) & (!\inst1|temp[3]~86\ & VCC))
-- \inst1|temp[2]~88\ = CARRY((\inst1|temp\(2) & !\inst1|temp[3]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(2),
	datad => VCC,
	cin => \inst1|temp[3]~86\,
	combout => \inst1|temp[2]~87_combout\,
	cout => \inst1|temp[2]~88\);

-- Location: LCCOMB_X6_Y11_N28
\inst1|temp[1]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|temp[1]~89_combout\ = (\inst1|temp\(1) & (!\inst1|temp[2]~88\)) # (!\inst1|temp\(1) & ((\inst1|temp[2]~88\) # (GND)))
-- \inst1|temp[1]~90\ = CARRY((!\inst1|temp[2]~88\) # (!\inst1|temp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|temp\(1),
	datad => VCC,
	cin => \inst1|temp[2]~88\,
	combout => \inst1|temp[1]~89_combout\,
	cout => \inst1|temp[1]~90\);

-- Location: FF_X6_Y11_N29
\inst1|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|temp[1]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(1));

-- Location: LCCOMB_X6_Y11_N30
\inst1|temp[0]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|temp[0]~91_combout\ = \inst1|temp\(0) $ (!\inst1|temp[1]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(0),
	cin => \inst1|temp[1]~90\,
	combout => \inst1|temp[0]~91_combout\);

-- Location: FF_X6_Y11_N31
\inst1|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|temp[0]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(0));

-- Location: FF_X7_Y11_N31
\inst15|t_0[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sensor0~input_o\,
	asdata => \inst1|temp\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|t_0\(31));

-- Location: FF_X8_Y11_N17
\inst15|start_valid_sync[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst15|t_0\(31),
	sload => VCC,
	ena => \inst15|start_valid_sync[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|start_valid_sync\(31));

-- Location: FF_X8_Y10_N29
\inst15|start_valid_sync[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst15|t_0\(13),
	sload => VCC,
	ena => \inst15|start_valid_sync[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|start_valid_sync\(13));

-- Location: FF_X7_Y12_N23
\inst15|t_0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sensor0~input_o\,
	asdata => \inst1|temp\(20),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|t_0\(11));

-- Location: FF_X8_Y10_N25
\inst15|start_valid_sync[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst15|t_0\(11),
	sload => VCC,
	ena => \inst15|start_valid_sync[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|start_valid_sync\(11));

-- Location: LCCOMB_X8_Y10_N26
\inst15|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Equal0~5_combout\ = (!\inst15|start_valid_sync\(12) & (!\inst15|start_valid_sync\(13) & (!\inst15|start_valid_sync\(14) & !\inst15|start_valid_sync\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|start_valid_sync\(12),
	datab => \inst15|start_valid_sync\(13),
	datac => \inst15|start_valid_sync\(14),
	datad => \inst15|start_valid_sync\(11),
	combout => \inst15|Equal0~5_combout\);

-- Location: LCCOMB_X9_Y8_N16
\inst15|start_valid_sync[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|start_valid_sync[8]~feeder_combout\ = \inst15|t_0\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst15|t_0\(8),
	combout => \inst15|start_valid_sync[8]~feeder_combout\);

-- Location: FF_X9_Y8_N17
\inst15|start_valid_sync[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|start_valid_sync[8]~feeder_combout\,
	ena => \inst15|start_valid_sync[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|start_valid_sync\(8));

-- Location: FF_X7_Y12_N21
\inst15|t_0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sensor0~input_o\,
	asdata => \inst1|temp\(21),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|t_0\(10));

-- Location: FF_X9_Y8_N21
\inst15|start_valid_sync[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst15|t_0\(10),
	sload => VCC,
	ena => \inst15|start_valid_sync[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|start_valid_sync\(10));

-- Location: FF_X9_Y8_N7
\inst15|start_valid_sync[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst15|t_0\(9),
	sload => VCC,
	ena => \inst15|start_valid_sync[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|start_valid_sync\(9));

-- Location: LCCOMB_X9_Y8_N20
\inst15|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Equal0~6_combout\ = (!\inst15|start_valid_sync\(7) & (!\inst15|start_valid_sync\(8) & (!\inst15|start_valid_sync\(10) & !\inst15|start_valid_sync\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|start_valid_sync\(7),
	datab => \inst15|start_valid_sync\(8),
	datac => \inst15|start_valid_sync\(10),
	datad => \inst15|start_valid_sync\(9),
	combout => \inst15|Equal0~6_combout\);

-- Location: FF_X7_Y12_N3
\inst15|t_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sensor0~input_o\,
	asdata => \inst1|temp\(30),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|t_0\(1));

-- Location: FF_X8_Y11_N19
\inst15|start_valid_sync[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst15|t_0\(1),
	sload => VCC,
	ena => \inst15|start_valid_sync[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|start_valid_sync\(1));

-- Location: FF_X7_Y12_N5
\inst15|t_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sensor0~input_o\,
	asdata => \inst1|temp\(29),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|t_0\(2));

-- Location: FF_X9_Y11_N25
\inst15|start_valid_sync[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst15|t_0\(2),
	sload => VCC,
	ena => \inst15|start_valid_sync[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|start_valid_sync\(2));

-- Location: FF_X7_Y12_N9
\inst15|t_0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sensor0~input_o\,
	asdata => \inst1|temp\(27),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|t_0\(4));

-- Location: FF_X9_Y11_N21
\inst15|start_valid_sync[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst15|t_0\(4),
	sload => VCC,
	ena => \inst15|start_valid_sync[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|start_valid_sync\(4));

-- Location: FF_X7_Y12_N13
\inst15|t_0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sensor0~input_o\,
	asdata => \inst1|temp\(25),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|t_0\(6));

-- Location: FF_X9_Y11_N9
\inst15|start_valid_sync[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst15|t_0\(6),
	sload => VCC,
	ena => \inst15|start_valid_sync[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|start_valid_sync\(6));

-- Location: FF_X7_Y12_N7
\inst15|t_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sensor0~input_o\,
	asdata => \inst1|temp\(28),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|t_0\(3));

-- Location: LCCOMB_X9_Y11_N14
\inst15|start_valid_sync[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|start_valid_sync[3]~feeder_combout\ = \inst15|t_0\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst15|t_0\(3),
	combout => \inst15|start_valid_sync[3]~feeder_combout\);

-- Location: FF_X9_Y11_N15
\inst15|start_valid_sync[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|start_valid_sync[3]~feeder_combout\,
	ena => \inst15|start_valid_sync[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|start_valid_sync\(3));

-- Location: LCCOMB_X9_Y11_N8
\inst15|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Equal0~7_combout\ = (!\inst15|start_valid_sync\(5) & (!\inst15|start_valid_sync\(4) & (!\inst15|start_valid_sync\(6) & !\inst15|start_valid_sync\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|start_valid_sync\(5),
	datab => \inst15|start_valid_sync\(4),
	datac => \inst15|start_valid_sync\(6),
	datad => \inst15|start_valid_sync\(3),
	combout => \inst15|Equal0~7_combout\);

-- Location: LCCOMB_X9_Y11_N24
\inst15|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Equal0~8_combout\ = (!\inst15|start_valid_sync\(0) & (!\inst15|start_valid_sync\(1) & (!\inst15|start_valid_sync\(2) & \inst15|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|start_valid_sync\(0),
	datab => \inst15|start_valid_sync\(1),
	datac => \inst15|start_valid_sync\(2),
	datad => \inst15|Equal0~7_combout\,
	combout => \inst15|Equal0~8_combout\);

-- Location: LCCOMB_X8_Y11_N20
\inst15|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Equal0~9_combout\ = (\inst15|Equal0~4_combout\ & (\inst15|Equal0~5_combout\ & (\inst15|Equal0~6_combout\ & \inst15|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Equal0~4_combout\,
	datab => \inst15|Equal0~5_combout\,
	datac => \inst15|Equal0~6_combout\,
	datad => \inst15|Equal0~8_combout\,
	combout => \inst15|Equal0~9_combout\);

-- Location: LCCOMB_X8_Y11_N16
\inst15|Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Equal0~10_combout\ = (\inst15|start_valid_sync\(31)) # (!\inst15|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|start_valid_sync\(31),
	datad => \inst15|Equal0~9_combout\,
	combout => \inst15|Equal0~10_combout\);

-- Location: FF_X6_Y11_N23
\inst1|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|temp[4]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(4));

-- Location: LCCOMB_X7_Y11_N22
\inst15|Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Add0~54_combout\ = (\inst15|t_0\(27) & ((\inst1|temp\(4) & (!\inst15|Add0~53\)) # (!\inst1|temp\(4) & ((\inst15|Add0~53\) # (GND))))) # (!\inst15|t_0\(27) & ((\inst1|temp\(4) & (\inst15|Add0~53\ & VCC)) # (!\inst1|temp\(4) & (!\inst15|Add0~53\))))
-- \inst15|Add0~55\ = CARRY((\inst15|t_0\(27) & ((!\inst15|Add0~53\) # (!\inst1|temp\(4)))) # (!\inst15|t_0\(27) & (!\inst1|temp\(4) & !\inst15|Add0~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|t_0\(27),
	datab => \inst1|temp\(4),
	datad => VCC,
	cin => \inst15|Add0~53\,
	combout => \inst15|Add0~54_combout\,
	cout => \inst15|Add0~55\);

-- Location: LCCOMB_X8_Y11_N14
\inst15|result~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|result~1_combout\ = ((!\inst15|Add0~54_combout\ & !\inst15|LessThan1~3_combout\)) # (!\inst15|start_valid_sync[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|start_valid_sync[3]~2_combout\,
	datab => \inst15|Add0~54_combout\,
	datac => \inst15|LessThan1~3_combout\,
	combout => \inst15|result~1_combout\);

-- Location: FF_X7_Y11_N29
\inst15|t_0[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sensor0~input_o\,
	asdata => \inst1|temp\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|t_0\(30));

-- Location: FF_X6_Y11_N27
\inst1|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|temp[2]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(2));

-- Location: FF_X7_Y11_N27
\inst15|t_0[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sensor0~input_o\,
	asdata => \inst1|temp\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|t_0\(29));

-- Location: FF_X7_Y11_N25
\inst15|t_0[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sensor0~input_o\,
	asdata => \inst1|temp\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|t_0\(28));

-- Location: LCCOMB_X7_Y11_N24
\inst15|Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Add0~56_combout\ = ((\inst1|temp\(3) $ (\inst15|t_0\(28) $ (\inst15|Add0~55\)))) # (GND)
-- \inst15|Add0~57\ = CARRY((\inst1|temp\(3) & ((!\inst15|Add0~55\) # (!\inst15|t_0\(28)))) # (!\inst1|temp\(3) & (!\inst15|t_0\(28) & !\inst15|Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(3),
	datab => \inst15|t_0\(28),
	datad => VCC,
	cin => \inst15|Add0~55\,
	combout => \inst15|Add0~56_combout\,
	cout => \inst15|Add0~57\);

-- Location: LCCOMB_X7_Y11_N26
\inst15|Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Add0~58_combout\ = (\inst1|temp\(2) & ((\inst15|t_0\(29) & (!\inst15|Add0~57\)) # (!\inst15|t_0\(29) & (\inst15|Add0~57\ & VCC)))) # (!\inst1|temp\(2) & ((\inst15|t_0\(29) & ((\inst15|Add0~57\) # (GND))) # (!\inst15|t_0\(29) & 
-- (!\inst15|Add0~57\))))
-- \inst15|Add0~59\ = CARRY((\inst1|temp\(2) & (\inst15|t_0\(29) & !\inst15|Add0~57\)) # (!\inst1|temp\(2) & ((\inst15|t_0\(29)) # (!\inst15|Add0~57\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(2),
	datab => \inst15|t_0\(29),
	datad => VCC,
	cin => \inst15|Add0~57\,
	combout => \inst15|Add0~58_combout\,
	cout => \inst15|Add0~59\);

-- Location: LCCOMB_X8_Y12_N8
\inst15|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan0~2_combout\ = (!\inst15|Add0~6_combout\ & !\inst15|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|Add0~6_combout\,
	datad => \inst15|Add0~4_combout\,
	combout => \inst15|LessThan0~2_combout\);

-- Location: LCCOMB_X8_Y12_N2
\inst15|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan0~3_combout\ = (((\inst15|LessThan0~2_combout\ & !\inst15|Add0~2_combout\)) # (!\inst15|Add0~8_combout\)) # (!\inst15|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Add0~10_combout\,
	datab => \inst15|LessThan0~2_combout\,
	datac => \inst15|Add0~2_combout\,
	datad => \inst15|Add0~8_combout\,
	combout => \inst15|LessThan0~3_combout\);

-- Location: LCCOMB_X8_Y11_N24
\inst15|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan0~0_combout\ = (!\inst15|Add0~56_combout\ & (!\inst15|Add0~58_combout\ & !\inst15|Add0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|Add0~56_combout\,
	datac => \inst15|Add0~58_combout\,
	datad => \inst15|Add0~54_combout\,
	combout => \inst15|LessThan0~0_combout\);

-- Location: LCCOMB_X8_Y11_N26
\inst15|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan0~1_combout\ = (\inst15|LessThan2~3_combout\ & (\inst15|LessThan0~0_combout\ & (\inst15|LessThan2~6_combout\ & \inst15|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|LessThan2~3_combout\,
	datab => \inst15|LessThan0~0_combout\,
	datac => \inst15|LessThan2~6_combout\,
	datad => \inst15|LessThan2~0_combout\,
	combout => \inst15|LessThan0~1_combout\);

-- Location: LCCOMB_X8_Y12_N12
\inst15|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan0~4_combout\ = (!\inst15|Add0~14_combout\ & (\inst15|LessThan0~3_combout\ & (\inst15|LessThan0~1_combout\ & !\inst15|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Add0~14_combout\,
	datab => \inst15|LessThan0~3_combout\,
	datac => \inst15|LessThan0~1_combout\,
	datad => \inst15|Add0~12_combout\,
	combout => \inst15|LessThan0~4_combout\);

-- Location: LCCOMB_X8_Y12_N6
\inst15|start_valid_sync[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|start_valid_sync[3]~3_combout\ = (!\inst15|Add0~62_combout\ & (!\inst15|Add0~60_combout\ & !\inst15|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Add0~62_combout\,
	datac => \inst15|Add0~60_combout\,
	datad => \inst15|LessThan0~4_combout\,
	combout => \inst15|start_valid_sync[3]~3_combout\);

-- Location: LCCOMB_X8_Y11_N6
\inst15|stop_valid_sync~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~16_combout\ = (\inst15|stop_valid_sync~15_combout\ & (\inst15|Equal0~10_combout\ & (!\inst15|result~1_combout\ & \inst15|start_valid_sync[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~15_combout\,
	datab => \inst15|Equal0~10_combout\,
	datac => \inst15|result~1_combout\,
	datad => \inst15|start_valid_sync[3]~3_combout\,
	combout => \inst15|stop_valid_sync~16_combout\);

-- Location: LCCOMB_X8_Y10_N14
\inst15|stop_valid_sync~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~28_combout\ = (\inst15|stop_valid_sync~10_combout\ & (\inst15|stop_valid_sync~16_combout\ & (!\inst15|stop_valid_sync\(13) & \inst15|stop_valid_sync~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~10_combout\,
	datab => \inst15|stop_valid_sync~16_combout\,
	datac => \inst15|stop_valid_sync\(13),
	datad => \inst15|stop_valid_sync~23_combout\,
	combout => \inst15|stop_valid_sync~28_combout\);

-- Location: LCCOMB_X8_Y10_N0
\inst15|stop_valid_sync~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~94_combout\ = (\inst15|stop_valid_sync~75_combout\ & !\inst15|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~75_combout\,
	datac => \inst15|process_0~1_combout\,
	combout => \inst15|stop_valid_sync~94_combout\);

-- Location: FF_X8_Y10_N1
\inst15|stop_valid_sync[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|stop_valid_sync~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|stop_valid_sync\(30));

-- Location: LCCOMB_X8_Y10_N18
\inst15|stop_valid_sync~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~30_combout\ = (!\inst15|stop_valid_sync\(12) & \inst15|stop_valid_sync~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync\(12),
	datac => \inst15|stop_valid_sync~28_combout\,
	combout => \inst15|stop_valid_sync~30_combout\);

-- Location: LCCOMB_X8_Y10_N20
\inst15|stop_valid_sync~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~31_combout\ = (\inst15|stop_valid_sync\(11)) # ((\inst15|t_0\(11) & (!\inst15|stop_valid_sync\(30) & \inst15|stop_valid_sync~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|t_0\(11),
	datab => \inst15|stop_valid_sync\(30),
	datac => \inst15|stop_valid_sync\(11),
	datad => \inst15|stop_valid_sync~30_combout\,
	combout => \inst15|stop_valid_sync~31_combout\);

-- Location: LCCOMB_X8_Y10_N2
\inst15|stop_valid_sync~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~95_combout\ = (\inst15|stop_valid_sync~31_combout\ & !\inst15|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|stop_valid_sync~31_combout\,
	datac => \inst15|process_0~1_combout\,
	combout => \inst15|stop_valid_sync~95_combout\);

-- Location: FF_X8_Y10_N3
\inst15|stop_valid_sync[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|stop_valid_sync~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|stop_valid_sync\(11));

-- Location: LCCOMB_X8_Y10_N4
\inst15|stop_valid_sync~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~11_combout\ = (!\inst15|stop_valid_sync\(11) & !\inst15|stop_valid_sync\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|stop_valid_sync\(11),
	datad => \inst15|stop_valid_sync\(30),
	combout => \inst15|stop_valid_sync~11_combout\);

-- Location: LCCOMB_X8_Y10_N8
\inst15|stop_valid_sync~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~29_combout\ = (\inst15|stop_valid_sync\(12)) # ((\inst15|stop_valid_sync~28_combout\ & (\inst15|t_0\(12) & \inst15|stop_valid_sync~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync\(12),
	datab => \inst15|stop_valid_sync~28_combout\,
	datac => \inst15|t_0\(12),
	datad => \inst15|stop_valid_sync~11_combout\,
	combout => \inst15|stop_valid_sync~29_combout\);

-- Location: LCCOMB_X8_Y10_N22
\inst15|stop_valid_sync~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~97_combout\ = (!\inst15|process_0~1_combout\ & \inst15|stop_valid_sync~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|process_0~1_combout\,
	datac => \inst15|stop_valid_sync~29_combout\,
	combout => \inst15|stop_valid_sync~97_combout\);

-- Location: FF_X8_Y10_N23
\inst15|stop_valid_sync[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|stop_valid_sync~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|stop_valid_sync\(12));

-- Location: LCCOMB_X8_Y10_N10
\inst15|stop_valid_sync~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~24_combout\ = (\inst15|stop_valid_sync~11_combout\ & (\inst15|stop_valid_sync~23_combout\ & (!\inst15|stop_valid_sync\(12) & \inst15|stop_valid_sync~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~11_combout\,
	datab => \inst15|stop_valid_sync~23_combout\,
	datac => \inst15|stop_valid_sync\(12),
	datad => \inst15|stop_valid_sync~16_combout\,
	combout => \inst15|stop_valid_sync~24_combout\);

-- Location: LCCOMB_X8_Y10_N12
\inst15|stop_valid_sync~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~27_combout\ = (\inst15|stop_valid_sync\(13)) # ((\inst15|stop_valid_sync~10_combout\ & (\inst15|t_0\(13) & \inst15|stop_valid_sync~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~10_combout\,
	datab => \inst15|stop_valid_sync\(13),
	datac => \inst15|t_0\(13),
	datad => \inst15|stop_valid_sync~24_combout\,
	combout => \inst15|stop_valid_sync~27_combout\);

-- Location: LCCOMB_X8_Y8_N2
\inst15|stop_valid_sync~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~96_combout\ = (!\inst15|process_0~1_combout\ & \inst15|stop_valid_sync~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|process_0~1_combout\,
	datad => \inst15|stop_valid_sync~27_combout\,
	combout => \inst15|stop_valid_sync~96_combout\);

-- Location: FF_X8_Y8_N3
\inst15|stop_valid_sync[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|stop_valid_sync~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|stop_valid_sync\(13));

-- Location: LCCOMB_X11_Y8_N24
\inst15|stop_valid_sync~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~93_combout\ = (\inst15|stop_valid_sync~36_combout\ & !\inst15|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~36_combout\,
	datac => \inst15|process_0~1_combout\,
	combout => \inst15|stop_valid_sync~93_combout\);

-- Location: FF_X11_Y8_N25
\inst15|stop_valid_sync[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|stop_valid_sync~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|stop_valid_sync\(8));

-- Location: LCCOMB_X9_Y8_N4
\inst15|stop_valid_sync~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~25_combout\ = (!\inst15|stop_valid_sync\(9) & (\inst15|t_0\(14) & (!\inst15|stop_valid_sync\(10) & !\inst15|stop_valid_sync\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync\(9),
	datab => \inst15|t_0\(14),
	datac => \inst15|stop_valid_sync\(10),
	datad => \inst15|stop_valid_sync\(8),
	combout => \inst15|stop_valid_sync~25_combout\);

-- Location: LCCOMB_X9_Y8_N30
\inst15|stop_valid_sync~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~26_combout\ = (\inst15|stop_valid_sync\(14)) # ((!\inst15|stop_valid_sync\(13) & (\inst15|stop_valid_sync~25_combout\ & \inst15|stop_valid_sync~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync\(13),
	datab => \inst15|stop_valid_sync~25_combout\,
	datac => \inst15|stop_valid_sync\(14),
	datad => \inst15|stop_valid_sync~24_combout\,
	combout => \inst15|stop_valid_sync~26_combout\);

-- Location: LCCOMB_X9_Y10_N8
\inst15|stop_valid_sync~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~90_combout\ = (\inst15|stop_valid_sync~26_combout\ & !\inst15|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|stop_valid_sync~26_combout\,
	datad => \inst15|process_0~1_combout\,
	combout => \inst15|stop_valid_sync~90_combout\);

-- Location: FF_X9_Y10_N9
\inst15|stop_valid_sync[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|stop_valid_sync~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|stop_valid_sync\(14));

-- Location: LCCOMB_X9_Y8_N12
\inst15|stop_valid_sync~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~34_combout\ = (!\inst15|stop_valid_sync\(13) & (!\inst15|stop_valid_sync\(10) & (!\inst15|stop_valid_sync\(14) & \inst15|stop_valid_sync~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync\(13),
	datab => \inst15|stop_valid_sync\(10),
	datac => \inst15|stop_valid_sync\(14),
	datad => \inst15|stop_valid_sync~24_combout\,
	combout => \inst15|stop_valid_sync~34_combout\);

-- Location: LCCOMB_X9_Y8_N22
\inst15|stop_valid_sync~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~35_combout\ = (\inst15|stop_valid_sync\(9)) # ((\inst15|t_0\(9) & (!\inst15|stop_valid_sync\(8) & \inst15|stop_valid_sync~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|t_0\(9),
	datab => \inst15|stop_valid_sync\(8),
	datac => \inst15|stop_valid_sync\(9),
	datad => \inst15|stop_valid_sync~34_combout\,
	combout => \inst15|stop_valid_sync~35_combout\);

-- Location: LCCOMB_X7_Y8_N8
\inst15|stop_valid_sync~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~92_combout\ = (!\inst15|process_0~1_combout\ & \inst15|stop_valid_sync~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|process_0~1_combout\,
	datad => \inst15|stop_valid_sync~35_combout\,
	combout => \inst15|stop_valid_sync~92_combout\);

-- Location: FF_X7_Y8_N9
\inst15|stop_valid_sync[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|stop_valid_sync~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|stop_valid_sync\(9));

-- Location: LCCOMB_X9_Y8_N24
\inst15|stop_valid_sync~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~32_combout\ = (\inst15|t_0\(10) & (!\inst15|stop_valid_sync\(8) & (!\inst15|stop_valid_sync\(9) & !\inst15|stop_valid_sync\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|t_0\(10),
	datab => \inst15|stop_valid_sync\(8),
	datac => \inst15|stop_valid_sync\(9),
	datad => \inst15|stop_valid_sync\(13),
	combout => \inst15|stop_valid_sync~32_combout\);

-- Location: LCCOMB_X9_Y8_N2
\inst15|stop_valid_sync~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~33_combout\ = (\inst15|stop_valid_sync\(10)) # ((!\inst15|stop_valid_sync\(14) & (\inst15|stop_valid_sync~32_combout\ & \inst15|stop_valid_sync~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync\(14),
	datab => \inst15|stop_valid_sync~32_combout\,
	datac => \inst15|stop_valid_sync\(10),
	datad => \inst15|stop_valid_sync~24_combout\,
	combout => \inst15|stop_valid_sync~33_combout\);

-- Location: LCCOMB_X9_Y8_N8
\inst15|stop_valid_sync~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~91_combout\ = (\inst15|stop_valid_sync~33_combout\ & !\inst15|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|stop_valid_sync~33_combout\,
	datad => \inst15|process_0~1_combout\,
	combout => \inst15|stop_valid_sync~91_combout\);

-- Location: FF_X9_Y8_N9
\inst15|stop_valid_sync[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|stop_valid_sync~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|stop_valid_sync\(10));

-- Location: LCCOMB_X9_Y8_N10
\inst15|stop_valid_sync~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~10_combout\ = (!\inst15|stop_valid_sync\(14) & (!\inst15|stop_valid_sync\(10) & (!\inst15|stop_valid_sync\(9) & !\inst15|stop_valid_sync\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync\(14),
	datab => \inst15|stop_valid_sync\(10),
	datac => \inst15|stop_valid_sync\(9),
	datad => \inst15|stop_valid_sync\(8),
	combout => \inst15|stop_valid_sync~10_combout\);

-- Location: LCCOMB_X8_Y10_N16
\inst15|stop_valid_sync~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~12_combout\ = (\inst15|stop_valid_sync~11_combout\ & (!\inst15|stop_valid_sync\(13) & (!\inst15|stop_valid_sync\(12) & \inst15|stop_valid_sync~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~11_combout\,
	datab => \inst15|stop_valid_sync\(13),
	datac => \inst15|stop_valid_sync\(12),
	datad => \inst15|stop_valid_sync~10_combout\,
	combout => \inst15|stop_valid_sync~12_combout\);

-- Location: LCCOMB_X8_Y9_N4
\inst15|stop_valid_sync~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~54_combout\ = (\inst15|stop_valid_sync\(0)) # ((\inst15|stop_valid_sync~53_combout\ & (\inst15|stop_valid_sync~16_combout\ & \inst15|stop_valid_sync~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~53_combout\,
	datab => \inst15|stop_valid_sync\(0),
	datac => \inst15|stop_valid_sync~16_combout\,
	datad => \inst15|stop_valid_sync~12_combout\,
	combout => \inst15|stop_valid_sync~54_combout\);

-- Location: LCCOMB_X8_Y9_N28
\inst15|stop_valid_sync~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~104_combout\ = (\inst15|stop_valid_sync~54_combout\ & !\inst15|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|stop_valid_sync~54_combout\,
	datad => \inst15|process_0~1_combout\,
	combout => \inst15|stop_valid_sync~104_combout\);

-- Location: FF_X8_Y9_N29
\inst15|stop_valid_sync[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|stop_valid_sync~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|stop_valid_sync\(0));

-- Location: LCCOMB_X10_Y8_N2
\inst15|stop_valid_sync~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~109_combout\ = (\inst15|stop_valid_sync~78_combout\ & !\inst15|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~78_combout\,
	datac => \inst15|process_0~1_combout\,
	combout => \inst15|stop_valid_sync~109_combout\);

-- Location: FF_X10_Y8_N3
\inst15|stop_valid_sync[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|stop_valid_sync~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|stop_valid_sync\(21));

-- Location: FF_X7_Y11_N3
\inst15|t_0[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sensor0~input_o\,
	asdata => \inst1|temp\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|t_0\(17));

-- Location: FF_X7_Y11_N5
\inst15|t_0[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sensor0~input_o\,
	asdata => \inst1|temp\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|t_0\(18));

-- Location: LCCOMB_X11_Y8_N20
\inst15|stop_valid_sync~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~68_combout\ = (!\inst15|stop_valid_sync\(20) & (!\inst15|stop_valid_sync\(29) & (\inst15|t_0\(18) & !\inst15|stop_valid_sync\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync\(20),
	datab => \inst15|stop_valid_sync\(29),
	datac => \inst15|t_0\(18),
	datad => \inst15|stop_valid_sync\(19),
	combout => \inst15|stop_valid_sync~68_combout\);

-- Location: LCCOMB_X11_Y8_N18
\inst15|stop_valid_sync~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~114_combout\ = (!\inst15|process_0~1_combout\ & ((\inst15|stop_valid_sync\(18)) # ((\inst15|stop_valid_sync~56_combout\ & \inst15|stop_valid_sync~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~56_combout\,
	datab => \inst15|process_0~1_combout\,
	datac => \inst15|stop_valid_sync\(18),
	datad => \inst15|stop_valid_sync~68_combout\,
	combout => \inst15|stop_valid_sync~114_combout\);

-- Location: FF_X11_Y8_N19
\inst15|stop_valid_sync[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|stop_valid_sync~114_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|stop_valid_sync\(18));

-- Location: LCCOMB_X11_Y8_N12
\inst15|stop_valid_sync~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~65_combout\ = (!\inst15|stop_valid_sync\(20) & (\inst15|t_0\(29) & !\inst15|stop_valid_sync\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync\(20),
	datac => \inst15|t_0\(29),
	datad => \inst15|stop_valid_sync\(19),
	combout => \inst15|stop_valid_sync~65_combout\);

-- Location: LCCOMB_X11_Y8_N6
\inst15|stop_valid_sync~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~66_combout\ = (\inst15|stop_valid_sync\(29)) # ((\inst15|stop_valid_sync~56_combout\ & (!\inst15|stop_valid_sync\(18) & \inst15|stop_valid_sync~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~56_combout\,
	datab => \inst15|stop_valid_sync\(18),
	datac => \inst15|stop_valid_sync\(29),
	datad => \inst15|stop_valid_sync~65_combout\,
	combout => \inst15|stop_valid_sync~66_combout\);

-- Location: LCCOMB_X11_Y8_N4
\inst15|stop_valid_sync~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~105_combout\ = (!\inst15|process_0~1_combout\ & \inst15|stop_valid_sync~66_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|process_0~1_combout\,
	datad => \inst15|stop_valid_sync~66_combout\,
	combout => \inst15|stop_valid_sync~105_combout\);

-- Location: FF_X11_Y8_N5
\inst15|stop_valid_sync[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|stop_valid_sync~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|stop_valid_sync\(29));

-- Location: LCCOMB_X11_Y8_N28
\inst15|stop_valid_sync~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~57_combout\ = (\inst15|stop_valid_sync~56_combout\ & (!\inst15|stop_valid_sync\(29) & !\inst15|stop_valid_sync\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~56_combout\,
	datac => \inst15|stop_valid_sync\(29),
	datad => \inst15|stop_valid_sync\(18),
	combout => \inst15|stop_valid_sync~57_combout\);

-- Location: FF_X7_Y11_N7
\inst15|t_0[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sensor0~input_o\,
	asdata => \inst1|temp\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|t_0\(19));

-- Location: LCCOMB_X11_Y8_N14
\inst15|stop_valid_sync~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~58_combout\ = (\inst15|stop_valid_sync\(19)) # ((!\inst15|stop_valid_sync\(20) & (\inst15|stop_valid_sync~57_combout\ & \inst15|t_0\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync\(20),
	datab => \inst15|stop_valid_sync~57_combout\,
	datac => \inst15|t_0\(19),
	datad => \inst15|stop_valid_sync\(19),
	combout => \inst15|stop_valid_sync~58_combout\);

-- Location: LCCOMB_X11_Y8_N0
\inst15|stop_valid_sync~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~107_combout\ = (\inst15|stop_valid_sync~58_combout\ & !\inst15|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|stop_valid_sync~58_combout\,
	datac => \inst15|process_0~1_combout\,
	combout => \inst15|stop_valid_sync~107_combout\);

-- Location: FF_X11_Y8_N1
\inst15|stop_valid_sync[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|stop_valid_sync~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|stop_valid_sync\(19));

-- Location: LCCOMB_X11_Y8_N2
\inst15|stop_valid_sync~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~18_combout\ = (!\inst15|stop_valid_sync\(20) & (!\inst15|stop_valid_sync\(19) & (!\inst15|stop_valid_sync\(29) & !\inst15|stop_valid_sync\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync\(20),
	datab => \inst15|stop_valid_sync\(19),
	datac => \inst15|stop_valid_sync\(29),
	datad => \inst15|stop_valid_sync\(18),
	combout => \inst15|stop_valid_sync~18_combout\);

-- Location: LCCOMB_X10_Y8_N20
\inst15|stop_valid_sync~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~77_combout\ = (\inst15|stop_valid_sync\(17)) # ((\inst15|stop_valid_sync~76_combout\ & (\inst15|t_0\(17) & \inst15|stop_valid_sync~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~76_combout\,
	datab => \inst15|stop_valid_sync\(17),
	datac => \inst15|t_0\(17),
	datad => \inst15|stop_valid_sync~18_combout\,
	combout => \inst15|stop_valid_sync~77_combout\);

-- Location: LCCOMB_X8_Y8_N20
\inst15|stop_valid_sync~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~108_combout\ = (!\inst15|process_0~1_combout\ & \inst15|stop_valid_sync~77_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|process_0~1_combout\,
	datac => \inst15|stop_valid_sync~77_combout\,
	combout => \inst15|stop_valid_sync~108_combout\);

-- Location: FF_X8_Y8_N21
\inst15|stop_valid_sync[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|stop_valid_sync~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|stop_valid_sync\(17));

-- Location: LCCOMB_X10_Y8_N28
\inst15|stop_valid_sync~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~22_combout\ = (\inst15|stop_valid_sync~21_combout\ & (!\inst15|stop_valid_sync\(21) & (!\inst15|stop_valid_sync\(17) & \inst15|stop_valid_sync~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~21_combout\,
	datab => \inst15|stop_valid_sync\(21),
	datac => \inst15|stop_valid_sync\(17),
	datad => \inst15|stop_valid_sync~18_combout\,
	combout => \inst15|stop_valid_sync~22_combout\);

-- Location: LCCOMB_X8_Y9_N0
\inst15|stop_valid_sync~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~23_combout\ = (\inst15|stop_valid_sync~9_combout\ & (!\inst15|stop_valid_sync\(0) & \inst15|stop_valid_sync~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~9_combout\,
	datab => \inst15|stop_valid_sync\(0),
	datad => \inst15|stop_valid_sync~22_combout\,
	combout => \inst15|stop_valid_sync~23_combout\);

-- Location: LCCOMB_X8_Y11_N8
\inst15|stop_valid_sync~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~37_combout\ = (\inst15|start_valid_sync[3]~3_combout\ & (!\inst15|result~1_combout\ & ((\inst15|start_valid_sync\(31)) # (!\inst15|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|start_valid_sync\(31),
	datab => \inst15|start_valid_sync[3]~3_combout\,
	datac => \inst15|result~1_combout\,
	datad => \inst15|Equal0~9_combout\,
	combout => \inst15|stop_valid_sync~37_combout\);

-- Location: LCCOMB_X9_Y10_N22
\inst15|stop_valid_sync~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~38_combout\ = (\inst15|stop_valid_sync~12_combout\ & (\inst15|stop_valid_sync~23_combout\ & \inst15|stop_valid_sync~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~12_combout\,
	datac => \inst15|stop_valid_sync~23_combout\,
	datad => \inst15|stop_valid_sync~37_combout\,
	combout => \inst15|stop_valid_sync~38_combout\);

-- Location: LCCOMB_X9_Y10_N30
\inst15|stop_valid_sync~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~102_combout\ = (\inst15|stop_valid_sync~52_combout\ & !\inst15|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~52_combout\,
	datad => \inst15|process_0~1_combout\,
	combout => \inst15|stop_valid_sync~102_combout\);

-- Location: FF_X9_Y10_N31
\inst15|stop_valid_sync[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|stop_valid_sync~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|stop_valid_sync\(1));

-- Location: LCCOMB_X9_Y11_N6
\inst15|stop_valid_sync~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~55_combout\ = (\inst15|stop_valid_sync\(31)) # ((\inst15|stop_valid_sync~46_combout\ & (!\inst15|stop_valid_sync\(4) & \inst15|t_0\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~46_combout\,
	datab => \inst15|stop_valid_sync\(4),
	datac => \inst15|stop_valid_sync\(31),
	datad => \inst15|t_0\(31),
	combout => \inst15|stop_valid_sync~55_combout\);

-- Location: FF_X9_Y11_N7
\inst15|stop_valid_sync[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|stop_valid_sync~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|stop_valid_sync\(31));

-- Location: LCCOMB_X9_Y11_N26
\inst15|stop_valid_sync~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~13_combout\ = (!\inst15|stop_valid_sync\(5) & (!\inst15|stop_valid_sync\(6) & (!\inst15|stop_valid_sync\(4) & !\inst15|stop_valid_sync\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync\(5),
	datab => \inst15|stop_valid_sync\(6),
	datac => \inst15|stop_valid_sync\(4),
	datad => \inst15|stop_valid_sync\(31),
	combout => \inst15|stop_valid_sync~13_combout\);

-- Location: LCCOMB_X9_Y10_N10
\inst15|stop_valid_sync~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~103_combout\ = (\inst15|stop_valid_sync~51_combout\ & !\inst15|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~51_combout\,
	datad => \inst15|process_0~1_combout\,
	combout => \inst15|stop_valid_sync~103_combout\);

-- Location: FF_X9_Y10_N11
\inst15|stop_valid_sync[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|stop_valid_sync~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|stop_valid_sync\(2));

-- Location: LCCOMB_X9_Y10_N16
\inst15|stop_valid_sync~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~39_combout\ = (\inst15|stop_valid_sync~38_combout\ & (!\inst15|stop_valid_sync\(3) & (\inst15|stop_valid_sync~13_combout\ & !\inst15|stop_valid_sync\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~38_combout\,
	datab => \inst15|stop_valid_sync\(3),
	datac => \inst15|stop_valid_sync~13_combout\,
	datad => \inst15|stop_valid_sync\(2),
	combout => \inst15|stop_valid_sync~39_combout\);

-- Location: FF_X7_Y12_N15
\inst15|t_0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sensor0~input_o\,
	asdata => \inst1|temp\(24),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|t_0\(7));

-- Location: LCCOMB_X9_Y10_N26
\inst15|stop_valid_sync~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~40_combout\ = (\inst15|stop_valid_sync\(7)) # ((!\inst15|stop_valid_sync\(1) & (\inst15|stop_valid_sync~39_combout\ & \inst15|t_0\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync\(1),
	datab => \inst15|stop_valid_sync~39_combout\,
	datac => \inst15|t_0\(7),
	datad => \inst15|stop_valid_sync\(7),
	combout => \inst15|stop_valid_sync~40_combout\);

-- Location: LCCOMB_X9_Y10_N28
\inst15|stop_valid_sync~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~101_combout\ = (\inst15|stop_valid_sync~40_combout\ & !\inst15|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|stop_valid_sync~40_combout\,
	datad => \inst15|process_0~1_combout\,
	combout => \inst15|stop_valid_sync~101_combout\);

-- Location: FF_X9_Y10_N29
\inst15|stop_valid_sync[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|stop_valid_sync~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|stop_valid_sync\(7));

-- Location: LCCOMB_X9_Y10_N24
\inst15|stop_valid_sync~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~49_combout\ = (\inst15|t_0\(3) & (!\inst15|stop_valid_sync\(1) & !\inst15|stop_valid_sync\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|t_0\(3),
	datac => \inst15|stop_valid_sync\(1),
	datad => \inst15|stop_valid_sync\(7),
	combout => \inst15|stop_valid_sync~49_combout\);

-- Location: LCCOMB_X9_Y10_N14
\inst15|stop_valid_sync~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~48_combout\ = (\inst15|stop_valid_sync~12_combout\ & (\inst15|stop_valid_sync~13_combout\ & (\inst15|stop_valid_sync~23_combout\ & \inst15|stop_valid_sync~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~12_combout\,
	datab => \inst15|stop_valid_sync~13_combout\,
	datac => \inst15|stop_valid_sync~23_combout\,
	datad => \inst15|stop_valid_sync~37_combout\,
	combout => \inst15|stop_valid_sync~48_combout\);

-- Location: LCCOMB_X9_Y10_N2
\inst15|stop_valid_sync~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~50_combout\ = (\inst15|stop_valid_sync\(3)) # ((!\inst15|stop_valid_sync\(2) & (\inst15|stop_valid_sync~49_combout\ & \inst15|stop_valid_sync~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync\(2),
	datab => \inst15|stop_valid_sync~49_combout\,
	datac => \inst15|stop_valid_sync~48_combout\,
	datad => \inst15|stop_valid_sync\(3),
	combout => \inst15|stop_valid_sync~50_combout\);

-- Location: LCCOMB_X9_Y10_N18
\inst15|stop_valid_sync~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~100_combout\ = (\inst15|stop_valid_sync~50_combout\ & !\inst15|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|stop_valid_sync~50_combout\,
	datad => \inst15|process_0~1_combout\,
	combout => \inst15|stop_valid_sync~100_combout\);

-- Location: FF_X9_Y10_N19
\inst15|stop_valid_sync[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|stop_valid_sync~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|stop_valid_sync\(3));

-- Location: LCCOMB_X9_Y10_N0
\inst15|stop_valid_sync~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~14_combout\ = (!\inst15|stop_valid_sync\(3) & (!\inst15|stop_valid_sync\(1) & !\inst15|stop_valid_sync\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|stop_valid_sync\(3),
	datac => \inst15|stop_valid_sync\(1),
	datad => \inst15|stop_valid_sync\(7),
	combout => \inst15|stop_valid_sync~14_combout\);

-- Location: LCCOMB_X9_Y10_N4
\inst15|stop_valid_sync~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~41_combout\ = (!\inst15|stop_valid_sync\(2) & (\inst15|stop_valid_sync~38_combout\ & \inst15|stop_valid_sync~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync\(2),
	datac => \inst15|stop_valid_sync~38_combout\,
	datad => \inst15|stop_valid_sync~14_combout\,
	combout => \inst15|stop_valid_sync~41_combout\);

-- Location: LCCOMB_X9_Y11_N18
\inst15|stop_valid_sync~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~45_combout\ = (\inst15|stop_valid_sync\(5)) # ((!\inst15|stop_valid_sync\(6) & (\inst15|stop_valid_sync~44_combout\ & \inst15|stop_valid_sync~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync\(5),
	datab => \inst15|stop_valid_sync\(6),
	datac => \inst15|stop_valid_sync~44_combout\,
	datad => \inst15|stop_valid_sync~41_combout\,
	combout => \inst15|stop_valid_sync~45_combout\);

-- Location: LCCOMB_X9_Y11_N12
\inst15|stop_valid_sync~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~98_combout\ = (\inst15|stop_valid_sync~45_combout\ & !\inst15|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|stop_valid_sync~45_combout\,
	datad => \inst15|process_0~1_combout\,
	combout => \inst15|stop_valid_sync~98_combout\);

-- Location: FF_X9_Y11_N13
\inst15|stop_valid_sync[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|stop_valid_sync~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|stop_valid_sync\(5));

-- Location: LCCOMB_X9_Y11_N4
\inst15|stop_valid_sync~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~46_combout\ = (\inst15|stop_valid_sync~41_combout\ & (!\inst15|stop_valid_sync\(6) & !\inst15|stop_valid_sync\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~41_combout\,
	datab => \inst15|stop_valid_sync\(6),
	datad => \inst15|stop_valid_sync\(5),
	combout => \inst15|stop_valid_sync~46_combout\);

-- Location: LCCOMB_X9_Y11_N22
\inst15|stop_valid_sync~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~47_combout\ = (\inst15|stop_valid_sync\(4)) # ((\inst15|t_0\(4) & (\inst15|stop_valid_sync~46_combout\ & !\inst15|stop_valid_sync\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|t_0\(4),
	datab => \inst15|stop_valid_sync\(4),
	datac => \inst15|stop_valid_sync~46_combout\,
	datad => \inst15|stop_valid_sync\(31),
	combout => \inst15|stop_valid_sync~47_combout\);

-- Location: LCCOMB_X9_Y11_N16
\inst15|stop_valid_sync~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~99_combout\ = (\inst15|stop_valid_sync~47_combout\ & !\inst15|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|stop_valid_sync~47_combout\,
	datad => \inst15|process_0~1_combout\,
	combout => \inst15|stop_valid_sync~99_combout\);

-- Location: FF_X9_Y11_N17
\inst15|stop_valid_sync[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|stop_valid_sync~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|stop_valid_sync\(4));

-- Location: LCCOMB_X9_Y11_N28
\inst15|stop_valid_sync~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~42_combout\ = (!\inst15|stop_valid_sync\(31) & (!\inst15|stop_valid_sync\(4) & (\inst15|t_0\(6) & !\inst15|stop_valid_sync\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync\(31),
	datab => \inst15|stop_valid_sync\(4),
	datac => \inst15|t_0\(6),
	datad => \inst15|stop_valid_sync\(5),
	combout => \inst15|stop_valid_sync~42_combout\);

-- Location: LCCOMB_X9_Y11_N30
\inst15|stop_valid_sync~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~43_combout\ = (\inst15|stop_valid_sync\(6)) # ((\inst15|stop_valid_sync~41_combout\ & \inst15|stop_valid_sync~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~41_combout\,
	datab => \inst15|stop_valid_sync~42_combout\,
	datad => \inst15|stop_valid_sync\(6),
	combout => \inst15|stop_valid_sync~43_combout\);

-- Location: LCCOMB_X8_Y8_N28
\inst15|stop_valid_sync~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~85_combout\ = (\inst15|stop_valid_sync~63_combout\ & !\inst15|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~63_combout\,
	datac => \inst15|process_0~1_combout\,
	combout => \inst15|stop_valid_sync~85_combout\);

-- Location: FF_X8_Y8_N29
\inst15|stop_valid_sync[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|stop_valid_sync~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|stop_valid_sync\(23));

-- Location: LCCOMB_X8_Y8_N12
\inst15|stop_valid_sync~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~70_combout\ = (\inst15|stop_valid_sync~60_combout\ & !\inst15|stop_valid_sync\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~60_combout\,
	datad => \inst15|stop_valid_sync\(25),
	combout => \inst15|stop_valid_sync~70_combout\);

-- Location: LCCOMB_X8_Y8_N26
\inst15|stop_valid_sync~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~84_combout\ = (!\inst15|process_0~1_combout\ & ((\inst15|stop_valid_sync\(24)) # ((\inst15|stop_valid_sync~71_combout\ & \inst15|stop_valid_sync~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~71_combout\,
	datab => \inst15|process_0~1_combout\,
	datac => \inst15|stop_valid_sync\(24),
	datad => \inst15|stop_valid_sync~70_combout\,
	combout => \inst15|stop_valid_sync~84_combout\);

-- Location: FF_X8_Y8_N27
\inst15|stop_valid_sync[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|stop_valid_sync~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|stop_valid_sync\(24));

-- Location: FF_X7_Y11_N19
\inst15|t_0[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sensor0~input_o\,
	asdata => \inst1|temp\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|t_0\(25));

-- Location: LCCOMB_X8_Y8_N18
\inst15|stop_valid_sync~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~79_combout\ = (!\inst15|stop_valid_sync\(22) & (!\inst15|stop_valid_sync\(23) & (!\inst15|stop_valid_sync\(24) & \inst15|t_0\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync\(22),
	datab => \inst15|stop_valid_sync\(23),
	datac => \inst15|stop_valid_sync\(24),
	datad => \inst15|t_0\(25),
	combout => \inst15|stop_valid_sync~79_combout\);

-- Location: LCCOMB_X8_Y8_N0
\inst15|stop_valid_sync~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~112_combout\ = (!\inst15|process_0~1_combout\ & ((\inst15|stop_valid_sync\(25)) # ((\inst15|stop_valid_sync~60_combout\ & \inst15|stop_valid_sync~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~60_combout\,
	datab => \inst15|process_0~1_combout\,
	datac => \inst15|stop_valid_sync\(25),
	datad => \inst15|stop_valid_sync~79_combout\,
	combout => \inst15|stop_valid_sync~112_combout\);

-- Location: FF_X8_Y8_N1
\inst15|stop_valid_sync[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|stop_valid_sync~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|stop_valid_sync\(25));

-- Location: LCCOMB_X8_Y8_N4
\inst15|stop_valid_sync~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~80_combout\ = (\inst15|stop_valid_sync\(25)) # ((\inst15|stop_valid_sync~60_combout\ & \inst15|stop_valid_sync~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~60_combout\,
	datab => \inst15|stop_valid_sync\(25),
	datad => \inst15|stop_valid_sync~79_combout\,
	combout => \inst15|stop_valid_sync~80_combout\);

-- Location: LCCOMB_X7_Y8_N24
\inst15|stop_valid_sync~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~87_combout\ = (\inst15|stop_valid_sync~82_combout\ & !\inst15|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~82_combout\,
	datac => \inst15|process_0~1_combout\,
	combout => \inst15|stop_valid_sync~87_combout\);

-- Location: FF_X7_Y8_N25
\inst15|stop_valid_sync[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|stop_valid_sync~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|stop_valid_sync\(26));

-- Location: LCCOMB_X8_Y8_N24
\inst15|stop_valid_sync~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~8_combout\ = (!\inst15|stop_valid_sync\(22) & (!\inst15|stop_valid_sync\(25) & (!\inst15|stop_valid_sync\(24) & !\inst15|stop_valid_sync\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync\(22),
	datab => \inst15|stop_valid_sync\(25),
	datac => \inst15|stop_valid_sync\(24),
	datad => \inst15|stop_valid_sync\(23),
	combout => \inst15|stop_valid_sync~8_combout\);

-- Location: LCCOMB_X7_Y8_N4
\inst15|stop_valid_sync~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~72_combout\ = (\inst15|stop_valid_sync~59_combout\ & (!\inst15|stop_valid_sync\(26) & \inst15|stop_valid_sync~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~59_combout\,
	datab => \inst15|stop_valid_sync\(26),
	datad => \inst15|stop_valid_sync~8_combout\,
	combout => \inst15|stop_valid_sync~72_combout\);

-- Location: FF_X7_Y11_N23
\inst15|t_0[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sensor0~input_o\,
	asdata => \inst1|temp\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|t_0\(27));

-- Location: LCCOMB_X7_Y8_N22
\inst15|stop_valid_sync~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~73_combout\ = (\inst15|stop_valid_sync\(27)) # ((!\inst15|stop_valid_sync\(28) & (\inst15|stop_valid_sync~72_combout\ & \inst15|t_0\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync\(28),
	datab => \inst15|stop_valid_sync\(27),
	datac => \inst15|stop_valid_sync~72_combout\,
	datad => \inst15|t_0\(27),
	combout => \inst15|stop_valid_sync~73_combout\);

-- Location: LCCOMB_X7_Y8_N20
\inst15|stop_valid_sync~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~89_combout\ = (!\inst15|process_0~1_combout\ & \inst15|stop_valid_sync~73_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|process_0~1_combout\,
	datac => \inst15|stop_valid_sync~73_combout\,
	combout => \inst15|stop_valid_sync~89_combout\);

-- Location: FF_X7_Y8_N21
\inst15|stop_valid_sync[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|stop_valid_sync~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|stop_valid_sync\(27));

-- Location: LCCOMB_X7_Y8_N16
\inst15|stop_valid_sync~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~74_combout\ = (!\inst15|stop_valid_sync\(27) & \inst15|t_0\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|stop_valid_sync\(27),
	datad => \inst15|t_0\(28),
	combout => \inst15|stop_valid_sync~74_combout\);

-- Location: LCCOMB_X7_Y8_N18
\inst15|stop_valid_sync~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~88_combout\ = (!\inst15|process_0~1_combout\ & ((\inst15|stop_valid_sync\(28)) # ((\inst15|stop_valid_sync~72_combout\ & \inst15|stop_valid_sync~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~72_combout\,
	datab => \inst15|process_0~1_combout\,
	datac => \inst15|stop_valid_sync\(28),
	datad => \inst15|stop_valid_sync~74_combout\,
	combout => \inst15|stop_valid_sync~88_combout\);

-- Location: FF_X7_Y8_N19
\inst15|stop_valid_sync[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|stop_valid_sync~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|stop_valid_sync\(28));

-- Location: LCCOMB_X7_Y8_N28
\inst15|stop_valid_sync~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~81_combout\ = (!\inst15|stop_valid_sync\(28) & (\inst15|t_0\(26) & !\inst15|stop_valid_sync\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|stop_valid_sync\(28),
	datac => \inst15|t_0\(26),
	datad => \inst15|stop_valid_sync\(27),
	combout => \inst15|stop_valid_sync~81_combout\);

-- Location: LCCOMB_X7_Y8_N6
\inst15|stop_valid_sync~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~82_combout\ = (\inst15|stop_valid_sync\(26)) # ((\inst15|stop_valid_sync~59_combout\ & (\inst15|stop_valid_sync~81_combout\ & \inst15|stop_valid_sync~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~59_combout\,
	datab => \inst15|stop_valid_sync\(26),
	datac => \inst15|stop_valid_sync~81_combout\,
	datad => \inst15|stop_valid_sync~8_combout\,
	combout => \inst15|stop_valid_sync~82_combout\);

-- Location: LCCOMB_X8_Y8_N6
\inst15|LessThan6~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan6~9_combout\ = (\inst15|stop_valid_sync~54_combout\) # ((\inst15|stop_valid_sync~80_combout\) # ((\inst15|stop_valid_sync~82_combout\) # (\inst15|stop_valid_sync~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~54_combout\,
	datab => \inst15|stop_valid_sync~80_combout\,
	datac => \inst15|stop_valid_sync~82_combout\,
	datad => \inst15|stop_valid_sync~27_combout\,
	combout => \inst15|LessThan6~9_combout\);

-- Location: LCCOMB_X10_Y8_N24
\inst15|LessThan6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan6~8_combout\ = (\inst15|stop_valid_sync~78_combout\) # ((\inst15|stop_valid_sync~29_combout\) # ((\inst15|stop_valid_sync~45_combout\) # (\inst15|stop_valid_sync~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~78_combout\,
	datab => \inst15|stop_valid_sync~29_combout\,
	datac => \inst15|stop_valid_sync~45_combout\,
	datad => \inst15|stop_valid_sync~77_combout\,
	combout => \inst15|LessThan6~8_combout\);

-- Location: LCCOMB_X10_Y8_N18
\inst15|LessThan6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan6~10_combout\ = (\inst15|stop_valid_sync~51_combout\) # ((\inst15|stop_valid_sync~43_combout\) # ((\inst15|LessThan6~9_combout\) # (\inst15|LessThan6~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~51_combout\,
	datab => \inst15|stop_valid_sync~43_combout\,
	datac => \inst15|LessThan6~9_combout\,
	datad => \inst15|LessThan6~8_combout\,
	combout => \inst15|LessThan6~10_combout\);

-- Location: LCCOMB_X8_Y11_N2
\inst15|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|process_0~0_combout\ = (!\inst15|stop_valid_sync~55_combout\ & (!\inst15|Equal0~9_combout\ & !\inst15|start_valid_sync\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~55_combout\,
	datab => \inst15|Equal0~9_combout\,
	datad => \inst15|start_valid_sync\(31),
	combout => \inst15|process_0~0_combout\);

-- Location: LCCOMB_X10_Y8_N12
\inst15|stop_valid_sync~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~19_combout\ = (\inst15|stop_valid_sync~17_combout\ & (!\inst15|stop_valid_sync\(21) & (!\inst15|stop_valid_sync\(17) & \inst15|stop_valid_sync~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~17_combout\,
	datab => \inst15|stop_valid_sync\(21),
	datac => \inst15|stop_valid_sync\(17),
	datad => \inst15|stop_valid_sync~18_combout\,
	combout => \inst15|stop_valid_sync~19_combout\);

-- Location: LCCOMB_X10_Y8_N0
\inst15|stop_valid_sync~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~20_combout\ = (\inst15|stop_valid_sync\(15)) # ((!\inst15|stop_valid_sync\(16) & (\inst15|t_0\(15) & \inst15|stop_valid_sync~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync\(16),
	datab => \inst15|t_0\(15),
	datac => \inst15|stop_valid_sync\(15),
	datad => \inst15|stop_valid_sync~19_combout\,
	combout => \inst15|stop_valid_sync~20_combout\);

-- Location: LCCOMB_X10_Y8_N8
\inst15|stop_valid_sync~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~83_combout\ = (\inst15|stop_valid_sync~20_combout\ & !\inst15|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|stop_valid_sync~20_combout\,
	datac => \inst15|process_0~1_combout\,
	combout => \inst15|stop_valid_sync~83_combout\);

-- Location: FF_X10_Y8_N9
\inst15|stop_valid_sync[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|stop_valid_sync~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|stop_valid_sync\(15));

-- Location: LCCOMB_X10_Y8_N16
\inst15|stop_valid_sync~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~67_combout\ = (\inst15|stop_valid_sync\(16)) # ((\inst15|t_0\(16) & (!\inst15|stop_valid_sync\(15) & \inst15|stop_valid_sync~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync\(16),
	datab => \inst15|t_0\(16),
	datac => \inst15|stop_valid_sync\(15),
	datad => \inst15|stop_valid_sync~19_combout\,
	combout => \inst15|stop_valid_sync~67_combout\);

-- Location: LCCOMB_X11_Y8_N16
\inst15|LessThan6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan6~1_combout\ = (\inst15|stop_valid_sync~35_combout\) # ((\inst15|stop_valid_sync~67_combout\) # (\inst15|stop_valid_sync~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|stop_valid_sync~35_combout\,
	datac => \inst15|stop_valid_sync~67_combout\,
	datad => \inst15|stop_valid_sync~66_combout\,
	combout => \inst15|LessThan6~1_combout\);

-- Location: LCCOMB_X8_Y8_N14
\inst15|stop_valid_sync~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~61_combout\ = (\inst15|stop_valid_sync~60_combout\ & (!\inst15|stop_valid_sync\(25) & !\inst15|stop_valid_sync\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~60_combout\,
	datab => \inst15|stop_valid_sync\(25),
	datac => \inst15|stop_valid_sync\(24),
	combout => \inst15|stop_valid_sync~61_combout\);

-- Location: FF_X7_Y11_N15
\inst15|t_0[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sensor0~input_o\,
	asdata => \inst1|temp\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|t_0\(23));

-- Location: LCCOMB_X8_Y8_N10
\inst15|stop_valid_sync~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~63_combout\ = (\inst15|stop_valid_sync\(23)) # ((!\inst15|stop_valid_sync\(22) & (\inst15|stop_valid_sync~61_combout\ & \inst15|t_0\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync\(22),
	datab => \inst15|stop_valid_sync\(23),
	datac => \inst15|stop_valid_sync~61_combout\,
	datad => \inst15|t_0\(23),
	combout => \inst15|stop_valid_sync~63_combout\);

-- Location: LCCOMB_X11_Y8_N8
\inst15|LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan6~0_combout\ = (\inst15|stop_valid_sync~62_combout\) # ((\inst15|stop_valid_sync~58_combout\) # ((\inst15|stop_valid_sync~20_combout\) # (\inst15|stop_valid_sync~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~62_combout\,
	datab => \inst15|stop_valid_sync~58_combout\,
	datac => \inst15|stop_valid_sync~20_combout\,
	datad => \inst15|stop_valid_sync~63_combout\,
	combout => \inst15|LessThan6~0_combout\);

-- Location: FF_X7_Y11_N9
\inst15|t_0[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sensor0~input_o\,
	asdata => \inst1|temp\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|t_0\(20));

-- Location: LCCOMB_X11_Y8_N10
\inst15|stop_valid_sync~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|stop_valid_sync~64_combout\ = (\inst15|stop_valid_sync\(20)) # ((\inst15|stop_valid_sync~57_combout\ & (\inst15|t_0\(20) & !\inst15|stop_valid_sync\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync\(20),
	datab => \inst15|stop_valid_sync~57_combout\,
	datac => \inst15|t_0\(20),
	datad => \inst15|stop_valid_sync\(19),
	combout => \inst15|stop_valid_sync~64_combout\);

-- Location: LCCOMB_X11_Y8_N26
\inst15|LessThan6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan6~2_combout\ = (\inst15|stop_valid_sync~36_combout\) # ((\inst15|LessThan6~1_combout\) # ((\inst15|LessThan6~0_combout\) # (\inst15|stop_valid_sync~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~36_combout\,
	datab => \inst15|LessThan6~1_combout\,
	datac => \inst15|LessThan6~0_combout\,
	datad => \inst15|stop_valid_sync~64_combout\,
	combout => \inst15|LessThan6~2_combout\);

-- Location: LCCOMB_X10_Y8_N4
\inst15|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|process_0~1_combout\ = (\inst15|process_0~0_combout\ & ((\inst15|LessThan6~7_combout\) # ((\inst15|LessThan6~10_combout\) # (\inst15|LessThan6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|LessThan6~7_combout\,
	datab => \inst15|LessThan6~10_combout\,
	datac => \inst15|process_0~0_combout\,
	datad => \inst15|LessThan6~2_combout\,
	combout => \inst15|process_0~1_combout\);

-- Location: LCCOMB_X8_Y11_N28
\inst15|start_valid_sync[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|start_valid_sync[3]~4_combout\ = (\inst15|process_0~1_combout\) # ((!\inst15|start_valid_sync[3]~5_combout\ & (\inst15|LessThan1~3_combout\ & \inst15|start_valid_sync[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|start_valid_sync[3]~5_combout\,
	datab => \inst15|LessThan1~3_combout\,
	datac => \inst15|process_0~1_combout\,
	datad => \inst15|start_valid_sync[3]~3_combout\,
	combout => \inst15|start_valid_sync[3]~4_combout\);

-- Location: FF_X8_Y10_N27
\inst15|start_valid_sync[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst15|t_0\(14),
	sload => VCC,
	ena => \inst15|start_valid_sync[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|start_valid_sync\(14));

-- Location: FF_X8_Y10_N31
\inst15|start_valid_sync[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst15|t_0\(12),
	sload => VCC,
	ena => \inst15|start_valid_sync[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|start_valid_sync\(12));

-- Location: LCCOMB_X9_Y11_N10
\inst15|start_valid_sync[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|start_valid_sync[5]~feeder_combout\ = \inst15|t_0\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst15|t_0\(5),
	combout => \inst15|start_valid_sync[5]~feeder_combout\);

-- Location: FF_X9_Y11_N11
\inst15|start_valid_sync[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|start_valid_sync[5]~feeder_combout\,
	ena => \inst15|start_valid_sync[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|start_valid_sync\(5));

-- Location: FF_X8_Y9_N3
\inst15|start_valid_sync[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst15|t_0\(0),
	sload => VCC,
	ena => \inst15|start_valid_sync[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|start_valid_sync\(0));

-- Location: LCCOMB_X9_Y7_N18
\inst15|sweep_duration_A[9]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|sweep_duration_A[9]~34_combout\ = (\inst15|start_valid_sync\(9) & ((\inst15|stop_valid_sync~35_combout\ & (!\inst15|sweep_duration_A[8]~33\)) # (!\inst15|stop_valid_sync~35_combout\ & ((\inst15|sweep_duration_A[8]~33\) # (GND))))) # 
-- (!\inst15|start_valid_sync\(9) & ((\inst15|stop_valid_sync~35_combout\ & (\inst15|sweep_duration_A[8]~33\ & VCC)) # (!\inst15|stop_valid_sync~35_combout\ & (!\inst15|sweep_duration_A[8]~33\))))
-- \inst15|sweep_duration_A[9]~35\ = CARRY((\inst15|start_valid_sync\(9) & ((!\inst15|sweep_duration_A[8]~33\) # (!\inst15|stop_valid_sync~35_combout\))) # (!\inst15|start_valid_sync\(9) & (!\inst15|stop_valid_sync~35_combout\ & 
-- !\inst15|sweep_duration_A[8]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|start_valid_sync\(9),
	datab => \inst15|stop_valid_sync~35_combout\,
	datad => VCC,
	cin => \inst15|sweep_duration_A[8]~33\,
	combout => \inst15|sweep_duration_A[9]~34_combout\,
	cout => \inst15|sweep_duration_A[9]~35\);

-- Location: LCCOMB_X9_Y7_N20
\inst15|sweep_duration_A[10]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|sweep_duration_A[10]~36_combout\ = ((\inst15|stop_valid_sync~33_combout\ $ (\inst15|start_valid_sync\(10) $ (\inst15|sweep_duration_A[9]~35\)))) # (GND)
-- \inst15|sweep_duration_A[10]~37\ = CARRY((\inst15|stop_valid_sync~33_combout\ & ((!\inst15|sweep_duration_A[9]~35\) # (!\inst15|start_valid_sync\(10)))) # (!\inst15|stop_valid_sync~33_combout\ & (!\inst15|start_valid_sync\(10) & 
-- !\inst15|sweep_duration_A[9]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~33_combout\,
	datab => \inst15|start_valid_sync\(10),
	datad => VCC,
	cin => \inst15|sweep_duration_A[9]~35\,
	combout => \inst15|sweep_duration_A[10]~36_combout\,
	cout => \inst15|sweep_duration_A[10]~37\);

-- Location: LCCOMB_X9_Y7_N22
\inst15|sweep_duration_A[11]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|sweep_duration_A[11]~38_combout\ = (\inst15|stop_valid_sync~31_combout\ & ((\inst15|start_valid_sync\(11) & (!\inst15|sweep_duration_A[10]~37\)) # (!\inst15|start_valid_sync\(11) & (\inst15|sweep_duration_A[10]~37\ & VCC)))) # 
-- (!\inst15|stop_valid_sync~31_combout\ & ((\inst15|start_valid_sync\(11) & ((\inst15|sweep_duration_A[10]~37\) # (GND))) # (!\inst15|start_valid_sync\(11) & (!\inst15|sweep_duration_A[10]~37\))))
-- \inst15|sweep_duration_A[11]~39\ = CARRY((\inst15|stop_valid_sync~31_combout\ & (\inst15|start_valid_sync\(11) & !\inst15|sweep_duration_A[10]~37\)) # (!\inst15|stop_valid_sync~31_combout\ & ((\inst15|start_valid_sync\(11)) # 
-- (!\inst15|sweep_duration_A[10]~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stop_valid_sync~31_combout\,
	datab => \inst15|start_valid_sync\(11),
	datad => VCC,
	cin => \inst15|sweep_duration_A[10]~37\,
	combout => \inst15|sweep_duration_A[11]~38_combout\,
	cout => \inst15|sweep_duration_A[11]~39\);

-- Location: LCCOMB_X9_Y7_N26
\inst15|sweep_duration_A[13]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|sweep_duration_A[13]~42_combout\ = (\inst15|start_valid_sync\(13) & ((\inst15|stop_valid_sync~27_combout\ & (!\inst15|sweep_duration_A[12]~41\)) # (!\inst15|stop_valid_sync~27_combout\ & ((\inst15|sweep_duration_A[12]~41\) # (GND))))) # 
-- (!\inst15|start_valid_sync\(13) & ((\inst15|stop_valid_sync~27_combout\ & (\inst15|sweep_duration_A[12]~41\ & VCC)) # (!\inst15|stop_valid_sync~27_combout\ & (!\inst15|sweep_duration_A[12]~41\))))
-- \inst15|sweep_duration_A[13]~43\ = CARRY((\inst15|start_valid_sync\(13) & ((!\inst15|sweep_duration_A[12]~41\) # (!\inst15|stop_valid_sync~27_combout\))) # (!\inst15|start_valid_sync\(13) & (!\inst15|stop_valid_sync~27_combout\ & 
-- !\inst15|sweep_duration_A[12]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|start_valid_sync\(13),
	datab => \inst15|stop_valid_sync~27_combout\,
	datad => VCC,
	cin => \inst15|sweep_duration_A[12]~41\,
	combout => \inst15|sweep_duration_A[13]~42_combout\,
	cout => \inst15|sweep_duration_A[13]~43\);

-- Location: FF_X9_Y7_N29
\inst15|sweep_duration_A[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|sweep_duration_A[14]~44_combout\,
	ena => \inst15|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|sweep_duration_A\(14));

-- Location: LCCOMB_X6_Y7_N26
\inst9|LPM_MUX_component|auto_generated|result_node[14]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|LPM_MUX_component|auto_generated|result_node[14]~1_combout\ = (\SW1~input_o\ & \inst15|sweep_duration_A\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW1~input_o\,
	datad => \inst15|sweep_duration_A\(14),
	combout => \inst9|LPM_MUX_component|auto_generated|result_node[14]~1_combout\);

-- Location: FF_X6_Y7_N27
\inst13|spi_tx_data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst9|LPM_MUX_component|auto_generated|result_node[14]~1_combout\,
	ena => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(14));

-- Location: LCCOMB_X6_Y7_N16
\inst13|spi_slave_0|tx_buf[14]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[14]~5_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_tx_data\(14)))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_slave_0|tx_buf[14]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[14]~5_combout\,
	datac => \inst13|spi_tx_data\(14),
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[14]~5_combout\);

-- Location: FF_X9_Y7_N27
\inst15|sweep_duration_A[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|sweep_duration_A[13]~42_combout\,
	ena => \inst15|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|sweep_duration_A\(13));

-- Location: LCCOMB_X6_Y7_N8
\inst9|LPM_MUX_component|auto_generated|result_node[13]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|LPM_MUX_component|auto_generated|result_node[13]~2_combout\ = (\SW1~input_o\ & \inst15|sweep_duration_A\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW1~input_o\,
	datad => \inst15|sweep_duration_A\(13),
	combout => \inst9|LPM_MUX_component|auto_generated|result_node[13]~2_combout\);

-- Location: FF_X6_Y7_N9
\inst13|spi_tx_data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst9|LPM_MUX_component|auto_generated|result_node[13]~2_combout\,
	ena => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(13));

-- Location: LCCOMB_X6_Y7_N18
\inst13|spi_slave_0|tx_buf[13]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[13]~9_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_tx_data\(13)))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_slave_0|tx_buf[13]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[13]~9_combout\,
	datac => \inst13|spi_tx_data\(13),
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[13]~9_combout\);

-- Location: LCCOMB_X6_Y7_N20
\inst13|spi_slave_0|tx_buf[12]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[12]~13_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_tx_data\(12))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_slave_0|tx_buf[12]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_tx_data\(12),
	datab => \inst13|spi_slave_0|tx_buf[12]~13_combout\,
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[12]~13_combout\);

-- Location: FF_X9_Y7_N23
\inst15|sweep_duration_A[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|sweep_duration_A[11]~38_combout\,
	ena => \inst15|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|sweep_duration_A\(11));

-- Location: LCCOMB_X6_Y7_N4
\inst9|LPM_MUX_component|auto_generated|result_node[11]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|LPM_MUX_component|auto_generated|result_node[11]~4_combout\ = (\SW1~input_o\ & \inst15|sweep_duration_A\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW1~input_o\,
	datad => \inst15|sweep_duration_A\(11),
	combout => \inst9|LPM_MUX_component|auto_generated|result_node[11]~4_combout\);

-- Location: FF_X6_Y7_N5
\inst13|spi_tx_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst9|LPM_MUX_component|auto_generated|result_node[11]~4_combout\,
	ena => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(11));

-- Location: LCCOMB_X6_Y7_N22
\inst13|spi_slave_0|tx_buf[11]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[11]~17_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_tx_data\(11))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_slave_0|tx_buf[11]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_tx_data\(11),
	datac => \inst13|spi_slave_0|tx_buf[11]~17_combout\,
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[11]~17_combout\);

-- Location: FF_X9_Y7_N21
\inst15|sweep_duration_A[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|sweep_duration_A[10]~36_combout\,
	ena => \inst15|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|sweep_duration_A\(10));

-- Location: LCCOMB_X7_Y7_N26
\inst9|LPM_MUX_component|auto_generated|result_node[10]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|LPM_MUX_component|auto_generated|result_node[10]~5_combout\ = (\SW1~input_o\ & \inst15|sweep_duration_A\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW1~input_o\,
	datac => \inst15|sweep_duration_A\(10),
	combout => \inst9|LPM_MUX_component|auto_generated|result_node[10]~5_combout\);

-- Location: FF_X7_Y7_N27
\inst13|spi_tx_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst9|LPM_MUX_component|auto_generated|result_node[10]~5_combout\,
	ena => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(10));

-- Location: LCCOMB_X7_Y7_N16
\inst13|spi_slave_0|tx_buf[10]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[10]~21_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_tx_data\(10)))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_slave_0|tx_buf[10]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[10]~21_combout\,
	datac => \inst13|spi_tx_data\(10),
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[10]~21_combout\);

-- Location: FF_X9_Y7_N19
\inst15|sweep_duration_A[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst15|sweep_duration_A[9]~34_combout\,
	ena => \inst15|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|sweep_duration_A\(9));

-- Location: LCCOMB_X7_Y7_N8
\inst9|LPM_MUX_component|auto_generated|result_node[9]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|LPM_MUX_component|auto_generated|result_node[9]~6_combout\ = (\SW1~input_o\ & \inst15|sweep_duration_A\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW1~input_o\,
	datac => \inst15|sweep_duration_A\(9),
	combout => \inst9|LPM_MUX_component|auto_generated|result_node[9]~6_combout\);

-- Location: FF_X7_Y7_N9
\inst13|spi_tx_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst9|LPM_MUX_component|auto_generated|result_node[9]~6_combout\,
	ena => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(9));

-- Location: LCCOMB_X7_Y7_N18
\inst13|spi_slave_0|tx_buf[9]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[9]~25_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_tx_data\(9)))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_slave_0|tx_buf[9]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[9]~25_combout\,
	datac => \inst13|spi_tx_data\(9),
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[9]~25_combout\);

-- Location: LCCOMB_X7_Y7_N2
\inst13|spi_slave_0|tx_buf[9]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[9]~26_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(9))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[9]~_emulated_q\ $ 
-- ((\inst13|spi_slave_0|tx_buf[9]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[9]~_emulated_q\,
	datab => \inst13|spi_slave_0|tx_buf[9]~25_combout\,
	datac => \inst13|spi_tx_data\(9),
	datad => \inst13|spi_slave_0|process_1~2_combout\,
	combout => \inst13|spi_slave_0|tx_buf[9]~26_combout\);

-- Location: LCCOMB_X7_Y7_N0
\inst13|spi_slave_0|tx_buf[10]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[10]~23_combout\ = \inst13|spi_slave_0|tx_buf[10]~21_combout\ $ (\inst13|spi_slave_0|tx_buf[9]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[10]~21_combout\,
	datad => \inst13|spi_slave_0|tx_buf[9]~26_combout\,
	combout => \inst13|spi_slave_0|tx_buf[10]~23_combout\);

-- Location: FF_X20_Y1_N15
\inst13|spi_slave_0|bit_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	asdata => \inst13|spi_slave_0|bit_cnt\(2),
	clrn => \ALT_INV_spi_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(3));

-- Location: FF_X20_Y1_N23
\inst13|spi_slave_0|bit_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	asdata => \inst13|spi_slave_0|bit_cnt\(3),
	clrn => \ALT_INV_spi_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(4));

-- Location: LCCOMB_X20_Y1_N22
\inst13|spi_slave_0|process_1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|process_1~1_combout\ = (!\inst13|spi_slave_0|bit_cnt\(2) & (!\inst13|spi_slave_0|bit_cnt\(3) & (!\inst13|spi_slave_0|bit_cnt\(4) & \inst13|spi_slave_0|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|bit_cnt\(2),
	datab => \inst13|spi_slave_0|bit_cnt\(3),
	datac => \inst13|spi_slave_0|bit_cnt\(4),
	datad => \inst13|spi_slave_0|bit_cnt\(1),
	combout => \inst13|spi_slave_0|process_1~1_combout\);

-- Location: LCCOMB_X20_Y1_N16
\inst13|spi_slave_0|bit_cnt[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|bit_cnt[5]~feeder_combout\ = \inst13|spi_slave_0|bit_cnt\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|spi_slave_0|bit_cnt\(4),
	combout => \inst13|spi_slave_0|bit_cnt[5]~feeder_combout\);

-- Location: FF_X20_Y1_N17
\inst13|spi_slave_0|bit_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|bit_cnt[5]~feeder_combout\,
	clrn => \ALT_INV_spi_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(5));

-- Location: LCCOMB_X20_Y1_N26
\inst13|spi_slave_0|bit_cnt[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|bit_cnt[6]~feeder_combout\ = \inst13|spi_slave_0|bit_cnt\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|spi_slave_0|bit_cnt\(5),
	combout => \inst13|spi_slave_0|bit_cnt[6]~feeder_combout\);

-- Location: FF_X20_Y1_N27
\inst13|spi_slave_0|bit_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|bit_cnt[6]~feeder_combout\,
	clrn => \ALT_INV_spi_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(6));

-- Location: FF_X20_Y1_N3
\inst13|spi_slave_0|bit_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	asdata => \inst13|spi_slave_0|bit_cnt\(6),
	clrn => \ALT_INV_spi_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(7));

-- Location: FF_X20_Y1_N5
\inst13|spi_slave_0|bit_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	asdata => \inst13|spi_slave_0|bit_cnt\(7),
	clrn => \ALT_INV_spi_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(8));

-- Location: FF_X20_Y1_N9
\inst13|spi_slave_0|bit_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	asdata => \inst13|spi_slave_0|bit_cnt\(8),
	clrn => \ALT_INV_spi_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(9));

-- Location: FF_X20_Y1_N7
\inst13|spi_slave_0|bit_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	asdata => \inst13|spi_slave_0|bit_cnt\(9),
	clrn => \ALT_INV_spi_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(10));

-- Location: FF_X20_Y1_N13
\inst13|spi_slave_0|bit_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	asdata => \inst13|spi_slave_0|bit_cnt\(10),
	clrn => \ALT_INV_spi_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(11));

-- Location: LCCOMB_X21_Y1_N24
\inst13|spi_slave_0|bit_cnt[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|bit_cnt[12]~feeder_combout\ = \inst13|spi_slave_0|bit_cnt\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|spi_slave_0|bit_cnt\(11),
	combout => \inst13|spi_slave_0|bit_cnt[12]~feeder_combout\);

-- Location: FF_X21_Y1_N25
\inst13|spi_slave_0|bit_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|bit_cnt[12]~feeder_combout\,
	clrn => \ALT_INV_spi_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(12));

-- Location: LCCOMB_X21_Y1_N16
\inst13|spi_slave_0|bit_cnt[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|bit_cnt[13]~feeder_combout\ = \inst13|spi_slave_0|bit_cnt\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|spi_slave_0|bit_cnt\(12),
	combout => \inst13|spi_slave_0|bit_cnt[13]~feeder_combout\);

-- Location: FF_X21_Y1_N17
\inst13|spi_slave_0|bit_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|bit_cnt[13]~feeder_combout\,
	clrn => \ALT_INV_spi_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(13));

-- Location: LCCOMB_X21_Y1_N18
\inst13|spi_slave_0|bit_cnt[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|bit_cnt[14]~feeder_combout\ = \inst13|spi_slave_0|bit_cnt\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|spi_slave_0|bit_cnt\(13),
	combout => \inst13|spi_slave_0|bit_cnt[14]~feeder_combout\);

-- Location: FF_X21_Y1_N19
\inst13|spi_slave_0|bit_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|bit_cnt[14]~feeder_combout\,
	clrn => \ALT_INV_spi_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(14));

-- Location: LCCOMB_X21_Y1_N20
\inst13|spi_slave_0|bit_cnt[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|bit_cnt[15]~feeder_combout\ = \inst13|spi_slave_0|bit_cnt\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|spi_slave_0|bit_cnt\(14),
	combout => \inst13|spi_slave_0|bit_cnt[15]~feeder_combout\);

-- Location: FF_X21_Y1_N21
\inst13|spi_slave_0|bit_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|bit_cnt[15]~feeder_combout\,
	clrn => \ALT_INV_spi_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(15));

-- Location: LCCOMB_X21_Y1_N10
\inst13|spi_slave_0|bit_cnt[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|bit_cnt[16]~feeder_combout\ = \inst13|spi_slave_0|bit_cnt\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|spi_slave_0|bit_cnt\(15),
	combout => \inst13|spi_slave_0|bit_cnt[16]~feeder_combout\);

-- Location: FF_X21_Y1_N11
\inst13|spi_slave_0|bit_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|bit_cnt[16]~feeder_combout\,
	clrn => \ALT_INV_spi_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(16));

-- Location: LCCOMB_X21_Y1_N22
\inst13|spi_slave_0|bit_cnt[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|bit_cnt[17]~feeder_combout\ = \inst13|spi_slave_0|bit_cnt\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|spi_slave_0|bit_cnt\(16),
	combout => \inst13|spi_slave_0|bit_cnt[17]~feeder_combout\);

-- Location: FF_X21_Y1_N23
\inst13|spi_slave_0|bit_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|bit_cnt[17]~feeder_combout\,
	clrn => \ALT_INV_spi_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(17));

-- Location: FF_X21_Y1_N31
\inst13|spi_slave_0|bit_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	asdata => \inst13|spi_slave_0|bit_cnt\(17),
	clrn => \ALT_INV_spi_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(18));

-- Location: FF_X21_Y1_N27
\inst13|spi_slave_0|bit_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	asdata => \inst13|spi_slave_0|bit_cnt\(18),
	clrn => \ALT_INV_spi_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(19));

-- Location: FF_X21_Y1_N9
\inst13|spi_slave_0|bit_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	asdata => \inst13|spi_slave_0|bit_cnt\(19),
	clrn => \ALT_INV_spi_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(20));

-- Location: FF_X21_Y1_N5
\inst13|spi_slave_0|bit_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	asdata => \inst13|spi_slave_0|bit_cnt\(20),
	clrn => \ALT_INV_spi_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(21));

-- Location: FF_X21_Y1_N1
\inst13|spi_slave_0|bit_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	asdata => \inst13|spi_slave_0|bit_cnt\(21),
	clrn => \ALT_INV_spi_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(22));

-- Location: LCCOMB_X21_Y1_N12
\inst13|spi_slave_0|bit_cnt[23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|bit_cnt[23]~feeder_combout\ = \inst13|spi_slave_0|bit_cnt\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|spi_slave_0|bit_cnt\(22),
	combout => \inst13|spi_slave_0|bit_cnt[23]~feeder_combout\);

-- Location: FF_X21_Y1_N13
\inst13|spi_slave_0|bit_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|bit_cnt[23]~feeder_combout\,
	clrn => \ALT_INV_spi_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(23));

-- Location: FF_X20_Y1_N11
\inst13|spi_slave_0|bit_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	asdata => \inst13|spi_slave_0|bit_cnt\(23),
	clrn => \ALT_INV_spi_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(24));

-- Location: LCCOMB_X20_Y1_N2
\inst13|spi_slave_0|process_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|process_1~0_combout\ = (!\inst13|spi_slave_0|bit_cnt\(6) & (!\inst13|spi_slave_0|bit_cnt\(24) & (!\inst13|spi_slave_0|bit_cnt\(7) & !\inst13|spi_slave_0|bit_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|bit_cnt\(6),
	datab => \inst13|spi_slave_0|bit_cnt\(24),
	datac => \inst13|spi_slave_0|bit_cnt\(7),
	datad => \inst13|spi_slave_0|bit_cnt\(5),
	combout => \inst13|spi_slave_0|process_1~0_combout\);

-- Location: LCCOMB_X20_Y1_N24
\inst13|spi_slave_0|process_1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|process_1~3_combout\ = (!\inst13|spi_slave_0|rd_add~q\ & (\inst13|spi_slave_0|process_1~1_combout\ & \inst13|spi_slave_0|process_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|rd_add~q\,
	datac => \inst13|spi_slave_0|process_1~1_combout\,
	datad => \inst13|spi_slave_0|process_1~0_combout\,
	combout => \inst13|spi_slave_0|process_1~3_combout\);

-- Location: FF_X7_Y7_N1
\inst13|spi_slave_0|tx_buf[10]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[10]~23_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[10]~_emulated_q\);

-- Location: LCCOMB_X7_Y7_N4
\inst13|spi_slave_0|tx_buf[10]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[10]~22_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(10))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[10]~21_combout\ $ 
-- (((\inst13|spi_slave_0|tx_buf[10]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|process_1~2_combout\,
	datab => \inst13|spi_slave_0|tx_buf[10]~21_combout\,
	datac => \inst13|spi_tx_data\(10),
	datad => \inst13|spi_slave_0|tx_buf[10]~_emulated_q\,
	combout => \inst13|spi_slave_0|tx_buf[10]~22_combout\);

-- Location: LCCOMB_X6_Y7_N2
\inst13|spi_slave_0|tx_buf[11]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[11]~19_combout\ = \inst13|spi_slave_0|tx_buf[11]~17_combout\ $ (\inst13|spi_slave_0|tx_buf[10]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|spi_slave_0|tx_buf[11]~17_combout\,
	datad => \inst13|spi_slave_0|tx_buf[10]~22_combout\,
	combout => \inst13|spi_slave_0|tx_buf[11]~19_combout\);

-- Location: FF_X6_Y7_N3
\inst13|spi_slave_0|tx_buf[11]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[11]~19_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[11]~_emulated_q\);

-- Location: LCCOMB_X6_Y7_N30
\inst13|spi_slave_0|tx_buf[11]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[11]~18_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_tx_data\(11))) # (!\inst13|spi_slave_0|process_1~2_combout\ & ((\inst13|spi_slave_0|tx_buf[11]~17_combout\ $ 
-- (\inst13|spi_slave_0|tx_buf[11]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|process_1~2_combout\,
	datab => \inst13|spi_tx_data\(11),
	datac => \inst13|spi_slave_0|tx_buf[11]~17_combout\,
	datad => \inst13|spi_slave_0|tx_buf[11]~_emulated_q\,
	combout => \inst13|spi_slave_0|tx_buf[11]~18_combout\);

-- Location: LCCOMB_X6_Y7_N12
\inst13|spi_slave_0|tx_buf[12]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[12]~15_combout\ = \inst13|spi_slave_0|tx_buf[12]~13_combout\ $ (\inst13|spi_slave_0|tx_buf[11]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[12]~13_combout\,
	datac => \inst13|spi_slave_0|tx_buf[11]~18_combout\,
	combout => \inst13|spi_slave_0|tx_buf[12]~15_combout\);

-- Location: FF_X6_Y7_N13
\inst13|spi_slave_0|tx_buf[12]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[12]~15_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[12]~_emulated_q\);

-- Location: LCCOMB_X6_Y7_N0
\inst13|spi_slave_0|tx_buf[12]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[12]~14_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_tx_data\(12))) # (!\inst13|spi_slave_0|process_1~2_combout\ & ((\inst13|spi_slave_0|tx_buf[12]~13_combout\ $ 
-- (\inst13|spi_slave_0|tx_buf[12]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_tx_data\(12),
	datab => \inst13|spi_slave_0|tx_buf[12]~13_combout\,
	datac => \inst13|spi_slave_0|process_1~2_combout\,
	datad => \inst13|spi_slave_0|tx_buf[12]~_emulated_q\,
	combout => \inst13|spi_slave_0|tx_buf[12]~14_combout\);

-- Location: LCCOMB_X6_Y7_N14
\inst13|spi_slave_0|tx_buf[13]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[13]~11_combout\ = \inst13|spi_slave_0|tx_buf[13]~9_combout\ $ (\inst13|spi_slave_0|tx_buf[12]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[13]~9_combout\,
	datad => \inst13|spi_slave_0|tx_buf[12]~14_combout\,
	combout => \inst13|spi_slave_0|tx_buf[13]~11_combout\);

-- Location: FF_X6_Y7_N15
\inst13|spi_slave_0|tx_buf[13]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[13]~11_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[13]~_emulated_q\);

-- Location: LCCOMB_X6_Y7_N10
\inst13|spi_slave_0|tx_buf[13]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[13]~10_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_tx_data\(13))) # (!\inst13|spi_slave_0|process_1~2_combout\ & ((\inst13|spi_slave_0|tx_buf[13]~_emulated_q\ $ 
-- (\inst13|spi_slave_0|tx_buf[13]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|process_1~2_combout\,
	datab => \inst13|spi_tx_data\(13),
	datac => \inst13|spi_slave_0|tx_buf[13]~_emulated_q\,
	datad => \inst13|spi_slave_0|tx_buf[13]~9_combout\,
	combout => \inst13|spi_slave_0|tx_buf[13]~10_combout\);

-- Location: LCCOMB_X6_Y7_N24
\inst13|spi_slave_0|tx_buf[14]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[14]~7_combout\ = \inst13|spi_slave_0|tx_buf[14]~5_combout\ $ (\inst13|spi_slave_0|tx_buf[13]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[14]~5_combout\,
	datad => \inst13|spi_slave_0|tx_buf[13]~10_combout\,
	combout => \inst13|spi_slave_0|tx_buf[14]~7_combout\);

-- Location: FF_X6_Y7_N25
\inst13|spi_slave_0|tx_buf[14]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[14]~7_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[14]~_emulated_q\);

-- Location: LCCOMB_X6_Y7_N28
\inst13|spi_slave_0|tx_buf[14]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[14]~6_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(14))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[14]~5_combout\ $ 
-- (((\inst13|spi_slave_0|tx_buf[14]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|process_1~2_combout\,
	datab => \inst13|spi_slave_0|tx_buf[14]~5_combout\,
	datac => \inst13|spi_tx_data\(14),
	datad => \inst13|spi_slave_0|tx_buf[14]~_emulated_q\,
	combout => \inst13|spi_slave_0|tx_buf[14]~6_combout\);

-- Location: LCCOMB_X8_Y6_N0
\inst13|spi_slave_0|tx_buf[15]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[15]~3_combout\ = \inst13|spi_slave_0|tx_buf[15]~1_combout\ $ (\inst13|spi_slave_0|tx_buf[14]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[15]~1_combout\,
	datac => \inst13|spi_slave_0|tx_buf[14]~6_combout\,
	combout => \inst13|spi_slave_0|tx_buf[15]~3_combout\);

-- Location: FF_X8_Y6_N1
\inst13|spi_slave_0|tx_buf[15]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[15]~3_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[15]~_emulated_q\);

-- Location: LCCOMB_X8_Y6_N28
\inst13|spi_slave_0|tx_buf[15]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[15]~2_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_tx_data\(15))) # (!\inst13|spi_slave_0|process_1~2_combout\ & ((\inst13|spi_slave_0|tx_buf[15]~1_combout\ $ 
-- (\inst13|spi_slave_0|tx_buf[15]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_tx_data\(15),
	datab => \inst13|spi_slave_0|tx_buf[15]~1_combout\,
	datac => \inst13|spi_slave_0|process_1~2_combout\,
	datad => \inst13|spi_slave_0|tx_buf[15]~_emulated_q\,
	combout => \inst13|spi_slave_0|tx_buf[15]~2_combout\);

-- Location: LCCOMB_X19_Y1_N20
\inst13|spi_slave_0|wr_add~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|wr_add~0_combout\ = (\inst13|spi_slave_0|bit_cnt\(1) & ((\inst13|spi_slave_0|wr_add~q\))) # (!\inst13|spi_slave_0|bit_cnt\(1) & (\spi_mosi~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_mosi~input_o\,
	datac => \inst13|spi_slave_0|wr_add~q\,
	datad => \inst13|spi_slave_0|bit_cnt\(1),
	combout => \inst13|spi_slave_0|wr_add~0_combout\);

-- Location: FF_X19_Y1_N21
\inst13|spi_slave_0|wr_add\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_sclk~input_o\,
	d => \inst13|spi_slave_0|wr_add~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|wr_add~q\);

-- Location: LCCOMB_X19_Y1_N8
\inst13|spi_slave_0|rrdy~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|rrdy~1_combout\ = (\inst13|spi_slave_0|rrdy~0_combout\) # ((!\inst13|spi_slave_0|wr_add~q\ & ((\inst13|spi_slave_0|rrdy~q\) # (\inst13|spi_slave_0|bit_cnt\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|rrdy~0_combout\,
	datab => \inst13|spi_slave_0|wr_add~q\,
	datac => \inst13|spi_slave_0|rrdy~q\,
	datad => \inst13|spi_slave_0|bit_cnt\(24),
	combout => \inst13|spi_slave_0|rrdy~1_combout\);

-- Location: FF_X19_Y1_N9
\inst13|spi_slave_0|rrdy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_sclk~input_o\,
	d => \inst13|spi_slave_0|rrdy~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|rrdy~q\);

-- Location: LCCOMB_X20_Y1_N8
\inst13|spi_slave_0|miso~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|miso~1_combout\ = (!\inst13|spi_slave_0|bit_cnt\(8) & ((\inst13|spi_slave_0|bit_cnt\(9) & ((\inst13|spi_slave_0|rrdy~q\))) # (!\inst13|spi_slave_0|bit_cnt\(9) & (\inst13|spi_slave_0|roe~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|roe~q\,
	datab => \inst13|spi_slave_0|bit_cnt\(8),
	datac => \inst13|spi_slave_0|bit_cnt\(9),
	datad => \inst13|spi_slave_0|rrdy~q\,
	combout => \inst13|spi_slave_0|miso~1_combout\);

-- Location: LCCOMB_X19_Y1_N24
\inst13|spi_slave_0|miso~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|miso~2_combout\ = (\inst13|spi_slave_0|rd_add~q\ & ((\inst13|spi_slave_0|miso~0_combout\) # ((\inst13|spi_slave_0|miso~1_combout\)))) # (!\inst13|spi_slave_0|rd_add~q\ & (((\inst13|spi_slave_0|tx_buf[15]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|miso~0_combout\,
	datab => \inst13|spi_slave_0|rd_add~q\,
	datac => \inst13|spi_slave_0|tx_buf[15]~2_combout\,
	datad => \inst13|spi_slave_0|miso~1_combout\,
	combout => \inst13|spi_slave_0|miso~2_combout\);

-- Location: LCCOMB_X20_Y1_N6
\inst13|spi_slave_0|miso~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|miso~3_combout\ = (\inst13|spi_slave_0|rd_add~q\ & ((\inst13|spi_slave_0|bit_cnt\(9) & (!\inst13|spi_slave_0|bit_cnt\(10) & !\inst13|spi_slave_0|bit_cnt\(8))) # (!\inst13|spi_slave_0|bit_cnt\(9) & (\inst13|spi_slave_0|bit_cnt\(10) $ 
-- (\inst13|spi_slave_0|bit_cnt\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|rd_add~q\,
	datab => \inst13|spi_slave_0|bit_cnt\(9),
	datac => \inst13|spi_slave_0|bit_cnt\(10),
	datad => \inst13|spi_slave_0|bit_cnt\(8),
	combout => \inst13|spi_slave_0|miso~3_combout\);

-- Location: LCCOMB_X20_Y1_N20
\inst13|spi_slave_0|miso~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|miso~4_combout\ = (\inst13|spi_slave_0|miso~3_combout\) # ((!\inst13|spi_slave_0|rd_add~q\ & (\inst13|spi_slave_0|process_1~0_combout\ & \inst13|spi_slave_0|process_1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|rd_add~q\,
	datab => \inst13|spi_slave_0|process_1~0_combout\,
	datac => \inst13|spi_slave_0|process_1~1_combout\,
	datad => \inst13|spi_slave_0|miso~3_combout\,
	combout => \inst13|spi_slave_0|miso~4_combout\);

-- Location: FF_X19_Y1_N25
\inst13|spi_slave_0|miso~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|miso~2_combout\,
	ena => \inst13|spi_slave_0|miso~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|miso~reg0_q\);

-- Location: LCCOMB_X19_Y1_N26
\inst13|spi_slave_0|miso~enfeeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|miso~enfeeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst13|spi_slave_0|miso~enfeeder_combout\);

-- Location: FF_X19_Y1_N27
\inst13|spi_slave_0|miso~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|miso~enfeeder_combout\,
	clrn => \ALT_INV_spi_ss_n~input_o\,
	ena => \inst13|spi_slave_0|miso~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|miso~en_q\);

-- Location: IOIBUF_X41_Y15_N1
\clock_50~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_50,
	o => \clock_50~input_o\);

-- Location: CLKCTRL_G9
\clock_50~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y14_N16
\inst13|prev_data~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|prev_data~feeder_combout\ = \SW0~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW0~input_o\,
	combout => \inst13|prev_data~feeder_combout\);

-- Location: FF_X1_Y14_N17
\inst13|prev_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst13|prev_data~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|prev_data~q\);

-- Location: PLL_2
\inst|altpll_component|auto_generated|pll1\ : cycloneiii_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 250,
	c0_initial => 1,
	c0_low => 250,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 50,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 10,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 3403,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 250,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \inst|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G8
\inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: IOIBUF_X0_Y21_N8
\button0_read~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button0_read,
	o => \button0_read~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\button1_reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button1_reset,
	o => \button1_reset~input_o\);

-- Location: LCCOMB_X9_Y9_N2
\inst8|Looped~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Looped~2_combout\ = (\inst8|fifo_proc~5_combout\) # ((\inst8|Full~5_combout\ & !\inst8|Full~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Full~5_combout\,
	datac => \inst8|fifo_proc~5_combout\,
	datad => \inst8|Full~q\,
	combout => \inst8|Looped~2_combout\);

-- Location: FF_X9_Y9_N3
\inst8|fifo_proc:Looped\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|Looped~2_combout\,
	sclr => \button1_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc:Looped~q\);

-- Location: LCCOMB_X12_Y9_N0
\inst8|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Add0~0_combout\ = (\inst8|fifo_proc:Tail[0]~q\ & (\inst8|Tail~0_combout\ $ (GND))) # (!\inst8|fifo_proc:Tail[0]~q\ & (!\inst8|Tail~0_combout\ & VCC))
-- \inst8|Add0~1\ = CARRY((\inst8|fifo_proc:Tail[0]~q\ & !\inst8|Tail~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Tail[0]~q\,
	datab => \inst8|Tail~0_combout\,
	datad => VCC,
	combout => \inst8|Add0~0_combout\,
	cout => \inst8|Add0~1\);

-- Location: LCCOMB_X9_Y9_N28
\inst8|Tail~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Tail~1_combout\ = (!\button1_reset~input_o\ & \inst8|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button1_reset~input_o\,
	datac => \inst8|Add0~0_combout\,
	combout => \inst8|Tail~1_combout\);

-- Location: FF_X9_Y9_N29
\inst8|fifo_proc:Tail[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|Tail~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc:Tail[0]~q\);

-- Location: LCCOMB_X12_Y9_N4
\inst8|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Add0~4_combout\ = (\inst8|fifo_proc:Tail[2]~q\ & (\inst8|Add0~3\ $ (GND))) # (!\inst8|fifo_proc:Tail[2]~q\ & (!\inst8|Add0~3\ & VCC))
-- \inst8|Add0~5\ = CARRY((\inst8|fifo_proc:Tail[2]~q\ & !\inst8|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Tail[2]~q\,
	datad => VCC,
	cin => \inst8|Add0~3\,
	combout => \inst8|Add0~4_combout\,
	cout => \inst8|Add0~5\);

-- Location: LCCOMB_X12_Y9_N16
\inst8|Tail~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Tail~3_combout\ = (\inst8|Add0~4_combout\ & !\button1_reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|Add0~4_combout\,
	datad => \button1_reset~input_o\,
	combout => \inst8|Tail~3_combout\);

-- Location: FF_X12_Y9_N17
\inst8|fifo_proc:Tail[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|Tail~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc:Tail[2]~q\);

-- Location: LCCOMB_X12_Y9_N2
\inst8|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Add0~2_combout\ = (\inst8|fifo_proc:Tail[1]~q\ & (!\inst8|Add0~1\)) # (!\inst8|fifo_proc:Tail[1]~q\ & ((\inst8|Add0~1\) # (GND)))
-- \inst8|Add0~3\ = CARRY((!\inst8|Add0~1\) # (!\inst8|fifo_proc:Tail[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Tail[1]~q\,
	datad => VCC,
	cin => \inst8|Add0~1\,
	combout => \inst8|Add0~2_combout\,
	cout => \inst8|Add0~3\);

-- Location: LCCOMB_X9_Y9_N6
\inst8|Tail~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Tail~2_combout\ = (!\button1_reset~input_o\ & \inst8|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button1_reset~input_o\,
	datac => \inst8|Add0~2_combout\,
	combout => \inst8|Tail~2_combout\);

-- Location: FF_X9_Y9_N7
\inst8|fifo_proc:Tail[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|Tail~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc:Tail[1]~q\);

-- Location: LCCOMB_X9_Y9_N22
\inst8|Looped~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Looped~0_combout\ = (((!\inst8|fifo_proc:Tail[1]~q\) # (!\inst8|fifo_proc:Tail[2]~q\)) # (!\inst8|fifo_proc:Tail[0]~q\)) # (!\button0_read~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button0_read~input_o\,
	datab => \inst8|fifo_proc:Tail[0]~q\,
	datac => \inst8|fifo_proc:Tail[2]~q\,
	datad => \inst8|fifo_proc:Tail[1]~q\,
	combout => \inst8|Looped~0_combout\);

-- Location: LCCOMB_X12_Y9_N10
\inst8|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Add0~10_combout\ = (\inst8|fifo_proc:Tail[5]~q\ & (!\inst8|Add0~9\)) # (!\inst8|fifo_proc:Tail[5]~q\ & ((\inst8|Add0~9\) # (GND)))
-- \inst8|Add0~11\ = CARRY((!\inst8|Add0~9\) # (!\inst8|fifo_proc:Tail[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Tail[5]~q\,
	datad => VCC,
	cin => \inst8|Add0~9\,
	combout => \inst8|Add0~10_combout\,
	cout => \inst8|Add0~11\);

-- Location: LCCOMB_X12_Y9_N12
\inst8|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Add0~12_combout\ = (\inst8|fifo_proc:Tail[6]~q\ & (\inst8|Add0~11\ $ (GND))) # (!\inst8|fifo_proc:Tail[6]~q\ & (!\inst8|Add0~11\ & VCC))
-- \inst8|Add0~13\ = CARRY((\inst8|fifo_proc:Tail[6]~q\ & !\inst8|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Tail[6]~q\,
	datad => VCC,
	cin => \inst8|Add0~11\,
	combout => \inst8|Add0~12_combout\,
	cout => \inst8|Add0~13\);

-- Location: LCCOMB_X11_Y9_N12
\inst8|Tail~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Tail~8_combout\ = (\inst8|Add0~12_combout\ & !\button1_reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|Add0~12_combout\,
	datad => \button1_reset~input_o\,
	combout => \inst8|Tail~8_combout\);

-- Location: FF_X11_Y9_N13
\inst8|fifo_proc:Tail[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|Tail~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc:Tail[6]~q\);

-- Location: LCCOMB_X12_Y9_N6
\inst8|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Add0~6_combout\ = (\inst8|fifo_proc:Tail[3]~q\ & (!\inst8|Add0~5\)) # (!\inst8|fifo_proc:Tail[3]~q\ & ((\inst8|Add0~5\) # (GND)))
-- \inst8|Add0~7\ = CARRY((!\inst8|Add0~5\) # (!\inst8|fifo_proc:Tail[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Tail[3]~q\,
	datad => VCC,
	cin => \inst8|Add0~5\,
	combout => \inst8|Add0~6_combout\,
	cout => \inst8|Add0~7\);

-- Location: LCCOMB_X12_Y9_N18
\inst8|Tail~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Tail~4_combout\ = (!\button1_reset~input_o\ & \inst8|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button1_reset~input_o\,
	datad => \inst8|Add0~6_combout\,
	combout => \inst8|Tail~4_combout\);

-- Location: FF_X12_Y9_N19
\inst8|fifo_proc:Tail[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|Tail~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc:Tail[3]~q\);

-- Location: LCCOMB_X12_Y9_N8
\inst8|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Add0~8_combout\ = (\inst8|fifo_proc:Tail[4]~q\ & (\inst8|Add0~7\ $ (GND))) # (!\inst8|fifo_proc:Tail[4]~q\ & (!\inst8|Add0~7\ & VCC))
-- \inst8|Add0~9\ = CARRY((\inst8|fifo_proc:Tail[4]~q\ & !\inst8|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Tail[4]~q\,
	datad => VCC,
	cin => \inst8|Add0~7\,
	combout => \inst8|Add0~8_combout\,
	cout => \inst8|Add0~9\);

-- Location: LCCOMB_X11_Y9_N8
\inst8|Tail~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Tail~5_combout\ = (\inst8|Add0~8_combout\ & !\button1_reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|Add0~8_combout\,
	datad => \button1_reset~input_o\,
	combout => \inst8|Tail~5_combout\);

-- Location: FF_X11_Y9_N9
\inst8|fifo_proc:Tail[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|Tail~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc:Tail[4]~q\);

-- Location: LCCOMB_X12_Y9_N24
\inst8|Looped~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Looped~1_combout\ = (((!\inst8|fifo_proc:Tail[4]~q\) # (!\inst8|fifo_proc:Tail[3]~q\)) # (!\inst8|fifo_proc:Tail[6]~q\)) # (!\inst8|fifo_proc:Tail[5]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Tail[5]~q\,
	datab => \inst8|fifo_proc:Tail[6]~q\,
	datac => \inst8|fifo_proc:Tail[3]~q\,
	datad => \inst8|fifo_proc:Tail[4]~q\,
	combout => \inst8|Looped~1_combout\);

-- Location: LCCOMB_X9_Y9_N8
\inst8|fifo_proc~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc~5_combout\ = (\inst8|fifo_proc:Looped~q\ & (((\inst8|Looped~0_combout\) # (\inst8|Looped~1_combout\)) # (!\inst8|fifo_proc:Tail[7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Tail[7]~q\,
	datab => \inst8|fifo_proc:Looped~q\,
	datac => \inst8|Looped~0_combout\,
	datad => \inst8|Looped~1_combout\,
	combout => \inst8|fifo_proc~5_combout\);

-- Location: LCCOMB_X10_Y9_N14
\inst8|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Add1~10_combout\ = (\inst8|fifo_proc:Head[5]~q\ & (!\inst8|Add1~9\)) # (!\inst8|fifo_proc:Head[5]~q\ & ((\inst8|Add1~9\) # (GND)))
-- \inst8|Add1~11\ = CARRY((!\inst8|Add1~9\) # (!\inst8|fifo_proc:Head[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Head[5]~q\,
	datad => VCC,
	cin => \inst8|Add1~9\,
	combout => \inst8|Add1~10_combout\,
	cout => \inst8|Add1~11\);

-- Location: LCCOMB_X11_Y9_N4
\inst8|Head~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Head~5_combout\ = (!\button1_reset~input_o\ & \inst8|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button1_reset~input_o\,
	datad => \inst8|Add1~10_combout\,
	combout => \inst8|Head~5_combout\);

-- Location: FF_X11_Y9_N5
\inst8|fifo_proc:Head[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|Head~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc:Head[5]~q\);

-- Location: LCCOMB_X11_Y9_N24
\inst8|fifo_proc~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc~8_combout\ = (\inst8|Add0~10_combout\ & (\inst8|fifo_proc:Head[5]~q\ & (\inst8|fifo_proc:Head[4]~q\ $ (!\inst8|Add0~8_combout\)))) # (!\inst8|Add0~10_combout\ & (!\inst8|fifo_proc:Head[5]~q\ & (\inst8|fifo_proc:Head[4]~q\ $ 
-- (!\inst8|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~10_combout\,
	datab => \inst8|fifo_proc:Head[4]~q\,
	datac => \inst8|fifo_proc:Head[5]~q\,
	datad => \inst8|Add0~8_combout\,
	combout => \inst8|fifo_proc~8_combout\);

-- Location: LCCOMB_X10_Y9_N6
\inst8|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Add1~2_combout\ = (\inst8|fifo_proc:Head[1]~q\ & (!\inst8|Add1~1\)) # (!\inst8|fifo_proc:Head[1]~q\ & ((\inst8|Add1~1\) # (GND)))
-- \inst8|Add1~3\ = CARRY((!\inst8|Add1~1\) # (!\inst8|fifo_proc:Head[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Head[1]~q\,
	datad => VCC,
	cin => \inst8|Add1~1\,
	combout => \inst8|Add1~2_combout\,
	cout => \inst8|Add1~3\);

-- Location: LCCOMB_X9_Y9_N16
\inst8|Head~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Head~1_combout\ = (!\button1_reset~input_o\ & \inst8|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button1_reset~input_o\,
	datad => \inst8|Add1~2_combout\,
	combout => \inst8|Head~1_combout\);

-- Location: FF_X9_Y9_N17
\inst8|fifo_proc:Head[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|Head~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc:Head[1]~q\);

-- Location: LCCOMB_X9_Y9_N18
\inst8|fifo_proc~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc~6_combout\ = (\inst8|fifo_proc:Head[0]~q\ & (\inst8|Add0~0_combout\ & (\inst8|Add0~2_combout\ $ (!\inst8|fifo_proc:Head[1]~q\)))) # (!\inst8|fifo_proc:Head[0]~q\ & (!\inst8|Add0~0_combout\ & (\inst8|Add0~2_combout\ $ 
-- (!\inst8|fifo_proc:Head[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Head[0]~q\,
	datab => \inst8|Add0~2_combout\,
	datac => \inst8|Add0~0_combout\,
	datad => \inst8|fifo_proc:Head[1]~q\,
	combout => \inst8|fifo_proc~6_combout\);

-- Location: LCCOMB_X12_Y9_N14
\inst8|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Add0~14_combout\ = \inst8|fifo_proc:Tail[7]~q\ $ (\inst8|Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Tail[7]~q\,
	cin => \inst8|Add0~13\,
	combout => \inst8|Add0~14_combout\);

-- Location: LCCOMB_X11_Y9_N2
\inst8|fifo_proc~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc~9_combout\ = (\inst8|fifo_proc:Head[6]~q\ & (\inst8|Add0~12_combout\ & (\inst8|Add0~14_combout\ $ (!\inst8|fifo_proc:Head[7]~q\)))) # (!\inst8|fifo_proc:Head[6]~q\ & (!\inst8|Add0~12_combout\ & (\inst8|Add0~14_combout\ $ 
-- (!\inst8|fifo_proc:Head[7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Head[6]~q\,
	datab => \inst8|Add0~14_combout\,
	datac => \inst8|Add0~12_combout\,
	datad => \inst8|fifo_proc:Head[7]~q\,
	combout => \inst8|fifo_proc~9_combout\);

-- Location: LCCOMB_X11_Y9_N28
\inst8|fifo_proc~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc~10_combout\ = (\inst8|fifo_proc~7_combout\ & (\inst8|fifo_proc~8_combout\ & (\inst8|fifo_proc~6_combout\ & \inst8|fifo_proc~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc~7_combout\,
	datab => \inst8|fifo_proc~8_combout\,
	datac => \inst8|fifo_proc~6_combout\,
	datad => \inst8|fifo_proc~9_combout\,
	combout => \inst8|fifo_proc~10_combout\);

-- Location: LCCOMB_X9_Y9_N20
\inst8|Head~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Head~0_combout\ = ((\inst8|Full~q\) # ((\inst8|fifo_proc~5_combout\ & \inst8|fifo_proc~10_combout\))) # (!\inst15|result~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|result~q\,
	datab => \inst8|Full~q\,
	datac => \inst8|fifo_proc~5_combout\,
	datad => \inst8|fifo_proc~10_combout\,
	combout => \inst8|Head~0_combout\);

-- Location: LCCOMB_X10_Y9_N8
\inst8|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Add1~4_combout\ = (\inst8|fifo_proc:Head[2]~q\ & (\inst8|Add1~3\ $ (GND))) # (!\inst8|fifo_proc:Head[2]~q\ & (!\inst8|Add1~3\ & VCC))
-- \inst8|Add1~5\ = CARRY((\inst8|fifo_proc:Head[2]~q\ & !\inst8|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|fifo_proc:Head[2]~q\,
	datad => VCC,
	cin => \inst8|Add1~3\,
	combout => \inst8|Add1~4_combout\,
	cout => \inst8|Add1~5\);

-- Location: LCCOMB_X12_Y9_N28
\inst8|Head~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Head~4_combout\ = (!\button1_reset~input_o\ & \inst8|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button1_reset~input_o\,
	datad => \inst8|Add1~4_combout\,
	combout => \inst8|Head~4_combout\);

-- Location: FF_X12_Y9_N29
\inst8|fifo_proc:Head[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|Head~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc:Head[2]~q\);

-- Location: LCCOMB_X10_Y9_N10
\inst8|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Add1~6_combout\ = (\inst8|fifo_proc:Head[3]~q\ & (!\inst8|Add1~5\)) # (!\inst8|fifo_proc:Head[3]~q\ & ((\inst8|Add1~5\) # (GND)))
-- \inst8|Add1~7\ = CARRY((!\inst8|Add1~5\) # (!\inst8|fifo_proc:Head[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|fifo_proc:Head[3]~q\,
	datad => VCC,
	cin => \inst8|Add1~5\,
	combout => \inst8|Add1~6_combout\,
	cout => \inst8|Add1~7\);

-- Location: LCCOMB_X10_Y9_N24
\inst8|Head~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Head~3_combout\ = (!\button1_reset~input_o\ & \inst8|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button1_reset~input_o\,
	datad => \inst8|Add1~6_combout\,
	combout => \inst8|Head~3_combout\);

-- Location: FF_X10_Y9_N25
\inst8|fifo_proc:Head[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|Head~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc:Head[3]~q\);

-- Location: LCCOMB_X10_Y9_N12
\inst8|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Add1~8_combout\ = (\inst8|fifo_proc:Head[4]~q\ & (\inst8|Add1~7\ $ (GND))) # (!\inst8|fifo_proc:Head[4]~q\ & (!\inst8|Add1~7\ & VCC))
-- \inst8|Add1~9\ = CARRY((\inst8|fifo_proc:Head[4]~q\ & !\inst8|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|fifo_proc:Head[4]~q\,
	datad => VCC,
	cin => \inst8|Add1~7\,
	combout => \inst8|Add1~8_combout\,
	cout => \inst8|Add1~9\);

-- Location: LCCOMB_X11_Y9_N14
\inst8|Head~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Head~6_combout\ = (!\button1_reset~input_o\ & \inst8|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button1_reset~input_o\,
	datad => \inst8|Add1~8_combout\,
	combout => \inst8|Head~6_combout\);

-- Location: FF_X11_Y9_N15
\inst8|fifo_proc:Head[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|Head~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc:Head[4]~q\);

-- Location: LCCOMB_X10_Y9_N16
\inst8|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Add1~12_combout\ = (\inst8|fifo_proc:Head[6]~q\ & (\inst8|Add1~11\ $ (GND))) # (!\inst8|fifo_proc:Head[6]~q\ & (!\inst8|Add1~11\ & VCC))
-- \inst8|Add1~13\ = CARRY((\inst8|fifo_proc:Head[6]~q\ & !\inst8|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Head[6]~q\,
	datad => VCC,
	cin => \inst8|Add1~11\,
	combout => \inst8|Add1~12_combout\,
	cout => \inst8|Add1~13\);

-- Location: LCCOMB_X10_Y9_N18
\inst8|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Add1~14_combout\ = \inst8|fifo_proc:Head[7]~q\ $ (\inst8|Add1~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Head[7]~q\,
	cin => \inst8|Add1~13\,
	combout => \inst8|Add1~14_combout\);

-- Location: LCCOMB_X11_Y9_N16
\inst8|Head~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Head~8_combout\ = (!\button1_reset~input_o\ & \inst8|Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button1_reset~input_o\,
	datad => \inst8|Add1~14_combout\,
	combout => \inst8|Head~8_combout\);

-- Location: FF_X11_Y9_N17
\inst8|fifo_proc:Head[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|Head~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc:Head[7]~q\);

-- Location: LCCOMB_X11_Y9_N30
\inst8|Head~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Head~7_combout\ = (\inst8|Add1~12_combout\ & !\button1_reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|Add1~12_combout\,
	datad => \button1_reset~input_o\,
	combout => \inst8|Head~7_combout\);

-- Location: FF_X11_Y9_N31
\inst8|fifo_proc:Head[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|Head~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc:Head[6]~q\);

-- Location: LCCOMB_X11_Y9_N26
\inst8|Tail~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Tail~7_combout\ = (\inst8|Add0~14_combout\ & !\button1_reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|Add0~14_combout\,
	datad => \button1_reset~input_o\,
	combout => \inst8|Tail~7_combout\);

-- Location: FF_X11_Y9_N27
\inst8|fifo_proc:Tail[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|Tail~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc:Tail[7]~q\);

-- Location: LCCOMB_X11_Y9_N18
\inst8|fifo_proc~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc~3_combout\ = (\inst8|fifo_proc:Tail[6]~q\ & (\inst8|fifo_proc:Head[6]~q\ & (\inst8|fifo_proc:Head[7]~q\ $ (!\inst8|fifo_proc:Tail[7]~q\)))) # (!\inst8|fifo_proc:Tail[6]~q\ & (!\inst8|fifo_proc:Head[6]~q\ & (\inst8|fifo_proc:Head[7]~q\ $ 
-- (!\inst8|fifo_proc:Tail[7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Tail[6]~q\,
	datab => \inst8|fifo_proc:Head[7]~q\,
	datac => \inst8|fifo_proc:Head[6]~q\,
	datad => \inst8|fifo_proc:Tail[7]~q\,
	combout => \inst8|fifo_proc~3_combout\);

-- Location: LCCOMB_X12_Y9_N30
\inst8|fifo_proc~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc~1_combout\ = (\inst8|fifo_proc:Tail[3]~q\ & (\inst8|fifo_proc:Head[3]~q\ & (\inst8|fifo_proc:Tail[2]~q\ $ (!\inst8|fifo_proc:Head[2]~q\)))) # (!\inst8|fifo_proc:Tail[3]~q\ & (!\inst8|fifo_proc:Head[3]~q\ & (\inst8|fifo_proc:Tail[2]~q\ $ 
-- (!\inst8|fifo_proc:Head[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Tail[3]~q\,
	datab => \inst8|fifo_proc:Head[3]~q\,
	datac => \inst8|fifo_proc:Tail[2]~q\,
	datad => \inst8|fifo_proc:Head[2]~q\,
	combout => \inst8|fifo_proc~1_combout\);

-- Location: LCCOMB_X11_Y9_N0
\inst8|fifo_proc~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc~2_combout\ = (\inst8|fifo_proc:Tail[5]~q\ & (\inst8|fifo_proc:Head[5]~q\ & (\inst8|fifo_proc:Head[4]~q\ $ (!\inst8|fifo_proc:Tail[4]~q\)))) # (!\inst8|fifo_proc:Tail[5]~q\ & (!\inst8|fifo_proc:Head[5]~q\ & (\inst8|fifo_proc:Head[4]~q\ $ 
-- (!\inst8|fifo_proc:Tail[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Tail[5]~q\,
	datab => \inst8|fifo_proc:Head[5]~q\,
	datac => \inst8|fifo_proc:Head[4]~q\,
	datad => \inst8|fifo_proc:Tail[4]~q\,
	combout => \inst8|fifo_proc~2_combout\);

-- Location: LCCOMB_X11_Y9_N20
\inst8|fifo_proc~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc~4_combout\ = (\inst8|fifo_proc~0_combout\ & (\inst8|fifo_proc~3_combout\ & (\inst8|fifo_proc~1_combout\ & \inst8|fifo_proc~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc~0_combout\,
	datab => \inst8|fifo_proc~3_combout\,
	datac => \inst8|fifo_proc~1_combout\,
	datad => \inst8|fifo_proc~2_combout\,
	combout => \inst8|fifo_proc~4_combout\);

-- Location: LCCOMB_X11_Y9_N6
\inst8|Tail~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Tail~0_combout\ = ((!\inst8|fifo_proc:Looped~q\ & \inst8|fifo_proc~4_combout\)) # (!\button0_read~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Looped~q\,
	datab => \button0_read~input_o\,
	datad => \inst8|fifo_proc~4_combout\,
	combout => \inst8|Tail~0_combout\);

-- Location: LCCOMB_X10_Y9_N26
\inst8|Full~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Full~1_combout\ = (\inst8|Add1~8_combout\ & (\inst8|Add0~8_combout\ & (\inst8|Add0~10_combout\ $ (!\inst8|Add1~10_combout\)))) # (!\inst8|Add1~8_combout\ & (!\inst8|Add0~8_combout\ & (\inst8|Add0~10_combout\ $ (!\inst8|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add1~8_combout\,
	datab => \inst8|Add0~10_combout\,
	datac => \inst8|Add1~10_combout\,
	datad => \inst8|Add0~8_combout\,
	combout => \inst8|Full~1_combout\);

-- Location: LCCOMB_X9_Y9_N14
\inst8|Full~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Full~0_combout\ = (\inst8|Add1~0_combout\ & (\inst8|Add0~0_combout\ & (\inst8|Add0~2_combout\ $ (!\inst8|Add1~2_combout\)))) # (!\inst8|Add1~0_combout\ & (!\inst8|Add0~0_combout\ & (\inst8|Add0~2_combout\ $ (!\inst8|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add1~0_combout\,
	datab => \inst8|Add0~2_combout\,
	datac => \inst8|Add0~0_combout\,
	datad => \inst8|Add1~2_combout\,
	combout => \inst8|Full~0_combout\);

-- Location: LCCOMB_X10_Y9_N22
\inst8|Full~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Full~6_combout\ = (\inst8|Add1~6_combout\ & ((\inst8|Add0~4_combout\ $ (\inst8|Add1~4_combout\)) # (!\inst8|Add0~6_combout\))) # (!\inst8|Add1~6_combout\ & ((\inst8|Add0~6_combout\) # (\inst8|Add0~4_combout\ $ (\inst8|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add1~6_combout\,
	datab => \inst8|Add0~6_combout\,
	datac => \inst8|Add0~4_combout\,
	datad => \inst8|Add1~4_combout\,
	combout => \inst8|Full~6_combout\);

-- Location: LCCOMB_X9_Y9_N12
\inst8|Full~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Full~7_combout\ = (!\inst8|Full~6_combout\ & ((\inst8|Full~5_combout\) # ((\inst8|Full~q\) # (\inst8|fifo_proc~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Full~5_combout\,
	datab => \inst8|Full~q\,
	datac => \inst8|fifo_proc~5_combout\,
	datad => \inst8|Full~6_combout\,
	combout => \inst8|Full~7_combout\);

-- Location: LCCOMB_X9_Y9_N24
\inst8|Full~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Full~8_combout\ = (\inst8|Full~2_combout\ & (\inst8|Full~1_combout\ & (\inst8|Full~0_combout\ & \inst8|Full~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Full~2_combout\,
	datab => \inst8|Full~1_combout\,
	datac => \inst8|Full~0_combout\,
	datad => \inst8|Full~7_combout\,
	combout => \inst8|Full~8_combout\);

-- Location: FF_X9_Y9_N25
\inst8|Full\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|Full~8_combout\,
	sclr => \button1_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|Full~q\);

-- Location: LCCOMB_X20_Y1_N10
\inst13|spi_slave_0|trdy~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|trdy~0_combout\ = (\inst13|spi_slave_0|trdy~q\) # ((\inst13|spi_slave_0|bit_cnt\(24) & !\inst13|spi_slave_0|rd_add~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|trdy~q\,
	datac => \inst13|spi_slave_0|bit_cnt\(24),
	datad => \inst13|spi_slave_0|rd_add~q\,
	combout => \inst13|spi_slave_0|trdy~0_combout\);

-- Location: LCCOMB_X20_Y1_N30
\inst13|spi_slave_0|trdy~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|trdy~1_combout\ = (\inst13|spi_slave_0|wr_add~q\ & ((\inst13|spi_slave_0|bit_cnt\(9) & (!\spi_mosi~input_o\)) # (!\inst13|spi_slave_0|bit_cnt\(9) & ((\inst13|spi_slave_0|trdy~0_combout\))))) # (!\inst13|spi_slave_0|wr_add~q\ & 
-- (((\inst13|spi_slave_0|trdy~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_mosi~input_o\,
	datab => \inst13|spi_slave_0|wr_add~q\,
	datac => \inst13|spi_slave_0|bit_cnt\(9),
	datad => \inst13|spi_slave_0|trdy~0_combout\,
	combout => \inst13|spi_slave_0|trdy~1_combout\);

-- Location: FF_X20_Y1_N31
\inst13|spi_slave_0|trdy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_sclk~input_o\,
	d => \inst13|spi_slave_0|trdy~1_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|trdy~q\);

-- Location: IOIBUF_X1_Y0_N22
\spi_reset_n~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_spi_reset_n,
	o => \spi_reset_n~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\SW2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2,
	o => \SW2~input_o\);
END structure;


