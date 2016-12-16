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

-- DATE "12/16/2016 21:39:28"

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
	button0_read : IN std_logic;
	button1_reset : IN std_logic;
	sensor0 : IN std_logic;
	led_fifo_full : OUT std_logic;
	spi_miso : OUT std_logic;
	spi_trdy : OUT std_logic;
	lighthouse_led : OUT std_logic;
	led_fifo_empty : OUT std_logic;
	LCD0 : OUT std_logic_vector(7 DOWNTO 0);
	LCD1 : OUT std_logic_vector(7 DOWNTO 0);
	LCD2 : OUT std_logic_vector(7 DOWNTO 0);
	LCD3 : OUT std_logic_vector(7 DOWNTO 0);
	led : OUT std_logic_vector(3 DOWNTO 0);
	SW0 : IN std_logic;
	SW1 : IN std_logic;
	SW2 : IN std_logic
	);
END darkroom_top;

-- Design Ports Information
-- sensor0_led	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_reset_n	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- led_fifo_full	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_miso	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- spi_trdy	=>  Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lighthouse_led	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_fifo_empty	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- SW0	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button0_read	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_50	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button1_reset	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_mosi	=>  Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- spi_sclk	=>  Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sensor0	=>  Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- spi_ss_n	=>  Location: PIN_V5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_button0_read : std_logic;
SIGNAL ww_button1_reset : std_logic;
SIGNAL ww_sensor0 : std_logic;
SIGNAL ww_led_fifo_full : std_logic;
SIGNAL ww_spi_miso : std_logic;
SIGNAL ww_spi_trdy : std_logic;
SIGNAL ww_lighthouse_led : std_logic;
SIGNAL ww_led_fifo_empty : std_logic;
SIGNAL ww_LCD0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LCD1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LCD2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LCD3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_led : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW0 : std_logic;
SIGNAL ww_SW1 : std_logic;
SIGNAL ww_SW2 : std_logic;
SIGNAL \inst|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst13|spi_slave_0|process_1~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst19|Add0~14_combout\ : std_logic;
SIGNAL \inst19|Add0~20_combout\ : std_logic;
SIGNAL \inst19|Add0~30_combout\ : std_logic;
SIGNAL \inst19|Add0~32_combout\ : std_logic;
SIGNAL \inst19|Add0~34_combout\ : std_logic;
SIGNAL \inst19|Add0~36_combout\ : std_logic;
SIGNAL \inst19|Add0~38_combout\ : std_logic;
SIGNAL \inst19|Add0~42_combout\ : std_logic;
SIGNAL \inst19|Add0~58_combout\ : std_logic;
SIGNAL \inst19|Add2~0_combout\ : std_logic;
SIGNAL \inst19|Add2~4_combout\ : std_logic;
SIGNAL \inst19|Add2~10_combout\ : std_logic;
SIGNAL \inst19|Add2~16_combout\ : std_logic;
SIGNAL \inst19|Add2~18_combout\ : std_logic;
SIGNAL \inst19|Add2~24_combout\ : std_logic;
SIGNAL \inst19|Add2~28_combout\ : std_logic;
SIGNAL \inst19|Add2~30_combout\ : std_logic;
SIGNAL \inst19|Add2~34_combout\ : std_logic;
SIGNAL \inst19|Add2~36_combout\ : std_logic;
SIGNAL \inst19|Add2~42_combout\ : std_logic;
SIGNAL \inst19|Add2~48_combout\ : std_logic;
SIGNAL \inst19|Add2~50_combout\ : std_logic;
SIGNAL \inst19|Add2~59\ : std_logic;
SIGNAL \inst19|Add2~61\ : std_logic;
SIGNAL \inst19|Add2~60_combout\ : std_logic;
SIGNAL \inst19|Add2~62_combout\ : std_logic;
SIGNAL \inst19|Add3~0_combout\ : std_logic;
SIGNAL \inst19|Add3~6_combout\ : std_logic;
SIGNAL \inst19|Add3~8_combout\ : std_logic;
SIGNAL \inst19|Add3~10_combout\ : std_logic;
SIGNAL \inst19|Add3~12_combout\ : std_logic;
SIGNAL \inst19|Add3~14_combout\ : std_logic;
SIGNAL \inst19|Add3~24_combout\ : std_logic;
SIGNAL \inst19|Add3~38_combout\ : std_logic;
SIGNAL \inst19|Add3~40_combout\ : std_logic;
SIGNAL \inst19|Add3~42_combout\ : std_logic;
SIGNAL \inst19|Add3~44_combout\ : std_logic;
SIGNAL \inst19|Add3~46_combout\ : std_logic;
SIGNAL \inst19|Add3~48_combout\ : std_logic;
SIGNAL \inst19|Add3~50_combout\ : std_logic;
SIGNAL \inst19|Add3~52_combout\ : std_logic;
SIGNAL \inst19|Add4~2_combout\ : std_logic;
SIGNAL \inst19|Add4~10_combout\ : std_logic;
SIGNAL \inst19|Add4~12_combout\ : std_logic;
SIGNAL \inst19|Add4~18_combout\ : std_logic;
SIGNAL \inst19|Add4~22_combout\ : std_logic;
SIGNAL \inst19|Add4~24_combout\ : std_logic;
SIGNAL \inst19|Add4~26_combout\ : std_logic;
SIGNAL \inst19|Add4~28_combout\ : std_logic;
SIGNAL \inst19|Add4~30_combout\ : std_logic;
SIGNAL \inst19|Add4~32_combout\ : std_logic;
SIGNAL \inst19|Add4~34_combout\ : std_logic;
SIGNAL \inst19|Add4~36_combout\ : std_logic;
SIGNAL \inst19|Add4~38_combout\ : std_logic;
SIGNAL \inst19|Add4~40_combout\ : std_logic;
SIGNAL \inst19|Add4~42_combout\ : std_logic;
SIGNAL \inst19|Add4~44_combout\ : std_logic;
SIGNAL \inst19|Add4~46_combout\ : std_logic;
SIGNAL \inst19|Add4~48_combout\ : std_logic;
SIGNAL \inst19|Add4~50_combout\ : std_logic;
SIGNAL \inst19|Add4~52_combout\ : std_logic;
SIGNAL \inst19|Add4~54_combout\ : std_logic;
SIGNAL \inst19|Add4~56_combout\ : std_logic;
SIGNAL \inst19|Add4~58_combout\ : std_logic;
SIGNAL \inst19|Add4~60_combout\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \inst8|fifo_proc:Tail[2]~q\ : std_logic;
SIGNAL \inst8|Looped~0_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:prev_data~q\ : std_logic;
SIGNAL \inst8|Looped~4_combout\ : std_logic;
SIGNAL \inst8|fifo_proc~2_combout\ : std_logic;
SIGNAL \inst8|DataOut[30]~0_combout\ : std_logic;
SIGNAL \inst8|fifo_proc~5_combout\ : std_logic;
SIGNAL \inst8|fifo_proc~6_combout\ : std_logic;
SIGNAL \inst8|Memory~41_combout\ : std_logic;
SIGNAL \inst8|Memory~42_combout\ : std_logic;
SIGNAL \inst8|Memory~43_combout\ : std_logic;
SIGNAL \inst8|Memory~44_combout\ : std_logic;
SIGNAL \inst8|Equal4~4_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~16_combout\ : std_logic;
SIGNAL \inst19|LessThan2~3_combout\ : std_logic;
SIGNAL \inst19|Equal0~1_combout\ : std_logic;
SIGNAL \inst19|Equal0~6_combout\ : std_logic;
SIGNAL \inst19|Equal0~7_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~55_combout\ : std_logic;
SIGNAL \inst19|LessThan6~3_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~65_combout\ : std_logic;
SIGNAL \inst19|LessThan6~6_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~77_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~81_combout\ : std_logic;
SIGNAL \inst19|result~2_combout\ : std_logic;
SIGNAL \inst19|LessThan7~1_combout\ : std_logic;
SIGNAL \inst19|LessThan7~4_combout\ : std_logic;
SIGNAL \inst19|LessThan7~5_combout\ : std_logic;
SIGNAL \inst19|LessThan7~6_combout\ : std_logic;
SIGNAL \inst19|LessThan7~7_combout\ : std_logic;
SIGNAL \inst19|LessThan7~8_combout\ : std_logic;
SIGNAL \inst19|LessThan7~9_combout\ : std_logic;
SIGNAL \inst19|LessThan7~10_combout\ : std_logic;
SIGNAL \inst19|LessThan4~0_combout\ : std_logic;
SIGNAL \inst19|LessThan3~0_combout\ : std_logic;
SIGNAL \inst19|result~3_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|roe~q\ : std_logic;
SIGNAL \inst19|stop_valid_sync~94_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[30]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|roe~0_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|roe~1_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[30]~3_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[29]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[29]~6_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory~2_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[29]~7_combout\ : std_logic;
SIGNAL \inst8|Memory~45_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[28]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[28]~10_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory~6_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[28]~11_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[27]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[27]~14_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory~7_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[27]~15_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[26]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[26]~18_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory~8_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[26]~19_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[25]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[25]~22_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory~9_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[25]~23_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[24]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[24]~26_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory~10_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[24]~27_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[23]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[23]~30_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory~11_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[23]~31_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[22]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[22]~34_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory~12_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[22]~35_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[21]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[21]~38_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory~13_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[21]~39_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[20]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[20]~42_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory~14_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[20]~43_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[19]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[19]~46_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory~15_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[19]~47_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[18]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[18]~50_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory~16_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[18]~51_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[17]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[17]~54_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory~17_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[17]~55_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[16]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[16]~58_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory~18_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[16]~59_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[15]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[15]~62_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory~19_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[15]~63_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[14]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[14]~66_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory~20_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[14]~67_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[13]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[13]~70_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory~21_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[13]~71_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[12]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[12]~74_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory~22_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[12]~75_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[11]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[11]~78_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory~23_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[11]~79_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[10]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[10]~82_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory~24_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[10]~83_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[9]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[9]~86_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory~25_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[9]~87_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[8]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[8]~90_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory~26_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[8]~91_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[7]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[7]~94_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory~27_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[7]~95_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[6]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[6]~98_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory~28_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[6]~99_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[5]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[5]~102_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory~29_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[5]~103_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[4]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[4]~106_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory~30_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[4]~107_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[3]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[3]~110_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory~31_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[3]~111_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[2]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[2]~114_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory~32_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[2]~115_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[1]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[1]~118_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory~33_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[1]~119_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[0]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[0]~122_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory~34_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[0]~123_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory~35_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[29]~5_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[28]~9_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[27]~13_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[26]~17_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[25]~21_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[24]~25_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[23]~29_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[22]~33_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[21]~37_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[20]~41_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[19]~45_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[18]~49_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[17]~53_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[16]~57_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[15]~61_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[14]~65_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[13]~69_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[12]~73_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[11]~77_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[10]~81_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[9]~85_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[8]~89_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[7]~93_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[6]~97_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[5]~101_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[4]~105_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[3]~109_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[2]~113_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[1]~117_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[0]~121_combout\ : std_logic;
SIGNAL \spi_reset_n~input_o\ : std_logic;
SIGNAL \SW0~input_o\ : std_logic;
SIGNAL \SW1~input_o\ : std_logic;
SIGNAL \SW2~input_o\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst8|fifo_proc_Memory_rtl_0_bypass[9]~feeder_combout\ : std_logic;
SIGNAL \inst8|fifo_proc_Memory_rtl_0_bypass[15]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_start[24]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_start[23]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_start[19]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_start[18]~feeder_combout\ : std_logic;
SIGNAL \inst19|start_valid_sync[18]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_start[17]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_start[13]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_start[12]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_start[11]~feeder_combout\ : std_logic;
SIGNAL \inst19|start_valid_sync[9]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_start[3]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_start[2]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_start[1]~feeder_combout\ : std_logic;
SIGNAL \inst19|start_valid_sync[25]~feeder_combout\ : std_logic;
SIGNAL \inst8|fifo_proc_Memory_rtl_0_bypass[46]~feeder_combout\ : std_logic;
SIGNAL \inst8|fifo_proc_Memory_rtl_0_bypass[45]~feeder_combout\ : std_logic;
SIGNAL \inst8|fifo_proc_Memory_rtl_0_bypass[44]~feeder_combout\ : std_logic;
SIGNAL \inst8|fifo_proc_Memory_rtl_0_bypass[43]~feeder_combout\ : std_logic;
SIGNAL \inst8|fifo_proc_Memory_rtl_0_bypass[42]~feeder_combout\ : std_logic;
SIGNAL \inst8|fifo_proc_Memory_rtl_0_bypass[41]~feeder_combout\ : std_logic;
SIGNAL \inst8|fifo_proc_Memory_rtl_0_bypass[40]~feeder_combout\ : std_logic;
SIGNAL \inst8|fifo_proc_Memory_rtl_0_bypass[34]~feeder_combout\ : std_logic;
SIGNAL \inst8|fifo_proc_Memory_rtl_0_bypass[32]~feeder_combout\ : std_logic;
SIGNAL \inst8|fifo_proc_Memory_rtl_0_bypass[30]~feeder_combout\ : std_logic;
SIGNAL \inst8|fifo_proc_Memory_rtl_0_bypass[27]~feeder_combout\ : std_logic;
SIGNAL \inst8|fifo_proc_Memory_rtl_0_bypass[26]~feeder_combout\ : std_logic;
SIGNAL \inst8|fifo_proc_Memory_rtl_0_bypass[25]~feeder_combout\ : std_logic;
SIGNAL \inst8|fifo_proc_Memory_rtl_0_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \inst8|fifo_proc_Memory_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \inst8|fifo_proc_Memory_rtl_0_bypass[21]~feeder_combout\ : std_logic;
SIGNAL \inst8|fifo_proc_Memory_rtl_0_bypass[19]~feeder_combout\ : std_logic;
SIGNAL \inst8|fifo_proc_Memory_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \spi_sclk~input_o\ : std_logic;
SIGNAL \inst1|temp[30]~31_combout\ : std_logic;
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
SIGNAL \inst1|temp[6]~80\ : std_logic;
SIGNAL \inst1|temp[5]~81_combout\ : std_logic;
SIGNAL \inst1|temp[5]~82\ : std_logic;
SIGNAL \inst1|temp[4]~84\ : std_logic;
SIGNAL \inst1|temp[3]~85_combout\ : std_logic;
SIGNAL \inst1|temp[3]~86\ : std_logic;
SIGNAL \inst1|temp[2]~88\ : std_logic;
SIGNAL \inst1|temp[1]~89_combout\ : std_logic;
SIGNAL \inst1|temp[2]~87_combout\ : std_logic;
SIGNAL \inst19|t_sweep_start[29]~feeder_combout\ : std_logic;
SIGNAL \inst1|temp[31]~93_combout\ : std_logic;
SIGNAL \inst19|Add0~1\ : std_logic;
SIGNAL \inst19|Add0~3\ : std_logic;
SIGNAL \inst19|Add0~4_combout\ : std_logic;
SIGNAL \inst19|Add0~2_combout\ : std_logic;
SIGNAL \inst19|Add0~0_combout\ : std_logic;
SIGNAL \inst19|LessThan1~0_combout\ : std_logic;
SIGNAL \inst1|temp[28]~35_combout\ : std_logic;
SIGNAL \inst19|Add0~5\ : std_logic;
SIGNAL \inst19|Add0~7\ : std_logic;
SIGNAL \inst19|Add0~8_combout\ : std_logic;
SIGNAL \inst19|Add0~6_combout\ : std_logic;
SIGNAL \inst19|LessThan1~1_combout\ : std_logic;
SIGNAL \inst1|temp[25]~41_combout\ : std_logic;
SIGNAL \inst1|temp[26]~39_combout\ : std_logic;
SIGNAL \inst19|Add0~9\ : std_logic;
SIGNAL \inst19|Add0~11\ : std_logic;
SIGNAL \inst19|Add0~12_combout\ : std_logic;
SIGNAL \inst19|LessThan0~4_combout\ : std_logic;
SIGNAL \inst1|temp[9]~73_combout\ : std_logic;
SIGNAL \inst1|temp[10]~71_combout\ : std_logic;
SIGNAL \inst1|temp[12]~67_combout\ : std_logic;
SIGNAL \inst1|temp[16]~59_combout\ : std_logic;
SIGNAL \inst1|temp[18]~55_combout\ : std_logic;
SIGNAL \inst1|temp[20]~51_combout\ : std_logic;
SIGNAL \inst19|Add0~13\ : std_logic;
SIGNAL \inst19|Add0~15\ : std_logic;
SIGNAL \inst19|Add0~17\ : std_logic;
SIGNAL \inst19|Add0~19\ : std_logic;
SIGNAL \inst19|Add0~21\ : std_logic;
SIGNAL \inst19|Add0~23\ : std_logic;
SIGNAL \inst19|Add0~25\ : std_logic;
SIGNAL \inst19|Add0~27\ : std_logic;
SIGNAL \inst19|Add0~29\ : std_logic;
SIGNAL \inst19|Add0~31\ : std_logic;
SIGNAL \inst19|Add0~33\ : std_logic;
SIGNAL \inst19|Add0~35\ : std_logic;
SIGNAL \inst19|Add0~37\ : std_logic;
SIGNAL \inst19|Add0~39\ : std_logic;
SIGNAL \inst19|Add0~41\ : std_logic;
SIGNAL \inst19|Add0~43\ : std_logic;
SIGNAL \inst19|Add0~45\ : std_logic;
SIGNAL \inst19|Add0~47\ : std_logic;
SIGNAL \inst19|Add0~49\ : std_logic;
SIGNAL \inst19|Add0~50_combout\ : std_logic;
SIGNAL \inst19|Add0~48_combout\ : std_logic;
SIGNAL \inst19|Add0~51\ : std_logic;
SIGNAL \inst19|Add0~52_combout\ : std_logic;
SIGNAL \inst19|LessThan2~0_combout\ : std_logic;
SIGNAL \inst19|LessThan1~2_combout\ : std_logic;
SIGNAL \inst19|Add0~10_combout\ : std_logic;
SIGNAL \inst19|LessThan0~2_combout\ : std_logic;
SIGNAL \inst19|LessThan2~6_combout\ : std_logic;
SIGNAL \inst19|t_sweep_start[0]~1_combout\ : std_logic;
SIGNAL \inst1|temp[4]~83_combout\ : std_logic;
SIGNAL \inst19|Add0~53\ : std_logic;
SIGNAL \inst19|Add0~54_combout\ : std_logic;
SIGNAL \inst19|Add0~55\ : std_logic;
SIGNAL \inst19|Add0~56_combout\ : std_logic;
SIGNAL \inst19|LessThan0~0_combout\ : std_logic;
SIGNAL \inst19|Add0~28_combout\ : std_logic;
SIGNAL \inst19|Add0~26_combout\ : std_logic;
SIGNAL \inst19|Add0~24_combout\ : std_logic;
SIGNAL \inst19|LessThan2~2_combout\ : std_logic;
SIGNAL \inst19|Add0~46_combout\ : std_logic;
SIGNAL \inst19|Add0~44_combout\ : std_logic;
SIGNAL \inst19|Add0~40_combout\ : std_logic;
SIGNAL \inst19|LessThan2~4_combout\ : std_logic;
SIGNAL \inst19|Add0~22_combout\ : std_logic;
SIGNAL \inst19|Add0~16_combout\ : std_logic;
SIGNAL \inst19|Add0~18_combout\ : std_logic;
SIGNAL \inst19|LessThan2~1_combout\ : std_logic;
SIGNAL \inst19|LessThan2~5_combout\ : std_logic;
SIGNAL \inst19|result~0_combout\ : std_logic;
SIGNAL \inst19|t_sweep_start[0]~2_combout\ : std_logic;
SIGNAL \inst1|temp[1]~90\ : std_logic;
SIGNAL \inst1|temp[0]~91_combout\ : std_logic;
SIGNAL \inst19|Add0~57\ : std_logic;
SIGNAL \inst19|Add0~59\ : std_logic;
SIGNAL \inst19|Add0~61\ : std_logic;
SIGNAL \inst19|Add0~62_combout\ : std_logic;
SIGNAL \inst19|LessThan0~3_combout\ : std_logic;
SIGNAL \inst19|LessThan0~1_combout\ : std_logic;
SIGNAL \inst19|LessThan0~5_combout\ : std_logic;
SIGNAL \inst19|t_sweep_start[0]~3_combout\ : std_logic;
SIGNAL \inst19|t_sweep_start[25]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_start[22]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_start[14]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_start[9]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_start[8]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[0]~32\ : std_logic;
SIGNAL \inst19|t_sweep_duration[1]~34\ : std_logic;
SIGNAL \inst19|t_sweep_duration[2]~36\ : std_logic;
SIGNAL \inst19|t_sweep_duration[3]~38\ : std_logic;
SIGNAL \inst19|t_sweep_duration[4]~40\ : std_logic;
SIGNAL \inst19|t_sweep_duration[5]~42\ : std_logic;
SIGNAL \inst19|t_sweep_duration[6]~44\ : std_logic;
SIGNAL \inst19|t_sweep_duration[7]~46\ : std_logic;
SIGNAL \inst19|t_sweep_duration[8]~48\ : std_logic;
SIGNAL \inst19|t_sweep_duration[9]~50\ : std_logic;
SIGNAL \inst19|t_sweep_duration[10]~52\ : std_logic;
SIGNAL \inst19|t_sweep_duration[11]~54\ : std_logic;
SIGNAL \inst19|t_sweep_duration[12]~56\ : std_logic;
SIGNAL \inst19|t_sweep_duration[13]~58\ : std_logic;
SIGNAL \inst19|t_sweep_duration[14]~60\ : std_logic;
SIGNAL \inst19|t_sweep_duration[15]~62\ : std_logic;
SIGNAL \inst19|t_sweep_duration[16]~64\ : std_logic;
SIGNAL \inst19|t_sweep_duration[17]~66\ : std_logic;
SIGNAL \inst19|t_sweep_duration[18]~68\ : std_logic;
SIGNAL \inst19|t_sweep_duration[19]~70\ : std_logic;
SIGNAL \inst19|t_sweep_duration[20]~72\ : std_logic;
SIGNAL \inst19|t_sweep_duration[21]~74\ : std_logic;
SIGNAL \inst19|t_sweep_duration[22]~76\ : std_logic;
SIGNAL \inst19|t_sweep_duration[23]~78\ : std_logic;
SIGNAL \inst19|t_sweep_duration[24]~80\ : std_logic;
SIGNAL \inst19|t_sweep_duration[25]~82\ : std_logic;
SIGNAL \inst19|t_sweep_duration[26]~84\ : std_logic;
SIGNAL \inst19|t_sweep_duration[27]~86\ : std_logic;
SIGNAL \inst19|t_sweep_duration[28]~88\ : std_logic;
SIGNAL \inst19|t_sweep_duration[29]~90\ : std_logic;
SIGNAL \inst19|t_sweep_duration[30]~91_combout\ : std_logic;
SIGNAL \inst19|LessThan0~6_combout\ : std_logic;
SIGNAL \inst19|sweep_duration[30]~feeder_combout\ : std_logic;
SIGNAL \inst8|fifo_proc_Memory_rtl_0_bypass[47]~feeder_combout\ : std_logic;
SIGNAL \inst8|Add1~0_combout\ : std_logic;
SIGNAL \button1_reset~input_o\ : std_logic;
SIGNAL \inst8|Head~0_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Head[0]~q\ : std_logic;
SIGNAL \inst8|fifo_proc_Memory_rtl_0_bypass[1]~feeder_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Tail[1]~q\ : std_logic;
SIGNAL \inst8|Add0~0_combout\ : std_logic;
SIGNAL \inst8|Tail~0_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Tail[0]~q\ : std_logic;
SIGNAL \inst8|Add0~1\ : std_logic;
SIGNAL \inst8|Add0~2_combout\ : std_logic;
SIGNAL \inst8|Tail~1_combout\ : std_logic;
SIGNAL \inst8|Add1~1\ : std_logic;
SIGNAL \inst8|Add1~2_combout\ : std_logic;
SIGNAL \inst8|Head~1_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Head[1]~q\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory~0_combout\ : std_logic;
SIGNAL \inst8|Add1~3\ : std_logic;
SIGNAL \inst8|Add1~5\ : std_logic;
SIGNAL \inst8|Add1~7\ : std_logic;
SIGNAL \inst8|Add1~8_combout\ : std_logic;
SIGNAL \inst8|Head~4_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Head[4]~q\ : std_logic;
SIGNAL \inst8|Add1~9\ : std_logic;
SIGNAL \inst8|Add1~10_combout\ : std_logic;
SIGNAL \inst8|Head~5_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Head[5]~q\ : std_logic;
SIGNAL \inst8|Add1~11\ : std_logic;
SIGNAL \inst8|Add1~12_combout\ : std_logic;
SIGNAL \inst8|Head~6_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Head[6]~q\ : std_logic;
SIGNAL \inst8|fifo_proc:Tail[6]~q\ : std_logic;
SIGNAL \inst8|Add0~3\ : std_logic;
SIGNAL \inst8|Add0~5\ : std_logic;
SIGNAL \inst8|Add0~6_combout\ : std_logic;
SIGNAL \inst8|Tail~3_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Tail[3]~q\ : std_logic;
SIGNAL \inst8|Add0~7\ : std_logic;
SIGNAL \inst8|Add0~9\ : std_logic;
SIGNAL \inst8|Add0~11\ : std_logic;
SIGNAL \inst8|Add0~12_combout\ : std_logic;
SIGNAL \inst8|Tail~6_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Tail[7]~q\ : std_logic;
SIGNAL \inst8|Add0~13\ : std_logic;
SIGNAL \inst8|Add0~14_combout\ : std_logic;
SIGNAL \inst8|Tail~7_combout\ : std_logic;
SIGNAL \inst8|fifo_proc_Memory_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory~3_combout\ : std_logic;
SIGNAL \inst8|Add1~4_combout\ : std_logic;
SIGNAL \inst8|Head~2_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Head[2]~q\ : std_logic;
SIGNAL \inst8|fifo_proc_Memory_rtl_0_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \inst8|Add0~4_combout\ : std_logic;
SIGNAL \inst8|Tail~2_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory~1_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory~4_combout\ : std_logic;
SIGNAL \clock_50~input_o\ : std_logic;
SIGNAL \clock_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst19|t_sweep_duration[0]~31_combout\ : std_logic;
SIGNAL \inst8|Add1~6_combout\ : std_logic;
SIGNAL \inst8|Head~3_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Head[3]~q\ : std_logic;
SIGNAL \inst8|Add1~13\ : std_logic;
SIGNAL \inst8|Add1~14_combout\ : std_logic;
SIGNAL \inst8|Head~7_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Head[7]~q\ : std_logic;
SIGNAL \inst8|Add0~8_combout\ : std_logic;
SIGNAL \inst8|Tail~4_combout\ : std_logic;
SIGNAL \inst8|Add0~10_combout\ : std_logic;
SIGNAL \inst8|Tail~5_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[1]~33_combout\ : std_logic;
SIGNAL \inst19|sweep_duration[1]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[2]~35_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[3]~37_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[4]~39_combout\ : std_logic;
SIGNAL \inst19|sweep_duration[4]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[5]~41_combout\ : std_logic;
SIGNAL \inst19|sweep_duration[5]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[6]~43_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[7]~45_combout\ : std_logic;
SIGNAL \inst19|sweep_duration[7]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[8]~47_combout\ : std_logic;
SIGNAL \inst19|sweep_duration[8]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[9]~49_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[10]~51_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[11]~53_combout\ : std_logic;
SIGNAL \inst19|sweep_duration[11]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[12]~55_combout\ : std_logic;
SIGNAL \inst19|sweep_duration[12]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[13]~57_combout\ : std_logic;
SIGNAL \inst19|sweep_duration[13]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[14]~59_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[15]~61_combout\ : std_logic;
SIGNAL \inst19|sweep_duration[15]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[16]~63_combout\ : std_logic;
SIGNAL \inst19|sweep_duration[16]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[17]~65_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[18]~67_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[19]~69_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[20]~71_combout\ : std_logic;
SIGNAL \inst19|sweep_duration[20]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[21]~73_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[22]~75_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[23]~77_combout\ : std_logic;
SIGNAL \inst19|sweep_duration[23]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[24]~79_combout\ : std_logic;
SIGNAL \inst19|sweep_duration[24]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[25]~81_combout\ : std_logic;
SIGNAL \inst19|sweep_duration[25]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[26]~83_combout\ : std_logic;
SIGNAL \inst19|sweep_duration[26]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[27]~85_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[28]~87_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[29]~89_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \inst8|fifo_proc:Memory~5_combout\ : std_logic;
SIGNAL \inst8|fifo_proc~3_combout\ : std_logic;
SIGNAL \inst8|fifo_proc~1_combout\ : std_logic;
SIGNAL \inst8|fifo_proc~0_combout\ : std_logic;
SIGNAL \inst8|fifo_proc~4_combout\ : std_logic;
SIGNAL \button0_read~input_o\ : std_logic;
SIGNAL \inst8|Looped~7_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Looped~q\ : std_logic;
SIGNAL \inst8|DataOut[30]~1_combout\ : std_logic;
SIGNAL \inst13|prev_data~q\ : std_logic;
SIGNAL \inst13|process_0~0_combout\ : std_logic;
SIGNAL \inst13|spi_tx_ena~q\ : std_logic;
SIGNAL \spi_ss_n~input_o\ : std_logic;
SIGNAL \inst13|spi_slave_0|process_1~2_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|process_1~2clkctrl_outclk\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[30]~1_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[30]~2_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[1]~feeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[2]~0_combout\ : std_logic;
SIGNAL \spi_mosi~input_o\ : std_logic;
SIGNAL \inst13|spi_slave_0|rd_add~0_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|rd_add~q\ : std_logic;
SIGNAL \inst13|spi_slave_0|process_1~1_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[5]~feeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[6]~feeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[12]~feeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[13]~feeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[14]~feeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[15]~feeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[16]~feeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[18]~feeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[19]~feeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[22]~feeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[23]~feeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[24]~feeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[28]~feeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[29]~feeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[30]~feeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[34]~feeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[35]~feeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[37]~feeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[38]~feeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[39]~feeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|process_1~0_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|process_1~3_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|rrdy~0_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|wr_add~0_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|wr_add~q\ : std_logic;
SIGNAL \inst13|spi_slave_0|rrdy~1_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|rrdy~q\ : std_logic;
SIGNAL \inst13|spi_slave_0|miso~1_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|trdy~0_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|trdy~1_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|trdy~q\ : std_logic;
SIGNAL \inst13|spi_slave_0|miso~0_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|miso~2_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|miso~3_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|miso~4_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|miso~reg0_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|miso~enfeeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|miso~en_q\ : std_logic;
SIGNAL \inst8|Equal4~3_combout\ : std_logic;
SIGNAL \inst8|Looped~5_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Tail[4]~q\ : std_logic;
SIGNAL \inst8|fifo_proc:Tail[5]~q\ : std_logic;
SIGNAL \inst8|Looped~1_combout\ : std_logic;
SIGNAL \inst8|Looped~2_combout\ : std_logic;
SIGNAL \inst19|result~1_combout\ : std_logic;
SIGNAL \inst19|Add0~60_combout\ : std_logic;
SIGNAL \inst19|result~4_combout\ : std_logic;
SIGNAL \inst19|result~5_combout\ : std_logic;
SIGNAL \inst19|result~q\ : std_logic;
SIGNAL \inst8|Looped~3_combout\ : std_logic;
SIGNAL \inst8|Looped~6_combout\ : std_logic;
SIGNAL \inst8|Full~0_combout\ : std_logic;
SIGNAL \inst8|Equal4~1_combout\ : std_logic;
SIGNAL \inst8|Equal4~0_combout\ : std_logic;
SIGNAL \inst8|Equal4~2_combout\ : std_logic;
SIGNAL \inst8|Full~1_combout\ : std_logic;
SIGNAL \inst8|Full~q\ : std_logic;
SIGNAL \sensor0~input_o\ : std_logic;
SIGNAL \inst19|lighthouse_switch~0_combout\ : std_logic;
SIGNAL \inst19|start_valid_sync[29]~feeder_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~111_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~27_combout\ : std_logic;
SIGNAL \inst19|t_sweep_start[0]~0_combout\ : std_logic;
SIGNAL \inst19|start_valid_sync[11]~feeder_combout\ : std_logic;
SIGNAL \inst19|Equal0~5_combout\ : std_logic;
SIGNAL \inst19|start_valid_sync[15]~feeder_combout\ : std_logic;
SIGNAL \inst19|Equal0~3_combout\ : std_logic;
SIGNAL \inst19|start_valid_sync[20]~feeder_combout\ : std_logic;
SIGNAL \inst19|Equal0~2_combout\ : std_logic;
SIGNAL \inst19|start_valid_sync[27]~feeder_combout\ : std_logic;
SIGNAL \inst19|Equal0~0_combout\ : std_logic;
SIGNAL \inst19|Equal0~4_combout\ : std_logic;
SIGNAL \inst19|start_valid_sync[2]~feeder_combout\ : std_logic;
SIGNAL \inst19|Equal0~8_combout\ : std_logic;
SIGNAL \inst19|Equal0~9_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~116_combout\ : std_logic;
SIGNAL \inst19|Equal0~10_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~20_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~69_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~40_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~90_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~38_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~119_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~83_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~93_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~80_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~92_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~75_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~76_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~91_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~39_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~41_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~89_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~11_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~12_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~70_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~101_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~28_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~29_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~120_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~71_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~48_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~49_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~95_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~13_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~30_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~72_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~96_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~31_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~33_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~98_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~32_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~99_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~36_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~37_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~97_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~14_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~118_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~50_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~100_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~15_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~117_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~59_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~82_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~107_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~68_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~102_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~66_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~103_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~17_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~67_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~108_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~44_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~63_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~78_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~45_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~79_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~105_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~64_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~104_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~106_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~18_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~60_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~61_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~109_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~19_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~52_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~84_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~85_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~53_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~54_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~110_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~21_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~42_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~56_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~87_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~10_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~58_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~112_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~22_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~23_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~25_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~115_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~24_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~86_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~34_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~35_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~113_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~26_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~51_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~114_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~57_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~62_combout\ : std_logic;
SIGNAL \inst19|LessThan6~5_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~73_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~74_combout\ : std_logic;
SIGNAL \inst19|LessThan6~7_combout\ : std_logic;
SIGNAL \inst19|LessThan6~8_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~88_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~43_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~46_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~47_combout\ : std_logic;
SIGNAL \inst19|LessThan6~2_combout\ : std_logic;
SIGNAL \inst19|LessThan6~0_combout\ : std_logic;
SIGNAL \inst19|LessThan6~1_combout\ : std_logic;
SIGNAL \inst19|LessThan6~4_combout\ : std_logic;
SIGNAL \inst19|LessThan6~9_combout\ : std_logic;
SIGNAL \inst19|process_0~0_combout\ : std_logic;
SIGNAL \inst19|start_valid_sync[22]~0_combout\ : std_logic;
SIGNAL \inst19|start_valid_sync[23]~feeder_combout\ : std_logic;
SIGNAL \inst19|start_valid_sync[22]~feeder_combout\ : std_logic;
SIGNAL \inst19|start_valid_sync[13]~feeder_combout\ : std_logic;
SIGNAL \inst19|start_valid_sync[8]~feeder_combout\ : std_logic;
SIGNAL \inst19|start_valid_sync[3]~feeder_combout\ : std_logic;
SIGNAL \inst19|Add2~1\ : std_logic;
SIGNAL \inst19|Add2~3\ : std_logic;
SIGNAL \inst19|Add2~5\ : std_logic;
SIGNAL \inst19|Add2~7\ : std_logic;
SIGNAL \inst19|Add2~9\ : std_logic;
SIGNAL \inst19|Add2~11\ : std_logic;
SIGNAL \inst19|Add2~13\ : std_logic;
SIGNAL \inst19|Add2~15\ : std_logic;
SIGNAL \inst19|Add2~17\ : std_logic;
SIGNAL \inst19|Add2~19\ : std_logic;
SIGNAL \inst19|Add2~21\ : std_logic;
SIGNAL \inst19|Add2~23\ : std_logic;
SIGNAL \inst19|Add2~25\ : std_logic;
SIGNAL \inst19|Add2~27\ : std_logic;
SIGNAL \inst19|Add2~29\ : std_logic;
SIGNAL \inst19|Add2~31\ : std_logic;
SIGNAL \inst19|Add2~33\ : std_logic;
SIGNAL \inst19|Add2~35\ : std_logic;
SIGNAL \inst19|Add2~37\ : std_logic;
SIGNAL \inst19|Add2~39\ : std_logic;
SIGNAL \inst19|Add2~41\ : std_logic;
SIGNAL \inst19|Add2~43\ : std_logic;
SIGNAL \inst19|Add2~45\ : std_logic;
SIGNAL \inst19|Add2~47\ : std_logic;
SIGNAL \inst19|Add2~49\ : std_logic;
SIGNAL \inst19|Add2~51\ : std_logic;
SIGNAL \inst19|Add2~53\ : std_logic;
SIGNAL \inst19|Add2~55\ : std_logic;
SIGNAL \inst19|Add2~57\ : std_logic;
SIGNAL \inst19|Add2~58_combout\ : std_logic;
SIGNAL \inst19|Add2~56_combout\ : std_logic;
SIGNAL \inst19|Add2~54_combout\ : std_logic;
SIGNAL \inst19|Add2~52_combout\ : std_logic;
SIGNAL \inst19|Add2~46_combout\ : std_logic;
SIGNAL \inst19|Add2~44_combout\ : std_logic;
SIGNAL \inst19|Add2~40_combout\ : std_logic;
SIGNAL \inst19|Add2~38_combout\ : std_logic;
SIGNAL \inst19|Add2~32_combout\ : std_logic;
SIGNAL \inst19|Add2~26_combout\ : std_logic;
SIGNAL \inst19|Add2~22_combout\ : std_logic;
SIGNAL \inst19|Add2~20_combout\ : std_logic;
SIGNAL \inst19|Add2~14_combout\ : std_logic;
SIGNAL \inst19|Add2~12_combout\ : std_logic;
SIGNAL \inst19|Add2~8_combout\ : std_logic;
SIGNAL \inst19|Add2~6_combout\ : std_logic;
SIGNAL \inst19|Add3~1\ : std_logic;
SIGNAL \inst19|Add3~3\ : std_logic;
SIGNAL \inst19|Add3~5\ : std_logic;
SIGNAL \inst19|Add3~7\ : std_logic;
SIGNAL \inst19|Add3~9\ : std_logic;
SIGNAL \inst19|Add3~11\ : std_logic;
SIGNAL \inst19|Add3~13\ : std_logic;
SIGNAL \inst19|Add3~15\ : std_logic;
SIGNAL \inst19|Add3~17\ : std_logic;
SIGNAL \inst19|Add3~19\ : std_logic;
SIGNAL \inst19|Add3~21\ : std_logic;
SIGNAL \inst19|Add3~23\ : std_logic;
SIGNAL \inst19|Add3~25\ : std_logic;
SIGNAL \inst19|Add3~27\ : std_logic;
SIGNAL \inst19|Add3~29\ : std_logic;
SIGNAL \inst19|Add3~31\ : std_logic;
SIGNAL \inst19|Add3~33\ : std_logic;
SIGNAL \inst19|Add3~35\ : std_logic;
SIGNAL \inst19|Add3~37\ : std_logic;
SIGNAL \inst19|Add3~39\ : std_logic;
SIGNAL \inst19|Add3~41\ : std_logic;
SIGNAL \inst19|Add3~43\ : std_logic;
SIGNAL \inst19|Add3~45\ : std_logic;
SIGNAL \inst19|Add3~47\ : std_logic;
SIGNAL \inst19|Add3~49\ : std_logic;
SIGNAL \inst19|Add3~51\ : std_logic;
SIGNAL \inst19|Add3~53\ : std_logic;
SIGNAL \inst19|Add3~55\ : std_logic;
SIGNAL \inst19|Add3~56_combout\ : std_logic;
SIGNAL \inst19|Add3~54_combout\ : std_logic;
SIGNAL \inst19|Add3~57\ : std_logic;
SIGNAL \inst19|Add3~58_combout\ : std_logic;
SIGNAL \inst19|Add3~36_combout\ : std_logic;
SIGNAL \inst19|Add3~34_combout\ : std_logic;
SIGNAL \inst19|Add3~32_combout\ : std_logic;
SIGNAL \inst19|Add3~30_combout\ : std_logic;
SIGNAL \inst19|Add3~28_combout\ : std_logic;
SIGNAL \inst19|Add3~26_combout\ : std_logic;
SIGNAL \inst19|Add3~22_combout\ : std_logic;
SIGNAL \inst19|Add3~20_combout\ : std_logic;
SIGNAL \inst19|Add3~18_combout\ : std_logic;
SIGNAL \inst19|Add3~16_combout\ : std_logic;
SIGNAL \inst19|Add3~4_combout\ : std_logic;
SIGNAL \inst19|Add3~2_combout\ : std_logic;
SIGNAL \inst19|Add2~2_combout\ : std_logic;
SIGNAL \inst19|Add4~1\ : std_logic;
SIGNAL \inst19|Add4~3\ : std_logic;
SIGNAL \inst19|Add4~5\ : std_logic;
SIGNAL \inst19|Add4~7\ : std_logic;
SIGNAL \inst19|Add4~9\ : std_logic;
SIGNAL \inst19|Add4~11\ : std_logic;
SIGNAL \inst19|Add4~13\ : std_logic;
SIGNAL \inst19|Add4~15\ : std_logic;
SIGNAL \inst19|Add4~17\ : std_logic;
SIGNAL \inst19|Add4~19\ : std_logic;
SIGNAL \inst19|Add4~21\ : std_logic;
SIGNAL \inst19|Add4~23\ : std_logic;
SIGNAL \inst19|Add4~25\ : std_logic;
SIGNAL \inst19|Add4~27\ : std_logic;
SIGNAL \inst19|Add4~29\ : std_logic;
SIGNAL \inst19|Add4~31\ : std_logic;
SIGNAL \inst19|Add4~33\ : std_logic;
SIGNAL \inst19|Add4~35\ : std_logic;
SIGNAL \inst19|Add4~37\ : std_logic;
SIGNAL \inst19|Add4~39\ : std_logic;
SIGNAL \inst19|Add4~41\ : std_logic;
SIGNAL \inst19|Add4~43\ : std_logic;
SIGNAL \inst19|Add4~45\ : std_logic;
SIGNAL \inst19|Add4~47\ : std_logic;
SIGNAL \inst19|Add4~49\ : std_logic;
SIGNAL \inst19|Add4~51\ : std_logic;
SIGNAL \inst19|Add4~53\ : std_logic;
SIGNAL \inst19|Add4~55\ : std_logic;
SIGNAL \inst19|Add4~57\ : std_logic;
SIGNAL \inst19|Add4~59\ : std_logic;
SIGNAL \inst19|Add4~61\ : std_logic;
SIGNAL \inst19|Add4~62_combout\ : std_logic;
SIGNAL \inst19|Add4~6_combout\ : std_logic;
SIGNAL \inst19|Add4~4_combout\ : std_logic;
SIGNAL \inst19|Add4~0_combout\ : std_logic;
SIGNAL \inst19|LessThan7~2_combout\ : std_logic;
SIGNAL \inst19|Add4~8_combout\ : std_logic;
SIGNAL \inst19|Add4~20_combout\ : std_logic;
SIGNAL \inst19|Add4~14_combout\ : std_logic;
SIGNAL \inst19|Add4~16_combout\ : std_logic;
SIGNAL \inst19|LessThan7~0_combout\ : std_logic;
SIGNAL \inst19|LessThan7~3_combout\ : std_logic;
SIGNAL \inst19|lighthouse_A~0_combout\ : std_logic;
SIGNAL \inst19|lighthouse_switch~q\ : std_logic;
SIGNAL \inst19|lighthouse_A~feeder_combout\ : std_logic;
SIGNAL \inst19|lighthouse_A~q\ : std_logic;
SIGNAL \inst8|Empty~0_combout\ : std_logic;
SIGNAL \inst8|Empty~1_combout\ : std_logic;
SIGNAL \inst8|Empty~feeder_combout\ : std_logic;
SIGNAL \inst8|Empty~q\ : std_logic;
SIGNAL \inst8|fifo_proc_Memory_rtl_0_bypass\ : std_logic_vector(0 TO 47);
SIGNAL \inst13|spi_tx_data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst13|spi_slave_0|tx_buf\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst13|spi_slave_0|bit_cnt\ : std_logic_vector(40 DOWNTO 0);
SIGNAL \inst8|DataOut\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst19|t_sweep_start\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst19|t_sweep_duration\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst19|t_0\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst19|sweep_duration\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst19|stop_valid_sync\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst19|start_valid_sync\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|temp\ : std_logic_vector(0 TO 31);
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_spi_ss_n~input_o\ : std_logic;
SIGNAL \ALT_INV_sensor0~input_o\ : std_logic;
SIGNAL \ALT_INV_spi_sclk~input_o\ : std_logic;
SIGNAL \ALT_INV_button1_reset~input_o\ : std_logic;
SIGNAL \inst13|spi_slave_0|ALT_INV_trdy~q\ : std_logic;

BEGIN

sensor0_led <= ww_sensor0_led;
ww_clock_50 <= clock_50;
ww_spi_reset_n <= spi_reset_n;
ww_spi_sclk <= spi_sclk;
ww_spi_ss_n <= spi_ss_n;
ww_spi_mosi <= spi_mosi;
ww_button0_read <= button0_read;
ww_button1_reset <= button1_reset;
ww_sensor0 <= sensor0;
led_fifo_full <= ww_led_fifo_full;
spi_miso <= ww_spi_miso;
spi_trdy <= ww_spi_trdy;
lighthouse_led <= ww_lighthouse_led;
led_fifo_empty <= ww_led_fifo_empty;
LCD0 <= ww_LCD0;
LCD1 <= ww_LCD1;
LCD2 <= ww_LCD2;
LCD3 <= ww_LCD3;
led <= ww_led;
ww_SW0 <= SW0;
ww_SW1 <= SW1;
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

\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & \inst19|sweep_duration\(30) & \inst19|sweep_duration\(29) & \inst19|sweep_duration\(28) & \inst19|sweep_duration\(27) & 
\inst19|sweep_duration\(26) & \inst19|sweep_duration\(25) & \inst19|sweep_duration\(24) & \inst19|sweep_duration\(23) & \inst19|sweep_duration\(22) & \inst19|sweep_duration\(21) & \inst19|sweep_duration\(20) & \inst19|sweep_duration\(19) & 
\inst19|sweep_duration\(18) & \inst19|sweep_duration\(17) & \inst19|sweep_duration\(16) & \inst19|sweep_duration\(15) & \inst19|sweep_duration\(14) & \inst19|sweep_duration\(13) & \inst19|sweep_duration\(12) & \inst19|sweep_duration\(11) & 
\inst19|sweep_duration\(10) & \inst19|sweep_duration\(9) & \inst19|sweep_duration\(8) & \inst19|sweep_duration\(7) & \inst19|sweep_duration\(6) & \inst19|sweep_duration\(5) & \inst19|sweep_duration\(4) & \inst19|sweep_duration\(3) & 
\inst19|sweep_duration\(2) & \inst19|sweep_duration\(1) & \inst19|sweep_duration\(0));

\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst8|fifo_proc:Head[7]~q\ & \inst8|fifo_proc:Head[6]~q\ & \inst8|fifo_proc:Head[5]~q\ & \inst8|fifo_proc:Head[4]~q\ & \inst8|fifo_proc:Head[3]~q\ & \inst8|fifo_proc:Head[2]~q\
& \inst8|fifo_proc:Head[1]~q\ & \inst8|fifo_proc:Head[0]~q\);

\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\inst8|Tail~7_combout\ & \inst8|Tail~6_combout\ & \inst8|Tail~5_combout\ & \inst8|Tail~4_combout\ & \inst8|Tail~3_combout\ & \inst8|Tail~2_combout\ & \inst8|Tail~1_combout\ & 
\inst8|Tail~0_combout\);

\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a1\ <= \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a2\ <= \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a3\ <= \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a4\ <= \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a5\ <= \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a6\ <= \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a7\ <= \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a8\ <= \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a9\ <= \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a10\ <= \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a11\ <= \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a12\ <= \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a13\ <= \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a14\ <= \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a15\ <= \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a16\ <= \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a17\ <= \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a18\ <= \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a19\ <= \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a20\ <= \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a21\ <= \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a22\ <= \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a23\ <= \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a24\ <= \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a25\ <= \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a26\ <= \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a27\ <= \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a28\ <= \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a29\ <= \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a30\ <= \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);

\inst13|spi_slave_0|process_1~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst13|spi_slave_0|process_1~2_combout\);

\inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|altpll_component|auto_generated|wire_pll1_clk\(0));

\clock_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_50~input_o\);
\inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\ <= NOT \inst13|spi_slave_0|process_1~2clkctrl_outclk\;
\ALT_INV_spi_ss_n~input_o\ <= NOT \spi_ss_n~input_o\;
\ALT_INV_sensor0~input_o\ <= NOT \sensor0~input_o\;
\ALT_INV_spi_sclk~input_o\ <= NOT \spi_sclk~input_o\;
\ALT_INV_button1_reset~input_o\ <= NOT \button1_reset~input_o\;
\inst13|spi_slave_0|ALT_INV_trdy~q\ <= NOT \inst13|spi_slave_0|trdy~q\;

-- Location: LCCOMB_X23_Y13_N14
\inst19|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~14_combout\ = (\inst19|t_0\(7) & ((\inst1|temp\(24) & (!\inst19|Add0~13\)) # (!\inst1|temp\(24) & ((\inst19|Add0~13\) # (GND))))) # (!\inst19|t_0\(7) & ((\inst1|temp\(24) & (\inst19|Add0~13\ & VCC)) # (!\inst1|temp\(24) & 
-- (!\inst19|Add0~13\))))
-- \inst19|Add0~15\ = CARRY((\inst19|t_0\(7) & ((!\inst19|Add0~13\) # (!\inst1|temp\(24)))) # (!\inst19|t_0\(7) & (!\inst1|temp\(24) & !\inst19|Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(7),
	datab => \inst1|temp\(24),
	datad => VCC,
	cin => \inst19|Add0~13\,
	combout => \inst19|Add0~14_combout\,
	cout => \inst19|Add0~15\);

-- Location: LCCOMB_X23_Y13_N20
\inst19|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~20_combout\ = ((\inst1|temp\(21) $ (\inst19|t_0\(10) $ (\inst19|Add0~19\)))) # (GND)
-- \inst19|Add0~21\ = CARRY((\inst1|temp\(21) & ((!\inst19|Add0~19\) # (!\inst19|t_0\(10)))) # (!\inst1|temp\(21) & (!\inst19|t_0\(10) & !\inst19|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(21),
	datab => \inst19|t_0\(10),
	datad => VCC,
	cin => \inst19|Add0~19\,
	combout => \inst19|Add0~20_combout\,
	cout => \inst19|Add0~21\);

-- Location: LCCOMB_X23_Y13_N30
\inst19|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~30_combout\ = (\inst1|temp\(16) & ((\inst19|t_0\(15) & (!\inst19|Add0~29\)) # (!\inst19|t_0\(15) & (\inst19|Add0~29\ & VCC)))) # (!\inst1|temp\(16) & ((\inst19|t_0\(15) & ((\inst19|Add0~29\) # (GND))) # (!\inst19|t_0\(15) & 
-- (!\inst19|Add0~29\))))
-- \inst19|Add0~31\ = CARRY((\inst1|temp\(16) & (\inst19|t_0\(15) & !\inst19|Add0~29\)) # (!\inst1|temp\(16) & ((\inst19|t_0\(15)) # (!\inst19|Add0~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(16),
	datab => \inst19|t_0\(15),
	datad => VCC,
	cin => \inst19|Add0~29\,
	combout => \inst19|Add0~30_combout\,
	cout => \inst19|Add0~31\);

-- Location: LCCOMB_X23_Y12_N0
\inst19|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~32_combout\ = ((\inst1|temp\(15) $ (\inst19|t_0\(16) $ (\inst19|Add0~31\)))) # (GND)
-- \inst19|Add0~33\ = CARRY((\inst1|temp\(15) & ((!\inst19|Add0~31\) # (!\inst19|t_0\(16)))) # (!\inst1|temp\(15) & (!\inst19|t_0\(16) & !\inst19|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(15),
	datab => \inst19|t_0\(16),
	datad => VCC,
	cin => \inst19|Add0~31\,
	combout => \inst19|Add0~32_combout\,
	cout => \inst19|Add0~33\);

-- Location: LCCOMB_X23_Y12_N2
\inst19|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~34_combout\ = (\inst1|temp\(14) & ((\inst19|t_0\(17) & (!\inst19|Add0~33\)) # (!\inst19|t_0\(17) & (\inst19|Add0~33\ & VCC)))) # (!\inst1|temp\(14) & ((\inst19|t_0\(17) & ((\inst19|Add0~33\) # (GND))) # (!\inst19|t_0\(17) & 
-- (!\inst19|Add0~33\))))
-- \inst19|Add0~35\ = CARRY((\inst1|temp\(14) & (\inst19|t_0\(17) & !\inst19|Add0~33\)) # (!\inst1|temp\(14) & ((\inst19|t_0\(17)) # (!\inst19|Add0~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(14),
	datab => \inst19|t_0\(17),
	datad => VCC,
	cin => \inst19|Add0~33\,
	combout => \inst19|Add0~34_combout\,
	cout => \inst19|Add0~35\);

-- Location: LCCOMB_X23_Y12_N4
\inst19|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~36_combout\ = ((\inst19|t_0\(18) $ (\inst1|temp\(13) $ (\inst19|Add0~35\)))) # (GND)
-- \inst19|Add0~37\ = CARRY((\inst19|t_0\(18) & (\inst1|temp\(13) & !\inst19|Add0~35\)) # (!\inst19|t_0\(18) & ((\inst1|temp\(13)) # (!\inst19|Add0~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(18),
	datab => \inst1|temp\(13),
	datad => VCC,
	cin => \inst19|Add0~35\,
	combout => \inst19|Add0~36_combout\,
	cout => \inst19|Add0~37\);

-- Location: LCCOMB_X23_Y12_N6
\inst19|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~38_combout\ = (\inst19|t_0\(19) & ((\inst1|temp\(12) & (!\inst19|Add0~37\)) # (!\inst1|temp\(12) & ((\inst19|Add0~37\) # (GND))))) # (!\inst19|t_0\(19) & ((\inst1|temp\(12) & (\inst19|Add0~37\ & VCC)) # (!\inst1|temp\(12) & 
-- (!\inst19|Add0~37\))))
-- \inst19|Add0~39\ = CARRY((\inst19|t_0\(19) & ((!\inst19|Add0~37\) # (!\inst1|temp\(12)))) # (!\inst19|t_0\(19) & (!\inst1|temp\(12) & !\inst19|Add0~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(19),
	datab => \inst1|temp\(12),
	datad => VCC,
	cin => \inst19|Add0~37\,
	combout => \inst19|Add0~38_combout\,
	cout => \inst19|Add0~39\);

-- Location: LCCOMB_X23_Y12_N10
\inst19|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~42_combout\ = (\inst1|temp\(10) & ((\inst19|t_0\(21) & (!\inst19|Add0~41\)) # (!\inst19|t_0\(21) & (\inst19|Add0~41\ & VCC)))) # (!\inst1|temp\(10) & ((\inst19|t_0\(21) & ((\inst19|Add0~41\) # (GND))) # (!\inst19|t_0\(21) & 
-- (!\inst19|Add0~41\))))
-- \inst19|Add0~43\ = CARRY((\inst1|temp\(10) & (\inst19|t_0\(21) & !\inst19|Add0~41\)) # (!\inst1|temp\(10) & ((\inst19|t_0\(21)) # (!\inst19|Add0~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(10),
	datab => \inst19|t_0\(21),
	datad => VCC,
	cin => \inst19|Add0~41\,
	combout => \inst19|Add0~42_combout\,
	cout => \inst19|Add0~43\);

-- Location: LCCOMB_X23_Y12_N26
\inst19|Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~58_combout\ = (\inst1|temp\(2) & ((\inst19|t_0\(29) & (!\inst19|Add0~57\)) # (!\inst19|t_0\(29) & (\inst19|Add0~57\ & VCC)))) # (!\inst1|temp\(2) & ((\inst19|t_0\(29) & ((\inst19|Add0~57\) # (GND))) # (!\inst19|t_0\(29) & 
-- (!\inst19|Add0~57\))))
-- \inst19|Add0~59\ = CARRY((\inst1|temp\(2) & (\inst19|t_0\(29) & !\inst19|Add0~57\)) # (!\inst1|temp\(2) & ((\inst19|t_0\(29)) # (!\inst19|Add0~57\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(2),
	datab => \inst19|t_0\(29),
	datad => VCC,
	cin => \inst19|Add0~57\,
	combout => \inst19|Add0~58_combout\,
	cout => \inst19|Add0~59\);

-- Location: LCCOMB_X20_Y16_N0
\inst19|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~0_combout\ = (\inst19|start_valid_sync\(0) & (\inst19|stop_valid_sync~24_combout\ & VCC)) # (!\inst19|start_valid_sync\(0) & (\inst19|stop_valid_sync~24_combout\ $ (VCC)))
-- \inst19|Add2~1\ = CARRY((!\inst19|start_valid_sync\(0) & \inst19|stop_valid_sync~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|start_valid_sync\(0),
	datab => \inst19|stop_valid_sync~24_combout\,
	datad => VCC,
	combout => \inst19|Add2~0_combout\,
	cout => \inst19|Add2~1\);

-- Location: LCCOMB_X20_Y16_N4
\inst19|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~4_combout\ = ((\inst19|stop_valid_sync~25_combout\ $ (\inst19|start_valid_sync\(2) $ (\inst19|Add2~3\)))) # (GND)
-- \inst19|Add2~5\ = CARRY((\inst19|stop_valid_sync~25_combout\ & ((!\inst19|Add2~3\) # (!\inst19|start_valid_sync\(2)))) # (!\inst19|stop_valid_sync~25_combout\ & (!\inst19|start_valid_sync\(2) & !\inst19|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~25_combout\,
	datab => \inst19|start_valid_sync\(2),
	datad => VCC,
	cin => \inst19|Add2~3\,
	combout => \inst19|Add2~4_combout\,
	cout => \inst19|Add2~5\);

-- Location: LCCOMB_X20_Y16_N10
\inst19|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~10_combout\ = (\inst19|stop_valid_sync~62_combout\ & ((\inst19|start_valid_sync\(5) & (!\inst19|Add2~9\)) # (!\inst19|start_valid_sync\(5) & (\inst19|Add2~9\ & VCC)))) # (!\inst19|stop_valid_sync~62_combout\ & ((\inst19|start_valid_sync\(5) & 
-- ((\inst19|Add2~9\) # (GND))) # (!\inst19|start_valid_sync\(5) & (!\inst19|Add2~9\))))
-- \inst19|Add2~11\ = CARRY((\inst19|stop_valid_sync~62_combout\ & (\inst19|start_valid_sync\(5) & !\inst19|Add2~9\)) # (!\inst19|stop_valid_sync~62_combout\ & ((\inst19|start_valid_sync\(5)) # (!\inst19|Add2~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~62_combout\,
	datab => \inst19|start_valid_sync\(5),
	datad => VCC,
	cin => \inst19|Add2~9\,
	combout => \inst19|Add2~10_combout\,
	cout => \inst19|Add2~11\);

-- Location: LCCOMB_X20_Y16_N16
\inst19|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~16_combout\ = ((\inst19|stop_valid_sync~61_combout\ $ (\inst19|start_valid_sync\(8) $ (\inst19|Add2~15\)))) # (GND)
-- \inst19|Add2~17\ = CARRY((\inst19|stop_valid_sync~61_combout\ & ((!\inst19|Add2~15\) # (!\inst19|start_valid_sync\(8)))) # (!\inst19|stop_valid_sync~61_combout\ & (!\inst19|start_valid_sync\(8) & !\inst19|Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~61_combout\,
	datab => \inst19|start_valid_sync\(8),
	datad => VCC,
	cin => \inst19|Add2~15\,
	combout => \inst19|Add2~16_combout\,
	cout => \inst19|Add2~17\);

-- Location: LCCOMB_X20_Y16_N18
\inst19|Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~18_combout\ = (\inst19|start_valid_sync\(9) & ((\inst19|stop_valid_sync~82_combout\ & (!\inst19|Add2~17\)) # (!\inst19|stop_valid_sync~82_combout\ & ((\inst19|Add2~17\) # (GND))))) # (!\inst19|start_valid_sync\(9) & 
-- ((\inst19|stop_valid_sync~82_combout\ & (\inst19|Add2~17\ & VCC)) # (!\inst19|stop_valid_sync~82_combout\ & (!\inst19|Add2~17\))))
-- \inst19|Add2~19\ = CARRY((\inst19|start_valid_sync\(9) & ((!\inst19|Add2~17\) # (!\inst19|stop_valid_sync~82_combout\))) # (!\inst19|start_valid_sync\(9) & (!\inst19|stop_valid_sync~82_combout\ & !\inst19|Add2~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|start_valid_sync\(9),
	datab => \inst19|stop_valid_sync~82_combout\,
	datad => VCC,
	cin => \inst19|Add2~17\,
	combout => \inst19|Add2~18_combout\,
	cout => \inst19|Add2~19\);

-- Location: LCCOMB_X20_Y16_N24
\inst19|Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~24_combout\ = ((\inst19|stop_valid_sync~47_combout\ $ (\inst19|start_valid_sync\(12) $ (\inst19|Add2~23\)))) # (GND)
-- \inst19|Add2~25\ = CARRY((\inst19|stop_valid_sync~47_combout\ & ((!\inst19|Add2~23\) # (!\inst19|start_valid_sync\(12)))) # (!\inst19|stop_valid_sync~47_combout\ & (!\inst19|start_valid_sync\(12) & !\inst19|Add2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~47_combout\,
	datab => \inst19|start_valid_sync\(12),
	datad => VCC,
	cin => \inst19|Add2~23\,
	combout => \inst19|Add2~24_combout\,
	cout => \inst19|Add2~25\);

-- Location: LCCOMB_X20_Y16_N28
\inst19|Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~28_combout\ = ((\inst19|start_valid_sync\(14) $ (\inst19|stop_valid_sync~67_combout\ $ (\inst19|Add2~27\)))) # (GND)
-- \inst19|Add2~29\ = CARRY((\inst19|start_valid_sync\(14) & (\inst19|stop_valid_sync~67_combout\ & !\inst19|Add2~27\)) # (!\inst19|start_valid_sync\(14) & ((\inst19|stop_valid_sync~67_combout\) # (!\inst19|Add2~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|start_valid_sync\(14),
	datab => \inst19|stop_valid_sync~67_combout\,
	datad => VCC,
	cin => \inst19|Add2~27\,
	combout => \inst19|Add2~28_combout\,
	cout => \inst19|Add2~29\);

-- Location: LCCOMB_X20_Y16_N30
\inst19|Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~30_combout\ = (\inst19|start_valid_sync\(15) & ((\inst19|stop_valid_sync~49_combout\ & (!\inst19|Add2~29\)) # (!\inst19|stop_valid_sync~49_combout\ & ((\inst19|Add2~29\) # (GND))))) # (!\inst19|start_valid_sync\(15) & 
-- ((\inst19|stop_valid_sync~49_combout\ & (\inst19|Add2~29\ & VCC)) # (!\inst19|stop_valid_sync~49_combout\ & (!\inst19|Add2~29\))))
-- \inst19|Add2~31\ = CARRY((\inst19|start_valid_sync\(15) & ((!\inst19|Add2~29\) # (!\inst19|stop_valid_sync~49_combout\))) # (!\inst19|start_valid_sync\(15) & (!\inst19|stop_valid_sync~49_combout\ & !\inst19|Add2~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|start_valid_sync\(15),
	datab => \inst19|stop_valid_sync~49_combout\,
	datad => VCC,
	cin => \inst19|Add2~29\,
	combout => \inst19|Add2~30_combout\,
	cout => \inst19|Add2~31\);

-- Location: LCCOMB_X20_Y15_N2
\inst19|Add2~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~34_combout\ = (\inst19|start_valid_sync\(17) & ((\inst19|stop_valid_sync~32_combout\ & (!\inst19|Add2~33\)) # (!\inst19|stop_valid_sync~32_combout\ & ((\inst19|Add2~33\) # (GND))))) # (!\inst19|start_valid_sync\(17) & 
-- ((\inst19|stop_valid_sync~32_combout\ & (\inst19|Add2~33\ & VCC)) # (!\inst19|stop_valid_sync~32_combout\ & (!\inst19|Add2~33\))))
-- \inst19|Add2~35\ = CARRY((\inst19|start_valid_sync\(17) & ((!\inst19|Add2~33\) # (!\inst19|stop_valid_sync~32_combout\))) # (!\inst19|start_valid_sync\(17) & (!\inst19|stop_valid_sync~32_combout\ & !\inst19|Add2~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|start_valid_sync\(17),
	datab => \inst19|stop_valid_sync~32_combout\,
	datad => VCC,
	cin => \inst19|Add2~33\,
	combout => \inst19|Add2~34_combout\,
	cout => \inst19|Add2~35\);

-- Location: LCCOMB_X20_Y15_N4
\inst19|Add2~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~36_combout\ = ((\inst19|start_valid_sync\(18) $ (\inst19|stop_valid_sync~33_combout\ $ (\inst19|Add2~35\)))) # (GND)
-- \inst19|Add2~37\ = CARRY((\inst19|start_valid_sync\(18) & (\inst19|stop_valid_sync~33_combout\ & !\inst19|Add2~35\)) # (!\inst19|start_valid_sync\(18) & ((\inst19|stop_valid_sync~33_combout\) # (!\inst19|Add2~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|start_valid_sync\(18),
	datab => \inst19|stop_valid_sync~33_combout\,
	datad => VCC,
	cin => \inst19|Add2~35\,
	combout => \inst19|Add2~36_combout\,
	cout => \inst19|Add2~37\);

-- Location: LCCOMB_X20_Y15_N10
\inst19|Add2~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~42_combout\ = (\inst19|stop_valid_sync~55_combout\ & ((\inst19|start_valid_sync\(21) & (!\inst19|Add2~41\)) # (!\inst19|start_valid_sync\(21) & (\inst19|Add2~41\ & VCC)))) # (!\inst19|stop_valid_sync~55_combout\ & 
-- ((\inst19|start_valid_sync\(21) & ((\inst19|Add2~41\) # (GND))) # (!\inst19|start_valid_sync\(21) & (!\inst19|Add2~41\))))
-- \inst19|Add2~43\ = CARRY((\inst19|stop_valid_sync~55_combout\ & (\inst19|start_valid_sync\(21) & !\inst19|Add2~41\)) # (!\inst19|stop_valid_sync~55_combout\ & ((\inst19|start_valid_sync\(21)) # (!\inst19|Add2~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~55_combout\,
	datab => \inst19|start_valid_sync\(21),
	datad => VCC,
	cin => \inst19|Add2~41\,
	combout => \inst19|Add2~42_combout\,
	cout => \inst19|Add2~43\);

-- Location: LCCOMB_X20_Y15_N16
\inst19|Add2~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~48_combout\ = ((\inst19|stop_valid_sync~83_combout\ $ (\inst19|start_valid_sync\(24) $ (\inst19|Add2~47\)))) # (GND)
-- \inst19|Add2~49\ = CARRY((\inst19|stop_valid_sync~83_combout\ & ((!\inst19|Add2~47\) # (!\inst19|start_valid_sync\(24)))) # (!\inst19|stop_valid_sync~83_combout\ & (!\inst19|start_valid_sync\(24) & !\inst19|Add2~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~83_combout\,
	datab => \inst19|start_valid_sync\(24),
	datad => VCC,
	cin => \inst19|Add2~47\,
	combout => \inst19|Add2~48_combout\,
	cout => \inst19|Add2~49\);

-- Location: LCCOMB_X20_Y15_N18
\inst19|Add2~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~50_combout\ = (\inst19|start_valid_sync\(25) & ((\inst19|stop_valid_sync~41_combout\ & (!\inst19|Add2~49\)) # (!\inst19|stop_valid_sync~41_combout\ & ((\inst19|Add2~49\) # (GND))))) # (!\inst19|start_valid_sync\(25) & 
-- ((\inst19|stop_valid_sync~41_combout\ & (\inst19|Add2~49\ & VCC)) # (!\inst19|stop_valid_sync~41_combout\ & (!\inst19|Add2~49\))))
-- \inst19|Add2~51\ = CARRY((\inst19|start_valid_sync\(25) & ((!\inst19|Add2~49\) # (!\inst19|stop_valid_sync~41_combout\))) # (!\inst19|start_valid_sync\(25) & (!\inst19|stop_valid_sync~41_combout\ & !\inst19|Add2~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|start_valid_sync\(25),
	datab => \inst19|stop_valid_sync~41_combout\,
	datad => VCC,
	cin => \inst19|Add2~49\,
	combout => \inst19|Add2~50_combout\,
	cout => \inst19|Add2~51\);

-- Location: LCCOMB_X20_Y15_N26
\inst19|Add2~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~58_combout\ = (\inst19|stop_valid_sync~79_combout\ & ((\inst19|start_valid_sync\(29) & (!\inst19|Add2~57\)) # (!\inst19|start_valid_sync\(29) & (\inst19|Add2~57\ & VCC)))) # (!\inst19|stop_valid_sync~79_combout\ & 
-- ((\inst19|start_valid_sync\(29) & ((\inst19|Add2~57\) # (GND))) # (!\inst19|start_valid_sync\(29) & (!\inst19|Add2~57\))))
-- \inst19|Add2~59\ = CARRY((\inst19|stop_valid_sync~79_combout\ & (\inst19|start_valid_sync\(29) & !\inst19|Add2~57\)) # (!\inst19|stop_valid_sync~79_combout\ & ((\inst19|start_valid_sync\(29)) # (!\inst19|Add2~57\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~79_combout\,
	datab => \inst19|start_valid_sync\(29),
	datad => VCC,
	cin => \inst19|Add2~57\,
	combout => \inst19|Add2~58_combout\,
	cout => \inst19|Add2~59\);

-- Location: LCCOMB_X20_Y15_N28
\inst19|Add2~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~60_combout\ = ((\inst19|start_valid_sync\(30) $ (\inst19|stop_valid_sync~56_combout\ $ (\inst19|Add2~59\)))) # (GND)
-- \inst19|Add2~61\ = CARRY((\inst19|start_valid_sync\(30) & (\inst19|stop_valid_sync~56_combout\ & !\inst19|Add2~59\)) # (!\inst19|start_valid_sync\(30) & ((\inst19|stop_valid_sync~56_combout\) # (!\inst19|Add2~59\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|start_valid_sync\(30),
	datab => \inst19|stop_valid_sync~56_combout\,
	datad => VCC,
	cin => \inst19|Add2~59\,
	combout => \inst19|Add2~60_combout\,
	cout => \inst19|Add2~61\);

-- Location: LCCOMB_X20_Y15_N30
\inst19|Add2~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~62_combout\ = \inst19|start_valid_sync\(31) $ (\inst19|Add2~61\ $ (!\inst19|stop_valid_sync~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|start_valid_sync\(31),
	datad => \inst19|stop_valid_sync~85_combout\,
	cin => \inst19|Add2~61\,
	combout => \inst19|Add2~62_combout\);

-- Location: LCCOMB_X20_Y19_N2
\inst19|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~0_combout\ = \inst19|Add2~4_combout\ $ (VCC)
-- \inst19|Add3~1\ = CARRY(\inst19|Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add2~4_combout\,
	datad => VCC,
	combout => \inst19|Add3~0_combout\,
	cout => \inst19|Add3~1\);

-- Location: LCCOMB_X20_Y19_N8
\inst19|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~6_combout\ = (\inst19|Add2~10_combout\ & (\inst19|Add3~5\ & VCC)) # (!\inst19|Add2~10_combout\ & (!\inst19|Add3~5\))
-- \inst19|Add3~7\ = CARRY((!\inst19|Add2~10_combout\ & !\inst19|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add2~10_combout\,
	datad => VCC,
	cin => \inst19|Add3~5\,
	combout => \inst19|Add3~6_combout\,
	cout => \inst19|Add3~7\);

-- Location: LCCOMB_X20_Y19_N10
\inst19|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~8_combout\ = (\inst19|Add2~12_combout\ & ((GND) # (!\inst19|Add3~7\))) # (!\inst19|Add2~12_combout\ & (\inst19|Add3~7\ $ (GND)))
-- \inst19|Add3~9\ = CARRY((\inst19|Add2~12_combout\) # (!\inst19|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add2~12_combout\,
	datad => VCC,
	cin => \inst19|Add3~7\,
	combout => \inst19|Add3~8_combout\,
	cout => \inst19|Add3~9\);

-- Location: LCCOMB_X20_Y19_N12
\inst19|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~10_combout\ = (\inst19|Add2~14_combout\ & (!\inst19|Add3~9\)) # (!\inst19|Add2~14_combout\ & ((\inst19|Add3~9\) # (GND)))
-- \inst19|Add3~11\ = CARRY((!\inst19|Add3~9\) # (!\inst19|Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add2~14_combout\,
	datad => VCC,
	cin => \inst19|Add3~9\,
	combout => \inst19|Add3~10_combout\,
	cout => \inst19|Add3~11\);

-- Location: LCCOMB_X20_Y19_N14
\inst19|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~12_combout\ = (\inst19|Add2~16_combout\ & ((GND) # (!\inst19|Add3~11\))) # (!\inst19|Add2~16_combout\ & (\inst19|Add3~11\ $ (GND)))
-- \inst19|Add3~13\ = CARRY((\inst19|Add2~16_combout\) # (!\inst19|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add2~16_combout\,
	datad => VCC,
	cin => \inst19|Add3~11\,
	combout => \inst19|Add3~12_combout\,
	cout => \inst19|Add3~13\);

-- Location: LCCOMB_X20_Y19_N16
\inst19|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~14_combout\ = (\inst19|Add2~18_combout\ & (\inst19|Add3~13\ & VCC)) # (!\inst19|Add2~18_combout\ & (!\inst19|Add3~13\))
-- \inst19|Add3~15\ = CARRY((!\inst19|Add2~18_combout\ & !\inst19|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add2~18_combout\,
	datad => VCC,
	cin => \inst19|Add3~13\,
	combout => \inst19|Add3~14_combout\,
	cout => \inst19|Add3~15\);

-- Location: LCCOMB_X20_Y19_N26
\inst19|Add3~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~24_combout\ = (\inst19|Add2~28_combout\ & ((GND) # (!\inst19|Add3~23\))) # (!\inst19|Add2~28_combout\ & (\inst19|Add3~23\ $ (GND)))
-- \inst19|Add3~25\ = CARRY((\inst19|Add2~28_combout\) # (!\inst19|Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add2~28_combout\,
	datad => VCC,
	cin => \inst19|Add3~23\,
	combout => \inst19|Add3~24_combout\,
	cout => \inst19|Add3~25\);

-- Location: LCCOMB_X20_Y18_N8
\inst19|Add3~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~38_combout\ = (\inst19|Add2~42_combout\ & (\inst19|Add3~37\ & VCC)) # (!\inst19|Add2~42_combout\ & (!\inst19|Add3~37\))
-- \inst19|Add3~39\ = CARRY((!\inst19|Add2~42_combout\ & !\inst19|Add3~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add2~42_combout\,
	datad => VCC,
	cin => \inst19|Add3~37\,
	combout => \inst19|Add3~38_combout\,
	cout => \inst19|Add3~39\);

-- Location: LCCOMB_X20_Y18_N10
\inst19|Add3~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~40_combout\ = (\inst19|Add2~44_combout\ & ((GND) # (!\inst19|Add3~39\))) # (!\inst19|Add2~44_combout\ & (\inst19|Add3~39\ $ (GND)))
-- \inst19|Add3~41\ = CARRY((\inst19|Add2~44_combout\) # (!\inst19|Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add2~44_combout\,
	datad => VCC,
	cin => \inst19|Add3~39\,
	combout => \inst19|Add3~40_combout\,
	cout => \inst19|Add3~41\);

-- Location: LCCOMB_X20_Y18_N12
\inst19|Add3~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~42_combout\ = (\inst19|Add2~46_combout\ & (\inst19|Add3~41\ & VCC)) # (!\inst19|Add2~46_combout\ & (!\inst19|Add3~41\))
-- \inst19|Add3~43\ = CARRY((!\inst19|Add2~46_combout\ & !\inst19|Add3~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add2~46_combout\,
	datad => VCC,
	cin => \inst19|Add3~41\,
	combout => \inst19|Add3~42_combout\,
	cout => \inst19|Add3~43\);

-- Location: LCCOMB_X20_Y18_N14
\inst19|Add3~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~44_combout\ = (\inst19|Add2~48_combout\ & ((GND) # (!\inst19|Add3~43\))) # (!\inst19|Add2~48_combout\ & (\inst19|Add3~43\ $ (GND)))
-- \inst19|Add3~45\ = CARRY((\inst19|Add2~48_combout\) # (!\inst19|Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add2~48_combout\,
	datad => VCC,
	cin => \inst19|Add3~43\,
	combout => \inst19|Add3~44_combout\,
	cout => \inst19|Add3~45\);

-- Location: LCCOMB_X20_Y18_N16
\inst19|Add3~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~46_combout\ = (\inst19|Add2~50_combout\ & (\inst19|Add3~45\ & VCC)) # (!\inst19|Add2~50_combout\ & (!\inst19|Add3~45\))
-- \inst19|Add3~47\ = CARRY((!\inst19|Add2~50_combout\ & !\inst19|Add3~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add2~50_combout\,
	datad => VCC,
	cin => \inst19|Add3~45\,
	combout => \inst19|Add3~46_combout\,
	cout => \inst19|Add3~47\);

-- Location: LCCOMB_X20_Y18_N18
\inst19|Add3~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~48_combout\ = (\inst19|Add2~52_combout\ & ((GND) # (!\inst19|Add3~47\))) # (!\inst19|Add2~52_combout\ & (\inst19|Add3~47\ $ (GND)))
-- \inst19|Add3~49\ = CARRY((\inst19|Add2~52_combout\) # (!\inst19|Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add2~52_combout\,
	datad => VCC,
	cin => \inst19|Add3~47\,
	combout => \inst19|Add3~48_combout\,
	cout => \inst19|Add3~49\);

-- Location: LCCOMB_X20_Y18_N20
\inst19|Add3~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~50_combout\ = (\inst19|Add2~54_combout\ & (\inst19|Add3~49\ & VCC)) # (!\inst19|Add2~54_combout\ & (!\inst19|Add3~49\))
-- \inst19|Add3~51\ = CARRY((!\inst19|Add2~54_combout\ & !\inst19|Add3~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add2~54_combout\,
	datad => VCC,
	cin => \inst19|Add3~49\,
	combout => \inst19|Add3~50_combout\,
	cout => \inst19|Add3~51\);

-- Location: LCCOMB_X20_Y18_N22
\inst19|Add3~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~52_combout\ = (\inst19|Add2~56_combout\ & ((GND) # (!\inst19|Add3~51\))) # (!\inst19|Add2~56_combout\ & (\inst19|Add3~51\ $ (GND)))
-- \inst19|Add3~53\ = CARRY((\inst19|Add2~56_combout\) # (!\inst19|Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add2~56_combout\,
	datad => VCC,
	cin => \inst19|Add3~51\,
	combout => \inst19|Add3~52_combout\,
	cout => \inst19|Add3~53\);

-- Location: LCCOMB_X21_Y19_N2
\inst19|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~2_combout\ = (\inst19|Add4~1\ & (\inst19|Add3~58_combout\ $ ((!\inst19|Add2~2_combout\)))) # (!\inst19|Add4~1\ & ((\inst19|Add3~58_combout\ $ (\inst19|Add2~2_combout\)) # (GND)))
-- \inst19|Add4~3\ = CARRY((\inst19|Add3~58_combout\ $ (!\inst19|Add2~2_combout\)) # (!\inst19|Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~58_combout\,
	datab => \inst19|Add2~2_combout\,
	datad => VCC,
	cin => \inst19|Add4~1\,
	combout => \inst19|Add4~2_combout\,
	cout => \inst19|Add4~3\);

-- Location: LCCOMB_X21_Y19_N10
\inst19|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~10_combout\ = (\inst19|Add4~9\ & (\inst19|Add3~6_combout\ $ ((!\inst19|Add3~58_combout\)))) # (!\inst19|Add4~9\ & ((\inst19|Add3~6_combout\ $ (\inst19|Add3~58_combout\)) # (GND)))
-- \inst19|Add4~11\ = CARRY((\inst19|Add3~6_combout\ $ (!\inst19|Add3~58_combout\)) # (!\inst19|Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~6_combout\,
	datab => \inst19|Add3~58_combout\,
	datad => VCC,
	cin => \inst19|Add4~9\,
	combout => \inst19|Add4~10_combout\,
	cout => \inst19|Add4~11\);

-- Location: LCCOMB_X21_Y19_N12
\inst19|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~12_combout\ = (\inst19|Add4~11\ & ((\inst19|Add3~8_combout\ $ (\inst19|Add3~58_combout\)))) # (!\inst19|Add4~11\ & (\inst19|Add3~8_combout\ $ (\inst19|Add3~58_combout\ $ (VCC))))
-- \inst19|Add4~13\ = CARRY((!\inst19|Add4~11\ & (\inst19|Add3~8_combout\ $ (\inst19|Add3~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~8_combout\,
	datab => \inst19|Add3~58_combout\,
	datad => VCC,
	cin => \inst19|Add4~11\,
	combout => \inst19|Add4~12_combout\,
	cout => \inst19|Add4~13\);

-- Location: LCCOMB_X21_Y19_N18
\inst19|Add4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~18_combout\ = (\inst19|Add4~17\ & (\inst19|Add3~14_combout\ $ ((!\inst19|Add3~58_combout\)))) # (!\inst19|Add4~17\ & ((\inst19|Add3~14_combout\ $ (\inst19|Add3~58_combout\)) # (GND)))
-- \inst19|Add4~19\ = CARRY((\inst19|Add3~14_combout\ $ (!\inst19|Add3~58_combout\)) # (!\inst19|Add4~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~14_combout\,
	datab => \inst19|Add3~58_combout\,
	datad => VCC,
	cin => \inst19|Add4~17\,
	combout => \inst19|Add4~18_combout\,
	cout => \inst19|Add4~19\);

-- Location: LCCOMB_X21_Y19_N22
\inst19|Add4~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~22_combout\ = (\inst19|Add4~21\ & (\inst19|Add3~58_combout\ $ ((!\inst19|Add3~18_combout\)))) # (!\inst19|Add4~21\ & ((\inst19|Add3~58_combout\ $ (\inst19|Add3~18_combout\)) # (GND)))
-- \inst19|Add4~23\ = CARRY((\inst19|Add3~58_combout\ $ (!\inst19|Add3~18_combout\)) # (!\inst19|Add4~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~58_combout\,
	datab => \inst19|Add3~18_combout\,
	datad => VCC,
	cin => \inst19|Add4~21\,
	combout => \inst19|Add4~22_combout\,
	cout => \inst19|Add4~23\);

-- Location: LCCOMB_X21_Y19_N24
\inst19|Add4~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~24_combout\ = (\inst19|Add4~23\ & ((\inst19|Add3~58_combout\ $ (\inst19|Add3~20_combout\)))) # (!\inst19|Add4~23\ & (\inst19|Add3~58_combout\ $ (\inst19|Add3~20_combout\ $ (VCC))))
-- \inst19|Add4~25\ = CARRY((!\inst19|Add4~23\ & (\inst19|Add3~58_combout\ $ (\inst19|Add3~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~58_combout\,
	datab => \inst19|Add3~20_combout\,
	datad => VCC,
	cin => \inst19|Add4~23\,
	combout => \inst19|Add4~24_combout\,
	cout => \inst19|Add4~25\);

-- Location: LCCOMB_X21_Y19_N26
\inst19|Add4~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~26_combout\ = (\inst19|Add4~25\ & (\inst19|Add3~58_combout\ $ ((!\inst19|Add3~22_combout\)))) # (!\inst19|Add4~25\ & ((\inst19|Add3~58_combout\ $ (\inst19|Add3~22_combout\)) # (GND)))
-- \inst19|Add4~27\ = CARRY((\inst19|Add3~58_combout\ $ (!\inst19|Add3~22_combout\)) # (!\inst19|Add4~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~58_combout\,
	datab => \inst19|Add3~22_combout\,
	datad => VCC,
	cin => \inst19|Add4~25\,
	combout => \inst19|Add4~26_combout\,
	cout => \inst19|Add4~27\);

-- Location: LCCOMB_X21_Y19_N28
\inst19|Add4~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~28_combout\ = (\inst19|Add4~27\ & ((\inst19|Add3~24_combout\ $ (\inst19|Add3~58_combout\)))) # (!\inst19|Add4~27\ & (\inst19|Add3~24_combout\ $ (\inst19|Add3~58_combout\ $ (VCC))))
-- \inst19|Add4~29\ = CARRY((!\inst19|Add4~27\ & (\inst19|Add3~24_combout\ $ (\inst19|Add3~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~24_combout\,
	datab => \inst19|Add3~58_combout\,
	datad => VCC,
	cin => \inst19|Add4~27\,
	combout => \inst19|Add4~28_combout\,
	cout => \inst19|Add4~29\);

-- Location: LCCOMB_X21_Y19_N30
\inst19|Add4~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~30_combout\ = (\inst19|Add4~29\ & (\inst19|Add3~58_combout\ $ ((!\inst19|Add3~26_combout\)))) # (!\inst19|Add4~29\ & ((\inst19|Add3~58_combout\ $ (\inst19|Add3~26_combout\)) # (GND)))
-- \inst19|Add4~31\ = CARRY((\inst19|Add3~58_combout\ $ (!\inst19|Add3~26_combout\)) # (!\inst19|Add4~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~58_combout\,
	datab => \inst19|Add3~26_combout\,
	datad => VCC,
	cin => \inst19|Add4~29\,
	combout => \inst19|Add4~30_combout\,
	cout => \inst19|Add4~31\);

-- Location: LCCOMB_X21_Y18_N0
\inst19|Add4~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~32_combout\ = (\inst19|Add4~31\ & ((\inst19|Add3~58_combout\ $ (\inst19|Add3~28_combout\)))) # (!\inst19|Add4~31\ & (\inst19|Add3~58_combout\ $ (\inst19|Add3~28_combout\ $ (VCC))))
-- \inst19|Add4~33\ = CARRY((!\inst19|Add4~31\ & (\inst19|Add3~58_combout\ $ (\inst19|Add3~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~58_combout\,
	datab => \inst19|Add3~28_combout\,
	datad => VCC,
	cin => \inst19|Add4~31\,
	combout => \inst19|Add4~32_combout\,
	cout => \inst19|Add4~33\);

-- Location: LCCOMB_X21_Y18_N2
\inst19|Add4~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~34_combout\ = (\inst19|Add4~33\ & (\inst19|Add3~58_combout\ $ ((!\inst19|Add3~30_combout\)))) # (!\inst19|Add4~33\ & ((\inst19|Add3~58_combout\ $ (\inst19|Add3~30_combout\)) # (GND)))
-- \inst19|Add4~35\ = CARRY((\inst19|Add3~58_combout\ $ (!\inst19|Add3~30_combout\)) # (!\inst19|Add4~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~58_combout\,
	datab => \inst19|Add3~30_combout\,
	datad => VCC,
	cin => \inst19|Add4~33\,
	combout => \inst19|Add4~34_combout\,
	cout => \inst19|Add4~35\);

-- Location: LCCOMB_X21_Y18_N4
\inst19|Add4~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~36_combout\ = (\inst19|Add4~35\ & ((\inst19|Add3~58_combout\ $ (\inst19|Add3~32_combout\)))) # (!\inst19|Add4~35\ & (\inst19|Add3~58_combout\ $ (\inst19|Add3~32_combout\ $ (VCC))))
-- \inst19|Add4~37\ = CARRY((!\inst19|Add4~35\ & (\inst19|Add3~58_combout\ $ (\inst19|Add3~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~58_combout\,
	datab => \inst19|Add3~32_combout\,
	datad => VCC,
	cin => \inst19|Add4~35\,
	combout => \inst19|Add4~36_combout\,
	cout => \inst19|Add4~37\);

-- Location: LCCOMB_X21_Y18_N6
\inst19|Add4~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~38_combout\ = (\inst19|Add4~37\ & (\inst19|Add3~58_combout\ $ ((!\inst19|Add3~34_combout\)))) # (!\inst19|Add4~37\ & ((\inst19|Add3~58_combout\ $ (\inst19|Add3~34_combout\)) # (GND)))
-- \inst19|Add4~39\ = CARRY((\inst19|Add3~58_combout\ $ (!\inst19|Add3~34_combout\)) # (!\inst19|Add4~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~58_combout\,
	datab => \inst19|Add3~34_combout\,
	datad => VCC,
	cin => \inst19|Add4~37\,
	combout => \inst19|Add4~38_combout\,
	cout => \inst19|Add4~39\);

-- Location: LCCOMB_X21_Y18_N8
\inst19|Add4~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~40_combout\ = (\inst19|Add4~39\ & ((\inst19|Add3~58_combout\ $ (\inst19|Add3~36_combout\)))) # (!\inst19|Add4~39\ & (\inst19|Add3~58_combout\ $ (\inst19|Add3~36_combout\ $ (VCC))))
-- \inst19|Add4~41\ = CARRY((!\inst19|Add4~39\ & (\inst19|Add3~58_combout\ $ (\inst19|Add3~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~58_combout\,
	datab => \inst19|Add3~36_combout\,
	datad => VCC,
	cin => \inst19|Add4~39\,
	combout => \inst19|Add4~40_combout\,
	cout => \inst19|Add4~41\);

-- Location: LCCOMB_X21_Y18_N10
\inst19|Add4~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~42_combout\ = (\inst19|Add4~41\ & (\inst19|Add3~38_combout\ $ ((!\inst19|Add3~58_combout\)))) # (!\inst19|Add4~41\ & ((\inst19|Add3~38_combout\ $ (\inst19|Add3~58_combout\)) # (GND)))
-- \inst19|Add4~43\ = CARRY((\inst19|Add3~38_combout\ $ (!\inst19|Add3~58_combout\)) # (!\inst19|Add4~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~38_combout\,
	datab => \inst19|Add3~58_combout\,
	datad => VCC,
	cin => \inst19|Add4~41\,
	combout => \inst19|Add4~42_combout\,
	cout => \inst19|Add4~43\);

-- Location: LCCOMB_X21_Y18_N12
\inst19|Add4~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~44_combout\ = (\inst19|Add4~43\ & ((\inst19|Add3~40_combout\ $ (\inst19|Add3~58_combout\)))) # (!\inst19|Add4~43\ & (\inst19|Add3~40_combout\ $ (\inst19|Add3~58_combout\ $ (VCC))))
-- \inst19|Add4~45\ = CARRY((!\inst19|Add4~43\ & (\inst19|Add3~40_combout\ $ (\inst19|Add3~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~40_combout\,
	datab => \inst19|Add3~58_combout\,
	datad => VCC,
	cin => \inst19|Add4~43\,
	combout => \inst19|Add4~44_combout\,
	cout => \inst19|Add4~45\);

-- Location: LCCOMB_X21_Y18_N14
\inst19|Add4~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~46_combout\ = (\inst19|Add4~45\ & (\inst19|Add3~42_combout\ $ ((!\inst19|Add3~58_combout\)))) # (!\inst19|Add4~45\ & ((\inst19|Add3~42_combout\ $ (\inst19|Add3~58_combout\)) # (GND)))
-- \inst19|Add4~47\ = CARRY((\inst19|Add3~42_combout\ $ (!\inst19|Add3~58_combout\)) # (!\inst19|Add4~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~42_combout\,
	datab => \inst19|Add3~58_combout\,
	datad => VCC,
	cin => \inst19|Add4~45\,
	combout => \inst19|Add4~46_combout\,
	cout => \inst19|Add4~47\);

-- Location: LCCOMB_X21_Y18_N16
\inst19|Add4~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~48_combout\ = (\inst19|Add4~47\ & ((\inst19|Add3~44_combout\ $ (\inst19|Add3~58_combout\)))) # (!\inst19|Add4~47\ & (\inst19|Add3~44_combout\ $ (\inst19|Add3~58_combout\ $ (VCC))))
-- \inst19|Add4~49\ = CARRY((!\inst19|Add4~47\ & (\inst19|Add3~44_combout\ $ (\inst19|Add3~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~44_combout\,
	datab => \inst19|Add3~58_combout\,
	datad => VCC,
	cin => \inst19|Add4~47\,
	combout => \inst19|Add4~48_combout\,
	cout => \inst19|Add4~49\);

-- Location: LCCOMB_X21_Y18_N18
\inst19|Add4~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~50_combout\ = (\inst19|Add4~49\ & (\inst19|Add3~46_combout\ $ ((!\inst19|Add3~58_combout\)))) # (!\inst19|Add4~49\ & ((\inst19|Add3~46_combout\ $ (\inst19|Add3~58_combout\)) # (GND)))
-- \inst19|Add4~51\ = CARRY((\inst19|Add3~46_combout\ $ (!\inst19|Add3~58_combout\)) # (!\inst19|Add4~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~46_combout\,
	datab => \inst19|Add3~58_combout\,
	datad => VCC,
	cin => \inst19|Add4~49\,
	combout => \inst19|Add4~50_combout\,
	cout => \inst19|Add4~51\);

-- Location: LCCOMB_X21_Y18_N20
\inst19|Add4~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~52_combout\ = (\inst19|Add4~51\ & ((\inst19|Add3~48_combout\ $ (\inst19|Add3~58_combout\)))) # (!\inst19|Add4~51\ & (\inst19|Add3~48_combout\ $ (\inst19|Add3~58_combout\ $ (VCC))))
-- \inst19|Add4~53\ = CARRY((!\inst19|Add4~51\ & (\inst19|Add3~48_combout\ $ (\inst19|Add3~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~48_combout\,
	datab => \inst19|Add3~58_combout\,
	datad => VCC,
	cin => \inst19|Add4~51\,
	combout => \inst19|Add4~52_combout\,
	cout => \inst19|Add4~53\);

-- Location: LCCOMB_X21_Y18_N22
\inst19|Add4~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~54_combout\ = (\inst19|Add4~53\ & (\inst19|Add3~50_combout\ $ ((!\inst19|Add3~58_combout\)))) # (!\inst19|Add4~53\ & ((\inst19|Add3~50_combout\ $ (\inst19|Add3~58_combout\)) # (GND)))
-- \inst19|Add4~55\ = CARRY((\inst19|Add3~50_combout\ $ (!\inst19|Add3~58_combout\)) # (!\inst19|Add4~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~50_combout\,
	datab => \inst19|Add3~58_combout\,
	datad => VCC,
	cin => \inst19|Add4~53\,
	combout => \inst19|Add4~54_combout\,
	cout => \inst19|Add4~55\);

-- Location: LCCOMB_X21_Y18_N24
\inst19|Add4~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~56_combout\ = (\inst19|Add4~55\ & ((\inst19|Add3~52_combout\ $ (\inst19|Add3~58_combout\)))) # (!\inst19|Add4~55\ & (\inst19|Add3~52_combout\ $ (\inst19|Add3~58_combout\ $ (VCC))))
-- \inst19|Add4~57\ = CARRY((!\inst19|Add4~55\ & (\inst19|Add3~52_combout\ $ (\inst19|Add3~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~52_combout\,
	datab => \inst19|Add3~58_combout\,
	datad => VCC,
	cin => \inst19|Add4~55\,
	combout => \inst19|Add4~56_combout\,
	cout => \inst19|Add4~57\);

-- Location: LCCOMB_X21_Y18_N26
\inst19|Add4~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~58_combout\ = (\inst19|Add4~57\ & (\inst19|Add3~58_combout\ $ ((!\inst19|Add3~54_combout\)))) # (!\inst19|Add4~57\ & ((\inst19|Add3~58_combout\ $ (\inst19|Add3~54_combout\)) # (GND)))
-- \inst19|Add4~59\ = CARRY((\inst19|Add3~58_combout\ $ (!\inst19|Add3~54_combout\)) # (!\inst19|Add4~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~58_combout\,
	datab => \inst19|Add3~54_combout\,
	datad => VCC,
	cin => \inst19|Add4~57\,
	combout => \inst19|Add4~58_combout\,
	cout => \inst19|Add4~59\);

-- Location: LCCOMB_X21_Y18_N28
\inst19|Add4~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~60_combout\ = (\inst19|Add4~59\ & ((\inst19|Add3~58_combout\ $ (\inst19|Add3~56_combout\)))) # (!\inst19|Add4~59\ & (\inst19|Add3~58_combout\ $ (\inst19|Add3~56_combout\ $ (VCC))))
-- \inst19|Add4~61\ = CARRY((!\inst19|Add4~59\ & (\inst19|Add3~58_combout\ $ (\inst19|Add3~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~58_combout\,
	datab => \inst19|Add3~56_combout\,
	datad => VCC,
	cin => \inst19|Add4~59\,
	combout => \inst19|Add4~60_combout\,
	cout => \inst19|Add4~61\);

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

-- Location: M9K_X13_Y15_N0
\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "STD_FIFO:inst8|altsyncram:\fifo_proc:Memory_rtl_0|altsyncram_pug1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 31,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 8,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 31,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst8|Memory~45_combout\,
	portbre => VCC,
	clk0 => \clock_50~inputclkctrl_outclk\,
	portadatain => \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: FF_X14_Y17_N27
\inst8|fifo_proc:Tail[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|Tail~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc:Tail[2]~q\);

-- Location: LCCOMB_X14_Y17_N28
\inst8|Looped~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Looped~0_combout\ = (((!\inst8|fifo_proc:Tail[0]~q\) # (!\button0_read~input_o\)) # (!\inst8|fifo_proc:Tail[1]~q\)) # (!\inst8|fifo_proc:Tail[2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Tail[2]~q\,
	datab => \inst8|fifo_proc:Tail[1]~q\,
	datac => \button0_read~input_o\,
	datad => \inst8|fifo_proc:Tail[0]~q\,
	combout => \inst8|Looped~0_combout\);

-- Location: FF_X12_Y17_N27
\inst8|fifo_proc:prev_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst19|result~q\,
	sload => VCC,
	ena => \button1_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc:prev_data~q\);

-- Location: LCCOMB_X11_Y17_N24
\inst8|Looped~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Looped~4_combout\ = (\inst8|fifo_proc:Head[2]~q\ & (\inst8|fifo_proc:Head[4]~q\ & (\inst8|fifo_proc:Head[3]~q\ & \inst8|fifo_proc:Head[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Head[2]~q\,
	datab => \inst8|fifo_proc:Head[4]~q\,
	datac => \inst8|fifo_proc:Head[3]~q\,
	datad => \inst8|fifo_proc:Head[5]~q\,
	combout => \inst8|Looped~4_combout\);

-- Location: LCCOMB_X14_Y17_N2
\inst8|fifo_proc~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc~2_combout\ = (\inst8|fifo_proc:Head[4]~q\ & (\inst8|fifo_proc:Tail[4]~q\ & (\inst8|fifo_proc:Head[5]~q\ $ (!\inst8|fifo_proc:Tail[5]~q\)))) # (!\inst8|fifo_proc:Head[4]~q\ & (!\inst8|fifo_proc:Tail[4]~q\ & (\inst8|fifo_proc:Head[5]~q\ $ 
-- (!\inst8|fifo_proc:Tail[5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Head[4]~q\,
	datab => \inst8|fifo_proc:Head[5]~q\,
	datac => \inst8|fifo_proc:Tail[5]~q\,
	datad => \inst8|fifo_proc:Tail[4]~q\,
	combout => \inst8|fifo_proc~2_combout\);

-- Location: LCCOMB_X14_Y17_N12
\inst8|DataOut[30]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|DataOut[30]~0_combout\ = (\button0_read~input_o\ & ((\inst8|fifo_proc:Looped~q\) # (!\inst8|fifo_proc~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|fifo_proc~4_combout\,
	datac => \button0_read~input_o\,
	datad => \inst8|fifo_proc:Looped~q\,
	combout => \inst8|DataOut[30]~0_combout\);

-- Location: LCCOMB_X15_Y17_N28
\inst8|fifo_proc~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc~5_combout\ = (\inst8|Add0~2_combout\ & (\inst8|fifo_proc:Head[1]~q\ & (\inst8|Add0~0_combout\ $ (!\inst8|fifo_proc:Head[0]~q\)))) # (!\inst8|Add0~2_combout\ & (!\inst8|fifo_proc:Head[1]~q\ & (\inst8|Add0~0_combout\ $ 
-- (!\inst8|fifo_proc:Head[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~2_combout\,
	datab => \inst8|Add0~0_combout\,
	datac => \inst8|fifo_proc:Head[0]~q\,
	datad => \inst8|fifo_proc:Head[1]~q\,
	combout => \inst8|fifo_proc~5_combout\);

-- Location: LCCOMB_X15_Y17_N22
\inst8|fifo_proc~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc~6_combout\ = (\inst8|fifo_proc:Head[2]~q\ & (\inst8|Add0~4_combout\ & (\inst8|fifo_proc:Head[3]~q\ $ (!\inst8|Add0~6_combout\)))) # (!\inst8|fifo_proc:Head[2]~q\ & (!\inst8|Add0~4_combout\ & (\inst8|fifo_proc:Head[3]~q\ $ 
-- (!\inst8|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Head[2]~q\,
	datab => \inst8|fifo_proc:Head[3]~q\,
	datac => \inst8|Add0~4_combout\,
	datad => \inst8|Add0~6_combout\,
	combout => \inst8|fifo_proc~6_combout\);

-- Location: LCCOMB_X15_Y17_N0
\inst8|Memory~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Memory~41_combout\ = (\inst8|fifo_proc:Head[4]~q\ & ((\inst8|fifo_proc:Head[5]~q\ $ (\inst8|Add0~10_combout\)) # (!\inst8|Add0~8_combout\))) # (!\inst8|fifo_proc:Head[4]~q\ & ((\inst8|Add0~8_combout\) # (\inst8|fifo_proc:Head[5]~q\ $ 
-- (\inst8|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Head[4]~q\,
	datab => \inst8|fifo_proc:Head[5]~q\,
	datac => \inst8|Add0~10_combout\,
	datad => \inst8|Add0~8_combout\,
	combout => \inst8|Memory~41_combout\);

-- Location: LCCOMB_X15_Y17_N26
\inst8|Memory~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Memory~42_combout\ = ((\inst8|Memory~41_combout\) # ((!\inst8|fifo_proc~5_combout\) # (!\inst8|fifo_proc~6_combout\))) # (!\inst8|Looped~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Looped~2_combout\,
	datab => \inst8|Memory~41_combout\,
	datac => \inst8|fifo_proc~6_combout\,
	datad => \inst8|fifo_proc~5_combout\,
	combout => \inst8|Memory~42_combout\);

-- Location: LCCOMB_X15_Y17_N20
\inst8|Memory~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Memory~43_combout\ = (\inst8|fifo_proc:Head[7]~q\ & ((\inst8|fifo_proc:Head[6]~q\ $ (\inst8|Add0~12_combout\)) # (!\inst8|Add0~14_combout\))) # (!\inst8|fifo_proc:Head[7]~q\ & ((\inst8|Add0~14_combout\) # (\inst8|fifo_proc:Head[6]~q\ $ 
-- (\inst8|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Head[7]~q\,
	datab => \inst8|Add0~14_combout\,
	datac => \inst8|fifo_proc:Head[6]~q\,
	datad => \inst8|Add0~12_combout\,
	combout => \inst8|Memory~43_combout\);

-- Location: LCCOMB_X12_Y17_N26
\inst8|Memory~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Memory~44_combout\ = (\inst19|result~q\ & (!\inst8|fifo_proc:prev_data~q\ & ((\inst8|Memory~43_combout\) # (\inst8|Memory~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|result~q\,
	datab => \inst8|Memory~43_combout\,
	datac => \inst8|fifo_proc:prev_data~q\,
	datad => \inst8|Memory~42_combout\,
	combout => \inst8|Memory~44_combout\);

-- Location: LCCOMB_X11_Y17_N12
\inst8|Equal4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Equal4~4_combout\ = (\inst8|Add0~14_combout\ & (\inst8|Add1~14_combout\ & (\inst8|Add1~12_combout\ $ (!\inst8|Add0~12_combout\)))) # (!\inst8|Add0~14_combout\ & (!\inst8|Add1~14_combout\ & (\inst8|Add1~12_combout\ $ (!\inst8|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~14_combout\,
	datab => \inst8|Add1~14_combout\,
	datac => \inst8|Add1~12_combout\,
	datad => \inst8|Add0~12_combout\,
	combout => \inst8|Equal4~4_combout\);

-- Location: FF_X19_Y14_N27
\inst19|stop_valid_sync[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|stop_valid_sync~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|stop_valid_sync\(21));

-- Location: LCCOMB_X20_Y14_N8
\inst19|stop_valid_sync~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~16_combout\ = (\inst19|stop_valid_sync~15_combout\ & (!\inst19|stop_valid_sync\(26) & \inst19|stop_valid_sync~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|stop_valid_sync~15_combout\,
	datac => \inst19|stop_valid_sync\(26),
	datad => \inst19|stop_valid_sync~12_combout\,
	combout => \inst19|stop_valid_sync~16_combout\);

-- Location: LCCOMB_X24_Y13_N12
\inst19|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan2~3_combout\ = (!\inst19|Add0~32_combout\ & (!\inst19|Add0~38_combout\ & (!\inst19|Add0~36_combout\ & !\inst19|Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~32_combout\,
	datab => \inst19|Add0~38_combout\,
	datac => \inst19|Add0~36_combout\,
	datad => \inst19|Add0~34_combout\,
	combout => \inst19|LessThan2~3_combout\);

-- Location: FF_X20_Y14_N5
\inst19|start_valid_sync[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|start_valid_sync[25]~feeder_combout\,
	ena => \inst19|start_valid_sync[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(25));

-- Location: LCCOMB_X20_Y14_N26
\inst19|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Equal0~1_combout\ = (!\inst19|start_valid_sync\(26) & (!\inst19|start_valid_sync\(24) & (!\inst19|start_valid_sync\(25) & !\inst19|start_valid_sync\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|start_valid_sync\(26),
	datab => \inst19|start_valid_sync\(24),
	datac => \inst19|start_valid_sync\(25),
	datad => \inst19|start_valid_sync\(23),
	combout => \inst19|Equal0~1_combout\);

-- Location: FF_X21_Y16_N25
\inst19|start_valid_sync[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|start_valid_sync[18]~feeder_combout\,
	ena => \inst19|start_valid_sync[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(18));

-- Location: FF_X21_Y16_N7
\inst19|start_valid_sync[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|start_valid_sync[9]~feeder_combout\,
	ena => \inst19|start_valid_sync[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(9));

-- Location: LCCOMB_X21_Y16_N10
\inst19|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Equal0~6_combout\ = (!\inst19|start_valid_sync\(9) & (!\inst19|start_valid_sync\(8) & (!\inst19|start_valid_sync\(10) & !\inst19|start_valid_sync\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|start_valid_sync\(9),
	datab => \inst19|start_valid_sync\(8),
	datac => \inst19|start_valid_sync\(10),
	datad => \inst19|start_valid_sync\(7),
	combout => \inst19|Equal0~6_combout\);

-- Location: LCCOMB_X22_Y16_N10
\inst19|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Equal0~7_combout\ = (!\inst19|start_valid_sync\(4) & (!\inst19|start_valid_sync\(5) & (!\inst19|start_valid_sync\(6) & !\inst19|start_valid_sync\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|start_valid_sync\(4),
	datab => \inst19|start_valid_sync\(5),
	datac => \inst19|start_valid_sync\(6),
	datad => \inst19|start_valid_sync\(3),
	combout => \inst19|Equal0~7_combout\);

-- Location: LCCOMB_X19_Y14_N8
\inst19|stop_valid_sync~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~55_combout\ = (\inst19|stop_valid_sync\(21)) # ((\inst19|t_0\(21) & (!\inst19|stop_valid_sync\(15) & \inst19|stop_valid_sync~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(21),
	datab => \inst19|stop_valid_sync\(15),
	datac => \inst19|stop_valid_sync\(21),
	datad => \inst19|stop_valid_sync~48_combout\,
	combout => \inst19|stop_valid_sync~55_combout\);

-- Location: LCCOMB_X20_Y13_N28
\inst19|LessThan6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan6~3_combout\ = (\inst19|stop_valid_sync~55_combout\) # ((\inst19|stop_valid_sync~56_combout\) # ((\inst19|stop_valid_sync~51_combout\) # (\inst19|stop_valid_sync~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~55_combout\,
	datab => \inst19|stop_valid_sync~56_combout\,
	datac => \inst19|stop_valid_sync~51_combout\,
	datad => \inst19|stop_valid_sync~54_combout\,
	combout => \inst19|LessThan6~3_combout\);

-- Location: LCCOMB_X23_Y16_N28
\inst19|stop_valid_sync~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~65_combout\ = (\inst19|stop_valid_sync~46_combout\ & !\inst19|stop_valid_sync\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|stop_valid_sync~46_combout\,
	datad => \inst19|stop_valid_sync\(12),
	combout => \inst19|stop_valid_sync~65_combout\);

-- Location: LCCOMB_X19_Y16_N26
\inst19|LessThan6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan6~6_combout\ = (\inst19|stop_valid_sync~70_combout\) # ((\inst19|stop_valid_sync~68_combout\) # ((\inst19|stop_valid_sync~67_combout\) # (\inst19|stop_valid_sync~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~70_combout\,
	datab => \inst19|stop_valid_sync~68_combout\,
	datac => \inst19|stop_valid_sync~67_combout\,
	datad => \inst19|stop_valid_sync~66_combout\,
	combout => \inst19|LessThan6~6_combout\);

-- Location: LCCOMB_X23_Y16_N30
\inst19|stop_valid_sync~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~77_combout\ = (\inst19|stop_valid_sync~17_combout\ & (!\inst19|stop_valid_sync\(8) & (!\inst19|stop_valid_sync\(14) & !\inst19|stop_valid_sync\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~17_combout\,
	datab => \inst19|stop_valid_sync\(8),
	datac => \inst19|stop_valid_sync\(14),
	datad => \inst19|stop_valid_sync\(12),
	combout => \inst19|stop_valid_sync~77_combout\);

-- Location: LCCOMB_X23_Y16_N4
\inst19|stop_valid_sync~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~81_combout\ = (!\inst19|stop_valid_sync\(8) & (!\inst19|stop_valid_sync\(14) & \inst19|stop_valid_sync~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|stop_valid_sync\(8),
	datac => \inst19|stop_valid_sync\(14),
	datad => \inst19|stop_valid_sync~18_combout\,
	combout => \inst19|stop_valid_sync~81_combout\);

-- Location: LCCOMB_X20_Y18_N30
\inst19|result~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|result~2_combout\ = \inst19|Add2~0_combout\ $ (\inst19|Add3~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add2~0_combout\,
	datad => \inst19|Add3~58_combout\,
	combout => \inst19|result~2_combout\);

-- Location: LCCOMB_X22_Y18_N6
\inst19|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan7~1_combout\ = (\inst19|Add4~10_combout\ & \inst19|Add4~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add4~10_combout\,
	datad => \inst19|Add4~12_combout\,
	combout => \inst19|LessThan7~1_combout\);

-- Location: LCCOMB_X22_Y18_N20
\inst19|LessThan7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan7~4_combout\ = (\inst19|Add4~60_combout\) # ((\inst19|Add4~56_combout\) # ((\inst19|Add4~58_combout\) # (\inst19|Add4~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add4~60_combout\,
	datab => \inst19|Add4~56_combout\,
	datac => \inst19|Add4~58_combout\,
	datad => \inst19|Add4~54_combout\,
	combout => \inst19|LessThan7~4_combout\);

-- Location: LCCOMB_X22_Y19_N8
\inst19|LessThan7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan7~5_combout\ = (\inst19|Add4~28_combout\) # ((\inst19|Add4~24_combout\) # ((\inst19|Add4~26_combout\) # (\inst19|Add4~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add4~28_combout\,
	datab => \inst19|Add4~24_combout\,
	datac => \inst19|Add4~26_combout\,
	datad => \inst19|Add4~22_combout\,
	combout => \inst19|LessThan7~5_combout\);

-- Location: LCCOMB_X22_Y18_N14
\inst19|LessThan7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan7~6_combout\ = (\inst19|Add4~32_combout\) # (\inst19|Add4~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|Add4~32_combout\,
	datad => \inst19|Add4~30_combout\,
	combout => \inst19|LessThan7~6_combout\);

-- Location: LCCOMB_X22_Y18_N0
\inst19|LessThan7~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan7~7_combout\ = (\inst19|Add4~34_combout\) # ((\inst19|LessThan7~6_combout\) # ((\inst19|Add4~36_combout\) # (\inst19|LessThan7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add4~34_combout\,
	datab => \inst19|LessThan7~6_combout\,
	datac => \inst19|Add4~36_combout\,
	datad => \inst19|LessThan7~5_combout\,
	combout => \inst19|LessThan7~7_combout\);

-- Location: LCCOMB_X22_Y18_N26
\inst19|LessThan7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan7~8_combout\ = (\inst19|Add4~42_combout\) # ((\inst19|Add4~44_combout\) # ((\inst19|Add4~38_combout\) # (\inst19|Add4~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add4~42_combout\,
	datab => \inst19|Add4~44_combout\,
	datac => \inst19|Add4~38_combout\,
	datad => \inst19|Add4~40_combout\,
	combout => \inst19|LessThan7~8_combout\);

-- Location: LCCOMB_X22_Y18_N4
\inst19|LessThan7~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan7~9_combout\ = (\inst19|Add4~50_combout\) # ((\inst19|Add4~52_combout\) # ((\inst19|Add4~48_combout\) # (\inst19|Add4~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add4~50_combout\,
	datab => \inst19|Add4~52_combout\,
	datac => \inst19|Add4~48_combout\,
	datad => \inst19|Add4~46_combout\,
	combout => \inst19|LessThan7~9_combout\);

-- Location: LCCOMB_X22_Y18_N22
\inst19|LessThan7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan7~10_combout\ = (\inst19|LessThan7~8_combout\) # ((\inst19|LessThan7~7_combout\) # ((\inst19|LessThan7~9_combout\) # (\inst19|LessThan7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan7~8_combout\,
	datab => \inst19|LessThan7~7_combout\,
	datac => \inst19|LessThan7~9_combout\,
	datad => \inst19|LessThan7~4_combout\,
	combout => \inst19|LessThan7~10_combout\);

-- Location: LCCOMB_X21_Y13_N30
\inst19|LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan4~0_combout\ = (!\inst19|Add0~10_combout\ & (!\inst19|Add0~8_combout\ & ((!\inst19|Add0~4_combout\) # (!\inst19|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~6_combout\,
	datab => \inst19|Add0~4_combout\,
	datac => \inst19|Add0~10_combout\,
	datad => \inst19|Add0~8_combout\,
	combout => \inst19|LessThan4~0_combout\);

-- Location: LCCOMB_X21_Y13_N16
\inst19|LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan3~0_combout\ = (\inst19|Add0~10_combout\ & (\inst19|Add0~12_combout\ & ((\inst19|Add0~8_combout\) # (!\inst19|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~10_combout\,
	datab => \inst19|LessThan0~2_combout\,
	datac => \inst19|Add0~8_combout\,
	datad => \inst19|Add0~12_combout\,
	combout => \inst19|LessThan3~0_combout\);

-- Location: LCCOMB_X21_Y13_N10
\inst19|result~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|result~3_combout\ = (\inst19|Add0~14_combout\ & (((\inst19|Add0~12_combout\) # (!\inst19|LessThan4~0_combout\)))) # (!\inst19|Add0~14_combout\ & (!\inst19|LessThan3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~14_combout\,
	datab => \inst19|LessThan3~0_combout\,
	datac => \inst19|LessThan4~0_combout\,
	datad => \inst19|Add0~12_combout\,
	combout => \inst19|result~3_combout\);

-- Location: FF_X11_Y4_N11
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

-- Location: LCCOMB_X19_Y14_N26
\inst19|stop_valid_sync~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~94_combout\ = (\inst19|stop_valid_sync~55_combout\ & !\inst19|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|stop_valid_sync~55_combout\,
	datac => \inst19|process_0~0_combout\,
	combout => \inst19|stop_valid_sync~94_combout\);

-- Location: FF_X11_Y16_N27
\inst13|spi_slave_0|tx_buf[30]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[30]~3_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[30]~_emulated_q\);

-- Location: LCCOMB_X11_Y4_N18
\inst13|spi_slave_0|roe~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|roe~0_combout\ = (\inst13|spi_slave_0|bit_cnt\(11) & ((\inst13|spi_slave_0|wr_add~q\ & ((\spi_mosi~input_o\))) # (!\inst13|spi_slave_0|wr_add~q\ & (\inst13|spi_slave_0|roe~q\)))) # (!\inst13|spi_slave_0|bit_cnt\(11) & 
-- (\inst13|spi_slave_0|roe~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|roe~q\,
	datab => \spi_mosi~input_o\,
	datac => \inst13|spi_slave_0|bit_cnt\(11),
	datad => \inst13|spi_slave_0|wr_add~q\,
	combout => \inst13|spi_slave_0|roe~0_combout\);

-- Location: LCCOMB_X11_Y4_N10
\inst13|spi_slave_0|roe~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|roe~1_combout\ = (\inst13|spi_slave_0|roe~0_combout\) # ((!\inst13|spi_slave_0|wr_add~q\ & (\inst13|spi_slave_0|rrdy~q\ & \inst13|spi_slave_0|bit_cnt\(40))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|wr_add~q\,
	datab => \inst13|spi_slave_0|rrdy~q\,
	datac => \inst13|spi_slave_0|bit_cnt\(40),
	datad => \inst13|spi_slave_0|roe~0_combout\,
	combout => \inst13|spi_slave_0|roe~1_combout\);

-- Location: LCCOMB_X11_Y16_N26
\inst13|spi_slave_0|tx_buf[30]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[30]~3_combout\ = \inst13|spi_slave_0|tx_buf[29]~6_combout\ $ (\inst13|spi_slave_0|tx_buf[30]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|spi_slave_0|tx_buf[29]~6_combout\,
	datad => \inst13|spi_slave_0|tx_buf[30]~1_combout\,
	combout => \inst13|spi_slave_0|tx_buf[30]~3_combout\);

-- Location: FF_X11_Y16_N15
\inst13|spi_slave_0|tx_buf[29]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[29]~7_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[29]~_emulated_q\);

-- Location: FF_X11_Y16_N9
\inst13|spi_tx_data[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst8|DataOut\(29),
	sload => VCC,
	ena => \inst13|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(29));

-- Location: LCCOMB_X11_Y16_N8
\inst13|spi_slave_0|tx_buf[29]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[29]~6_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(29))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[29]~_emulated_q\ $ 
-- (((\inst13|spi_slave_0|tx_buf[29]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|process_1~2_combout\,
	datab => \inst13|spi_slave_0|tx_buf[29]~_emulated_q\,
	datac => \inst13|spi_tx_data\(29),
	datad => \inst13|spi_slave_0|tx_buf[29]~5_combout\,
	combout => \inst13|spi_slave_0|tx_buf[29]~6_combout\);

-- Location: FF_X12_Y15_N7
\inst8|fifo_proc_Memory_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|Memory~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(0));

-- Location: FF_X11_Y17_N3
\inst8|fifo_proc_Memory_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|Tail~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(2));

-- Location: FF_X14_Y16_N31
\inst8|fifo_proc_Memory_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst8|fifo_proc:Head[3]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(7));

-- Location: FF_X14_Y16_N13
\inst8|fifo_proc_Memory_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc_Memory_rtl_0_bypass[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(9));

-- Location: FF_X15_Y17_N31
\inst8|fifo_proc_Memory_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst8|fifo_proc:Head[5]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(11));

-- Location: FF_X11_Y17_N5
\inst8|fifo_proc_Memory_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|Tail~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(12));

-- Location: FF_X14_Y16_N7
\inst8|fifo_proc_Memory_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst8|Tail~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(10));

-- Location: LCCOMB_X14_Y16_N6
\inst8|fifo_proc:Memory~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc:Memory~2_combout\ = (\inst8|fifo_proc_Memory_rtl_0_bypass\(9) & (\inst8|fifo_proc_Memory_rtl_0_bypass\(10) & (\inst8|fifo_proc_Memory_rtl_0_bypass\(12) $ (!\inst8|fifo_proc_Memory_rtl_0_bypass\(11))))) # 
-- (!\inst8|fifo_proc_Memory_rtl_0_bypass\(9) & (!\inst8|fifo_proc_Memory_rtl_0_bypass\(10) & (\inst8|fifo_proc_Memory_rtl_0_bypass\(12) $ (!\inst8|fifo_proc_Memory_rtl_0_bypass\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc_Memory_rtl_0_bypass\(9),
	datab => \inst8|fifo_proc_Memory_rtl_0_bypass\(12),
	datac => \inst8|fifo_proc_Memory_rtl_0_bypass\(10),
	datad => \inst8|fifo_proc_Memory_rtl_0_bypass\(11),
	combout => \inst8|fifo_proc:Memory~2_combout\);

-- Location: FF_X14_Y16_N11
\inst8|fifo_proc_Memory_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc_Memory_rtl_0_bypass[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(15));

-- Location: LCCOMB_X11_Y16_N14
\inst13|spi_slave_0|tx_buf[29]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[29]~7_combout\ = \inst13|spi_slave_0|tx_buf[29]~5_combout\ $ (\inst13|spi_slave_0|tx_buf[28]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[29]~5_combout\,
	datad => \inst13|spi_slave_0|tx_buf[28]~10_combout\,
	combout => \inst13|spi_slave_0|tx_buf[29]~7_combout\);

-- Location: FF_X12_Y15_N17
\inst8|DataOut[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc:Memory~6_combout\,
	ena => \inst8|DataOut[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|DataOut\(29));

-- Location: LCCOMB_X12_Y15_N6
\inst8|Memory~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Memory~45_combout\ = (\button1_reset~input_o\ & \inst8|Memory~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button1_reset~input_o\,
	datad => \inst8|Memory~44_combout\,
	combout => \inst8|Memory~45_combout\);

-- Location: FF_X10_Y15_N9
\inst13|spi_slave_0|tx_buf[28]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[28]~11_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[28]~_emulated_q\);

-- Location: FF_X11_Y15_N11
\inst13|spi_tx_data[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst8|DataOut\(28),
	sload => VCC,
	ena => \inst13|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(28));

-- Location: LCCOMB_X11_Y15_N10
\inst13|spi_slave_0|tx_buf[28]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[28]~10_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(28))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[28]~_emulated_q\ $ 
-- (((\inst13|spi_slave_0|tx_buf[28]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[28]~_emulated_q\,
	datab => \inst13|spi_slave_0|process_1~2_combout\,
	datac => \inst13|spi_tx_data\(28),
	datad => \inst13|spi_slave_0|tx_buf[28]~9_combout\,
	combout => \inst13|spi_slave_0|tx_buf[28]~10_combout\);

-- Location: FF_X12_Y15_N19
\inst8|fifo_proc_Memory_rtl_0_bypass[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc_Memory_rtl_0_bypass[46]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(46));

-- Location: LCCOMB_X12_Y15_N16
\inst8|fifo_proc:Memory~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc:Memory~6_combout\ = (\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & ((\inst8|fifo_proc:Memory~4_combout\ & (\inst8|fifo_proc_Memory_rtl_0_bypass\(46))) # (!\inst8|fifo_proc:Memory~4_combout\ & 
-- ((\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a29\))))) # (!\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & (((\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc_Memory_rtl_0_bypass\(0),
	datab => \inst8|fifo_proc_Memory_rtl_0_bypass\(46),
	datac => \inst8|fifo_proc:Memory~4_combout\,
	datad => \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a29\,
	combout => \inst8|fifo_proc:Memory~6_combout\);

-- Location: LCCOMB_X10_Y15_N8
\inst13|spi_slave_0|tx_buf[28]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[28]~11_combout\ = \inst13|spi_slave_0|tx_buf[28]~9_combout\ $ (\inst13|spi_slave_0|tx_buf[27]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[28]~9_combout\,
	datad => \inst13|spi_slave_0|tx_buf[27]~14_combout\,
	combout => \inst13|spi_slave_0|tx_buf[28]~11_combout\);

-- Location: FF_X12_Y15_N21
\inst8|DataOut[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc:Memory~7_combout\,
	ena => \inst8|DataOut[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|DataOut\(28));

-- Location: FF_X23_Y15_N29
\inst19|t_sweep_start[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_0\(30),
	sload => VCC,
	ena => \inst19|t_sweep_start[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(30));

-- Location: FF_X23_Y14_N17
\inst19|t_sweep_start[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_0\(27),
	sload => VCC,
	ena => \inst19|t_sweep_start[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(27));

-- Location: FF_X20_Y14_N17
\inst19|t_sweep_start[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_0\(26),
	sload => VCC,
	ena => \inst19|t_sweep_start[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(26));

-- Location: FF_X23_Y14_N11
\inst19|t_sweep_start[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_start[24]~feeder_combout\,
	ena => \inst19|t_sweep_start[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(24));

-- Location: FF_X20_Y14_N13
\inst19|t_sweep_start[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_start[23]~feeder_combout\,
	ena => \inst19|t_sweep_start[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(23));

-- Location: FF_X23_Y14_N3
\inst19|t_sweep_start[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_start[19]~feeder_combout\,
	ena => \inst19|t_sweep_start[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(19));

-- Location: FF_X23_Y14_N5
\inst19|t_sweep_start[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_start[18]~feeder_combout\,
	ena => \inst19|t_sweep_start[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(18));

-- Location: FF_X23_Y14_N7
\inst19|t_sweep_start[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_start[17]~feeder_combout\,
	ena => \inst19|t_sweep_start[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(17));

-- Location: FF_X23_Y14_N19
\inst19|t_sweep_start[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_0\(15),
	sload => VCC,
	ena => \inst19|t_sweep_start[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(15));

-- Location: FF_X23_Y14_N31
\inst19|t_sweep_start[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_start[13]~feeder_combout\,
	ena => \inst19|t_sweep_start[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(13));

-- Location: FF_X23_Y14_N25
\inst19|t_sweep_start[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_start[12]~feeder_combout\,
	ena => \inst19|t_sweep_start[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(12));

-- Location: FF_X23_Y14_N27
\inst19|t_sweep_start[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_start[11]~feeder_combout\,
	ena => \inst19|t_sweep_start[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(11));

-- Location: FF_X22_Y16_N29
\inst19|t_sweep_start[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_0\(10),
	sload => VCC,
	ena => \inst19|t_sweep_start[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(10));

-- Location: FF_X22_Y16_N1
\inst19|t_sweep_start[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_0\(6),
	sload => VCC,
	ena => \inst19|t_sweep_start[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(6));

-- Location: FF_X22_Y16_N31
\inst19|t_sweep_start[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_start[3]~feeder_combout\,
	ena => \inst19|t_sweep_start[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(3));

-- Location: FF_X23_Y14_N13
\inst19|t_sweep_start[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_start[2]~feeder_combout\,
	ena => \inst19|t_sweep_start[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(2));

-- Location: FF_X23_Y15_N7
\inst19|t_sweep_start[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_start[1]~feeder_combout\,
	ena => \inst19|t_sweep_start[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(1));

-- Location: FF_X23_Y14_N15
\inst19|t_sweep_start[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_0\(0),
	sload => VCC,
	ena => \inst19|t_sweep_start[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(0));

-- Location: FF_X15_Y16_N1
\inst13|spi_slave_0|tx_buf[27]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[27]~15_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[27]~_emulated_q\);

-- Location: FF_X11_Y15_N7
\inst13|spi_tx_data[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst8|DataOut\(27),
	sload => VCC,
	ena => \inst13|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(27));

-- Location: LCCOMB_X11_Y15_N6
\inst13|spi_slave_0|tx_buf[27]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[27]~14_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(27))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[27]~13_combout\ $ 
-- (((\inst13|spi_slave_0|tx_buf[27]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[27]~13_combout\,
	datab => \inst13|spi_slave_0|process_1~2_combout\,
	datac => \inst13|spi_tx_data\(27),
	datad => \inst13|spi_slave_0|tx_buf[27]~_emulated_q\,
	combout => \inst13|spi_slave_0|tx_buf[27]~14_combout\);

-- Location: FF_X12_Y15_N15
\inst8|fifo_proc_Memory_rtl_0_bypass[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc_Memory_rtl_0_bypass[45]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(45));

-- Location: LCCOMB_X12_Y15_N20
\inst8|fifo_proc:Memory~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc:Memory~7_combout\ = (\inst8|fifo_proc:Memory~4_combout\ & ((\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & (\inst8|fifo_proc_Memory_rtl_0_bypass\(45))) # (!\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & 
-- ((\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a28\))))) # (!\inst8|fifo_proc:Memory~4_combout\ & (((\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a28\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Memory~4_combout\,
	datab => \inst8|fifo_proc_Memory_rtl_0_bypass\(45),
	datac => \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a28\,
	datad => \inst8|fifo_proc_Memory_rtl_0_bypass\(0),
	combout => \inst8|fifo_proc:Memory~7_combout\);

-- Location: LCCOMB_X15_Y16_N0
\inst13|spi_slave_0|tx_buf[27]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[27]~15_combout\ = \inst13|spi_slave_0|tx_buf[26]~18_combout\ $ (\inst13|spi_slave_0|tx_buf[27]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[26]~18_combout\,
	datad => \inst13|spi_slave_0|tx_buf[27]~13_combout\,
	combout => \inst13|spi_slave_0|tx_buf[27]~15_combout\);

-- Location: FF_X12_Y15_N9
\inst8|DataOut[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc:Memory~8_combout\,
	ena => \inst8|DataOut[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|DataOut\(27));

-- Location: FF_X10_Y16_N9
\inst13|spi_slave_0|tx_buf[26]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[26]~19_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[26]~_emulated_q\);

-- Location: FF_X11_Y15_N27
\inst13|spi_tx_data[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst8|DataOut\(26),
	sload => VCC,
	ena => \inst13|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(26));

-- Location: LCCOMB_X11_Y15_N26
\inst13|spi_slave_0|tx_buf[26]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[26]~18_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(26))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[26]~17_combout\ $ 
-- (((\inst13|spi_slave_0|tx_buf[26]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|process_1~2_combout\,
	datab => \inst13|spi_slave_0|tx_buf[26]~17_combout\,
	datac => \inst13|spi_tx_data\(26),
	datad => \inst13|spi_slave_0|tx_buf[26]~_emulated_q\,
	combout => \inst13|spi_slave_0|tx_buf[26]~18_combout\);

-- Location: FF_X12_Y15_N27
\inst8|fifo_proc_Memory_rtl_0_bypass[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc_Memory_rtl_0_bypass[44]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(44));

-- Location: LCCOMB_X12_Y15_N8
\inst8|fifo_proc:Memory~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc:Memory~8_combout\ = (\inst8|fifo_proc:Memory~4_combout\ & ((\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & (\inst8|fifo_proc_Memory_rtl_0_bypass\(44))) # (!\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & 
-- ((\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a27\))))) # (!\inst8|fifo_proc:Memory~4_combout\ & (((\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc_Memory_rtl_0_bypass\(44),
	datab => \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a27\,
	datac => \inst8|fifo_proc:Memory~4_combout\,
	datad => \inst8|fifo_proc_Memory_rtl_0_bypass\(0),
	combout => \inst8|fifo_proc:Memory~8_combout\);

-- Location: LCCOMB_X10_Y16_N8
\inst13|spi_slave_0|tx_buf[26]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[26]~19_combout\ = \inst13|spi_slave_0|tx_buf[26]~17_combout\ $ (\inst13|spi_slave_0|tx_buf[25]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[26]~17_combout\,
	datac => \inst13|spi_slave_0|tx_buf[25]~22_combout\,
	combout => \inst13|spi_slave_0|tx_buf[26]~19_combout\);

-- Location: FF_X12_Y15_N13
\inst8|DataOut[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc:Memory~9_combout\,
	ena => \inst8|DataOut[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|DataOut\(26));

-- Location: FF_X10_Y15_N11
\inst13|spi_slave_0|tx_buf[25]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[25]~23_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[25]~_emulated_q\);

-- Location: FF_X11_Y15_N31
\inst13|spi_tx_data[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst8|DataOut\(25),
	sload => VCC,
	ena => \inst13|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(25));

-- Location: LCCOMB_X11_Y15_N30
\inst13|spi_slave_0|tx_buf[25]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[25]~22_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(25))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[25]~21_combout\ $ 
-- (((\inst13|spi_slave_0|tx_buf[25]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|process_1~2_combout\,
	datab => \inst13|spi_slave_0|tx_buf[25]~21_combout\,
	datac => \inst13|spi_tx_data\(25),
	datad => \inst13|spi_slave_0|tx_buf[25]~_emulated_q\,
	combout => \inst13|spi_slave_0|tx_buf[25]~22_combout\);

-- Location: FF_X12_Y15_N31
\inst8|fifo_proc_Memory_rtl_0_bypass[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc_Memory_rtl_0_bypass[43]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(43));

-- Location: LCCOMB_X12_Y15_N12
\inst8|fifo_proc:Memory~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc:Memory~9_combout\ = (\inst8|fifo_proc:Memory~4_combout\ & ((\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & ((\inst8|fifo_proc_Memory_rtl_0_bypass\(43)))) # (!\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & 
-- (\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a26\)))) # (!\inst8|fifo_proc:Memory~4_combout\ & (\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Memory~4_combout\,
	datab => \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a26\,
	datac => \inst8|fifo_proc_Memory_rtl_0_bypass\(43),
	datad => \inst8|fifo_proc_Memory_rtl_0_bypass\(0),
	combout => \inst8|fifo_proc:Memory~9_combout\);

-- Location: LCCOMB_X10_Y15_N10
\inst13|spi_slave_0|tx_buf[25]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[25]~23_combout\ = \inst13|spi_slave_0|tx_buf[25]~21_combout\ $ (\inst13|spi_slave_0|tx_buf[24]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[25]~21_combout\,
	datad => \inst13|spi_slave_0|tx_buf[24]~26_combout\,
	combout => \inst13|spi_slave_0|tx_buf[25]~23_combout\);

-- Location: FF_X12_Y15_N25
\inst8|DataOut[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc:Memory~10_combout\,
	ena => \inst8|DataOut[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|DataOut\(25));

-- Location: FF_X10_Y15_N13
\inst13|spi_slave_0|tx_buf[24]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[24]~27_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[24]~_emulated_q\);

-- Location: FF_X11_Y15_N23
\inst13|spi_tx_data[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst8|DataOut\(24),
	sload => VCC,
	ena => \inst13|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(24));

-- Location: LCCOMB_X11_Y15_N22
\inst13|spi_slave_0|tx_buf[24]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[24]~26_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(24))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[24]~25_combout\ $ 
-- (((\inst13|spi_slave_0|tx_buf[24]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|process_1~2_combout\,
	datab => \inst13|spi_slave_0|tx_buf[24]~25_combout\,
	datac => \inst13|spi_tx_data\(24),
	datad => \inst13|spi_slave_0|tx_buf[24]~_emulated_q\,
	combout => \inst13|spi_slave_0|tx_buf[24]~26_combout\);

-- Location: FF_X12_Y15_N3
\inst8|fifo_proc_Memory_rtl_0_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc_Memory_rtl_0_bypass[42]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(42));

-- Location: LCCOMB_X12_Y15_N24
\inst8|fifo_proc:Memory~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc:Memory~10_combout\ = (\inst8|fifo_proc:Memory~4_combout\ & ((\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & (\inst8|fifo_proc_Memory_rtl_0_bypass\(42))) # (!\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & 
-- ((\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a25\))))) # (!\inst8|fifo_proc:Memory~4_combout\ & (((\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Memory~4_combout\,
	datab => \inst8|fifo_proc_Memory_rtl_0_bypass\(42),
	datac => \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a25\,
	datad => \inst8|fifo_proc_Memory_rtl_0_bypass\(0),
	combout => \inst8|fifo_proc:Memory~10_combout\);

-- Location: LCCOMB_X10_Y15_N12
\inst13|spi_slave_0|tx_buf[24]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[24]~27_combout\ = \inst13|spi_slave_0|tx_buf[23]~30_combout\ $ (\inst13|spi_slave_0|tx_buf[24]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|spi_slave_0|tx_buf[23]~30_combout\,
	datad => \inst13|spi_slave_0|tx_buf[24]~25_combout\,
	combout => \inst13|spi_slave_0|tx_buf[24]~27_combout\);

-- Location: FF_X12_Y16_N9
\inst8|DataOut[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc:Memory~11_combout\,
	ena => \inst8|DataOut[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|DataOut\(24));

-- Location: FF_X11_Y16_N3
\inst13|spi_slave_0|tx_buf[23]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[23]~31_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[23]~_emulated_q\);

-- Location: FF_X11_Y15_N15
\inst13|spi_tx_data[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst8|DataOut\(23),
	sload => VCC,
	ena => \inst13|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(23));

-- Location: LCCOMB_X11_Y15_N14
\inst13|spi_slave_0|tx_buf[23]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[23]~30_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(23))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[23]~_emulated_q\ $ 
-- ((\inst13|spi_slave_0|tx_buf[23]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[23]~_emulated_q\,
	datab => \inst13|spi_slave_0|tx_buf[23]~29_combout\,
	datac => \inst13|spi_tx_data\(23),
	datad => \inst13|spi_slave_0|process_1~2_combout\,
	combout => \inst13|spi_slave_0|tx_buf[23]~30_combout\);

-- Location: FF_X12_Y16_N3
\inst8|fifo_proc_Memory_rtl_0_bypass[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc_Memory_rtl_0_bypass[41]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(41));

-- Location: LCCOMB_X12_Y16_N8
\inst8|fifo_proc:Memory~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc:Memory~11_combout\ = (\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & ((\inst8|fifo_proc:Memory~4_combout\ & ((\inst8|fifo_proc_Memory_rtl_0_bypass\(41)))) # (!\inst8|fifo_proc:Memory~4_combout\ & 
-- (\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a24\)))) # (!\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & (((\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc_Memory_rtl_0_bypass\(0),
	datab => \inst8|fifo_proc:Memory~4_combout\,
	datac => \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a24\,
	datad => \inst8|fifo_proc_Memory_rtl_0_bypass\(41),
	combout => \inst8|fifo_proc:Memory~11_combout\);

-- Location: LCCOMB_X11_Y16_N2
\inst13|spi_slave_0|tx_buf[23]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[23]~31_combout\ = \inst13|spi_slave_0|tx_buf[23]~29_combout\ $ (\inst13|spi_slave_0|tx_buf[22]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[23]~29_combout\,
	datad => \inst13|spi_slave_0|tx_buf[22]~34_combout\,
	combout => \inst13|spi_slave_0|tx_buf[23]~31_combout\);

-- Location: FF_X12_Y16_N21
\inst8|DataOut[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc:Memory~12_combout\,
	ena => \inst8|DataOut[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|DataOut\(23));

-- Location: FF_X11_Y16_N29
\inst13|spi_slave_0|tx_buf[22]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[22]~35_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[22]~_emulated_q\);

-- Location: FF_X11_Y15_N9
\inst13|spi_tx_data[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst8|DataOut\(22),
	sload => VCC,
	ena => \inst13|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(22));

-- Location: LCCOMB_X11_Y15_N8
\inst13|spi_slave_0|tx_buf[22]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[22]~34_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(22))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[22]~33_combout\ $ 
-- (((\inst13|spi_slave_0|tx_buf[22]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|process_1~2_combout\,
	datab => \inst13|spi_slave_0|tx_buf[22]~33_combout\,
	datac => \inst13|spi_tx_data\(22),
	datad => \inst13|spi_slave_0|tx_buf[22]~_emulated_q\,
	combout => \inst13|spi_slave_0|tx_buf[22]~34_combout\);

-- Location: FF_X12_Y16_N7
\inst8|fifo_proc_Memory_rtl_0_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc_Memory_rtl_0_bypass[40]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(40));

-- Location: LCCOMB_X12_Y16_N20
\inst8|fifo_proc:Memory~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc:Memory~12_combout\ = (\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & ((\inst8|fifo_proc:Memory~4_combout\ & ((\inst8|fifo_proc_Memory_rtl_0_bypass\(40)))) # (!\inst8|fifo_proc:Memory~4_combout\ & 
-- (\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a23\)))) # (!\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & (((\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc_Memory_rtl_0_bypass\(0),
	datab => \inst8|fifo_proc:Memory~4_combout\,
	datac => \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a23\,
	datad => \inst8|fifo_proc_Memory_rtl_0_bypass\(40),
	combout => \inst8|fifo_proc:Memory~12_combout\);

-- Location: LCCOMB_X11_Y16_N28
\inst13|spi_slave_0|tx_buf[22]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[22]~35_combout\ = \inst13|spi_slave_0|tx_buf[22]~33_combout\ $ (\inst13|spi_slave_0|tx_buf[21]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|spi_slave_0|tx_buf[22]~33_combout\,
	datad => \inst13|spi_slave_0|tx_buf[21]~38_combout\,
	combout => \inst13|spi_slave_0|tx_buf[22]~35_combout\);

-- Location: FF_X12_Y16_N25
\inst8|DataOut[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc:Memory~13_combout\,
	ena => \inst8|DataOut[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|DataOut\(22));

-- Location: FF_X11_Y16_N7
\inst13|spi_slave_0|tx_buf[21]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[21]~39_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[21]~_emulated_q\);

-- Location: FF_X11_Y16_N1
\inst13|spi_tx_data[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst8|DataOut\(21),
	sload => VCC,
	ena => \inst13|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(21));

-- Location: LCCOMB_X11_Y16_N0
\inst13|spi_slave_0|tx_buf[21]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[21]~38_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(21))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[21]~_emulated_q\ $ 
-- (((\inst13|spi_slave_0|tx_buf[21]~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[21]~_emulated_q\,
	datab => \inst13|spi_slave_0|process_1~2_combout\,
	datac => \inst13|spi_tx_data\(21),
	datad => \inst13|spi_slave_0|tx_buf[21]~37_combout\,
	combout => \inst13|spi_slave_0|tx_buf[21]~38_combout\);

-- Location: FF_X12_Y16_N11
\inst8|fifo_proc_Memory_rtl_0_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst19|sweep_duration\(22),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(39));

-- Location: LCCOMB_X12_Y16_N24
\inst8|fifo_proc:Memory~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc:Memory~13_combout\ = (\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & ((\inst8|fifo_proc:Memory~4_combout\ & (\inst8|fifo_proc_Memory_rtl_0_bypass\(39))) # (!\inst8|fifo_proc:Memory~4_combout\ & 
-- ((\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a22\))))) # (!\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & (((\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc_Memory_rtl_0_bypass\(39),
	datab => \inst8|fifo_proc_Memory_rtl_0_bypass\(0),
	datac => \inst8|fifo_proc:Memory~4_combout\,
	datad => \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a22\,
	combout => \inst8|fifo_proc:Memory~13_combout\);

-- Location: LCCOMB_X11_Y16_N6
\inst13|spi_slave_0|tx_buf[21]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[21]~39_combout\ = \inst13|spi_slave_0|tx_buf[21]~37_combout\ $ (\inst13|spi_slave_0|tx_buf[20]~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[21]~37_combout\,
	datad => \inst13|spi_slave_0|tx_buf[20]~42_combout\,
	combout => \inst13|spi_slave_0|tx_buf[21]~39_combout\);

-- Location: FF_X16_Y15_N1
\inst8|DataOut[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc:Memory~14_combout\,
	ena => \inst8|DataOut[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|DataOut\(21));

-- Location: FF_X11_Y16_N11
\inst13|spi_slave_0|tx_buf[20]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[20]~43_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[20]~_emulated_q\);

-- Location: FF_X11_Y16_N5
\inst13|spi_tx_data[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst8|DataOut\(20),
	sload => VCC,
	ena => \inst13|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(20));

-- Location: LCCOMB_X11_Y16_N4
\inst13|spi_slave_0|tx_buf[20]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[20]~42_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(20))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[20]~_emulated_q\ $ 
-- (((\inst13|spi_slave_0|tx_buf[20]~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[20]~_emulated_q\,
	datab => \inst13|spi_slave_0|process_1~2_combout\,
	datac => \inst13|spi_tx_data\(20),
	datad => \inst13|spi_slave_0|tx_buf[20]~41_combout\,
	combout => \inst13|spi_slave_0|tx_buf[20]~42_combout\);

-- Location: FF_X16_Y15_N19
\inst8|fifo_proc_Memory_rtl_0_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst19|sweep_duration\(21),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(38));

-- Location: LCCOMB_X16_Y15_N0
\inst8|fifo_proc:Memory~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc:Memory~14_combout\ = (\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & ((\inst8|fifo_proc:Memory~4_combout\ & ((\inst8|fifo_proc_Memory_rtl_0_bypass\(38)))) # (!\inst8|fifo_proc:Memory~4_combout\ & 
-- (\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a21\)))) # (!\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & (\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc_Memory_rtl_0_bypass\(0),
	datab => \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a21\,
	datac => \inst8|fifo_proc:Memory~4_combout\,
	datad => \inst8|fifo_proc_Memory_rtl_0_bypass\(38),
	combout => \inst8|fifo_proc:Memory~14_combout\);

-- Location: LCCOMB_X11_Y16_N10
\inst13|spi_slave_0|tx_buf[20]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[20]~43_combout\ = \inst13|spi_slave_0|tx_buf[19]~46_combout\ $ (\inst13|spi_slave_0|tx_buf[20]~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|spi_slave_0|tx_buf[19]~46_combout\,
	datad => \inst13|spi_slave_0|tx_buf[20]~41_combout\,
	combout => \inst13|spi_slave_0|tx_buf[20]~43_combout\);

-- Location: FF_X16_Y15_N21
\inst8|DataOut[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc:Memory~15_combout\,
	ena => \inst8|DataOut[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|DataOut\(20));

-- Location: FF_X16_Y16_N25
\inst13|spi_slave_0|tx_buf[19]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[19]~47_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[19]~_emulated_q\);

-- Location: FF_X16_Y16_N11
\inst13|spi_tx_data[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst8|DataOut\(19),
	sload => VCC,
	ena => \inst13|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(19));

-- Location: LCCOMB_X16_Y16_N10
\inst13|spi_slave_0|tx_buf[19]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[19]~46_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(19))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[19]~45_combout\ $ 
-- (((\inst13|spi_slave_0|tx_buf[19]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|process_1~2_combout\,
	datab => \inst13|spi_slave_0|tx_buf[19]~45_combout\,
	datac => \inst13|spi_tx_data\(19),
	datad => \inst13|spi_slave_0|tx_buf[19]~_emulated_q\,
	combout => \inst13|spi_slave_0|tx_buf[19]~46_combout\);

-- Location: FF_X16_Y15_N7
\inst8|fifo_proc_Memory_rtl_0_bypass[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst19|sweep_duration\(20),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(37));

-- Location: LCCOMB_X16_Y15_N20
\inst8|fifo_proc:Memory~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc:Memory~15_combout\ = (\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & ((\inst8|fifo_proc:Memory~4_combout\ & ((\inst8|fifo_proc_Memory_rtl_0_bypass\(37)))) # (!\inst8|fifo_proc:Memory~4_combout\ & 
-- (\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a20\)))) # (!\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & (\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc_Memory_rtl_0_bypass\(0),
	datab => \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a20\,
	datac => \inst8|fifo_proc:Memory~4_combout\,
	datad => \inst8|fifo_proc_Memory_rtl_0_bypass\(37),
	combout => \inst8|fifo_proc:Memory~15_combout\);

-- Location: LCCOMB_X16_Y16_N24
\inst13|spi_slave_0|tx_buf[19]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[19]~47_combout\ = \inst13|spi_slave_0|tx_buf[18]~50_combout\ $ (\inst13|spi_slave_0|tx_buf[19]~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|spi_slave_0|tx_buf[18]~50_combout\,
	datad => \inst13|spi_slave_0|tx_buf[19]~45_combout\,
	combout => \inst13|spi_slave_0|tx_buf[19]~47_combout\);

-- Location: FF_X16_Y15_N9
\inst8|DataOut[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc:Memory~16_combout\,
	ena => \inst8|DataOut[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|DataOut\(19));

-- Location: FF_X16_Y16_N5
\inst13|spi_slave_0|tx_buf[18]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[18]~51_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[18]~_emulated_q\);

-- Location: FF_X16_Y16_N23
\inst13|spi_tx_data[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst8|DataOut\(18),
	sload => VCC,
	ena => \inst13|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(18));

-- Location: LCCOMB_X16_Y16_N22
\inst13|spi_slave_0|tx_buf[18]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[18]~50_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(18))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[18]~49_combout\ $ 
-- ((\inst13|spi_slave_0|tx_buf[18]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[18]~49_combout\,
	datab => \inst13|spi_slave_0|tx_buf[18]~_emulated_q\,
	datac => \inst13|spi_tx_data\(18),
	datad => \inst13|spi_slave_0|process_1~2_combout\,
	combout => \inst13|spi_slave_0|tx_buf[18]~50_combout\);

-- Location: FF_X16_Y15_N11
\inst8|fifo_proc_Memory_rtl_0_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst19|sweep_duration\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(36));

-- Location: LCCOMB_X16_Y15_N8
\inst8|fifo_proc:Memory~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc:Memory~16_combout\ = (\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & ((\inst8|fifo_proc:Memory~4_combout\ & ((\inst8|fifo_proc_Memory_rtl_0_bypass\(36)))) # (!\inst8|fifo_proc:Memory~4_combout\ & 
-- (\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a19\)))) # (!\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & (\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc_Memory_rtl_0_bypass\(0),
	datab => \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a19\,
	datac => \inst8|fifo_proc:Memory~4_combout\,
	datad => \inst8|fifo_proc_Memory_rtl_0_bypass\(36),
	combout => \inst8|fifo_proc:Memory~16_combout\);

-- Location: LCCOMB_X16_Y16_N4
\inst13|spi_slave_0|tx_buf[18]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[18]~51_combout\ = \inst13|spi_slave_0|tx_buf[17]~54_combout\ $ (\inst13|spi_slave_0|tx_buf[18]~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[17]~54_combout\,
	datac => \inst13|spi_slave_0|tx_buf[18]~49_combout\,
	combout => \inst13|spi_slave_0|tx_buf[18]~51_combout\);

-- Location: FF_X16_Y15_N13
\inst8|DataOut[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc:Memory~17_combout\,
	ena => \inst8|DataOut[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|DataOut\(18));

-- Location: FF_X16_Y16_N9
\inst13|spi_slave_0|tx_buf[17]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[17]~55_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[17]~_emulated_q\);

-- Location: FF_X16_Y16_N27
\inst13|spi_tx_data[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst8|DataOut\(17),
	sload => VCC,
	ena => \inst13|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(17));

-- Location: LCCOMB_X16_Y16_N26
\inst13|spi_slave_0|tx_buf[17]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[17]~54_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(17))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[17]~53_combout\ $ 
-- (((\inst13|spi_slave_0|tx_buf[17]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|process_1~2_combout\,
	datab => \inst13|spi_slave_0|tx_buf[17]~53_combout\,
	datac => \inst13|spi_tx_data\(17),
	datad => \inst13|spi_slave_0|tx_buf[17]~_emulated_q\,
	combout => \inst13|spi_slave_0|tx_buf[17]~54_combout\);

-- Location: FF_X16_Y15_N23
\inst8|fifo_proc_Memory_rtl_0_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst19|sweep_duration\(18),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(35));

-- Location: LCCOMB_X16_Y15_N12
\inst8|fifo_proc:Memory~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc:Memory~17_combout\ = (\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & ((\inst8|fifo_proc:Memory~4_combout\ & (\inst8|fifo_proc_Memory_rtl_0_bypass\(35))) # (!\inst8|fifo_proc:Memory~4_combout\ & 
-- ((\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a18\))))) # (!\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & (((\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc_Memory_rtl_0_bypass\(0),
	datab => \inst8|fifo_proc:Memory~4_combout\,
	datac => \inst8|fifo_proc_Memory_rtl_0_bypass\(35),
	datad => \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a18\,
	combout => \inst8|fifo_proc:Memory~17_combout\);

-- Location: LCCOMB_X16_Y16_N8
\inst13|spi_slave_0|tx_buf[17]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[17]~55_combout\ = \inst13|spi_slave_0|tx_buf[17]~53_combout\ $ (\inst13|spi_slave_0|tx_buf[16]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[17]~53_combout\,
	datad => \inst13|spi_slave_0|tx_buf[16]~58_combout\,
	combout => \inst13|spi_slave_0|tx_buf[17]~55_combout\);

-- Location: FF_X16_Y15_N17
\inst8|DataOut[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc:Memory~18_combout\,
	ena => \inst8|DataOut[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|DataOut\(17));

-- Location: FF_X16_Y16_N29
\inst13|spi_slave_0|tx_buf[16]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[16]~59_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[16]~_emulated_q\);

-- Location: FF_X16_Y16_N15
\inst13|spi_tx_data[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst8|DataOut\(16),
	sload => VCC,
	ena => \inst13|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(16));

-- Location: LCCOMB_X16_Y16_N14
\inst13|spi_slave_0|tx_buf[16]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[16]~58_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(16))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[16]~57_combout\ $ 
-- (((\inst13|spi_slave_0|tx_buf[16]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|process_1~2_combout\,
	datab => \inst13|spi_slave_0|tx_buf[16]~57_combout\,
	datac => \inst13|spi_tx_data\(16),
	datad => \inst13|spi_slave_0|tx_buf[16]~_emulated_q\,
	combout => \inst13|spi_slave_0|tx_buf[16]~58_combout\);

-- Location: FF_X16_Y15_N3
\inst8|fifo_proc_Memory_rtl_0_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc_Memory_rtl_0_bypass[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(34));

-- Location: LCCOMB_X16_Y15_N16
\inst8|fifo_proc:Memory~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc:Memory~18_combout\ = (\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & ((\inst8|fifo_proc:Memory~4_combout\ & ((\inst8|fifo_proc_Memory_rtl_0_bypass\(34)))) # (!\inst8|fifo_proc:Memory~4_combout\ & 
-- (\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a17\)))) # (!\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & (((\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc_Memory_rtl_0_bypass\(0),
	datab => \inst8|fifo_proc:Memory~4_combout\,
	datac => \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a17\,
	datad => \inst8|fifo_proc_Memory_rtl_0_bypass\(34),
	combout => \inst8|fifo_proc:Memory~18_combout\);

-- Location: LCCOMB_X16_Y16_N28
\inst13|spi_slave_0|tx_buf[16]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[16]~59_combout\ = \inst13|spi_slave_0|tx_buf[16]~57_combout\ $ (\inst13|spi_slave_0|tx_buf[15]~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[16]~57_combout\,
	datad => \inst13|spi_slave_0|tx_buf[15]~62_combout\,
	combout => \inst13|spi_slave_0|tx_buf[16]~59_combout\);

-- Location: FF_X15_Y15_N25
\inst8|DataOut[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc:Memory~19_combout\,
	ena => \inst8|DataOut[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|DataOut\(16));

-- Location: FF_X16_Y16_N1
\inst13|spi_slave_0|tx_buf[15]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[15]~63_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[15]~_emulated_q\);

-- Location: FF_X16_Y16_N19
\inst13|spi_tx_data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst8|DataOut\(15),
	sload => VCC,
	ena => \inst13|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(15));

-- Location: LCCOMB_X16_Y16_N18
\inst13|spi_slave_0|tx_buf[15]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[15]~62_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(15))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[15]~_emulated_q\ $ 
-- (((\inst13|spi_slave_0|tx_buf[15]~61_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|process_1~2_combout\,
	datab => \inst13|spi_slave_0|tx_buf[15]~_emulated_q\,
	datac => \inst13|spi_tx_data\(15),
	datad => \inst13|spi_slave_0|tx_buf[15]~61_combout\,
	combout => \inst13|spi_slave_0|tx_buf[15]~62_combout\);

-- Location: FF_X15_Y15_N3
\inst8|fifo_proc_Memory_rtl_0_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst19|sweep_duration\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(33));

-- Location: LCCOMB_X15_Y15_N24
\inst8|fifo_proc:Memory~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc:Memory~19_combout\ = (\inst8|fifo_proc:Memory~4_combout\ & ((\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & ((\inst8|fifo_proc_Memory_rtl_0_bypass\(33)))) # (!\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & 
-- (\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a16\)))) # (!\inst8|fifo_proc:Memory~4_combout\ & (\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Memory~4_combout\,
	datab => \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a16\,
	datac => \inst8|fifo_proc_Memory_rtl_0_bypass\(0),
	datad => \inst8|fifo_proc_Memory_rtl_0_bypass\(33),
	combout => \inst8|fifo_proc:Memory~19_combout\);

-- Location: LCCOMB_X16_Y16_N0
\inst13|spi_slave_0|tx_buf[15]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[15]~63_combout\ = \inst13|spi_slave_0|tx_buf[15]~61_combout\ $ (\inst13|spi_slave_0|tx_buf[14]~66_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[15]~61_combout\,
	datad => \inst13|spi_slave_0|tx_buf[14]~66_combout\,
	combout => \inst13|spi_slave_0|tx_buf[15]~63_combout\);

-- Location: FF_X16_Y15_N29
\inst8|DataOut[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc:Memory~20_combout\,
	ena => \inst8|DataOut[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|DataOut\(15));

-- Location: FF_X15_Y16_N27
\inst13|spi_slave_0|tx_buf[14]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[14]~67_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[14]~_emulated_q\);

-- Location: FF_X15_Y16_N13
\inst13|spi_tx_data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst8|DataOut\(14),
	sload => VCC,
	ena => \inst13|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(14));

-- Location: LCCOMB_X15_Y16_N12
\inst13|spi_slave_0|tx_buf[14]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[14]~66_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(14))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[14]~65_combout\ $ 
-- ((\inst13|spi_slave_0|tx_buf[14]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[14]~65_combout\,
	datab => \inst13|spi_slave_0|tx_buf[14]~_emulated_q\,
	datac => \inst13|spi_tx_data\(14),
	datad => \inst13|spi_slave_0|process_1~2_combout\,
	combout => \inst13|spi_slave_0|tx_buf[14]~66_combout\);

-- Location: FF_X16_Y15_N31
\inst8|fifo_proc_Memory_rtl_0_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc_Memory_rtl_0_bypass[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(32));

-- Location: LCCOMB_X16_Y15_N28
\inst8|fifo_proc:Memory~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc:Memory~20_combout\ = (\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & ((\inst8|fifo_proc:Memory~4_combout\ & ((\inst8|fifo_proc_Memory_rtl_0_bypass\(32)))) # (!\inst8|fifo_proc:Memory~4_combout\ & 
-- (\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a15\)))) # (!\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & (\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc_Memory_rtl_0_bypass\(0),
	datab => \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a15\,
	datac => \inst8|fifo_proc_Memory_rtl_0_bypass\(32),
	datad => \inst8|fifo_proc:Memory~4_combout\,
	combout => \inst8|fifo_proc:Memory~20_combout\);

-- Location: LCCOMB_X15_Y16_N26
\inst13|spi_slave_0|tx_buf[14]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[14]~67_combout\ = \inst13|spi_slave_0|tx_buf[14]~65_combout\ $ (\inst13|spi_slave_0|tx_buf[13]~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|spi_slave_0|tx_buf[14]~65_combout\,
	datad => \inst13|spi_slave_0|tx_buf[13]~70_combout\,
	combout => \inst13|spi_slave_0|tx_buf[14]~67_combout\);

-- Location: FF_X16_Y15_N25
\inst8|DataOut[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc:Memory~21_combout\,
	ena => \inst8|DataOut[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|DataOut\(14));

-- Location: FF_X15_Y16_N15
\inst13|spi_slave_0|tx_buf[13]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[13]~71_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[13]~_emulated_q\);

-- Location: FF_X15_Y16_N9
\inst13|spi_tx_data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst8|DataOut\(13),
	sload => VCC,
	ena => \inst13|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(13));

-- Location: LCCOMB_X15_Y16_N8
\inst13|spi_slave_0|tx_buf[13]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[13]~70_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(13))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[13]~_emulated_q\ $ 
-- (((\inst13|spi_slave_0|tx_buf[13]~69_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|process_1~2_combout\,
	datab => \inst13|spi_slave_0|tx_buf[13]~_emulated_q\,
	datac => \inst13|spi_tx_data\(13),
	datad => \inst13|spi_slave_0|tx_buf[13]~69_combout\,
	combout => \inst13|spi_slave_0|tx_buf[13]~70_combout\);

-- Location: FF_X16_Y15_N27
\inst8|fifo_proc_Memory_rtl_0_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst19|sweep_duration\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(31));

-- Location: LCCOMB_X16_Y15_N24
\inst8|fifo_proc:Memory~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc:Memory~21_combout\ = (\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & ((\inst8|fifo_proc:Memory~4_combout\ & ((\inst8|fifo_proc_Memory_rtl_0_bypass\(31)))) # (!\inst8|fifo_proc:Memory~4_combout\ & 
-- (\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a14\)))) # (!\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & (\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc_Memory_rtl_0_bypass\(0),
	datab => \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a14\,
	datac => \inst8|fifo_proc_Memory_rtl_0_bypass\(31),
	datad => \inst8|fifo_proc:Memory~4_combout\,
	combout => \inst8|fifo_proc:Memory~21_combout\);

-- Location: LCCOMB_X15_Y16_N14
\inst13|spi_slave_0|tx_buf[13]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[13]~71_combout\ = \inst13|spi_slave_0|tx_buf[13]~69_combout\ $ (\inst13|spi_slave_0|tx_buf[12]~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[13]~69_combout\,
	datad => \inst13|spi_slave_0|tx_buf[12]~74_combout\,
	combout => \inst13|spi_slave_0|tx_buf[13]~71_combout\);

-- Location: FF_X15_Y15_N13
\inst8|DataOut[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc:Memory~22_combout\,
	ena => \inst8|DataOut[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|DataOut\(13));

-- Location: FF_X15_Y16_N3
\inst13|spi_slave_0|tx_buf[12]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[12]~75_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[12]~_emulated_q\);

-- Location: FF_X15_Y16_N21
\inst13|spi_tx_data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst8|DataOut\(12),
	sload => VCC,
	ena => \inst13|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(12));

-- Location: LCCOMB_X15_Y16_N20
\inst13|spi_slave_0|tx_buf[12]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[12]~74_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(12))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[12]~73_combout\ $ 
-- (((\inst13|spi_slave_0|tx_buf[12]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|process_1~2_combout\,
	datab => \inst13|spi_slave_0|tx_buf[12]~73_combout\,
	datac => \inst13|spi_tx_data\(12),
	datad => \inst13|spi_slave_0|tx_buf[12]~_emulated_q\,
	combout => \inst13|spi_slave_0|tx_buf[12]~74_combout\);

-- Location: FF_X15_Y15_N31
\inst8|fifo_proc_Memory_rtl_0_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc_Memory_rtl_0_bypass[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(30));

-- Location: LCCOMB_X15_Y15_N12
\inst8|fifo_proc:Memory~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc:Memory~22_combout\ = (\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & ((\inst8|fifo_proc:Memory~4_combout\ & ((\inst8|fifo_proc_Memory_rtl_0_bypass\(30)))) # (!\inst8|fifo_proc:Memory~4_combout\ & 
-- (\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a13\)))) # (!\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & (\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a13\,
	datab => \inst8|fifo_proc_Memory_rtl_0_bypass\(0),
	datac => \inst8|fifo_proc_Memory_rtl_0_bypass\(30),
	datad => \inst8|fifo_proc:Memory~4_combout\,
	combout => \inst8|fifo_proc:Memory~22_combout\);

-- Location: LCCOMB_X15_Y16_N2
\inst13|spi_slave_0|tx_buf[12]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[12]~75_combout\ = \inst13|spi_slave_0|tx_buf[12]~73_combout\ $ (\inst13|spi_slave_0|tx_buf[11]~78_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[12]~73_combout\,
	datac => \inst13|spi_slave_0|tx_buf[11]~78_combout\,
	combout => \inst13|spi_slave_0|tx_buf[12]~75_combout\);

-- Location: FF_X15_Y15_N1
\inst8|DataOut[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc:Memory~23_combout\,
	ena => \inst8|DataOut[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|DataOut\(12));

-- Location: FF_X15_Y16_N7
\inst13|spi_slave_0|tx_buf[11]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[11]~79_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[11]~_emulated_q\);

-- Location: FF_X15_Y16_N25
\inst13|spi_tx_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst8|DataOut\(11),
	sload => VCC,
	ena => \inst13|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(11));

-- Location: LCCOMB_X15_Y16_N24
\inst13|spi_slave_0|tx_buf[11]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[11]~78_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(11))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[11]~77_combout\ $ 
-- (((\inst13|spi_slave_0|tx_buf[11]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|process_1~2_combout\,
	datab => \inst13|spi_slave_0|tx_buf[11]~77_combout\,
	datac => \inst13|spi_tx_data\(11),
	datad => \inst13|spi_slave_0|tx_buf[11]~_emulated_q\,
	combout => \inst13|spi_slave_0|tx_buf[11]~78_combout\);

-- Location: FF_X15_Y15_N11
\inst8|fifo_proc_Memory_rtl_0_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst19|sweep_duration\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(29));

-- Location: LCCOMB_X15_Y15_N0
\inst8|fifo_proc:Memory~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc:Memory~23_combout\ = (\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & ((\inst8|fifo_proc:Memory~4_combout\ & (\inst8|fifo_proc_Memory_rtl_0_bypass\(29))) # (!\inst8|fifo_proc:Memory~4_combout\ & 
-- ((\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a12\))))) # (!\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & (((\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc_Memory_rtl_0_bypass\(29),
	datab => \inst8|fifo_proc_Memory_rtl_0_bypass\(0),
	datac => \inst8|fifo_proc:Memory~4_combout\,
	datad => \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a12\,
	combout => \inst8|fifo_proc:Memory~23_combout\);

-- Location: LCCOMB_X15_Y16_N6
\inst13|spi_slave_0|tx_buf[11]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[11]~79_combout\ = \inst13|spi_slave_0|tx_buf[11]~77_combout\ $ (\inst13|spi_slave_0|tx_buf[10]~82_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[11]~77_combout\,
	datac => \inst13|spi_slave_0|tx_buf[10]~82_combout\,
	combout => \inst13|spi_slave_0|tx_buf[11]~79_combout\);

-- Location: FF_X15_Y15_N21
\inst8|DataOut[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc:Memory~24_combout\,
	ena => \inst8|DataOut[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|DataOut\(11));

-- Location: FF_X15_Y16_N11
\inst13|spi_slave_0|tx_buf[10]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[10]~83_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[10]~_emulated_q\);

-- Location: FF_X15_Y16_N5
\inst13|spi_tx_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst8|DataOut\(10),
	sload => VCC,
	ena => \inst13|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(10));

-- Location: LCCOMB_X15_Y16_N4
\inst13|spi_slave_0|tx_buf[10]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[10]~82_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(10))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[10]~81_combout\ $ 
-- (((\inst13|spi_slave_0|tx_buf[10]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[10]~81_combout\,
	datab => \inst13|spi_slave_0|process_1~2_combout\,
	datac => \inst13|spi_tx_data\(10),
	datad => \inst13|spi_slave_0|tx_buf[10]~_emulated_q\,
	combout => \inst13|spi_slave_0|tx_buf[10]~82_combout\);

-- Location: FF_X15_Y15_N7
\inst8|fifo_proc_Memory_rtl_0_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst19|sweep_duration\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(28));

-- Location: LCCOMB_X15_Y15_N20
\inst8|fifo_proc:Memory~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc:Memory~24_combout\ = (\inst8|fifo_proc:Memory~4_combout\ & ((\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & ((\inst8|fifo_proc_Memory_rtl_0_bypass\(28)))) # (!\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & 
-- (\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a11\)))) # (!\inst8|fifo_proc:Memory~4_combout\ & (((\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Memory~4_combout\,
	datab => \inst8|fifo_proc_Memory_rtl_0_bypass\(0),
	datac => \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a11\,
	datad => \inst8|fifo_proc_Memory_rtl_0_bypass\(28),
	combout => \inst8|fifo_proc:Memory~24_combout\);

-- Location: LCCOMB_X15_Y16_N10
\inst13|spi_slave_0|tx_buf[10]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[10]~83_combout\ = \inst13|spi_slave_0|tx_buf[10]~81_combout\ $ (\inst13|spi_slave_0|tx_buf[9]~86_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[10]~81_combout\,
	datad => \inst13|spi_slave_0|tx_buf[9]~86_combout\,
	combout => \inst13|spi_slave_0|tx_buf[10]~83_combout\);

-- Location: FF_X15_Y15_N9
\inst8|DataOut[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc:Memory~25_combout\,
	ena => \inst8|DataOut[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|DataOut\(10));

-- Location: FF_X10_Y15_N15
\inst13|spi_slave_0|tx_buf[9]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[9]~87_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[9]~_emulated_q\);

-- Location: FF_X10_Y15_N17
\inst13|spi_tx_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst8|DataOut\(9),
	sload => VCC,
	ena => \inst13|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(9));

-- Location: LCCOMB_X10_Y15_N16
\inst13|spi_slave_0|tx_buf[9]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[9]~86_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(9))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[9]~_emulated_q\ $ 
-- (((\inst13|spi_slave_0|tx_buf[9]~85_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|process_1~2_combout\,
	datab => \inst13|spi_slave_0|tx_buf[9]~_emulated_q\,
	datac => \inst13|spi_tx_data\(9),
	datad => \inst13|spi_slave_0|tx_buf[9]~85_combout\,
	combout => \inst13|spi_slave_0|tx_buf[9]~86_combout\);

-- Location: FF_X15_Y15_N27
\inst8|fifo_proc_Memory_rtl_0_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc_Memory_rtl_0_bypass[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(27));

-- Location: LCCOMB_X15_Y15_N8
\inst8|fifo_proc:Memory~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc:Memory~25_combout\ = (\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & ((\inst8|fifo_proc:Memory~4_combout\ & (\inst8|fifo_proc_Memory_rtl_0_bypass\(27))) # (!\inst8|fifo_proc:Memory~4_combout\ & 
-- ((\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a10\))))) # (!\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & (((\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc_Memory_rtl_0_bypass\(27),
	datab => \inst8|fifo_proc_Memory_rtl_0_bypass\(0),
	datac => \inst8|fifo_proc:Memory~4_combout\,
	datad => \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a10\,
	combout => \inst8|fifo_proc:Memory~25_combout\);

-- Location: LCCOMB_X10_Y15_N14
\inst13|spi_slave_0|tx_buf[9]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[9]~87_combout\ = \inst13|spi_slave_0|tx_buf[8]~90_combout\ $ (\inst13|spi_slave_0|tx_buf[9]~85_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[8]~90_combout\,
	datac => \inst13|spi_slave_0|tx_buf[9]~85_combout\,
	combout => \inst13|spi_slave_0|tx_buf[9]~87_combout\);

-- Location: FF_X15_Y15_N5
\inst8|DataOut[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc:Memory~26_combout\,
	ena => \inst8|DataOut[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|DataOut\(9));

-- Location: FF_X10_Y15_N3
\inst13|spi_slave_0|tx_buf[8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[8]~91_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[8]~_emulated_q\);

-- Location: FF_X10_Y15_N29
\inst13|spi_tx_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst8|DataOut\(8),
	sload => VCC,
	ena => \inst13|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(8));

-- Location: LCCOMB_X10_Y15_N28
\inst13|spi_slave_0|tx_buf[8]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[8]~90_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(8))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[8]~89_combout\ $ 
-- (((\inst13|spi_slave_0|tx_buf[8]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|process_1~2_combout\,
	datab => \inst13|spi_slave_0|tx_buf[8]~89_combout\,
	datac => \inst13|spi_tx_data\(8),
	datad => \inst13|spi_slave_0|tx_buf[8]~_emulated_q\,
	combout => \inst13|spi_slave_0|tx_buf[8]~90_combout\);

-- Location: FF_X15_Y15_N23
\inst8|fifo_proc_Memory_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc_Memory_rtl_0_bypass[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(26));

-- Location: LCCOMB_X15_Y15_N4
\inst8|fifo_proc:Memory~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc:Memory~26_combout\ = (\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & ((\inst8|fifo_proc:Memory~4_combout\ & ((\inst8|fifo_proc_Memory_rtl_0_bypass\(26)))) # (!\inst8|fifo_proc:Memory~4_combout\ & 
-- (\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a9\)))) # (!\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & (\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a9\,
	datab => \inst8|fifo_proc_Memory_rtl_0_bypass\(0),
	datac => \inst8|fifo_proc_Memory_rtl_0_bypass\(26),
	datad => \inst8|fifo_proc:Memory~4_combout\,
	combout => \inst8|fifo_proc:Memory~26_combout\);

-- Location: LCCOMB_X10_Y15_N2
\inst13|spi_slave_0|tx_buf[8]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[8]~91_combout\ = \inst13|spi_slave_0|tx_buf[8]~89_combout\ $ (\inst13|spi_slave_0|tx_buf[7]~94_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[8]~89_combout\,
	datac => \inst13|spi_slave_0|tx_buf[7]~94_combout\,
	combout => \inst13|spi_slave_0|tx_buf[8]~91_combout\);

-- Location: FF_X15_Y15_N17
\inst8|DataOut[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc:Memory~27_combout\,
	ena => \inst8|DataOut[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|DataOut\(8));

-- Location: FF_X10_Y15_N7
\inst13|spi_slave_0|tx_buf[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[7]~95_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[7]~_emulated_q\);

-- Location: FF_X10_Y15_N1
\inst13|spi_tx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst8|DataOut\(7),
	sload => VCC,
	ena => \inst13|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(7));

-- Location: LCCOMB_X10_Y15_N0
\inst13|spi_slave_0|tx_buf[7]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[7]~94_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(7))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[7]~93_combout\ $ 
-- (((\inst13|spi_slave_0|tx_buf[7]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|process_1~2_combout\,
	datab => \inst13|spi_slave_0|tx_buf[7]~93_combout\,
	datac => \inst13|spi_tx_data\(7),
	datad => \inst13|spi_slave_0|tx_buf[7]~_emulated_q\,
	combout => \inst13|spi_slave_0|tx_buf[7]~94_combout\);

-- Location: FF_X15_Y15_N19
\inst8|fifo_proc_Memory_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc_Memory_rtl_0_bypass[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(25));

-- Location: LCCOMB_X15_Y15_N16
\inst8|fifo_proc:Memory~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc:Memory~27_combout\ = (\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & ((\inst8|fifo_proc:Memory~4_combout\ & ((\inst8|fifo_proc_Memory_rtl_0_bypass\(25)))) # (!\inst8|fifo_proc:Memory~4_combout\ & 
-- (\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a8\)))) # (!\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & (\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a8\,
	datab => \inst8|fifo_proc_Memory_rtl_0_bypass\(0),
	datac => \inst8|fifo_proc:Memory~4_combout\,
	datad => \inst8|fifo_proc_Memory_rtl_0_bypass\(25),
	combout => \inst8|fifo_proc:Memory~27_combout\);

-- Location: LCCOMB_X10_Y15_N6
\inst13|spi_slave_0|tx_buf[7]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[7]~95_combout\ = \inst13|spi_slave_0|tx_buf[7]~93_combout\ $ (\inst13|spi_slave_0|tx_buf[6]~98_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[7]~93_combout\,
	datad => \inst13|spi_slave_0|tx_buf[6]~98_combout\,
	combout => \inst13|spi_slave_0|tx_buf[7]~95_combout\);

-- Location: FF_X14_Y15_N17
\inst8|DataOut[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc:Memory~28_combout\,
	ena => \inst8|DataOut[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|DataOut\(7));

-- Location: FF_X10_Y15_N27
\inst13|spi_slave_0|tx_buf[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[6]~99_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[6]~_emulated_q\);

-- Location: FF_X10_Y15_N5
\inst13|spi_tx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst8|DataOut\(6),
	sload => VCC,
	ena => \inst13|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(6));

-- Location: LCCOMB_X10_Y15_N4
\inst13|spi_slave_0|tx_buf[6]~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[6]~98_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(6))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[6]~_emulated_q\ $ 
-- ((\inst13|spi_slave_0|tx_buf[6]~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[6]~_emulated_q\,
	datab => \inst13|spi_slave_0|tx_buf[6]~97_combout\,
	datac => \inst13|spi_tx_data\(6),
	datad => \inst13|spi_slave_0|process_1~2_combout\,
	combout => \inst13|spi_slave_0|tx_buf[6]~98_combout\);

-- Location: FF_X14_Y15_N3
\inst8|fifo_proc_Memory_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc_Memory_rtl_0_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(24));

-- Location: LCCOMB_X14_Y15_N16
\inst8|fifo_proc:Memory~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc:Memory~28_combout\ = (\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & ((\inst8|fifo_proc:Memory~4_combout\ & (\inst8|fifo_proc_Memory_rtl_0_bypass\(24))) # (!\inst8|fifo_proc:Memory~4_combout\ & 
-- ((\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a7\))))) # (!\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & (((\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc_Memory_rtl_0_bypass\(0),
	datab => \inst8|fifo_proc_Memory_rtl_0_bypass\(24),
	datac => \inst8|fifo_proc:Memory~4_combout\,
	datad => \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a7\,
	combout => \inst8|fifo_proc:Memory~28_combout\);

-- Location: LCCOMB_X10_Y15_N26
\inst13|spi_slave_0|tx_buf[6]~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[6]~99_combout\ = \inst13|spi_slave_0|tx_buf[5]~102_combout\ $ (\inst13|spi_slave_0|tx_buf[6]~97_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|spi_slave_0|tx_buf[5]~102_combout\,
	datad => \inst13|spi_slave_0|tx_buf[6]~97_combout\,
	combout => \inst13|spi_slave_0|tx_buf[6]~99_combout\);

-- Location: FF_X14_Y15_N5
\inst8|DataOut[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc:Memory~29_combout\,
	ena => \inst8|DataOut[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|DataOut\(6));

-- Location: FF_X10_Y16_N3
\inst13|spi_slave_0|tx_buf[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[5]~103_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[5]~_emulated_q\);

-- Location: FF_X10_Y16_N21
\inst13|spi_tx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst8|DataOut\(5),
	sload => VCC,
	ena => \inst13|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(5));

-- Location: LCCOMB_X10_Y16_N20
\inst13|spi_slave_0|tx_buf[5]~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[5]~102_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(5))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[5]~101_combout\ $ 
-- ((\inst13|spi_slave_0|tx_buf[5]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[5]~101_combout\,
	datab => \inst13|spi_slave_0|tx_buf[5]~_emulated_q\,
	datac => \inst13|spi_tx_data\(5),
	datad => \inst13|spi_slave_0|process_1~2_combout\,
	combout => \inst13|spi_slave_0|tx_buf[5]~102_combout\);

-- Location: FF_X14_Y15_N31
\inst8|fifo_proc_Memory_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst19|sweep_duration\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(23));

-- Location: LCCOMB_X14_Y15_N4
\inst8|fifo_proc:Memory~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc:Memory~29_combout\ = (\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & ((\inst8|fifo_proc:Memory~4_combout\ & (\inst8|fifo_proc_Memory_rtl_0_bypass\(23))) # (!\inst8|fifo_proc:Memory~4_combout\ & 
-- ((\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a6\))))) # (!\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & (((\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc_Memory_rtl_0_bypass\(0),
	datab => \inst8|fifo_proc:Memory~4_combout\,
	datac => \inst8|fifo_proc_Memory_rtl_0_bypass\(23),
	datad => \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a6\,
	combout => \inst8|fifo_proc:Memory~29_combout\);

-- Location: LCCOMB_X10_Y16_N2
\inst13|spi_slave_0|tx_buf[5]~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[5]~103_combout\ = \inst13|spi_slave_0|tx_buf[5]~101_combout\ $ (\inst13|spi_slave_0|tx_buf[4]~106_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|spi_slave_0|tx_buf[5]~101_combout\,
	datad => \inst13|spi_slave_0|tx_buf[4]~106_combout\,
	combout => \inst13|spi_slave_0|tx_buf[5]~103_combout\);

-- Location: FF_X14_Y15_N1
\inst8|DataOut[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc:Memory~30_combout\,
	ena => \inst8|DataOut[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|DataOut\(5));

-- Location: FF_X10_Y16_N7
\inst13|spi_slave_0|tx_buf[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[4]~107_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[4]~_emulated_q\);

-- Location: FF_X10_Y16_N1
\inst13|spi_tx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst8|DataOut\(4),
	sload => VCC,
	ena => \inst13|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(4));

-- Location: LCCOMB_X10_Y16_N0
\inst13|spi_slave_0|tx_buf[4]~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[4]~106_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(4))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[4]~105_combout\ $ 
-- (((\inst13|spi_slave_0|tx_buf[4]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|process_1~2_combout\,
	datab => \inst13|spi_slave_0|tx_buf[4]~105_combout\,
	datac => \inst13|spi_tx_data\(4),
	datad => \inst13|spi_slave_0|tx_buf[4]~_emulated_q\,
	combout => \inst13|spi_slave_0|tx_buf[4]~106_combout\);

-- Location: FF_X14_Y15_N11
\inst8|fifo_proc_Memory_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc_Memory_rtl_0_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(22));

-- Location: LCCOMB_X14_Y15_N0
\inst8|fifo_proc:Memory~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc:Memory~30_combout\ = (\inst8|fifo_proc:Memory~4_combout\ & ((\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & ((\inst8|fifo_proc_Memory_rtl_0_bypass\(22)))) # (!\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & 
-- (\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a5\)))) # (!\inst8|fifo_proc:Memory~4_combout\ & (\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a5\,
	datab => \inst8|fifo_proc:Memory~4_combout\,
	datac => \inst8|fifo_proc_Memory_rtl_0_bypass\(0),
	datad => \inst8|fifo_proc_Memory_rtl_0_bypass\(22),
	combout => \inst8|fifo_proc:Memory~30_combout\);

-- Location: LCCOMB_X10_Y16_N6
\inst13|spi_slave_0|tx_buf[4]~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[4]~107_combout\ = \inst13|spi_slave_0|tx_buf[4]~105_combout\ $ (\inst13|spi_slave_0|tx_buf[3]~110_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[4]~105_combout\,
	datad => \inst13|spi_slave_0|tx_buf[3]~110_combout\,
	combout => \inst13|spi_slave_0|tx_buf[4]~107_combout\);

-- Location: FF_X14_Y15_N13
\inst8|DataOut[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc:Memory~31_combout\,
	ena => \inst8|DataOut[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|DataOut\(4));

-- Location: FF_X10_Y16_N27
\inst13|spi_slave_0|tx_buf[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[3]~111_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[3]~_emulated_q\);

-- Location: FF_X10_Y16_N13
\inst13|spi_tx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst8|DataOut\(3),
	sload => VCC,
	ena => \inst13|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(3));

-- Location: LCCOMB_X10_Y16_N12
\inst13|spi_slave_0|tx_buf[3]~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[3]~110_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(3))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[3]~_emulated_q\ $ 
-- ((\inst13|spi_slave_0|tx_buf[3]~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[3]~_emulated_q\,
	datab => \inst13|spi_slave_0|tx_buf[3]~109_combout\,
	datac => \inst13|spi_tx_data\(3),
	datad => \inst13|spi_slave_0|process_1~2_combout\,
	combout => \inst13|spi_slave_0|tx_buf[3]~110_combout\);

-- Location: FF_X14_Y15_N15
\inst8|fifo_proc_Memory_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc_Memory_rtl_0_bypass[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(21));

-- Location: LCCOMB_X14_Y15_N12
\inst8|fifo_proc:Memory~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc:Memory~31_combout\ = (\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & ((\inst8|fifo_proc:Memory~4_combout\ & (\inst8|fifo_proc_Memory_rtl_0_bypass\(21))) # (!\inst8|fifo_proc:Memory~4_combout\ & 
-- ((\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a4\))))) # (!\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & (((\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc_Memory_rtl_0_bypass\(0),
	datab => \inst8|fifo_proc:Memory~4_combout\,
	datac => \inst8|fifo_proc_Memory_rtl_0_bypass\(21),
	datad => \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a4\,
	combout => \inst8|fifo_proc:Memory~31_combout\);

-- Location: LCCOMB_X10_Y16_N26
\inst13|spi_slave_0|tx_buf[3]~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[3]~111_combout\ = \inst13|spi_slave_0|tx_buf[3]~109_combout\ $ (\inst13|spi_slave_0|tx_buf[2]~114_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[3]~109_combout\,
	datac => \inst13|spi_slave_0|tx_buf[2]~114_combout\,
	combout => \inst13|spi_slave_0|tx_buf[3]~111_combout\);

-- Location: FF_X14_Y15_N25
\inst8|DataOut[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc:Memory~32_combout\,
	ena => \inst8|DataOut[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|DataOut\(3));

-- Location: FF_X10_Y16_N15
\inst13|spi_slave_0|tx_buf[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[2]~115_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[2]~_emulated_q\);

-- Location: FF_X10_Y16_N17
\inst13|spi_tx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst8|DataOut\(2),
	sload => VCC,
	ena => \inst13|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(2));

-- Location: LCCOMB_X10_Y16_N16
\inst13|spi_slave_0|tx_buf[2]~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[2]~114_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(2))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[2]~_emulated_q\ $ 
-- (((\inst13|spi_slave_0|tx_buf[2]~113_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|process_1~2_combout\,
	datab => \inst13|spi_slave_0|tx_buf[2]~_emulated_q\,
	datac => \inst13|spi_tx_data\(2),
	datad => \inst13|spi_slave_0|tx_buf[2]~113_combout\,
	combout => \inst13|spi_slave_0|tx_buf[2]~114_combout\);

-- Location: FF_X14_Y15_N19
\inst8|fifo_proc_Memory_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst19|sweep_duration\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(20));

-- Location: LCCOMB_X14_Y15_N24
\inst8|fifo_proc:Memory~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc:Memory~32_combout\ = (\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & ((\inst8|fifo_proc:Memory~4_combout\ & ((\inst8|fifo_proc_Memory_rtl_0_bypass\(20)))) # (!\inst8|fifo_proc:Memory~4_combout\ & 
-- (\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a3\)))) # (!\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & (\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc_Memory_rtl_0_bypass\(0),
	datab => \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a3\,
	datac => \inst8|fifo_proc:Memory~4_combout\,
	datad => \inst8|fifo_proc_Memory_rtl_0_bypass\(20),
	combout => \inst8|fifo_proc:Memory~32_combout\);

-- Location: LCCOMB_X10_Y16_N14
\inst13|spi_slave_0|tx_buf[2]~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[2]~115_combout\ = \inst13|spi_slave_0|tx_buf[2]~113_combout\ $ (\inst13|spi_slave_0|tx_buf[1]~118_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[2]~113_combout\,
	datac => \inst13|spi_slave_0|tx_buf[1]~118_combout\,
	combout => \inst13|spi_slave_0|tx_buf[2]~115_combout\);

-- Location: FF_X14_Y15_N21
\inst8|DataOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc:Memory~33_combout\,
	ena => \inst8|DataOut[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|DataOut\(2));

-- Location: FF_X10_Y16_N11
\inst13|spi_slave_0|tx_buf[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[1]~119_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[1]~_emulated_q\);

-- Location: FF_X10_Y16_N5
\inst13|spi_tx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst8|DataOut\(1),
	sload => VCC,
	ena => \inst13|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(1));

-- Location: LCCOMB_X10_Y16_N4
\inst13|spi_slave_0|tx_buf[1]~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[1]~118_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(1))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[1]~117_combout\ $ 
-- (((\inst13|spi_slave_0|tx_buf[1]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[1]~117_combout\,
	datab => \inst13|spi_slave_0|process_1~2_combout\,
	datac => \inst13|spi_tx_data\(1),
	datad => \inst13|spi_slave_0|tx_buf[1]~_emulated_q\,
	combout => \inst13|spi_slave_0|tx_buf[1]~118_combout\);

-- Location: FF_X14_Y15_N23
\inst8|fifo_proc_Memory_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc_Memory_rtl_0_bypass[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(19));

-- Location: LCCOMB_X14_Y15_N20
\inst8|fifo_proc:Memory~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc:Memory~33_combout\ = (\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & ((\inst8|fifo_proc:Memory~4_combout\ & (\inst8|fifo_proc_Memory_rtl_0_bypass\(19))) # (!\inst8|fifo_proc:Memory~4_combout\ & 
-- ((\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a2\))))) # (!\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & (((\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc_Memory_rtl_0_bypass\(0),
	datab => \inst8|fifo_proc:Memory~4_combout\,
	datac => \inst8|fifo_proc_Memory_rtl_0_bypass\(19),
	datad => \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a2\,
	combout => \inst8|fifo_proc:Memory~33_combout\);

-- Location: LCCOMB_X10_Y16_N10
\inst13|spi_slave_0|tx_buf[1]~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[1]~119_combout\ = \inst13|spi_slave_0|tx_buf[1]~117_combout\ $ (\inst13|spi_slave_0|tx_buf[0]~122_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|spi_slave_0|tx_buf[1]~117_combout\,
	datad => \inst13|spi_slave_0|tx_buf[0]~122_combout\,
	combout => \inst13|spi_slave_0|tx_buf[1]~119_combout\);

-- Location: FF_X14_Y15_N9
\inst8|DataOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc:Memory~34_combout\,
	ena => \inst8|DataOut[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|DataOut\(1));

-- Location: FF_X11_Y16_N31
\inst13|spi_slave_0|tx_buf[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[0]~123_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf[0]~_emulated_q\);

-- Location: FF_X11_Y16_N25
\inst13|spi_tx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst8|DataOut\(0),
	sload => VCC,
	ena => \inst13|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(0));

-- Location: LCCOMB_X11_Y16_N24
\inst13|spi_slave_0|tx_buf[0]~122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[0]~122_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(0))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[0]~_emulated_q\ $ 
-- (((\inst13|spi_slave_0|tx_buf[0]~121_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[0]~_emulated_q\,
	datab => \inst13|spi_slave_0|process_1~2_combout\,
	datac => \inst13|spi_tx_data\(0),
	datad => \inst13|spi_slave_0|tx_buf[0]~121_combout\,
	combout => \inst13|spi_slave_0|tx_buf[0]~122_combout\);

-- Location: FF_X14_Y15_N27
\inst8|fifo_proc_Memory_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc_Memory_rtl_0_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(18));

-- Location: LCCOMB_X14_Y15_N8
\inst8|fifo_proc:Memory~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc:Memory~34_combout\ = (\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & ((\inst8|fifo_proc:Memory~4_combout\ & ((\inst8|fifo_proc_Memory_rtl_0_bypass\(18)))) # (!\inst8|fifo_proc:Memory~4_combout\ & 
-- (\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a1\)))) # (!\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & (((\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc_Memory_rtl_0_bypass\(0),
	datab => \inst8|fifo_proc:Memory~4_combout\,
	datac => \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a1\,
	datad => \inst8|fifo_proc_Memory_rtl_0_bypass\(18),
	combout => \inst8|fifo_proc:Memory~34_combout\);

-- Location: LCCOMB_X11_Y16_N30
\inst13|spi_slave_0|tx_buf[0]~123\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[0]~123_combout\ = \inst13|spi_slave_0|tx_buf\(31) $ (\inst13|spi_slave_0|tx_buf[0]~121_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf\(31),
	datac => \inst13|spi_slave_0|tx_buf[0]~121_combout\,
	combout => \inst13|spi_slave_0|tx_buf[0]~123_combout\);

-- Location: FF_X14_Y15_N29
\inst8|DataOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc:Memory~35_combout\,
	ena => \inst8|DataOut[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|DataOut\(0));

-- Location: FF_X14_Y15_N7
\inst8|fifo_proc_Memory_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst19|sweep_duration\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(17));

-- Location: LCCOMB_X14_Y15_N28
\inst8|fifo_proc:Memory~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc:Memory~35_combout\ = (\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & ((\inst8|fifo_proc:Memory~4_combout\ & ((\inst8|fifo_proc_Memory_rtl_0_bypass\(17)))) # (!\inst8|fifo_proc:Memory~4_combout\ & 
-- (\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0~portbdataout\)))) # (!\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & (\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc_Memory_rtl_0_bypass\(0),
	datab => \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datac => \inst8|fifo_proc:Memory~4_combout\,
	datad => \inst8|fifo_proc_Memory_rtl_0_bypass\(17),
	combout => \inst8|fifo_proc:Memory~35_combout\);

-- Location: LCCOMB_X11_Y15_N0
\inst13|spi_slave_0|tx_buf[29]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[29]~5_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_tx_data\(29))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_slave_0|tx_buf[29]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_tx_data\(29),
	datac => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	datad => \inst13|spi_slave_0|tx_buf[29]~5_combout\,
	combout => \inst13|spi_slave_0|tx_buf[29]~5_combout\);

-- Location: LCCOMB_X11_Y15_N16
\inst13|spi_slave_0|tx_buf[28]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[28]~9_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_tx_data\(28))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_slave_0|tx_buf[28]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_tx_data\(28),
	datab => \inst13|spi_slave_0|tx_buf[28]~9_combout\,
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[28]~9_combout\);

-- Location: LCCOMB_X11_Y15_N12
\inst13|spi_slave_0|tx_buf[27]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[27]~13_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_tx_data\(27))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_slave_0|tx_buf[27]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_tx_data\(27),
	datac => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	datad => \inst13|spi_slave_0|tx_buf[27]~13_combout\,
	combout => \inst13|spi_slave_0|tx_buf[27]~13_combout\);

-- Location: LCCOMB_X11_Y15_N4
\inst13|spi_slave_0|tx_buf[26]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[26]~17_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_tx_data\(26))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_slave_0|tx_buf[26]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_tx_data\(26),
	datac => \inst13|spi_slave_0|tx_buf[26]~17_combout\,
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[26]~17_combout\);

-- Location: LCCOMB_X11_Y15_N18
\inst13|spi_slave_0|tx_buf[25]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[25]~21_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_tx_data\(25)))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_slave_0|tx_buf[25]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[25]~21_combout\,
	datac => \inst13|spi_tx_data\(25),
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[25]~21_combout\);

-- Location: LCCOMB_X11_Y15_N28
\inst13|spi_slave_0|tx_buf[24]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[24]~25_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_tx_data\(24)))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_slave_0|tx_buf[24]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[24]~25_combout\,
	datac => \inst13|spi_tx_data\(24),
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[24]~25_combout\);

-- Location: LCCOMB_X11_Y15_N2
\inst13|spi_slave_0|tx_buf[23]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[23]~29_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_tx_data\(23)))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_slave_0|tx_buf[23]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[23]~29_combout\,
	datac => \inst13|spi_tx_data\(23),
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[23]~29_combout\);

-- Location: LCCOMB_X11_Y15_N24
\inst13|spi_slave_0|tx_buf[22]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[22]~33_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_tx_data\(22)))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_slave_0|tx_buf[22]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[22]~33_combout\,
	datac => \inst13|spi_tx_data\(22),
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[22]~33_combout\);

-- Location: LCCOMB_X11_Y16_N18
\inst13|spi_slave_0|tx_buf[21]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[21]~37_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_tx_data\(21)))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_slave_0|tx_buf[21]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[21]~37_combout\,
	datac => \inst13|spi_tx_data\(21),
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[21]~37_combout\);

-- Location: LCCOMB_X11_Y16_N12
\inst13|spi_slave_0|tx_buf[20]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[20]~41_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_tx_data\(20)))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_slave_0|tx_buf[20]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[20]~41_combout\,
	datac => \inst13|spi_tx_data\(20),
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[20]~41_combout\);

-- Location: LCCOMB_X16_Y16_N20
\inst13|spi_slave_0|tx_buf[19]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[19]~45_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_tx_data\(19))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_slave_0|tx_buf[19]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_tx_data\(19),
	datac => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	datad => \inst13|spi_slave_0|tx_buf[19]~45_combout\,
	combout => \inst13|spi_slave_0|tx_buf[19]~45_combout\);

-- Location: LCCOMB_X16_Y16_N30
\inst13|spi_slave_0|tx_buf[18]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[18]~49_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_tx_data\(18))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_slave_0|tx_buf[18]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_tx_data\(18),
	datac => \inst13|spi_slave_0|tx_buf[18]~49_combout\,
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[18]~49_combout\);

-- Location: LCCOMB_X16_Y16_N16
\inst13|spi_slave_0|tx_buf[17]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[17]~53_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_tx_data\(17))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_slave_0|tx_buf[17]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_tx_data\(17),
	datac => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	datad => \inst13|spi_slave_0|tx_buf[17]~53_combout\,
	combout => \inst13|spi_slave_0|tx_buf[17]~53_combout\);

-- Location: LCCOMB_X16_Y16_N2
\inst13|spi_slave_0|tx_buf[16]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[16]~57_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_tx_data\(16)))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_slave_0|tx_buf[16]~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[16]~57_combout\,
	datac => \inst13|spi_tx_data\(16),
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[16]~57_combout\);

-- Location: LCCOMB_X16_Y16_N12
\inst13|spi_slave_0|tx_buf[15]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[15]~61_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_tx_data\(15))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_slave_0|tx_buf[15]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_tx_data\(15),
	datac => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	datad => \inst13|spi_slave_0|tx_buf[15]~61_combout\,
	combout => \inst13|spi_slave_0|tx_buf[15]~61_combout\);

-- Location: LCCOMB_X15_Y16_N30
\inst13|spi_slave_0|tx_buf[14]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[14]~65_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_tx_data\(14))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_slave_0|tx_buf[14]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_tx_data\(14),
	datac => \inst13|spi_slave_0|tx_buf[14]~65_combout\,
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[14]~65_combout\);

-- Location: LCCOMB_X15_Y16_N16
\inst13|spi_slave_0|tx_buf[13]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[13]~69_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_tx_data\(13)))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_slave_0|tx_buf[13]~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[13]~69_combout\,
	datac => \inst13|spi_tx_data\(13),
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[13]~69_combout\);

-- Location: LCCOMB_X15_Y16_N18
\inst13|spi_slave_0|tx_buf[12]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[12]~73_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_tx_data\(12)))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_slave_0|tx_buf[12]~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[12]~73_combout\,
	datac => \inst13|spi_tx_data\(12),
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[12]~73_combout\);

-- Location: LCCOMB_X15_Y16_N28
\inst13|spi_slave_0|tx_buf[11]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[11]~77_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_tx_data\(11)))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_slave_0|tx_buf[11]~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[11]~77_combout\,
	datac => \inst13|spi_tx_data\(11),
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[11]~77_combout\);

-- Location: LCCOMB_X15_Y16_N22
\inst13|spi_slave_0|tx_buf[10]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[10]~81_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_tx_data\(10))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_slave_0|tx_buf[10]~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_tx_data\(10),
	datac => \inst13|spi_slave_0|tx_buf[10]~81_combout\,
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[10]~81_combout\);

-- Location: LCCOMB_X10_Y15_N30
\inst13|spi_slave_0|tx_buf[9]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[9]~85_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_tx_data\(9))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_slave_0|tx_buf[9]~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_tx_data\(9),
	datac => \inst13|spi_slave_0|tx_buf[9]~85_combout\,
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[9]~85_combout\);

-- Location: LCCOMB_X10_Y15_N24
\inst13|spi_slave_0|tx_buf[8]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[8]~89_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_tx_data\(8))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_slave_0|tx_buf[8]~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_tx_data\(8),
	datac => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	datad => \inst13|spi_slave_0|tx_buf[8]~89_combout\,
	combout => \inst13|spi_slave_0|tx_buf[8]~89_combout\);

-- Location: LCCOMB_X10_Y15_N18
\inst13|spi_slave_0|tx_buf[7]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[7]~93_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_tx_data\(7))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_slave_0|tx_buf[7]~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_tx_data\(7),
	datac => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	datad => \inst13|spi_slave_0|tx_buf[7]~93_combout\,
	combout => \inst13|spi_slave_0|tx_buf[7]~93_combout\);

-- Location: LCCOMB_X10_Y15_N20
\inst13|spi_slave_0|tx_buf[6]~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[6]~97_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_tx_data\(6)))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_slave_0|tx_buf[6]~97_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[6]~97_combout\,
	datac => \inst13|spi_tx_data\(6),
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[6]~97_combout\);

-- Location: LCCOMB_X10_Y16_N30
\inst13|spi_slave_0|tx_buf[5]~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[5]~101_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_tx_data\(5))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_slave_0|tx_buf[5]~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_tx_data\(5),
	datac => \inst13|spi_slave_0|tx_buf[5]~101_combout\,
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[5]~101_combout\);

-- Location: LCCOMB_X10_Y16_N24
\inst13|spi_slave_0|tx_buf[4]~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[4]~105_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_tx_data\(4)))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_slave_0|tx_buf[4]~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[4]~105_combout\,
	datac => \inst13|spi_tx_data\(4),
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[4]~105_combout\);

-- Location: LCCOMB_X10_Y16_N18
\inst13|spi_slave_0|tx_buf[3]~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[3]~109_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_tx_data\(3)))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_slave_0|tx_buf[3]~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[3]~109_combout\,
	datac => \inst13|spi_tx_data\(3),
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[3]~109_combout\);

-- Location: LCCOMB_X10_Y16_N28
\inst13|spi_slave_0|tx_buf[2]~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[2]~113_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_tx_data\(2))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_slave_0|tx_buf[2]~113_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_tx_data\(2),
	datac => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	datad => \inst13|spi_slave_0|tx_buf[2]~113_combout\,
	combout => \inst13|spi_slave_0|tx_buf[2]~113_combout\);

-- Location: LCCOMB_X10_Y16_N22
\inst13|spi_slave_0|tx_buf[1]~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[1]~117_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_tx_data\(1))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_slave_0|tx_buf[1]~117_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_tx_data\(1),
	datac => \inst13|spi_slave_0|tx_buf[1]~117_combout\,
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[1]~117_combout\);

-- Location: LCCOMB_X11_Y16_N22
\inst13|spi_slave_0|tx_buf[0]~121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[0]~121_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_tx_data\(0))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_slave_0|tx_buf[0]~121_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_tx_data\(0),
	datac => \inst13|spi_slave_0|tx_buf[0]~121_combout\,
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[0]~121_combout\);

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

-- Location: LCCOMB_X14_Y16_N12
\inst8|fifo_proc_Memory_rtl_0_bypass[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc_Memory_rtl_0_bypass[9]~feeder_combout\ = \inst8|fifo_proc:Head[4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|fifo_proc:Head[4]~q\,
	combout => \inst8|fifo_proc_Memory_rtl_0_bypass[9]~feeder_combout\);

-- Location: LCCOMB_X14_Y16_N10
\inst8|fifo_proc_Memory_rtl_0_bypass[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc_Memory_rtl_0_bypass[15]~feeder_combout\ = \inst8|fifo_proc:Head[7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|fifo_proc:Head[7]~q\,
	combout => \inst8|fifo_proc_Memory_rtl_0_bypass[15]~feeder_combout\);

-- Location: LCCOMB_X23_Y14_N10
\inst19|t_sweep_start[24]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_start[24]~feeder_combout\ = \inst19|t_0\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(24),
	combout => \inst19|t_sweep_start[24]~feeder_combout\);

-- Location: LCCOMB_X20_Y14_N12
\inst19|t_sweep_start[23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_start[23]~feeder_combout\ = \inst19|t_0\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(23),
	combout => \inst19|t_sweep_start[23]~feeder_combout\);

-- Location: LCCOMB_X23_Y14_N2
\inst19|t_sweep_start[19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_start[19]~feeder_combout\ = \inst19|t_0\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(19),
	combout => \inst19|t_sweep_start[19]~feeder_combout\);

-- Location: LCCOMB_X23_Y14_N4
\inst19|t_sweep_start[18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_start[18]~feeder_combout\ = \inst19|t_0\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(18),
	combout => \inst19|t_sweep_start[18]~feeder_combout\);

-- Location: LCCOMB_X21_Y16_N24
\inst19|start_valid_sync[18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|start_valid_sync[18]~feeder_combout\ = \inst19|t_0\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(18),
	combout => \inst19|start_valid_sync[18]~feeder_combout\);

-- Location: LCCOMB_X23_Y14_N6
\inst19|t_sweep_start[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_start[17]~feeder_combout\ = \inst19|t_0\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(17),
	combout => \inst19|t_sweep_start[17]~feeder_combout\);

-- Location: LCCOMB_X23_Y14_N30
\inst19|t_sweep_start[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_start[13]~feeder_combout\ = \inst19|t_0\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(13),
	combout => \inst19|t_sweep_start[13]~feeder_combout\);

-- Location: LCCOMB_X23_Y14_N24
\inst19|t_sweep_start[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_start[12]~feeder_combout\ = \inst19|t_0\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(12),
	combout => \inst19|t_sweep_start[12]~feeder_combout\);

-- Location: LCCOMB_X23_Y14_N26
\inst19|t_sweep_start[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_start[11]~feeder_combout\ = \inst19|t_0\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(11),
	combout => \inst19|t_sweep_start[11]~feeder_combout\);

-- Location: LCCOMB_X21_Y16_N6
\inst19|start_valid_sync[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|start_valid_sync[9]~feeder_combout\ = \inst19|t_0\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(9),
	combout => \inst19|start_valid_sync[9]~feeder_combout\);

-- Location: LCCOMB_X22_Y16_N30
\inst19|t_sweep_start[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_start[3]~feeder_combout\ = \inst19|t_0\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(3),
	combout => \inst19|t_sweep_start[3]~feeder_combout\);

-- Location: LCCOMB_X23_Y14_N12
\inst19|t_sweep_start[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_start[2]~feeder_combout\ = \inst19|t_0\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(2),
	combout => \inst19|t_sweep_start[2]~feeder_combout\);

-- Location: LCCOMB_X23_Y15_N6
\inst19|t_sweep_start[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_start[1]~feeder_combout\ = \inst19|t_0\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(1),
	combout => \inst19|t_sweep_start[1]~feeder_combout\);

-- Location: LCCOMB_X20_Y14_N4
\inst19|start_valid_sync[25]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|start_valid_sync[25]~feeder_combout\ = \inst19|t_0\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(25),
	combout => \inst19|start_valid_sync[25]~feeder_combout\);

-- Location: LCCOMB_X12_Y15_N18
\inst8|fifo_proc_Memory_rtl_0_bypass[46]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc_Memory_rtl_0_bypass[46]~feeder_combout\ = \inst19|sweep_duration\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|sweep_duration\(29),
	combout => \inst8|fifo_proc_Memory_rtl_0_bypass[46]~feeder_combout\);

-- Location: LCCOMB_X12_Y15_N14
\inst8|fifo_proc_Memory_rtl_0_bypass[45]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc_Memory_rtl_0_bypass[45]~feeder_combout\ = \inst19|sweep_duration\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|sweep_duration\(28),
	combout => \inst8|fifo_proc_Memory_rtl_0_bypass[45]~feeder_combout\);

-- Location: LCCOMB_X12_Y15_N26
\inst8|fifo_proc_Memory_rtl_0_bypass[44]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc_Memory_rtl_0_bypass[44]~feeder_combout\ = \inst19|sweep_duration\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|sweep_duration\(27),
	combout => \inst8|fifo_proc_Memory_rtl_0_bypass[44]~feeder_combout\);

-- Location: LCCOMB_X12_Y15_N30
\inst8|fifo_proc_Memory_rtl_0_bypass[43]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc_Memory_rtl_0_bypass[43]~feeder_combout\ = \inst19|sweep_duration\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|sweep_duration\(26),
	combout => \inst8|fifo_proc_Memory_rtl_0_bypass[43]~feeder_combout\);

-- Location: LCCOMB_X12_Y15_N2
\inst8|fifo_proc_Memory_rtl_0_bypass[42]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc_Memory_rtl_0_bypass[42]~feeder_combout\ = \inst19|sweep_duration\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|sweep_duration\(25),
	combout => \inst8|fifo_proc_Memory_rtl_0_bypass[42]~feeder_combout\);

-- Location: LCCOMB_X12_Y16_N2
\inst8|fifo_proc_Memory_rtl_0_bypass[41]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc_Memory_rtl_0_bypass[41]~feeder_combout\ = \inst19|sweep_duration\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|sweep_duration\(24),
	combout => \inst8|fifo_proc_Memory_rtl_0_bypass[41]~feeder_combout\);

-- Location: LCCOMB_X12_Y16_N6
\inst8|fifo_proc_Memory_rtl_0_bypass[40]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc_Memory_rtl_0_bypass[40]~feeder_combout\ = \inst19|sweep_duration\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|sweep_duration\(23),
	combout => \inst8|fifo_proc_Memory_rtl_0_bypass[40]~feeder_combout\);

-- Location: LCCOMB_X16_Y15_N2
\inst8|fifo_proc_Memory_rtl_0_bypass[34]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc_Memory_rtl_0_bypass[34]~feeder_combout\ = \inst19|sweep_duration\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|sweep_duration\(17),
	combout => \inst8|fifo_proc_Memory_rtl_0_bypass[34]~feeder_combout\);

-- Location: LCCOMB_X16_Y15_N30
\inst8|fifo_proc_Memory_rtl_0_bypass[32]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc_Memory_rtl_0_bypass[32]~feeder_combout\ = \inst19|sweep_duration\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|sweep_duration\(15),
	combout => \inst8|fifo_proc_Memory_rtl_0_bypass[32]~feeder_combout\);

-- Location: LCCOMB_X15_Y15_N30
\inst8|fifo_proc_Memory_rtl_0_bypass[30]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc_Memory_rtl_0_bypass[30]~feeder_combout\ = \inst19|sweep_duration\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|sweep_duration\(13),
	combout => \inst8|fifo_proc_Memory_rtl_0_bypass[30]~feeder_combout\);

-- Location: LCCOMB_X15_Y15_N26
\inst8|fifo_proc_Memory_rtl_0_bypass[27]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc_Memory_rtl_0_bypass[27]~feeder_combout\ = \inst19|sweep_duration\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|sweep_duration\(10),
	combout => \inst8|fifo_proc_Memory_rtl_0_bypass[27]~feeder_combout\);

-- Location: LCCOMB_X15_Y15_N22
\inst8|fifo_proc_Memory_rtl_0_bypass[26]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc_Memory_rtl_0_bypass[26]~feeder_combout\ = \inst19|sweep_duration\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|sweep_duration\(9),
	combout => \inst8|fifo_proc_Memory_rtl_0_bypass[26]~feeder_combout\);

-- Location: LCCOMB_X15_Y15_N18
\inst8|fifo_proc_Memory_rtl_0_bypass[25]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc_Memory_rtl_0_bypass[25]~feeder_combout\ = \inst19|sweep_duration\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|sweep_duration\(8),
	combout => \inst8|fifo_proc_Memory_rtl_0_bypass[25]~feeder_combout\);

-- Location: LCCOMB_X14_Y15_N2
\inst8|fifo_proc_Memory_rtl_0_bypass[24]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc_Memory_rtl_0_bypass[24]~feeder_combout\ = \inst19|sweep_duration\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|sweep_duration\(7),
	combout => \inst8|fifo_proc_Memory_rtl_0_bypass[24]~feeder_combout\);

-- Location: LCCOMB_X14_Y15_N10
\inst8|fifo_proc_Memory_rtl_0_bypass[22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc_Memory_rtl_0_bypass[22]~feeder_combout\ = \inst19|sweep_duration\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|sweep_duration\(5),
	combout => \inst8|fifo_proc_Memory_rtl_0_bypass[22]~feeder_combout\);

-- Location: LCCOMB_X14_Y15_N14
\inst8|fifo_proc_Memory_rtl_0_bypass[21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc_Memory_rtl_0_bypass[21]~feeder_combout\ = \inst19|sweep_duration\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|sweep_duration\(4),
	combout => \inst8|fifo_proc_Memory_rtl_0_bypass[21]~feeder_combout\);

-- Location: LCCOMB_X14_Y15_N22
\inst8|fifo_proc_Memory_rtl_0_bypass[19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc_Memory_rtl_0_bypass[19]~feeder_combout\ = \inst19|sweep_duration\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|sweep_duration\(2),
	combout => \inst8|fifo_proc_Memory_rtl_0_bypass[19]~feeder_combout\);

-- Location: LCCOMB_X14_Y15_N26
\inst8|fifo_proc_Memory_rtl_0_bypass[18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc_Memory_rtl_0_bypass[18]~feeder_combout\ = \inst19|sweep_duration\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|sweep_duration\(1),
	combout => \inst8|fifo_proc_Memory_rtl_0_bypass[18]~feeder_combout\);

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
\lighthouse_led~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst19|lighthouse_A~q\,
	devoe => ww_devoe,
	o => ww_lighthouse_led);

-- Location: IOOBUF_X0_Y24_N16
\led_fifo_empty~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Empty~q\,
	devoe => ww_devoe,
	o => ww_led_fifo_empty);

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

-- Location: LCCOMB_X22_Y13_N2
\inst1|temp[30]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|temp[30]~31_combout\ = (\inst1|temp\(31) & (\inst1|temp\(30) $ (VCC))) # (!\inst1|temp\(31) & (\inst1|temp\(30) & VCC))
-- \inst1|temp[30]~32\ = CARRY((\inst1|temp\(31) & \inst1|temp\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(31),
	datab => \inst1|temp\(30),
	datad => VCC,
	combout => \inst1|temp[30]~31_combout\,
	cout => \inst1|temp[30]~32\);

-- Location: FF_X22_Y13_N3
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

-- Location: LCCOMB_X22_Y13_N4
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

-- Location: FF_X22_Y13_N5
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

-- Location: LCCOMB_X22_Y13_N6
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

-- Location: LCCOMB_X22_Y13_N8
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

-- Location: FF_X22_Y13_N9
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

-- Location: LCCOMB_X22_Y13_N10
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

-- Location: LCCOMB_X22_Y13_N12
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

-- Location: LCCOMB_X22_Y13_N14
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

-- Location: FF_X22_Y13_N15
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

-- Location: LCCOMB_X22_Y13_N16
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

-- Location: FF_X22_Y13_N17
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

-- Location: LCCOMB_X22_Y13_N18
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

-- Location: FF_X22_Y13_N19
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

-- Location: LCCOMB_X22_Y13_N20
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

-- Location: FF_X22_Y13_N21
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

-- Location: LCCOMB_X22_Y13_N22
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

-- Location: LCCOMB_X22_Y13_N24
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

-- Location: FF_X22_Y13_N25
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

-- Location: LCCOMB_X22_Y13_N26
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

-- Location: LCCOMB_X22_Y13_N28
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

-- Location: FF_X22_Y13_N29
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

-- Location: LCCOMB_X22_Y13_N30
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

-- Location: LCCOMB_X22_Y12_N0
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

-- Location: FF_X22_Y12_N1
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

-- Location: LCCOMB_X22_Y12_N2
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

-- Location: FF_X22_Y12_N3
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

-- Location: LCCOMB_X22_Y12_N4
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

-- Location: FF_X22_Y12_N5
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

-- Location: LCCOMB_X22_Y12_N6
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

-- Location: LCCOMB_X22_Y12_N8
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

-- Location: FF_X22_Y12_N9
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

-- Location: LCCOMB_X22_Y12_N10
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

-- Location: LCCOMB_X22_Y12_N12
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

-- Location: LCCOMB_X22_Y12_N14
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

-- Location: FF_X22_Y12_N15
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

-- Location: LCCOMB_X22_Y12_N16
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

-- Location: FF_X22_Y12_N17
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

-- Location: LCCOMB_X22_Y12_N18
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

-- Location: FF_X22_Y12_N19
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

-- Location: LCCOMB_X22_Y12_N20
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

-- Location: FF_X22_Y12_N21
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

-- Location: LCCOMB_X22_Y12_N22
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

-- Location: LCCOMB_X22_Y12_N24
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

-- Location: FF_X22_Y12_N25
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

-- Location: LCCOMB_X22_Y12_N26
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

-- Location: LCCOMB_X22_Y12_N28
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

-- Location: FF_X22_Y12_N29
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

-- Location: FF_X23_Y12_N29
\inst19|t_0[30]\ : dffeas
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
	q => \inst19|t_0\(30));

-- Location: FF_X22_Y12_N27
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

-- Location: FF_X23_Y12_N27
\inst19|t_0[29]\ : dffeas
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
	q => \inst19|t_0\(29));

-- Location: LCCOMB_X23_Y15_N30
\inst19|t_sweep_start[29]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_start[29]~feeder_combout\ = \inst19|t_0\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(29),
	combout => \inst19|t_sweep_start[29]~feeder_combout\);

-- Location: LCCOMB_X22_Y13_N0
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

-- Location: FF_X22_Y13_N1
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

-- Location: FF_X20_Y13_N5
\inst19|t_0[0]\ : dffeas
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
	q => \inst19|t_0\(0));

-- Location: LCCOMB_X23_Y13_N0
\inst19|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~0_combout\ = (\inst1|temp\(31) & ((GND) # (!\inst19|t_0\(0)))) # (!\inst1|temp\(31) & (\inst19|t_0\(0) $ (GND)))
-- \inst19|Add0~1\ = CARRY((\inst1|temp\(31)) # (!\inst19|t_0\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(31),
	datab => \inst19|t_0\(0),
	datad => VCC,
	combout => \inst19|Add0~0_combout\,
	cout => \inst19|Add0~1\);

-- Location: LCCOMB_X23_Y13_N2
\inst19|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~2_combout\ = (\inst19|t_0\(1) & ((\inst1|temp\(30) & (!\inst19|Add0~1\)) # (!\inst1|temp\(30) & ((\inst19|Add0~1\) # (GND))))) # (!\inst19|t_0\(1) & ((\inst1|temp\(30) & (\inst19|Add0~1\ & VCC)) # (!\inst1|temp\(30) & (!\inst19|Add0~1\))))
-- \inst19|Add0~3\ = CARRY((\inst19|t_0\(1) & ((!\inst19|Add0~1\) # (!\inst1|temp\(30)))) # (!\inst19|t_0\(1) & (!\inst1|temp\(30) & !\inst19|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(1),
	datab => \inst1|temp\(30),
	datad => VCC,
	cin => \inst19|Add0~1\,
	combout => \inst19|Add0~2_combout\,
	cout => \inst19|Add0~3\);

-- Location: LCCOMB_X23_Y13_N4
\inst19|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~4_combout\ = ((\inst19|t_0\(2) $ (\inst1|temp\(29) $ (\inst19|Add0~3\)))) # (GND)
-- \inst19|Add0~5\ = CARRY((\inst19|t_0\(2) & (\inst1|temp\(29) & !\inst19|Add0~3\)) # (!\inst19|t_0\(2) & ((\inst1|temp\(29)) # (!\inst19|Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(2),
	datab => \inst1|temp\(29),
	datad => VCC,
	cin => \inst19|Add0~3\,
	combout => \inst19|Add0~4_combout\,
	cout => \inst19|Add0~5\);

-- Location: LCCOMB_X21_Y13_N24
\inst19|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan1~0_combout\ = (\inst19|Add0~4_combout\) # ((\inst19|Add0~2_combout\ & \inst19|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~4_combout\,
	datac => \inst19|Add0~2_combout\,
	datad => \inst19|Add0~0_combout\,
	combout => \inst19|LessThan1~0_combout\);

-- Location: FF_X22_Y13_N7
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

-- Location: LCCOMB_X23_Y13_N6
\inst19|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~6_combout\ = (\inst19|t_0\(3) & ((\inst1|temp\(28) & (!\inst19|Add0~5\)) # (!\inst1|temp\(28) & ((\inst19|Add0~5\) # (GND))))) # (!\inst19|t_0\(3) & ((\inst1|temp\(28) & (\inst19|Add0~5\ & VCC)) # (!\inst1|temp\(28) & (!\inst19|Add0~5\))))
-- \inst19|Add0~7\ = CARRY((\inst19|t_0\(3) & ((!\inst19|Add0~5\) # (!\inst1|temp\(28)))) # (!\inst19|t_0\(3) & (!\inst1|temp\(28) & !\inst19|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(3),
	datab => \inst1|temp\(28),
	datad => VCC,
	cin => \inst19|Add0~5\,
	combout => \inst19|Add0~6_combout\,
	cout => \inst19|Add0~7\);

-- Location: LCCOMB_X23_Y13_N8
\inst19|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~8_combout\ = ((\inst19|t_0\(4) $ (\inst1|temp\(27) $ (\inst19|Add0~7\)))) # (GND)
-- \inst19|Add0~9\ = CARRY((\inst19|t_0\(4) & (\inst1|temp\(27) & !\inst19|Add0~7\)) # (!\inst19|t_0\(4) & ((\inst1|temp\(27)) # (!\inst19|Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(4),
	datab => \inst1|temp\(27),
	datad => VCC,
	cin => \inst19|Add0~7\,
	combout => \inst19|Add0~8_combout\,
	cout => \inst19|Add0~9\);

-- Location: LCCOMB_X21_Y13_N18
\inst19|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan1~1_combout\ = (\inst19|Add0~10_combout\ & (\inst19|LessThan1~0_combout\ & (\inst19|Add0~8_combout\ & \inst19|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~10_combout\,
	datab => \inst19|LessThan1~0_combout\,
	datac => \inst19|Add0~8_combout\,
	datad => \inst19|Add0~6_combout\,
	combout => \inst19|LessThan1~1_combout\);

-- Location: FF_X22_Y13_N13
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

-- Location: FF_X22_Y13_N11
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

-- Location: FF_X23_Y13_N11
\inst19|t_0[5]\ : dffeas
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
	q => \inst19|t_0\(5));

-- Location: LCCOMB_X23_Y13_N10
\inst19|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~10_combout\ = (\inst1|temp\(26) & ((\inst19|t_0\(5) & (!\inst19|Add0~9\)) # (!\inst19|t_0\(5) & (\inst19|Add0~9\ & VCC)))) # (!\inst1|temp\(26) & ((\inst19|t_0\(5) & ((\inst19|Add0~9\) # (GND))) # (!\inst19|t_0\(5) & (!\inst19|Add0~9\))))
-- \inst19|Add0~11\ = CARRY((\inst1|temp\(26) & (\inst19|t_0\(5) & !\inst19|Add0~9\)) # (!\inst1|temp\(26) & ((\inst19|t_0\(5)) # (!\inst19|Add0~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(26),
	datab => \inst19|t_0\(5),
	datad => VCC,
	cin => \inst19|Add0~9\,
	combout => \inst19|Add0~10_combout\,
	cout => \inst19|Add0~11\);

-- Location: LCCOMB_X23_Y13_N12
\inst19|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~12_combout\ = ((\inst19|t_0\(6) $ (\inst1|temp\(25) $ (\inst19|Add0~11\)))) # (GND)
-- \inst19|Add0~13\ = CARRY((\inst19|t_0\(6) & (\inst1|temp\(25) & !\inst19|Add0~11\)) # (!\inst19|t_0\(6) & ((\inst1|temp\(25)) # (!\inst19|Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(6),
	datab => \inst1|temp\(25),
	datad => VCC,
	cin => \inst19|Add0~11\,
	combout => \inst19|Add0~12_combout\,
	cout => \inst19|Add0~13\);

-- Location: LCCOMB_X21_Y13_N14
\inst19|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan0~4_combout\ = (!\inst19|Add0~14_combout\ & !\inst19|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~14_combout\,
	datad => \inst19|Add0~12_combout\,
	combout => \inst19|LessThan0~4_combout\);

-- Location: FF_X23_Y12_N19
\inst19|t_0[25]\ : dffeas
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
	q => \inst19|t_0\(25));

-- Location: FF_X20_Y12_N19
\inst19|t_0[23]\ : dffeas
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
	q => \inst19|t_0\(23));

-- Location: FF_X22_Y12_N13
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

-- Location: FF_X20_Y12_N29
\inst19|t_0[22]\ : dffeas
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
	q => \inst19|t_0\(22));

-- Location: FF_X22_Y12_N11
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

-- Location: FF_X23_Y12_N11
\inst19|t_0[21]\ : dffeas
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
	q => \inst19|t_0\(21));

-- Location: FF_X22_Y12_N7
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

-- Location: FF_X23_Y12_N3
\inst19|t_0[17]\ : dffeas
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
	q => \inst19|t_0\(17));

-- Location: FF_X23_Y12_N1
\inst19|t_0[16]\ : dffeas
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
	q => \inst19|t_0\(16));

-- Location: FF_X22_Y13_N31
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

-- Location: FF_X23_Y13_N31
\inst19|t_0[15]\ : dffeas
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
	q => \inst19|t_0\(15));

-- Location: FF_X23_Y13_N29
\inst19|t_0[14]\ : dffeas
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
	q => \inst19|t_0\(14));

-- Location: FF_X22_Y13_N27
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

-- Location: FF_X23_Y13_N27
\inst19|t_0[13]\ : dffeas
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
	q => \inst19|t_0\(13));

-- Location: FF_X23_Y13_N25
\inst19|t_0[12]\ : dffeas
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
	q => \inst19|t_0\(12));

-- Location: FF_X22_Y13_N23
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

-- Location: FF_X23_Y13_N23
\inst19|t_0[11]\ : dffeas
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
	q => \inst19|t_0\(11));

-- Location: FF_X23_Y13_N21
\inst19|t_0[10]\ : dffeas
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
	q => \inst19|t_0\(10));

-- Location: FF_X23_Y13_N19
\inst19|t_0[9]\ : dffeas
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
	q => \inst19|t_0\(9));

-- Location: LCCOMB_X23_Y13_N16
\inst19|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~16_combout\ = ((\inst19|t_0\(8) $ (\inst1|temp\(23) $ (\inst19|Add0~15\)))) # (GND)
-- \inst19|Add0~17\ = CARRY((\inst19|t_0\(8) & (\inst1|temp\(23) & !\inst19|Add0~15\)) # (!\inst19|t_0\(8) & ((\inst1|temp\(23)) # (!\inst19|Add0~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(8),
	datab => \inst1|temp\(23),
	datad => VCC,
	cin => \inst19|Add0~15\,
	combout => \inst19|Add0~16_combout\,
	cout => \inst19|Add0~17\);

-- Location: LCCOMB_X23_Y13_N18
\inst19|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~18_combout\ = (\inst1|temp\(22) & ((\inst19|t_0\(9) & (!\inst19|Add0~17\)) # (!\inst19|t_0\(9) & (\inst19|Add0~17\ & VCC)))) # (!\inst1|temp\(22) & ((\inst19|t_0\(9) & ((\inst19|Add0~17\) # (GND))) # (!\inst19|t_0\(9) & (!\inst19|Add0~17\))))
-- \inst19|Add0~19\ = CARRY((\inst1|temp\(22) & (\inst19|t_0\(9) & !\inst19|Add0~17\)) # (!\inst1|temp\(22) & ((\inst19|t_0\(9)) # (!\inst19|Add0~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(22),
	datab => \inst19|t_0\(9),
	datad => VCC,
	cin => \inst19|Add0~17\,
	combout => \inst19|Add0~18_combout\,
	cout => \inst19|Add0~19\);

-- Location: LCCOMB_X23_Y13_N22
\inst19|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~22_combout\ = (\inst1|temp\(20) & ((\inst19|t_0\(11) & (!\inst19|Add0~21\)) # (!\inst19|t_0\(11) & (\inst19|Add0~21\ & VCC)))) # (!\inst1|temp\(20) & ((\inst19|t_0\(11) & ((\inst19|Add0~21\) # (GND))) # (!\inst19|t_0\(11) & 
-- (!\inst19|Add0~21\))))
-- \inst19|Add0~23\ = CARRY((\inst1|temp\(20) & (\inst19|t_0\(11) & !\inst19|Add0~21\)) # (!\inst1|temp\(20) & ((\inst19|t_0\(11)) # (!\inst19|Add0~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(20),
	datab => \inst19|t_0\(11),
	datad => VCC,
	cin => \inst19|Add0~21\,
	combout => \inst19|Add0~22_combout\,
	cout => \inst19|Add0~23\);

-- Location: LCCOMB_X23_Y13_N24
\inst19|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~24_combout\ = ((\inst1|temp\(19) $ (\inst19|t_0\(12) $ (\inst19|Add0~23\)))) # (GND)
-- \inst19|Add0~25\ = CARRY((\inst1|temp\(19) & ((!\inst19|Add0~23\) # (!\inst19|t_0\(12)))) # (!\inst1|temp\(19) & (!\inst19|t_0\(12) & !\inst19|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(19),
	datab => \inst19|t_0\(12),
	datad => VCC,
	cin => \inst19|Add0~23\,
	combout => \inst19|Add0~24_combout\,
	cout => \inst19|Add0~25\);

-- Location: LCCOMB_X23_Y13_N26
\inst19|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~26_combout\ = (\inst1|temp\(18) & ((\inst19|t_0\(13) & (!\inst19|Add0~25\)) # (!\inst19|t_0\(13) & (\inst19|Add0~25\ & VCC)))) # (!\inst1|temp\(18) & ((\inst19|t_0\(13) & ((\inst19|Add0~25\) # (GND))) # (!\inst19|t_0\(13) & 
-- (!\inst19|Add0~25\))))
-- \inst19|Add0~27\ = CARRY((\inst1|temp\(18) & (\inst19|t_0\(13) & !\inst19|Add0~25\)) # (!\inst1|temp\(18) & ((\inst19|t_0\(13)) # (!\inst19|Add0~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(18),
	datab => \inst19|t_0\(13),
	datad => VCC,
	cin => \inst19|Add0~25\,
	combout => \inst19|Add0~26_combout\,
	cout => \inst19|Add0~27\);

-- Location: LCCOMB_X23_Y13_N28
\inst19|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~28_combout\ = ((\inst1|temp\(17) $ (\inst19|t_0\(14) $ (\inst19|Add0~27\)))) # (GND)
-- \inst19|Add0~29\ = CARRY((\inst1|temp\(17) & ((!\inst19|Add0~27\) # (!\inst19|t_0\(14)))) # (!\inst1|temp\(17) & (!\inst19|t_0\(14) & !\inst19|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(17),
	datab => \inst19|t_0\(14),
	datad => VCC,
	cin => \inst19|Add0~27\,
	combout => \inst19|Add0~28_combout\,
	cout => \inst19|Add0~29\);

-- Location: LCCOMB_X23_Y12_N8
\inst19|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~40_combout\ = ((\inst19|t_0\(20) $ (\inst1|temp\(11) $ (\inst19|Add0~39\)))) # (GND)
-- \inst19|Add0~41\ = CARRY((\inst19|t_0\(20) & (\inst1|temp\(11) & !\inst19|Add0~39\)) # (!\inst19|t_0\(20) & ((\inst1|temp\(11)) # (!\inst19|Add0~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(20),
	datab => \inst1|temp\(11),
	datad => VCC,
	cin => \inst19|Add0~39\,
	combout => \inst19|Add0~40_combout\,
	cout => \inst19|Add0~41\);

-- Location: LCCOMB_X23_Y12_N12
\inst19|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~44_combout\ = ((\inst1|temp\(9) $ (\inst19|t_0\(22) $ (\inst19|Add0~43\)))) # (GND)
-- \inst19|Add0~45\ = CARRY((\inst1|temp\(9) & ((!\inst19|Add0~43\) # (!\inst19|t_0\(22)))) # (!\inst1|temp\(9) & (!\inst19|t_0\(22) & !\inst19|Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(9),
	datab => \inst19|t_0\(22),
	datad => VCC,
	cin => \inst19|Add0~43\,
	combout => \inst19|Add0~44_combout\,
	cout => \inst19|Add0~45\);

-- Location: LCCOMB_X23_Y12_N14
\inst19|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~46_combout\ = (\inst1|temp\(8) & ((\inst19|t_0\(23) & (!\inst19|Add0~45\)) # (!\inst19|t_0\(23) & (\inst19|Add0~45\ & VCC)))) # (!\inst1|temp\(8) & ((\inst19|t_0\(23) & ((\inst19|Add0~45\) # (GND))) # (!\inst19|t_0\(23) & 
-- (!\inst19|Add0~45\))))
-- \inst19|Add0~47\ = CARRY((\inst1|temp\(8) & (\inst19|t_0\(23) & !\inst19|Add0~45\)) # (!\inst1|temp\(8) & ((\inst19|t_0\(23)) # (!\inst19|Add0~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(8),
	datab => \inst19|t_0\(23),
	datad => VCC,
	cin => \inst19|Add0~45\,
	combout => \inst19|Add0~46_combout\,
	cout => \inst19|Add0~47\);

-- Location: LCCOMB_X23_Y12_N16
\inst19|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~48_combout\ = ((\inst19|t_0\(24) $ (\inst1|temp\(7) $ (\inst19|Add0~47\)))) # (GND)
-- \inst19|Add0~49\ = CARRY((\inst19|t_0\(24) & (\inst1|temp\(7) & !\inst19|Add0~47\)) # (!\inst19|t_0\(24) & ((\inst1|temp\(7)) # (!\inst19|Add0~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(24),
	datab => \inst1|temp\(7),
	datad => VCC,
	cin => \inst19|Add0~47\,
	combout => \inst19|Add0~48_combout\,
	cout => \inst19|Add0~49\);

-- Location: LCCOMB_X23_Y12_N18
\inst19|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~50_combout\ = (\inst1|temp\(6) & ((\inst19|t_0\(25) & (!\inst19|Add0~49\)) # (!\inst19|t_0\(25) & (\inst19|Add0~49\ & VCC)))) # (!\inst1|temp\(6) & ((\inst19|t_0\(25) & ((\inst19|Add0~49\) # (GND))) # (!\inst19|t_0\(25) & 
-- (!\inst19|Add0~49\))))
-- \inst19|Add0~51\ = CARRY((\inst1|temp\(6) & (\inst19|t_0\(25) & !\inst19|Add0~49\)) # (!\inst1|temp\(6) & ((\inst19|t_0\(25)) # (!\inst19|Add0~49\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(6),
	datab => \inst19|t_0\(25),
	datad => VCC,
	cin => \inst19|Add0~49\,
	combout => \inst19|Add0~50_combout\,
	cout => \inst19|Add0~51\);

-- Location: FF_X23_Y12_N21
\inst19|t_0[26]\ : dffeas
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
	q => \inst19|t_0\(26));

-- Location: LCCOMB_X23_Y12_N20
\inst19|Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~52_combout\ = ((\inst1|temp\(5) $ (\inst19|t_0\(26) $ (\inst19|Add0~51\)))) # (GND)
-- \inst19|Add0~53\ = CARRY((\inst1|temp\(5) & ((!\inst19|Add0~51\) # (!\inst19|t_0\(26)))) # (!\inst1|temp\(5) & (!\inst19|t_0\(26) & !\inst19|Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(5),
	datab => \inst19|t_0\(26),
	datad => VCC,
	cin => \inst19|Add0~51\,
	combout => \inst19|Add0~52_combout\,
	cout => \inst19|Add0~53\);

-- Location: LCCOMB_X24_Y12_N0
\inst19|LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan2~0_combout\ = (!\inst19|Add0~50_combout\ & (!\inst19|Add0~48_combout\ & !\inst19|Add0~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~50_combout\,
	datac => \inst19|Add0~48_combout\,
	datad => \inst19|Add0~52_combout\,
	combout => \inst19|LessThan2~0_combout\);

-- Location: LCCOMB_X21_Y13_N28
\inst19|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan1~2_combout\ = ((\inst19|LessThan1~1_combout\) # ((!\inst19|LessThan2~0_combout\) # (!\inst19|LessThan0~4_combout\))) # (!\inst19|LessThan2~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan2~5_combout\,
	datab => \inst19|LessThan1~1_combout\,
	datac => \inst19|LessThan0~4_combout\,
	datad => \inst19|LessThan2~0_combout\,
	combout => \inst19|LessThan1~2_combout\);

-- Location: LCCOMB_X21_Y13_N2
\inst19|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan0~2_combout\ = (!\inst19|Add0~6_combout\ & !\inst19|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~6_combout\,
	datac => \inst19|Add0~4_combout\,
	combout => \inst19|LessThan0~2_combout\);

-- Location: LCCOMB_X21_Y13_N12
\inst19|LessThan2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan2~6_combout\ = (!\inst19|Add0~8_combout\ & (\inst19|LessThan0~2_combout\ & ((!\inst19|Add0~2_combout\) # (!\inst19|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~0_combout\,
	datab => \inst19|Add0~2_combout\,
	datac => \inst19|Add0~8_combout\,
	datad => \inst19|LessThan0~2_combout\,
	combout => \inst19|LessThan2~6_combout\);

-- Location: LCCOMB_X21_Y13_N6
\inst19|t_sweep_start[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_start[0]~1_combout\ = (!\inst19|Add0~14_combout\ & (((\inst19|LessThan2~6_combout\) # (!\inst19|Add0~10_combout\)) # (!\inst19|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~14_combout\,
	datab => \inst19|Add0~12_combout\,
	datac => \inst19|Add0~10_combout\,
	datad => \inst19|LessThan2~6_combout\,
	combout => \inst19|t_sweep_start[0]~1_combout\);

-- Location: FF_X22_Y12_N23
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

-- Location: FF_X23_Y12_N23
\inst19|t_0[27]\ : dffeas
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
	q => \inst19|t_0\(27));

-- Location: LCCOMB_X23_Y12_N22
\inst19|Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~54_combout\ = (\inst1|temp\(4) & ((\inst19|t_0\(27) & (!\inst19|Add0~53\)) # (!\inst19|t_0\(27) & (\inst19|Add0~53\ & VCC)))) # (!\inst1|temp\(4) & ((\inst19|t_0\(27) & ((\inst19|Add0~53\) # (GND))) # (!\inst19|t_0\(27) & 
-- (!\inst19|Add0~53\))))
-- \inst19|Add0~55\ = CARRY((\inst1|temp\(4) & (\inst19|t_0\(27) & !\inst19|Add0~53\)) # (!\inst1|temp\(4) & ((\inst19|t_0\(27)) # (!\inst19|Add0~53\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(4),
	datab => \inst19|t_0\(27),
	datad => VCC,
	cin => \inst19|Add0~53\,
	combout => \inst19|Add0~54_combout\,
	cout => \inst19|Add0~55\);

-- Location: LCCOMB_X23_Y12_N24
\inst19|Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~56_combout\ = ((\inst19|t_0\(28) $ (\inst1|temp\(3) $ (\inst19|Add0~55\)))) # (GND)
-- \inst19|Add0~57\ = CARRY((\inst19|t_0\(28) & (\inst1|temp\(3) & !\inst19|Add0~55\)) # (!\inst19|t_0\(28) & ((\inst1|temp\(3)) # (!\inst19|Add0~55\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(28),
	datab => \inst1|temp\(3),
	datad => VCC,
	cin => \inst19|Add0~55\,
	combout => \inst19|Add0~56_combout\,
	cout => \inst19|Add0~57\);

-- Location: LCCOMB_X20_Y13_N26
\inst19|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan0~0_combout\ = (!\inst19|Add0~58_combout\ & (!\inst19|Add0~54_combout\ & !\inst19|Add0~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~58_combout\,
	datac => \inst19|Add0~54_combout\,
	datad => \inst19|Add0~56_combout\,
	combout => \inst19|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y13_N2
\inst19|LessThan2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan2~2_combout\ = (!\inst19|Add0~30_combout\ & (!\inst19|Add0~28_combout\ & (!\inst19|Add0~26_combout\ & !\inst19|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~30_combout\,
	datab => \inst19|Add0~28_combout\,
	datac => \inst19|Add0~26_combout\,
	datad => \inst19|Add0~24_combout\,
	combout => \inst19|LessThan2~2_combout\);

-- Location: LCCOMB_X24_Y13_N6
\inst19|LessThan2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan2~4_combout\ = (!\inst19|Add0~42_combout\ & (!\inst19|Add0~46_combout\ & (!\inst19|Add0~44_combout\ & !\inst19|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~42_combout\,
	datab => \inst19|Add0~46_combout\,
	datac => \inst19|Add0~44_combout\,
	datad => \inst19|Add0~40_combout\,
	combout => \inst19|LessThan2~4_combout\);

-- Location: LCCOMB_X24_Y13_N0
\inst19|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan2~1_combout\ = (!\inst19|Add0~20_combout\ & (!\inst19|Add0~22_combout\ & (!\inst19|Add0~16_combout\ & !\inst19|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~20_combout\,
	datab => \inst19|Add0~22_combout\,
	datac => \inst19|Add0~16_combout\,
	datad => \inst19|Add0~18_combout\,
	combout => \inst19|LessThan2~1_combout\);

-- Location: LCCOMB_X24_Y13_N16
\inst19|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan2~5_combout\ = (\inst19|LessThan2~3_combout\ & (\inst19|LessThan2~2_combout\ & (\inst19|LessThan2~4_combout\ & \inst19|LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan2~3_combout\,
	datab => \inst19|LessThan2~2_combout\,
	datac => \inst19|LessThan2~4_combout\,
	datad => \inst19|LessThan2~1_combout\,
	combout => \inst19|LessThan2~5_combout\);

-- Location: LCCOMB_X21_Y13_N26
\inst19|result~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|result~0_combout\ = (!\inst19|Add0~60_combout\ & (\inst19|LessThan2~0_combout\ & (\inst19|LessThan0~0_combout\ & \inst19|LessThan2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~60_combout\,
	datab => \inst19|LessThan2~0_combout\,
	datac => \inst19|LessThan0~0_combout\,
	datad => \inst19|LessThan2~5_combout\,
	combout => \inst19|result~0_combout\);

-- Location: LCCOMB_X20_Y13_N24
\inst19|t_sweep_start[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_start[0]~2_combout\ = (\inst19|LessThan1~2_combout\ & (\inst19|t_sweep_start[0]~1_combout\ & \inst19|result~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|LessThan1~2_combout\,
	datac => \inst19|t_sweep_start[0]~1_combout\,
	datad => \inst19|result~0_combout\,
	combout => \inst19|t_sweep_start[0]~2_combout\);

-- Location: LCCOMB_X22_Y12_N30
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

-- Location: FF_X22_Y12_N31
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

-- Location: FF_X23_Y12_N31
\inst19|t_0[31]\ : dffeas
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
	q => \inst19|t_0\(31));

-- Location: LCCOMB_X23_Y12_N28
\inst19|Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~60_combout\ = ((\inst1|temp\(1) $ (\inst19|t_0\(30) $ (\inst19|Add0~59\)))) # (GND)
-- \inst19|Add0~61\ = CARRY((\inst1|temp\(1) & ((!\inst19|Add0~59\) # (!\inst19|t_0\(30)))) # (!\inst1|temp\(1) & (!\inst19|t_0\(30) & !\inst19|Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(1),
	datab => \inst19|t_0\(30),
	datad => VCC,
	cin => \inst19|Add0~59\,
	combout => \inst19|Add0~60_combout\,
	cout => \inst19|Add0~61\);

-- Location: LCCOMB_X23_Y12_N30
\inst19|Add0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~62_combout\ = \inst1|temp\(0) $ (\inst19|Add0~61\ $ (!\inst19|t_0\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(0),
	datad => \inst19|t_0\(31),
	cin => \inst19|Add0~61\,
	combout => \inst19|Add0~62_combout\);

-- Location: LCCOMB_X21_Y13_N20
\inst19|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan0~3_combout\ = (((!\inst19|Add0~2_combout\ & \inst19|LessThan0~2_combout\)) # (!\inst19|Add0~8_combout\)) # (!\inst19|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~10_combout\,
	datab => \inst19|Add0~2_combout\,
	datac => \inst19|Add0~8_combout\,
	datad => \inst19|LessThan0~2_combout\,
	combout => \inst19|LessThan0~3_combout\);

-- Location: LCCOMB_X21_Y13_N8
\inst19|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan0~1_combout\ = (\inst19|LessThan2~0_combout\ & (\inst19|LessThan0~0_combout\ & \inst19|LessThan2~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|LessThan2~0_combout\,
	datac => \inst19|LessThan0~0_combout\,
	datad => \inst19|LessThan2~5_combout\,
	combout => \inst19|LessThan0~1_combout\);

-- Location: LCCOMB_X21_Y13_N22
\inst19|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan0~5_combout\ = (!\inst19|Add0~14_combout\ & (\inst19|LessThan0~3_combout\ & (\inst19|LessThan0~1_combout\ & !\inst19|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~14_combout\,
	datab => \inst19|LessThan0~3_combout\,
	datac => \inst19|LessThan0~1_combout\,
	datad => \inst19|Add0~12_combout\,
	combout => \inst19|LessThan0~5_combout\);

-- Location: LCCOMB_X20_Y13_N20
\inst19|t_sweep_start[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_start[0]~3_combout\ = (\inst19|t_sweep_start[0]~2_combout\ & (!\inst19|Add0~62_combout\ & !\inst19|LessThan0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|t_sweep_start[0]~2_combout\,
	datac => \inst19|Add0~62_combout\,
	datad => \inst19|LessThan0~5_combout\,
	combout => \inst19|t_sweep_start[0]~3_combout\);

-- Location: FF_X23_Y15_N31
\inst19|t_sweep_start[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_start[29]~feeder_combout\,
	ena => \inst19|t_sweep_start[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(29));

-- Location: FF_X23_Y12_N25
\inst19|t_0[28]\ : dffeas
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
	q => \inst19|t_0\(28));

-- Location: FF_X23_Y15_N9
\inst19|t_sweep_start[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_0\(28),
	sload => VCC,
	ena => \inst19|t_sweep_start[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(28));

-- Location: LCCOMB_X20_Y14_N2
\inst19|t_sweep_start[25]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_start[25]~feeder_combout\ = \inst19|t_0\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(25),
	combout => \inst19|t_sweep_start[25]~feeder_combout\);

-- Location: FF_X20_Y14_N3
\inst19|t_sweep_start[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_start[25]~feeder_combout\,
	ena => \inst19|t_sweep_start[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(25));

-- Location: FF_X20_Y12_N1
\inst19|t_0[24]\ : dffeas
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
	q => \inst19|t_0\(24));

-- Location: LCCOMB_X23_Y14_N20
\inst19|t_sweep_start[22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_start[22]~feeder_combout\ = \inst19|t_0\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(22),
	combout => \inst19|t_sweep_start[22]~feeder_combout\);

-- Location: FF_X23_Y14_N21
\inst19|t_sweep_start[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_start[22]~feeder_combout\,
	ena => \inst19|t_sweep_start[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(22));

-- Location: FF_X23_Y14_N23
\inst19|t_sweep_start[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_0\(21),
	sload => VCC,
	ena => \inst19|t_sweep_start[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(21));

-- Location: FF_X23_Y12_N9
\inst19|t_0[20]\ : dffeas
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
	q => \inst19|t_0\(20));

-- Location: FF_X23_Y14_N1
\inst19|t_sweep_start[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_0\(20),
	sload => VCC,
	ena => \inst19|t_sweep_start[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(20));

-- Location: FF_X23_Y12_N7
\inst19|t_0[19]\ : dffeas
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
	q => \inst19|t_0\(19));

-- Location: FF_X23_Y12_N5
\inst19|t_0[18]\ : dffeas
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
	q => \inst19|t_0\(18));

-- Location: FF_X23_Y14_N9
\inst19|t_sweep_start[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_0\(16),
	sload => VCC,
	ena => \inst19|t_sweep_start[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(16));

-- Location: LCCOMB_X23_Y14_N28
\inst19|t_sweep_start[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_start[14]~feeder_combout\ = \inst19|t_0\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(14),
	combout => \inst19|t_sweep_start[14]~feeder_combout\);

-- Location: FF_X23_Y14_N29
\inst19|t_sweep_start[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_start[14]~feeder_combout\,
	ena => \inst19|t_sweep_start[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(14));

-- Location: LCCOMB_X23_Y15_N10
\inst19|t_sweep_start[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_start[9]~feeder_combout\ = \inst19|t_0\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(9),
	combout => \inst19|t_sweep_start[9]~feeder_combout\);

-- Location: FF_X23_Y15_N11
\inst19|t_sweep_start[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_start[9]~feeder_combout\,
	ena => \inst19|t_sweep_start[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(9));

-- Location: FF_X23_Y13_N17
\inst19|t_0[8]\ : dffeas
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
	q => \inst19|t_0\(8));

-- Location: LCCOMB_X22_Y16_N6
\inst19|t_sweep_start[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_start[8]~feeder_combout\ = \inst19|t_0\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(8),
	combout => \inst19|t_sweep_start[8]~feeder_combout\);

-- Location: FF_X22_Y16_N7
\inst19|t_sweep_start[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_start[8]~feeder_combout\,
	ena => \inst19|t_sweep_start[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(8));

-- Location: FF_X23_Y13_N15
\inst19|t_0[7]\ : dffeas
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
	q => \inst19|t_0\(7));

-- Location: FF_X23_Y15_N13
\inst19|t_sweep_start[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_0\(7),
	sload => VCC,
	ena => \inst19|t_sweep_start[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(7));

-- Location: FF_X23_Y13_N13
\inst19|t_0[6]\ : dffeas
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
	q => \inst19|t_0\(6));

-- Location: FF_X22_Y16_N19
\inst19|t_sweep_start[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_0\(5),
	sload => VCC,
	ena => \inst19|t_sweep_start[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(5));

-- Location: FF_X23_Y13_N9
\inst19|t_0[4]\ : dffeas
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
	q => \inst19|t_0\(4));

-- Location: FF_X22_Y16_N13
\inst19|t_sweep_start[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_0\(4),
	sload => VCC,
	ena => \inst19|t_sweep_start[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(4));

-- Location: FF_X23_Y13_N7
\inst19|t_0[3]\ : dffeas
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
	q => \inst19|t_0\(3));

-- Location: FF_X23_Y13_N5
\inst19|t_0[2]\ : dffeas
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
	q => \inst19|t_0\(2));

-- Location: FF_X23_Y13_N3
\inst19|t_0[1]\ : dffeas
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
	q => \inst19|t_0\(1));

-- Location: LCCOMB_X22_Y15_N2
\inst19|t_sweep_duration[0]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[0]~31_combout\ = (\inst19|t_sweep_start\(0) & (\inst19|t_0\(0) $ (VCC))) # (!\inst19|t_sweep_start\(0) & ((\inst19|t_0\(0)) # (GND)))
-- \inst19|t_sweep_duration[0]~32\ = CARRY((\inst19|t_0\(0)) # (!\inst19|t_sweep_start\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_sweep_start\(0),
	datab => \inst19|t_0\(0),
	datad => VCC,
	combout => \inst19|t_sweep_duration[0]~31_combout\,
	cout => \inst19|t_sweep_duration[0]~32\);

-- Location: LCCOMB_X22_Y15_N4
\inst19|t_sweep_duration[1]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[1]~33_combout\ = (\inst19|t_sweep_start\(1) & ((\inst19|t_0\(1) & (!\inst19|t_sweep_duration[0]~32\)) # (!\inst19|t_0\(1) & ((\inst19|t_sweep_duration[0]~32\) # (GND))))) # (!\inst19|t_sweep_start\(1) & ((\inst19|t_0\(1) & 
-- (\inst19|t_sweep_duration[0]~32\ & VCC)) # (!\inst19|t_0\(1) & (!\inst19|t_sweep_duration[0]~32\))))
-- \inst19|t_sweep_duration[1]~34\ = CARRY((\inst19|t_sweep_start\(1) & ((!\inst19|t_sweep_duration[0]~32\) # (!\inst19|t_0\(1)))) # (!\inst19|t_sweep_start\(1) & (!\inst19|t_0\(1) & !\inst19|t_sweep_duration[0]~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_sweep_start\(1),
	datab => \inst19|t_0\(1),
	datad => VCC,
	cin => \inst19|t_sweep_duration[0]~32\,
	combout => \inst19|t_sweep_duration[1]~33_combout\,
	cout => \inst19|t_sweep_duration[1]~34\);

-- Location: LCCOMB_X22_Y15_N6
\inst19|t_sweep_duration[2]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[2]~35_combout\ = ((\inst19|t_sweep_start\(2) $ (\inst19|t_0\(2) $ (\inst19|t_sweep_duration[1]~34\)))) # (GND)
-- \inst19|t_sweep_duration[2]~36\ = CARRY((\inst19|t_sweep_start\(2) & (\inst19|t_0\(2) & !\inst19|t_sweep_duration[1]~34\)) # (!\inst19|t_sweep_start\(2) & ((\inst19|t_0\(2)) # (!\inst19|t_sweep_duration[1]~34\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_sweep_start\(2),
	datab => \inst19|t_0\(2),
	datad => VCC,
	cin => \inst19|t_sweep_duration[1]~34\,
	combout => \inst19|t_sweep_duration[2]~35_combout\,
	cout => \inst19|t_sweep_duration[2]~36\);

-- Location: LCCOMB_X22_Y15_N8
\inst19|t_sweep_duration[3]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[3]~37_combout\ = (\inst19|t_sweep_start\(3) & ((\inst19|t_0\(3) & (!\inst19|t_sweep_duration[2]~36\)) # (!\inst19|t_0\(3) & ((\inst19|t_sweep_duration[2]~36\) # (GND))))) # (!\inst19|t_sweep_start\(3) & ((\inst19|t_0\(3) & 
-- (\inst19|t_sweep_duration[2]~36\ & VCC)) # (!\inst19|t_0\(3) & (!\inst19|t_sweep_duration[2]~36\))))
-- \inst19|t_sweep_duration[3]~38\ = CARRY((\inst19|t_sweep_start\(3) & ((!\inst19|t_sweep_duration[2]~36\) # (!\inst19|t_0\(3)))) # (!\inst19|t_sweep_start\(3) & (!\inst19|t_0\(3) & !\inst19|t_sweep_duration[2]~36\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_sweep_start\(3),
	datab => \inst19|t_0\(3),
	datad => VCC,
	cin => \inst19|t_sweep_duration[2]~36\,
	combout => \inst19|t_sweep_duration[3]~37_combout\,
	cout => \inst19|t_sweep_duration[3]~38\);

-- Location: LCCOMB_X22_Y15_N10
\inst19|t_sweep_duration[4]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[4]~39_combout\ = ((\inst19|t_0\(4) $ (\inst19|t_sweep_start\(4) $ (\inst19|t_sweep_duration[3]~38\)))) # (GND)
-- \inst19|t_sweep_duration[4]~40\ = CARRY((\inst19|t_0\(4) & ((!\inst19|t_sweep_duration[3]~38\) # (!\inst19|t_sweep_start\(4)))) # (!\inst19|t_0\(4) & (!\inst19|t_sweep_start\(4) & !\inst19|t_sweep_duration[3]~38\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(4),
	datab => \inst19|t_sweep_start\(4),
	datad => VCC,
	cin => \inst19|t_sweep_duration[3]~38\,
	combout => \inst19|t_sweep_duration[4]~39_combout\,
	cout => \inst19|t_sweep_duration[4]~40\);

-- Location: LCCOMB_X22_Y15_N12
\inst19|t_sweep_duration[5]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[5]~41_combout\ = (\inst19|t_0\(5) & ((\inst19|t_sweep_start\(5) & (!\inst19|t_sweep_duration[4]~40\)) # (!\inst19|t_sweep_start\(5) & (\inst19|t_sweep_duration[4]~40\ & VCC)))) # (!\inst19|t_0\(5) & ((\inst19|t_sweep_start\(5) & 
-- ((\inst19|t_sweep_duration[4]~40\) # (GND))) # (!\inst19|t_sweep_start\(5) & (!\inst19|t_sweep_duration[4]~40\))))
-- \inst19|t_sweep_duration[5]~42\ = CARRY((\inst19|t_0\(5) & (\inst19|t_sweep_start\(5) & !\inst19|t_sweep_duration[4]~40\)) # (!\inst19|t_0\(5) & ((\inst19|t_sweep_start\(5)) # (!\inst19|t_sweep_duration[4]~40\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(5),
	datab => \inst19|t_sweep_start\(5),
	datad => VCC,
	cin => \inst19|t_sweep_duration[4]~40\,
	combout => \inst19|t_sweep_duration[5]~41_combout\,
	cout => \inst19|t_sweep_duration[5]~42\);

-- Location: LCCOMB_X22_Y15_N14
\inst19|t_sweep_duration[6]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[6]~43_combout\ = ((\inst19|t_sweep_start\(6) $ (\inst19|t_0\(6) $ (\inst19|t_sweep_duration[5]~42\)))) # (GND)
-- \inst19|t_sweep_duration[6]~44\ = CARRY((\inst19|t_sweep_start\(6) & (\inst19|t_0\(6) & !\inst19|t_sweep_duration[5]~42\)) # (!\inst19|t_sweep_start\(6) & ((\inst19|t_0\(6)) # (!\inst19|t_sweep_duration[5]~42\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_sweep_start\(6),
	datab => \inst19|t_0\(6),
	datad => VCC,
	cin => \inst19|t_sweep_duration[5]~42\,
	combout => \inst19|t_sweep_duration[6]~43_combout\,
	cout => \inst19|t_sweep_duration[6]~44\);

-- Location: LCCOMB_X22_Y15_N16
\inst19|t_sweep_duration[7]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[7]~45_combout\ = (\inst19|t_0\(7) & ((\inst19|t_sweep_start\(7) & (!\inst19|t_sweep_duration[6]~44\)) # (!\inst19|t_sweep_start\(7) & (\inst19|t_sweep_duration[6]~44\ & VCC)))) # (!\inst19|t_0\(7) & ((\inst19|t_sweep_start\(7) & 
-- ((\inst19|t_sweep_duration[6]~44\) # (GND))) # (!\inst19|t_sweep_start\(7) & (!\inst19|t_sweep_duration[6]~44\))))
-- \inst19|t_sweep_duration[7]~46\ = CARRY((\inst19|t_0\(7) & (\inst19|t_sweep_start\(7) & !\inst19|t_sweep_duration[6]~44\)) # (!\inst19|t_0\(7) & ((\inst19|t_sweep_start\(7)) # (!\inst19|t_sweep_duration[6]~44\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(7),
	datab => \inst19|t_sweep_start\(7),
	datad => VCC,
	cin => \inst19|t_sweep_duration[6]~44\,
	combout => \inst19|t_sweep_duration[7]~45_combout\,
	cout => \inst19|t_sweep_duration[7]~46\);

-- Location: LCCOMB_X22_Y15_N18
\inst19|t_sweep_duration[8]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[8]~47_combout\ = ((\inst19|t_0\(8) $ (\inst19|t_sweep_start\(8) $ (\inst19|t_sweep_duration[7]~46\)))) # (GND)
-- \inst19|t_sweep_duration[8]~48\ = CARRY((\inst19|t_0\(8) & ((!\inst19|t_sweep_duration[7]~46\) # (!\inst19|t_sweep_start\(8)))) # (!\inst19|t_0\(8) & (!\inst19|t_sweep_start\(8) & !\inst19|t_sweep_duration[7]~46\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(8),
	datab => \inst19|t_sweep_start\(8),
	datad => VCC,
	cin => \inst19|t_sweep_duration[7]~46\,
	combout => \inst19|t_sweep_duration[8]~47_combout\,
	cout => \inst19|t_sweep_duration[8]~48\);

-- Location: LCCOMB_X22_Y15_N20
\inst19|t_sweep_duration[9]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[9]~49_combout\ = (\inst19|t_0\(9) & ((\inst19|t_sweep_start\(9) & (!\inst19|t_sweep_duration[8]~48\)) # (!\inst19|t_sweep_start\(9) & (\inst19|t_sweep_duration[8]~48\ & VCC)))) # (!\inst19|t_0\(9) & ((\inst19|t_sweep_start\(9) & 
-- ((\inst19|t_sweep_duration[8]~48\) # (GND))) # (!\inst19|t_sweep_start\(9) & (!\inst19|t_sweep_duration[8]~48\))))
-- \inst19|t_sweep_duration[9]~50\ = CARRY((\inst19|t_0\(9) & (\inst19|t_sweep_start\(9) & !\inst19|t_sweep_duration[8]~48\)) # (!\inst19|t_0\(9) & ((\inst19|t_sweep_start\(9)) # (!\inst19|t_sweep_duration[8]~48\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(9),
	datab => \inst19|t_sweep_start\(9),
	datad => VCC,
	cin => \inst19|t_sweep_duration[8]~48\,
	combout => \inst19|t_sweep_duration[9]~49_combout\,
	cout => \inst19|t_sweep_duration[9]~50\);

-- Location: LCCOMB_X22_Y15_N22
\inst19|t_sweep_duration[10]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[10]~51_combout\ = ((\inst19|t_sweep_start\(10) $ (\inst19|t_0\(10) $ (\inst19|t_sweep_duration[9]~50\)))) # (GND)
-- \inst19|t_sweep_duration[10]~52\ = CARRY((\inst19|t_sweep_start\(10) & (\inst19|t_0\(10) & !\inst19|t_sweep_duration[9]~50\)) # (!\inst19|t_sweep_start\(10) & ((\inst19|t_0\(10)) # (!\inst19|t_sweep_duration[9]~50\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_sweep_start\(10),
	datab => \inst19|t_0\(10),
	datad => VCC,
	cin => \inst19|t_sweep_duration[9]~50\,
	combout => \inst19|t_sweep_duration[10]~51_combout\,
	cout => \inst19|t_sweep_duration[10]~52\);

-- Location: LCCOMB_X22_Y15_N24
\inst19|t_sweep_duration[11]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[11]~53_combout\ = (\inst19|t_sweep_start\(11) & ((\inst19|t_0\(11) & (!\inst19|t_sweep_duration[10]~52\)) # (!\inst19|t_0\(11) & ((\inst19|t_sweep_duration[10]~52\) # (GND))))) # (!\inst19|t_sweep_start\(11) & ((\inst19|t_0\(11) & 
-- (\inst19|t_sweep_duration[10]~52\ & VCC)) # (!\inst19|t_0\(11) & (!\inst19|t_sweep_duration[10]~52\))))
-- \inst19|t_sweep_duration[11]~54\ = CARRY((\inst19|t_sweep_start\(11) & ((!\inst19|t_sweep_duration[10]~52\) # (!\inst19|t_0\(11)))) # (!\inst19|t_sweep_start\(11) & (!\inst19|t_0\(11) & !\inst19|t_sweep_duration[10]~52\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_sweep_start\(11),
	datab => \inst19|t_0\(11),
	datad => VCC,
	cin => \inst19|t_sweep_duration[10]~52\,
	combout => \inst19|t_sweep_duration[11]~53_combout\,
	cout => \inst19|t_sweep_duration[11]~54\);

-- Location: LCCOMB_X22_Y15_N26
\inst19|t_sweep_duration[12]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[12]~55_combout\ = ((\inst19|t_sweep_start\(12) $ (\inst19|t_0\(12) $ (\inst19|t_sweep_duration[11]~54\)))) # (GND)
-- \inst19|t_sweep_duration[12]~56\ = CARRY((\inst19|t_sweep_start\(12) & (\inst19|t_0\(12) & !\inst19|t_sweep_duration[11]~54\)) # (!\inst19|t_sweep_start\(12) & ((\inst19|t_0\(12)) # (!\inst19|t_sweep_duration[11]~54\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_sweep_start\(12),
	datab => \inst19|t_0\(12),
	datad => VCC,
	cin => \inst19|t_sweep_duration[11]~54\,
	combout => \inst19|t_sweep_duration[12]~55_combout\,
	cout => \inst19|t_sweep_duration[12]~56\);

-- Location: LCCOMB_X22_Y15_N28
\inst19|t_sweep_duration[13]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[13]~57_combout\ = (\inst19|t_sweep_start\(13) & ((\inst19|t_0\(13) & (!\inst19|t_sweep_duration[12]~56\)) # (!\inst19|t_0\(13) & ((\inst19|t_sweep_duration[12]~56\) # (GND))))) # (!\inst19|t_sweep_start\(13) & ((\inst19|t_0\(13) & 
-- (\inst19|t_sweep_duration[12]~56\ & VCC)) # (!\inst19|t_0\(13) & (!\inst19|t_sweep_duration[12]~56\))))
-- \inst19|t_sweep_duration[13]~58\ = CARRY((\inst19|t_sweep_start\(13) & ((!\inst19|t_sweep_duration[12]~56\) # (!\inst19|t_0\(13)))) # (!\inst19|t_sweep_start\(13) & (!\inst19|t_0\(13) & !\inst19|t_sweep_duration[12]~56\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_sweep_start\(13),
	datab => \inst19|t_0\(13),
	datad => VCC,
	cin => \inst19|t_sweep_duration[12]~56\,
	combout => \inst19|t_sweep_duration[13]~57_combout\,
	cout => \inst19|t_sweep_duration[13]~58\);

-- Location: LCCOMB_X22_Y15_N30
\inst19|t_sweep_duration[14]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[14]~59_combout\ = ((\inst19|t_0\(14) $ (\inst19|t_sweep_start\(14) $ (\inst19|t_sweep_duration[13]~58\)))) # (GND)
-- \inst19|t_sweep_duration[14]~60\ = CARRY((\inst19|t_0\(14) & ((!\inst19|t_sweep_duration[13]~58\) # (!\inst19|t_sweep_start\(14)))) # (!\inst19|t_0\(14) & (!\inst19|t_sweep_start\(14) & !\inst19|t_sweep_duration[13]~58\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(14),
	datab => \inst19|t_sweep_start\(14),
	datad => VCC,
	cin => \inst19|t_sweep_duration[13]~58\,
	combout => \inst19|t_sweep_duration[14]~59_combout\,
	cout => \inst19|t_sweep_duration[14]~60\);

-- Location: LCCOMB_X22_Y14_N0
\inst19|t_sweep_duration[15]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[15]~61_combout\ = (\inst19|t_sweep_start\(15) & ((\inst19|t_0\(15) & (!\inst19|t_sweep_duration[14]~60\)) # (!\inst19|t_0\(15) & ((\inst19|t_sweep_duration[14]~60\) # (GND))))) # (!\inst19|t_sweep_start\(15) & ((\inst19|t_0\(15) & 
-- (\inst19|t_sweep_duration[14]~60\ & VCC)) # (!\inst19|t_0\(15) & (!\inst19|t_sweep_duration[14]~60\))))
-- \inst19|t_sweep_duration[15]~62\ = CARRY((\inst19|t_sweep_start\(15) & ((!\inst19|t_sweep_duration[14]~60\) # (!\inst19|t_0\(15)))) # (!\inst19|t_sweep_start\(15) & (!\inst19|t_0\(15) & !\inst19|t_sweep_duration[14]~60\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_sweep_start\(15),
	datab => \inst19|t_0\(15),
	datad => VCC,
	cin => \inst19|t_sweep_duration[14]~60\,
	combout => \inst19|t_sweep_duration[15]~61_combout\,
	cout => \inst19|t_sweep_duration[15]~62\);

-- Location: LCCOMB_X22_Y14_N2
\inst19|t_sweep_duration[16]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[16]~63_combout\ = ((\inst19|t_0\(16) $ (\inst19|t_sweep_start\(16) $ (\inst19|t_sweep_duration[15]~62\)))) # (GND)
-- \inst19|t_sweep_duration[16]~64\ = CARRY((\inst19|t_0\(16) & ((!\inst19|t_sweep_duration[15]~62\) # (!\inst19|t_sweep_start\(16)))) # (!\inst19|t_0\(16) & (!\inst19|t_sweep_start\(16) & !\inst19|t_sweep_duration[15]~62\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(16),
	datab => \inst19|t_sweep_start\(16),
	datad => VCC,
	cin => \inst19|t_sweep_duration[15]~62\,
	combout => \inst19|t_sweep_duration[16]~63_combout\,
	cout => \inst19|t_sweep_duration[16]~64\);

-- Location: LCCOMB_X22_Y14_N4
\inst19|t_sweep_duration[17]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[17]~65_combout\ = (\inst19|t_sweep_start\(17) & ((\inst19|t_0\(17) & (!\inst19|t_sweep_duration[16]~64\)) # (!\inst19|t_0\(17) & ((\inst19|t_sweep_duration[16]~64\) # (GND))))) # (!\inst19|t_sweep_start\(17) & ((\inst19|t_0\(17) & 
-- (\inst19|t_sweep_duration[16]~64\ & VCC)) # (!\inst19|t_0\(17) & (!\inst19|t_sweep_duration[16]~64\))))
-- \inst19|t_sweep_duration[17]~66\ = CARRY((\inst19|t_sweep_start\(17) & ((!\inst19|t_sweep_duration[16]~64\) # (!\inst19|t_0\(17)))) # (!\inst19|t_sweep_start\(17) & (!\inst19|t_0\(17) & !\inst19|t_sweep_duration[16]~64\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_sweep_start\(17),
	datab => \inst19|t_0\(17),
	datad => VCC,
	cin => \inst19|t_sweep_duration[16]~64\,
	combout => \inst19|t_sweep_duration[17]~65_combout\,
	cout => \inst19|t_sweep_duration[17]~66\);

-- Location: LCCOMB_X22_Y14_N6
\inst19|t_sweep_duration[18]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[18]~67_combout\ = ((\inst19|t_sweep_start\(18) $ (\inst19|t_0\(18) $ (\inst19|t_sweep_duration[17]~66\)))) # (GND)
-- \inst19|t_sweep_duration[18]~68\ = CARRY((\inst19|t_sweep_start\(18) & (\inst19|t_0\(18) & !\inst19|t_sweep_duration[17]~66\)) # (!\inst19|t_sweep_start\(18) & ((\inst19|t_0\(18)) # (!\inst19|t_sweep_duration[17]~66\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_sweep_start\(18),
	datab => \inst19|t_0\(18),
	datad => VCC,
	cin => \inst19|t_sweep_duration[17]~66\,
	combout => \inst19|t_sweep_duration[18]~67_combout\,
	cout => \inst19|t_sweep_duration[18]~68\);

-- Location: LCCOMB_X22_Y14_N8
\inst19|t_sweep_duration[19]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[19]~69_combout\ = (\inst19|t_sweep_start\(19) & ((\inst19|t_0\(19) & (!\inst19|t_sweep_duration[18]~68\)) # (!\inst19|t_0\(19) & ((\inst19|t_sweep_duration[18]~68\) # (GND))))) # (!\inst19|t_sweep_start\(19) & ((\inst19|t_0\(19) & 
-- (\inst19|t_sweep_duration[18]~68\ & VCC)) # (!\inst19|t_0\(19) & (!\inst19|t_sweep_duration[18]~68\))))
-- \inst19|t_sweep_duration[19]~70\ = CARRY((\inst19|t_sweep_start\(19) & ((!\inst19|t_sweep_duration[18]~68\) # (!\inst19|t_0\(19)))) # (!\inst19|t_sweep_start\(19) & (!\inst19|t_0\(19) & !\inst19|t_sweep_duration[18]~68\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_sweep_start\(19),
	datab => \inst19|t_0\(19),
	datad => VCC,
	cin => \inst19|t_sweep_duration[18]~68\,
	combout => \inst19|t_sweep_duration[19]~69_combout\,
	cout => \inst19|t_sweep_duration[19]~70\);

-- Location: LCCOMB_X22_Y14_N10
\inst19|t_sweep_duration[20]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[20]~71_combout\ = ((\inst19|t_0\(20) $ (\inst19|t_sweep_start\(20) $ (\inst19|t_sweep_duration[19]~70\)))) # (GND)
-- \inst19|t_sweep_duration[20]~72\ = CARRY((\inst19|t_0\(20) & ((!\inst19|t_sweep_duration[19]~70\) # (!\inst19|t_sweep_start\(20)))) # (!\inst19|t_0\(20) & (!\inst19|t_sweep_start\(20) & !\inst19|t_sweep_duration[19]~70\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(20),
	datab => \inst19|t_sweep_start\(20),
	datad => VCC,
	cin => \inst19|t_sweep_duration[19]~70\,
	combout => \inst19|t_sweep_duration[20]~71_combout\,
	cout => \inst19|t_sweep_duration[20]~72\);

-- Location: LCCOMB_X22_Y14_N12
\inst19|t_sweep_duration[21]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[21]~73_combout\ = (\inst19|t_0\(21) & ((\inst19|t_sweep_start\(21) & (!\inst19|t_sweep_duration[20]~72\)) # (!\inst19|t_sweep_start\(21) & (\inst19|t_sweep_duration[20]~72\ & VCC)))) # (!\inst19|t_0\(21) & 
-- ((\inst19|t_sweep_start\(21) & ((\inst19|t_sweep_duration[20]~72\) # (GND))) # (!\inst19|t_sweep_start\(21) & (!\inst19|t_sweep_duration[20]~72\))))
-- \inst19|t_sweep_duration[21]~74\ = CARRY((\inst19|t_0\(21) & (\inst19|t_sweep_start\(21) & !\inst19|t_sweep_duration[20]~72\)) # (!\inst19|t_0\(21) & ((\inst19|t_sweep_start\(21)) # (!\inst19|t_sweep_duration[20]~72\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(21),
	datab => \inst19|t_sweep_start\(21),
	datad => VCC,
	cin => \inst19|t_sweep_duration[20]~72\,
	combout => \inst19|t_sweep_duration[21]~73_combout\,
	cout => \inst19|t_sweep_duration[21]~74\);

-- Location: LCCOMB_X22_Y14_N14
\inst19|t_sweep_duration[22]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[22]~75_combout\ = ((\inst19|t_0\(22) $ (\inst19|t_sweep_start\(22) $ (\inst19|t_sweep_duration[21]~74\)))) # (GND)
-- \inst19|t_sweep_duration[22]~76\ = CARRY((\inst19|t_0\(22) & ((!\inst19|t_sweep_duration[21]~74\) # (!\inst19|t_sweep_start\(22)))) # (!\inst19|t_0\(22) & (!\inst19|t_sweep_start\(22) & !\inst19|t_sweep_duration[21]~74\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(22),
	datab => \inst19|t_sweep_start\(22),
	datad => VCC,
	cin => \inst19|t_sweep_duration[21]~74\,
	combout => \inst19|t_sweep_duration[22]~75_combout\,
	cout => \inst19|t_sweep_duration[22]~76\);

-- Location: LCCOMB_X22_Y14_N16
\inst19|t_sweep_duration[23]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[23]~77_combout\ = (\inst19|t_sweep_start\(23) & ((\inst19|t_0\(23) & (!\inst19|t_sweep_duration[22]~76\)) # (!\inst19|t_0\(23) & ((\inst19|t_sweep_duration[22]~76\) # (GND))))) # (!\inst19|t_sweep_start\(23) & ((\inst19|t_0\(23) & 
-- (\inst19|t_sweep_duration[22]~76\ & VCC)) # (!\inst19|t_0\(23) & (!\inst19|t_sweep_duration[22]~76\))))
-- \inst19|t_sweep_duration[23]~78\ = CARRY((\inst19|t_sweep_start\(23) & ((!\inst19|t_sweep_duration[22]~76\) # (!\inst19|t_0\(23)))) # (!\inst19|t_sweep_start\(23) & (!\inst19|t_0\(23) & !\inst19|t_sweep_duration[22]~76\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_sweep_start\(23),
	datab => \inst19|t_0\(23),
	datad => VCC,
	cin => \inst19|t_sweep_duration[22]~76\,
	combout => \inst19|t_sweep_duration[23]~77_combout\,
	cout => \inst19|t_sweep_duration[23]~78\);

-- Location: LCCOMB_X22_Y14_N18
\inst19|t_sweep_duration[24]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[24]~79_combout\ = ((\inst19|t_sweep_start\(24) $ (\inst19|t_0\(24) $ (\inst19|t_sweep_duration[23]~78\)))) # (GND)
-- \inst19|t_sweep_duration[24]~80\ = CARRY((\inst19|t_sweep_start\(24) & (\inst19|t_0\(24) & !\inst19|t_sweep_duration[23]~78\)) # (!\inst19|t_sweep_start\(24) & ((\inst19|t_0\(24)) # (!\inst19|t_sweep_duration[23]~78\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_sweep_start\(24),
	datab => \inst19|t_0\(24),
	datad => VCC,
	cin => \inst19|t_sweep_duration[23]~78\,
	combout => \inst19|t_sweep_duration[24]~79_combout\,
	cout => \inst19|t_sweep_duration[24]~80\);

-- Location: LCCOMB_X22_Y14_N20
\inst19|t_sweep_duration[25]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[25]~81_combout\ = (\inst19|t_0\(25) & ((\inst19|t_sweep_start\(25) & (!\inst19|t_sweep_duration[24]~80\)) # (!\inst19|t_sweep_start\(25) & (\inst19|t_sweep_duration[24]~80\ & VCC)))) # (!\inst19|t_0\(25) & 
-- ((\inst19|t_sweep_start\(25) & ((\inst19|t_sweep_duration[24]~80\) # (GND))) # (!\inst19|t_sweep_start\(25) & (!\inst19|t_sweep_duration[24]~80\))))
-- \inst19|t_sweep_duration[25]~82\ = CARRY((\inst19|t_0\(25) & (\inst19|t_sweep_start\(25) & !\inst19|t_sweep_duration[24]~80\)) # (!\inst19|t_0\(25) & ((\inst19|t_sweep_start\(25)) # (!\inst19|t_sweep_duration[24]~80\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(25),
	datab => \inst19|t_sweep_start\(25),
	datad => VCC,
	cin => \inst19|t_sweep_duration[24]~80\,
	combout => \inst19|t_sweep_duration[25]~81_combout\,
	cout => \inst19|t_sweep_duration[25]~82\);

-- Location: LCCOMB_X22_Y14_N22
\inst19|t_sweep_duration[26]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[26]~83_combout\ = ((\inst19|t_sweep_start\(26) $ (\inst19|t_0\(26) $ (\inst19|t_sweep_duration[25]~82\)))) # (GND)
-- \inst19|t_sweep_duration[26]~84\ = CARRY((\inst19|t_sweep_start\(26) & (\inst19|t_0\(26) & !\inst19|t_sweep_duration[25]~82\)) # (!\inst19|t_sweep_start\(26) & ((\inst19|t_0\(26)) # (!\inst19|t_sweep_duration[25]~82\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_sweep_start\(26),
	datab => \inst19|t_0\(26),
	datad => VCC,
	cin => \inst19|t_sweep_duration[25]~82\,
	combout => \inst19|t_sweep_duration[26]~83_combout\,
	cout => \inst19|t_sweep_duration[26]~84\);

-- Location: LCCOMB_X22_Y14_N24
\inst19|t_sweep_duration[27]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[27]~85_combout\ = (\inst19|t_sweep_start\(27) & ((\inst19|t_0\(27) & (!\inst19|t_sweep_duration[26]~84\)) # (!\inst19|t_0\(27) & ((\inst19|t_sweep_duration[26]~84\) # (GND))))) # (!\inst19|t_sweep_start\(27) & ((\inst19|t_0\(27) & 
-- (\inst19|t_sweep_duration[26]~84\ & VCC)) # (!\inst19|t_0\(27) & (!\inst19|t_sweep_duration[26]~84\))))
-- \inst19|t_sweep_duration[27]~86\ = CARRY((\inst19|t_sweep_start\(27) & ((!\inst19|t_sweep_duration[26]~84\) # (!\inst19|t_0\(27)))) # (!\inst19|t_sweep_start\(27) & (!\inst19|t_0\(27) & !\inst19|t_sweep_duration[26]~84\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_sweep_start\(27),
	datab => \inst19|t_0\(27),
	datad => VCC,
	cin => \inst19|t_sweep_duration[26]~84\,
	combout => \inst19|t_sweep_duration[27]~85_combout\,
	cout => \inst19|t_sweep_duration[27]~86\);

-- Location: LCCOMB_X22_Y14_N26
\inst19|t_sweep_duration[28]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[28]~87_combout\ = ((\inst19|t_0\(28) $ (\inst19|t_sweep_start\(28) $ (\inst19|t_sweep_duration[27]~86\)))) # (GND)
-- \inst19|t_sweep_duration[28]~88\ = CARRY((\inst19|t_0\(28) & ((!\inst19|t_sweep_duration[27]~86\) # (!\inst19|t_sweep_start\(28)))) # (!\inst19|t_0\(28) & (!\inst19|t_sweep_start\(28) & !\inst19|t_sweep_duration[27]~86\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(28),
	datab => \inst19|t_sweep_start\(28),
	datad => VCC,
	cin => \inst19|t_sweep_duration[27]~86\,
	combout => \inst19|t_sweep_duration[28]~87_combout\,
	cout => \inst19|t_sweep_duration[28]~88\);

-- Location: LCCOMB_X22_Y14_N28
\inst19|t_sweep_duration[29]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[29]~89_combout\ = (\inst19|t_0\(29) & ((\inst19|t_sweep_start\(29) & (!\inst19|t_sweep_duration[28]~88\)) # (!\inst19|t_sweep_start\(29) & (\inst19|t_sweep_duration[28]~88\ & VCC)))) # (!\inst19|t_0\(29) & 
-- ((\inst19|t_sweep_start\(29) & ((\inst19|t_sweep_duration[28]~88\) # (GND))) # (!\inst19|t_sweep_start\(29) & (!\inst19|t_sweep_duration[28]~88\))))
-- \inst19|t_sweep_duration[29]~90\ = CARRY((\inst19|t_0\(29) & (\inst19|t_sweep_start\(29) & !\inst19|t_sweep_duration[28]~88\)) # (!\inst19|t_0\(29) & ((\inst19|t_sweep_start\(29)) # (!\inst19|t_sweep_duration[28]~88\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(29),
	datab => \inst19|t_sweep_start\(29),
	datad => VCC,
	cin => \inst19|t_sweep_duration[28]~88\,
	combout => \inst19|t_sweep_duration[29]~89_combout\,
	cout => \inst19|t_sweep_duration[29]~90\);

-- Location: LCCOMB_X22_Y14_N30
\inst19|t_sweep_duration[30]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[30]~91_combout\ = \inst19|t_sweep_start\(30) $ (\inst19|t_0\(30) $ (\inst19|t_sweep_duration[29]~90\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_sweep_start\(30),
	datab => \inst19|t_0\(30),
	cin => \inst19|t_sweep_duration[29]~90\,
	combout => \inst19|t_sweep_duration[30]~91_combout\);

-- Location: LCCOMB_X20_Y13_N30
\inst19|LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan0~6_combout\ = (\inst19|Add0~62_combout\) # ((!\inst19|Add0~60_combout\ & \inst19|LessThan0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~60_combout\,
	datab => \inst19|Add0~62_combout\,
	datad => \inst19|LessThan0~5_combout\,
	combout => \inst19|LessThan0~6_combout\);

-- Location: FF_X22_Y14_N31
\inst19|t_sweep_duration[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[30]~91_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(30));

-- Location: LCCOMB_X19_Y13_N30
\inst19|sweep_duration[30]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|sweep_duration[30]~feeder_combout\ = \inst19|t_sweep_duration\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_sweep_duration\(30),
	combout => \inst19|sweep_duration[30]~feeder_combout\);

-- Location: FF_X19_Y13_N31
\inst19|sweep_duration[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|sweep_duration[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|sweep_duration\(30));

-- Location: LCCOMB_X12_Y15_N28
\inst8|fifo_proc_Memory_rtl_0_bypass[47]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc_Memory_rtl_0_bypass[47]~feeder_combout\ = \inst19|sweep_duration\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|sweep_duration\(30),
	combout => \inst8|fifo_proc_Memory_rtl_0_bypass[47]~feeder_combout\);

-- Location: FF_X12_Y15_N29
\inst8|fifo_proc_Memory_rtl_0_bypass[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc_Memory_rtl_0_bypass[47]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(47));

-- Location: LCCOMB_X12_Y17_N8
\inst8|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Add1~0_combout\ = (\inst8|Memory~44_combout\ & (\inst8|fifo_proc:Head[0]~q\ $ (VCC))) # (!\inst8|Memory~44_combout\ & (\inst8|fifo_proc:Head[0]~q\ & VCC))
-- \inst8|Add1~1\ = CARRY((\inst8|Memory~44_combout\ & \inst8|fifo_proc:Head[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Memory~44_combout\,
	datab => \inst8|fifo_proc:Head[0]~q\,
	datad => VCC,
	combout => \inst8|Add1~0_combout\,
	cout => \inst8|Add1~1\);

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

-- Location: LCCOMB_X11_Y17_N26
\inst8|Head~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Head~0_combout\ = (\inst8|Add1~0_combout\ & \button1_reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|Add1~0_combout\,
	datad => \button1_reset~input_o\,
	combout => \inst8|Head~0_combout\);

-- Location: FF_X11_Y17_N27
\inst8|fifo_proc:Head[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|Head~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc:Head[0]~q\);

-- Location: LCCOMB_X11_Y17_N30
\inst8|fifo_proc_Memory_rtl_0_bypass[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc_Memory_rtl_0_bypass[1]~feeder_combout\ = \inst8|fifo_proc:Head[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|fifo_proc:Head[0]~q\,
	combout => \inst8|fifo_proc_Memory_rtl_0_bypass[1]~feeder_combout\);

-- Location: FF_X11_Y17_N31
\inst8|fifo_proc_Memory_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc_Memory_rtl_0_bypass[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(1));

-- Location: FF_X15_Y17_N3
\inst8|fifo_proc:Tail[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|Tail~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc:Tail[1]~q\);

-- Location: LCCOMB_X15_Y17_N4
\inst8|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Add0~0_combout\ = (\inst8|DataOut[30]~0_combout\ & (\inst8|fifo_proc:Tail[0]~q\ $ (VCC))) # (!\inst8|DataOut[30]~0_combout\ & (\inst8|fifo_proc:Tail[0]~q\ & VCC))
-- \inst8|Add0~1\ = CARRY((\inst8|DataOut[30]~0_combout\ & \inst8|fifo_proc:Tail[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|DataOut[30]~0_combout\,
	datab => \inst8|fifo_proc:Tail[0]~q\,
	datad => VCC,
	combout => \inst8|Add0~0_combout\,
	cout => \inst8|Add0~1\);

-- Location: LCCOMB_X11_Y17_N2
\inst8|Tail~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Tail~0_combout\ = (\inst8|Add0~0_combout\ & \button1_reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|Add0~0_combout\,
	datad => \button1_reset~input_o\,
	combout => \inst8|Tail~0_combout\);

-- Location: FF_X15_Y17_N25
\inst8|fifo_proc:Tail[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst8|Tail~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc:Tail[0]~q\);

-- Location: LCCOMB_X15_Y17_N6
\inst8|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Add0~2_combout\ = (\inst8|fifo_proc:Tail[1]~q\ & (!\inst8|Add0~1\)) # (!\inst8|fifo_proc:Tail[1]~q\ & ((\inst8|Add0~1\) # (GND)))
-- \inst8|Add0~3\ = CARRY((!\inst8|Add0~1\) # (!\inst8|fifo_proc:Tail[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|fifo_proc:Tail[1]~q\,
	datad => VCC,
	cin => \inst8|Add0~1\,
	combout => \inst8|Add0~2_combout\,
	cout => \inst8|Add0~3\);

-- Location: LCCOMB_X15_Y17_N2
\inst8|Tail~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Tail~1_combout\ = (\button1_reset~input_o\ & \inst8|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button1_reset~input_o\,
	datad => \inst8|Add0~2_combout\,
	combout => \inst8|Tail~1_combout\);

-- Location: FF_X14_Y16_N19
\inst8|fifo_proc_Memory_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst8|Tail~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(4));

-- Location: LCCOMB_X12_Y17_N10
\inst8|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Add1~2_combout\ = (\inst8|fifo_proc:Head[1]~q\ & (!\inst8|Add1~1\)) # (!\inst8|fifo_proc:Head[1]~q\ & ((\inst8|Add1~1\) # (GND)))
-- \inst8|Add1~3\ = CARRY((!\inst8|Add1~1\) # (!\inst8|fifo_proc:Head[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|fifo_proc:Head[1]~q\,
	datad => VCC,
	cin => \inst8|Add1~1\,
	combout => \inst8|Add1~2_combout\,
	cout => \inst8|Add1~3\);

-- Location: LCCOMB_X12_Y17_N24
\inst8|Head~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Head~1_combout\ = (\button1_reset~input_o\ & \inst8|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button1_reset~input_o\,
	datad => \inst8|Add1~2_combout\,
	combout => \inst8|Head~1_combout\);

-- Location: FF_X12_Y17_N25
\inst8|fifo_proc:Head[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|Head~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc:Head[1]~q\);

-- Location: FF_X14_Y16_N25
\inst8|fifo_proc_Memory_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst8|fifo_proc:Head[1]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(3));

-- Location: LCCOMB_X14_Y16_N18
\inst8|fifo_proc:Memory~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc:Memory~0_combout\ = (\inst8|fifo_proc_Memory_rtl_0_bypass\(2) & (\inst8|fifo_proc_Memory_rtl_0_bypass\(1) & (\inst8|fifo_proc_Memory_rtl_0_bypass\(4) $ (!\inst8|fifo_proc_Memory_rtl_0_bypass\(3))))) # 
-- (!\inst8|fifo_proc_Memory_rtl_0_bypass\(2) & (!\inst8|fifo_proc_Memory_rtl_0_bypass\(1) & (\inst8|fifo_proc_Memory_rtl_0_bypass\(4) $ (!\inst8|fifo_proc_Memory_rtl_0_bypass\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc_Memory_rtl_0_bypass\(2),
	datab => \inst8|fifo_proc_Memory_rtl_0_bypass\(1),
	datac => \inst8|fifo_proc_Memory_rtl_0_bypass\(4),
	datad => \inst8|fifo_proc_Memory_rtl_0_bypass\(3),
	combout => \inst8|fifo_proc:Memory~0_combout\);

-- Location: LCCOMB_X12_Y17_N12
\inst8|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Add1~4_combout\ = (\inst8|fifo_proc:Head[2]~q\ & (\inst8|Add1~3\ $ (GND))) # (!\inst8|fifo_proc:Head[2]~q\ & (!\inst8|Add1~3\ & VCC))
-- \inst8|Add1~5\ = CARRY((\inst8|fifo_proc:Head[2]~q\ & !\inst8|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Head[2]~q\,
	datad => VCC,
	cin => \inst8|Add1~3\,
	combout => \inst8|Add1~4_combout\,
	cout => \inst8|Add1~5\);

-- Location: LCCOMB_X12_Y17_N14
\inst8|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Add1~6_combout\ = (\inst8|fifo_proc:Head[3]~q\ & (!\inst8|Add1~5\)) # (!\inst8|fifo_proc:Head[3]~q\ & ((\inst8|Add1~5\) # (GND)))
-- \inst8|Add1~7\ = CARRY((!\inst8|Add1~5\) # (!\inst8|fifo_proc:Head[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Head[3]~q\,
	datad => VCC,
	cin => \inst8|Add1~5\,
	combout => \inst8|Add1~6_combout\,
	cout => \inst8|Add1~7\);

-- Location: LCCOMB_X12_Y17_N16
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

-- Location: LCCOMB_X11_Y17_N20
\inst8|Head~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Head~4_combout\ = (\button1_reset~input_o\ & \inst8|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button1_reset~input_o\,
	datad => \inst8|Add1~8_combout\,
	combout => \inst8|Head~4_combout\);

-- Location: FF_X11_Y17_N21
\inst8|fifo_proc:Head[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|Head~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc:Head[4]~q\);

-- Location: LCCOMB_X12_Y17_N18
\inst8|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Add1~10_combout\ = (\inst8|fifo_proc:Head[5]~q\ & (!\inst8|Add1~9\)) # (!\inst8|fifo_proc:Head[5]~q\ & ((\inst8|Add1~9\) # (GND)))
-- \inst8|Add1~11\ = CARRY((!\inst8|Add1~9\) # (!\inst8|fifo_proc:Head[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|fifo_proc:Head[5]~q\,
	datad => VCC,
	cin => \inst8|Add1~9\,
	combout => \inst8|Add1~10_combout\,
	cout => \inst8|Add1~11\);

-- Location: LCCOMB_X11_Y17_N6
\inst8|Head~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Head~5_combout\ = (\button1_reset~input_o\ & \inst8|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button1_reset~input_o\,
	datad => \inst8|Add1~10_combout\,
	combout => \inst8|Head~5_combout\);

-- Location: FF_X11_Y17_N7
\inst8|fifo_proc:Head[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|Head~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc:Head[5]~q\);

-- Location: LCCOMB_X12_Y17_N20
\inst8|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Add1~12_combout\ = (\inst8|fifo_proc:Head[6]~q\ & (\inst8|Add1~11\ $ (GND))) # (!\inst8|fifo_proc:Head[6]~q\ & (!\inst8|Add1~11\ & VCC))
-- \inst8|Add1~13\ = CARRY((\inst8|fifo_proc:Head[6]~q\ & !\inst8|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|fifo_proc:Head[6]~q\,
	datad => VCC,
	cin => \inst8|Add1~11\,
	combout => \inst8|Add1~12_combout\,
	cout => \inst8|Add1~13\);

-- Location: LCCOMB_X12_Y17_N0
\inst8|Head~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Head~6_combout\ = (\button1_reset~input_o\ & \inst8|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button1_reset~input_o\,
	datad => \inst8|Add1~12_combout\,
	combout => \inst8|Head~6_combout\);

-- Location: FF_X12_Y17_N1
\inst8|fifo_proc:Head[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|Head~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc:Head[6]~q\);

-- Location: FF_X14_Y16_N17
\inst8|fifo_proc_Memory_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst8|fifo_proc:Head[6]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(13));

-- Location: FF_X14_Y17_N5
\inst8|fifo_proc:Tail[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|Tail~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc:Tail[6]~q\);

-- Location: LCCOMB_X15_Y17_N8
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

-- Location: LCCOMB_X15_Y17_N10
\inst8|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Add0~6_combout\ = (\inst8|fifo_proc:Tail[3]~q\ & (!\inst8|Add0~5\)) # (!\inst8|fifo_proc:Tail[3]~q\ & ((\inst8|Add0~5\) # (GND)))
-- \inst8|Add0~7\ = CARRY((!\inst8|Add0~5\) # (!\inst8|fifo_proc:Tail[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|fifo_proc:Tail[3]~q\,
	datad => VCC,
	cin => \inst8|Add0~5\,
	combout => \inst8|Add0~6_combout\,
	cout => \inst8|Add0~7\);

-- Location: LCCOMB_X14_Y17_N30
\inst8|Tail~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Tail~3_combout\ = (\button1_reset~input_o\ & \inst8|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button1_reset~input_o\,
	datad => \inst8|Add0~6_combout\,
	combout => \inst8|Tail~3_combout\);

-- Location: FF_X14_Y17_N31
\inst8|fifo_proc:Tail[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|Tail~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc:Tail[3]~q\);

-- Location: LCCOMB_X15_Y17_N12
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

-- Location: LCCOMB_X15_Y17_N14
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

-- Location: LCCOMB_X15_Y17_N16
\inst8|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Add0~12_combout\ = (\inst8|fifo_proc:Tail[6]~q\ & (\inst8|Add0~11\ $ (GND))) # (!\inst8|fifo_proc:Tail[6]~q\ & (!\inst8|Add0~11\ & VCC))
-- \inst8|Add0~13\ = CARRY((\inst8|fifo_proc:Tail[6]~q\ & !\inst8|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|fifo_proc:Tail[6]~q\,
	datad => VCC,
	cin => \inst8|Add0~11\,
	combout => \inst8|Add0~12_combout\,
	cout => \inst8|Add0~13\);

-- Location: LCCOMB_X14_Y17_N4
\inst8|Tail~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Tail~6_combout\ = (\button1_reset~input_o\ & \inst8|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button1_reset~input_o\,
	datad => \inst8|Add0~12_combout\,
	combout => \inst8|Tail~6_combout\);

-- Location: FF_X14_Y16_N23
\inst8|fifo_proc_Memory_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst8|Tail~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(14));

-- Location: FF_X14_Y17_N25
\inst8|fifo_proc:Tail[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|Tail~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc:Tail[7]~q\);

-- Location: LCCOMB_X15_Y17_N18
\inst8|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Add0~14_combout\ = \inst8|Add0~13\ $ (\inst8|fifo_proc:Tail[7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst8|fifo_proc:Tail[7]~q\,
	cin => \inst8|Add0~13\,
	combout => \inst8|Add0~14_combout\);

-- Location: LCCOMB_X14_Y17_N24
\inst8|Tail~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Tail~7_combout\ = (\button1_reset~input_o\ & \inst8|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button1_reset~input_o\,
	datad => \inst8|Add0~14_combout\,
	combout => \inst8|Tail~7_combout\);

-- Location: LCCOMB_X14_Y16_N20
\inst8|fifo_proc_Memory_rtl_0_bypass[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc_Memory_rtl_0_bypass[16]~feeder_combout\ = \inst8|Tail~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|Tail~7_combout\,
	combout => \inst8|fifo_proc_Memory_rtl_0_bypass[16]~feeder_combout\);

-- Location: FF_X14_Y16_N21
\inst8|fifo_proc_Memory_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc_Memory_rtl_0_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(16));

-- Location: LCCOMB_X14_Y16_N22
\inst8|fifo_proc:Memory~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc:Memory~3_combout\ = (\inst8|fifo_proc_Memory_rtl_0_bypass\(15) & (\inst8|fifo_proc_Memory_rtl_0_bypass\(16) & (\inst8|fifo_proc_Memory_rtl_0_bypass\(13) $ (!\inst8|fifo_proc_Memory_rtl_0_bypass\(14))))) # 
-- (!\inst8|fifo_proc_Memory_rtl_0_bypass\(15) & (!\inst8|fifo_proc_Memory_rtl_0_bypass\(16) & (\inst8|fifo_proc_Memory_rtl_0_bypass\(13) $ (!\inst8|fifo_proc_Memory_rtl_0_bypass\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc_Memory_rtl_0_bypass\(15),
	datab => \inst8|fifo_proc_Memory_rtl_0_bypass\(13),
	datac => \inst8|fifo_proc_Memory_rtl_0_bypass\(14),
	datad => \inst8|fifo_proc_Memory_rtl_0_bypass\(16),
	combout => \inst8|fifo_proc:Memory~3_combout\);

-- Location: LCCOMB_X12_Y17_N30
\inst8|Head~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Head~2_combout\ = (\button1_reset~input_o\ & \inst8|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button1_reset~input_o\,
	datad => \inst8|Add1~4_combout\,
	combout => \inst8|Head~2_combout\);

-- Location: FF_X12_Y17_N31
\inst8|fifo_proc:Head[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|Head~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc:Head[2]~q\);

-- Location: LCCOMB_X14_Y16_N28
\inst8|fifo_proc_Memory_rtl_0_bypass[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc_Memory_rtl_0_bypass[5]~feeder_combout\ = \inst8|fifo_proc:Head[2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|fifo_proc:Head[2]~q\,
	combout => \inst8|fifo_proc_Memory_rtl_0_bypass[5]~feeder_combout\);

-- Location: FF_X14_Y16_N29
\inst8|fifo_proc_Memory_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc_Memory_rtl_0_bypass[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(5));

-- Location: FF_X14_Y16_N1
\inst8|fifo_proc_Memory_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst8|Tail~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(8));

-- Location: LCCOMB_X14_Y17_N26
\inst8|Tail~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Tail~2_combout\ = (\button1_reset~input_o\ & \inst8|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button1_reset~input_o\,
	datac => \inst8|Add0~4_combout\,
	combout => \inst8|Tail~2_combout\);

-- Location: FF_X14_Y16_N3
\inst8|fifo_proc_Memory_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst8|Tail~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc_Memory_rtl_0_bypass\(6));

-- Location: LCCOMB_X14_Y16_N0
\inst8|fifo_proc:Memory~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc:Memory~1_combout\ = (\inst8|fifo_proc_Memory_rtl_0_bypass\(7) & (\inst8|fifo_proc_Memory_rtl_0_bypass\(8) & (\inst8|fifo_proc_Memory_rtl_0_bypass\(5) $ (!\inst8|fifo_proc_Memory_rtl_0_bypass\(6))))) # 
-- (!\inst8|fifo_proc_Memory_rtl_0_bypass\(7) & (!\inst8|fifo_proc_Memory_rtl_0_bypass\(8) & (\inst8|fifo_proc_Memory_rtl_0_bypass\(5) $ (!\inst8|fifo_proc_Memory_rtl_0_bypass\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc_Memory_rtl_0_bypass\(7),
	datab => \inst8|fifo_proc_Memory_rtl_0_bypass\(5),
	datac => \inst8|fifo_proc_Memory_rtl_0_bypass\(8),
	datad => \inst8|fifo_proc_Memory_rtl_0_bypass\(6),
	combout => \inst8|fifo_proc:Memory~1_combout\);

-- Location: LCCOMB_X14_Y16_N8
\inst8|fifo_proc:Memory~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc:Memory~4_combout\ = (\inst8|fifo_proc:Memory~2_combout\ & (\inst8|fifo_proc:Memory~0_combout\ & (\inst8|fifo_proc:Memory~3_combout\ & \inst8|fifo_proc:Memory~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Memory~2_combout\,
	datab => \inst8|fifo_proc:Memory~0_combout\,
	datac => \inst8|fifo_proc:Memory~3_combout\,
	datad => \inst8|fifo_proc:Memory~1_combout\,
	combout => \inst8|fifo_proc:Memory~4_combout\);

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

-- Location: FF_X22_Y15_N3
\inst19|t_sweep_duration[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[0]~31_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(0));

-- Location: FF_X17_Y15_N11
\inst19|sweep_duration[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_sweep_duration\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|sweep_duration\(0));

-- Location: LCCOMB_X14_Y17_N20
\inst8|Head~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Head~3_combout\ = (\button1_reset~input_o\ & \inst8|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button1_reset~input_o\,
	datad => \inst8|Add1~6_combout\,
	combout => \inst8|Head~3_combout\);

-- Location: FF_X14_Y17_N21
\inst8|fifo_proc:Head[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|Head~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc:Head[3]~q\);

-- Location: LCCOMB_X12_Y17_N22
\inst8|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Add1~14_combout\ = \inst8|Add1~13\ $ (\inst8|fifo_proc:Head[7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst8|fifo_proc:Head[7]~q\,
	cin => \inst8|Add1~13\,
	combout => \inst8|Add1~14_combout\);

-- Location: LCCOMB_X11_Y17_N10
\inst8|Head~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Head~7_combout\ = (\button1_reset~input_o\ & \inst8|Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button1_reset~input_o\,
	datad => \inst8|Add1~14_combout\,
	combout => \inst8|Head~7_combout\);

-- Location: FF_X11_Y17_N11
\inst8|fifo_proc:Head[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|Head~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc:Head[7]~q\);

-- Location: LCCOMB_X14_Y17_N16
\inst8|Tail~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Tail~4_combout\ = (\button1_reset~input_o\ & \inst8|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button1_reset~input_o\,
	datac => \inst8|Add0~8_combout\,
	combout => \inst8|Tail~4_combout\);

-- Location: LCCOMB_X11_Y17_N4
\inst8|Tail~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Tail~5_combout\ = (\button1_reset~input_o\ & \inst8|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button1_reset~input_o\,
	datad => \inst8|Add0~10_combout\,
	combout => \inst8|Tail~5_combout\);

-- Location: FF_X22_Y15_N5
\inst19|t_sweep_duration[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[1]~33_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(1));

-- Location: LCCOMB_X17_Y15_N8
\inst19|sweep_duration[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|sweep_duration[1]~feeder_combout\ = \inst19|t_sweep_duration\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_sweep_duration\(1),
	combout => \inst19|sweep_duration[1]~feeder_combout\);

-- Location: FF_X17_Y15_N9
\inst19|sweep_duration[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|sweep_duration[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|sweep_duration\(1));

-- Location: FF_X22_Y15_N7
\inst19|t_sweep_duration[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[2]~35_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(2));

-- Location: FF_X17_Y15_N15
\inst19|sweep_duration[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_sweep_duration\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|sweep_duration\(2));

-- Location: FF_X22_Y15_N9
\inst19|t_sweep_duration[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[3]~37_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(3));

-- Location: FF_X17_Y15_N5
\inst19|sweep_duration[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_sweep_duration\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|sweep_duration\(3));

-- Location: FF_X22_Y15_N11
\inst19|t_sweep_duration[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[4]~39_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(4));

-- Location: LCCOMB_X17_Y15_N26
\inst19|sweep_duration[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|sweep_duration[4]~feeder_combout\ = \inst19|t_sweep_duration\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_sweep_duration\(4),
	combout => \inst19|sweep_duration[4]~feeder_combout\);

-- Location: FF_X17_Y15_N27
\inst19|sweep_duration[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|sweep_duration[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|sweep_duration\(4));

-- Location: FF_X22_Y15_N13
\inst19|t_sweep_duration[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[5]~41_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(5));

-- Location: LCCOMB_X14_Y14_N16
\inst19|sweep_duration[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|sweep_duration[5]~feeder_combout\ = \inst19|t_sweep_duration\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_sweep_duration\(5),
	combout => \inst19|sweep_duration[5]~feeder_combout\);

-- Location: FF_X14_Y14_N17
\inst19|sweep_duration[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|sweep_duration[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|sweep_duration\(5));

-- Location: FF_X22_Y15_N15
\inst19|t_sweep_duration[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[6]~43_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(6));

-- Location: FF_X21_Y15_N7
\inst19|sweep_duration[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_sweep_duration\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|sweep_duration\(6));

-- Location: FF_X22_Y15_N17
\inst19|t_sweep_duration[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[7]~45_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(7));

-- Location: LCCOMB_X21_Y15_N4
\inst19|sweep_duration[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|sweep_duration[7]~feeder_combout\ = \inst19|t_sweep_duration\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_sweep_duration\(7),
	combout => \inst19|sweep_duration[7]~feeder_combout\);

-- Location: FF_X21_Y15_N5
\inst19|sweep_duration[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|sweep_duration[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|sweep_duration\(7));

-- Location: FF_X22_Y15_N19
\inst19|t_sweep_duration[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[8]~47_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(8));

-- Location: LCCOMB_X21_Y15_N18
\inst19|sweep_duration[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|sweep_duration[8]~feeder_combout\ = \inst19|t_sweep_duration\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_sweep_duration\(8),
	combout => \inst19|sweep_duration[8]~feeder_combout\);

-- Location: FF_X21_Y15_N19
\inst19|sweep_duration[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|sweep_duration[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|sweep_duration\(8));

-- Location: FF_X22_Y15_N21
\inst19|t_sweep_duration[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[9]~49_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(9));

-- Location: FF_X21_Y15_N9
\inst19|sweep_duration[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_sweep_duration\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|sweep_duration\(9));

-- Location: FF_X22_Y15_N23
\inst19|t_sweep_duration[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[10]~51_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(10));

-- Location: FF_X17_Y15_N25
\inst19|sweep_duration[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_sweep_duration\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|sweep_duration\(10));

-- Location: FF_X22_Y15_N25
\inst19|t_sweep_duration[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[11]~53_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(11));

-- Location: LCCOMB_X21_Y15_N22
\inst19|sweep_duration[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|sweep_duration[11]~feeder_combout\ = \inst19|t_sweep_duration\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_sweep_duration\(11),
	combout => \inst19|sweep_duration[11]~feeder_combout\);

-- Location: FF_X21_Y15_N23
\inst19|sweep_duration[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|sweep_duration[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|sweep_duration\(11));

-- Location: FF_X22_Y15_N27
\inst19|t_sweep_duration[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[12]~55_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(12));

-- Location: LCCOMB_X21_Y15_N28
\inst19|sweep_duration[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|sweep_duration[12]~feeder_combout\ = \inst19|t_sweep_duration\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_sweep_duration\(12),
	combout => \inst19|sweep_duration[12]~feeder_combout\);

-- Location: FF_X21_Y15_N29
\inst19|sweep_duration[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|sweep_duration[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|sweep_duration\(12));

-- Location: FF_X22_Y15_N29
\inst19|t_sweep_duration[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[13]~57_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(13));

-- Location: LCCOMB_X22_Y15_N0
\inst19|sweep_duration[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|sweep_duration[13]~feeder_combout\ = \inst19|t_sweep_duration\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_sweep_duration\(13),
	combout => \inst19|sweep_duration[13]~feeder_combout\);

-- Location: FF_X22_Y15_N1
\inst19|sweep_duration[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|sweep_duration[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|sweep_duration\(13));

-- Location: FF_X22_Y15_N31
\inst19|t_sweep_duration[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[14]~59_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(14));

-- Location: FF_X21_Y15_N27
\inst19|sweep_duration[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_sweep_duration\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|sweep_duration\(14));

-- Location: FF_X22_Y14_N1
\inst19|t_sweep_duration[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[15]~61_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(15));

-- Location: LCCOMB_X21_Y15_N16
\inst19|sweep_duration[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|sweep_duration[15]~feeder_combout\ = \inst19|t_sweep_duration\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_sweep_duration\(15),
	combout => \inst19|sweep_duration[15]~feeder_combout\);

-- Location: FF_X21_Y15_N17
\inst19|sweep_duration[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|sweep_duration[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|sweep_duration\(15));

-- Location: FF_X22_Y14_N3
\inst19|t_sweep_duration[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[16]~63_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(16));

-- Location: LCCOMB_X21_Y15_N14
\inst19|sweep_duration[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|sweep_duration[16]~feeder_combout\ = \inst19|t_sweep_duration\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_sweep_duration\(16),
	combout => \inst19|sweep_duration[16]~feeder_combout\);

-- Location: FF_X21_Y15_N15
\inst19|sweep_duration[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|sweep_duration[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|sweep_duration\(16));

-- Location: FF_X22_Y14_N5
\inst19|t_sweep_duration[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[17]~65_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(17));

-- Location: FF_X21_Y15_N21
\inst19|sweep_duration[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_sweep_duration\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|sweep_duration\(17));

-- Location: FF_X22_Y14_N7
\inst19|t_sweep_duration[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[18]~67_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(18));

-- Location: FF_X21_Y15_N3
\inst19|sweep_duration[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_sweep_duration\(18),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|sweep_duration\(18));

-- Location: FF_X22_Y14_N9
\inst19|t_sweep_duration[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[19]~69_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(19));

-- Location: FF_X21_Y15_N25
\inst19|sweep_duration[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_sweep_duration\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|sweep_duration\(19));

-- Location: FF_X22_Y14_N11
\inst19|t_sweep_duration[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[20]~71_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(20));

-- Location: LCCOMB_X21_Y15_N30
\inst19|sweep_duration[20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|sweep_duration[20]~feeder_combout\ = \inst19|t_sweep_duration\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_sweep_duration\(20),
	combout => \inst19|sweep_duration[20]~feeder_combout\);

-- Location: FF_X21_Y15_N31
\inst19|sweep_duration[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|sweep_duration[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|sweep_duration\(20));

-- Location: FF_X22_Y14_N13
\inst19|t_sweep_duration[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[21]~73_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(21));

-- Location: FF_X21_Y15_N13
\inst19|sweep_duration[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_sweep_duration\(21),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|sweep_duration\(21));

-- Location: FF_X22_Y14_N15
\inst19|t_sweep_duration[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[22]~75_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(22));

-- Location: FF_X22_Y18_N19
\inst19|sweep_duration[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_sweep_duration\(22),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|sweep_duration\(22));

-- Location: FF_X22_Y14_N17
\inst19|t_sweep_duration[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[23]~77_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(23));

-- Location: LCCOMB_X21_Y15_N10
\inst19|sweep_duration[23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|sweep_duration[23]~feeder_combout\ = \inst19|t_sweep_duration\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_sweep_duration\(23),
	combout => \inst19|sweep_duration[23]~feeder_combout\);

-- Location: FF_X21_Y15_N11
\inst19|sweep_duration[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|sweep_duration[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|sweep_duration\(23));

-- Location: FF_X22_Y14_N19
\inst19|t_sweep_duration[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[24]~79_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(24));

-- Location: LCCOMB_X14_Y13_N24
\inst19|sweep_duration[24]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|sweep_duration[24]~feeder_combout\ = \inst19|t_sweep_duration\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_sweep_duration\(24),
	combout => \inst19|sweep_duration[24]~feeder_combout\);

-- Location: FF_X14_Y13_N25
\inst19|sweep_duration[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|sweep_duration[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|sweep_duration\(24));

-- Location: FF_X22_Y14_N21
\inst19|t_sweep_duration[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[25]~81_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(25));

-- Location: LCCOMB_X21_Y15_N0
\inst19|sweep_duration[25]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|sweep_duration[25]~feeder_combout\ = \inst19|t_sweep_duration\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_sweep_duration\(25),
	combout => \inst19|sweep_duration[25]~feeder_combout\);

-- Location: FF_X21_Y15_N1
\inst19|sweep_duration[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|sweep_duration[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|sweep_duration\(25));

-- Location: FF_X22_Y14_N23
\inst19|t_sweep_duration[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[26]~83_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(26));

-- Location: LCCOMB_X21_Y14_N12
\inst19|sweep_duration[26]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|sweep_duration[26]~feeder_combout\ = \inst19|t_sweep_duration\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_sweep_duration\(26),
	combout => \inst19|sweep_duration[26]~feeder_combout\);

-- Location: FF_X21_Y14_N13
\inst19|sweep_duration[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|sweep_duration[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|sweep_duration\(26));

-- Location: FF_X22_Y14_N25
\inst19|t_sweep_duration[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[27]~85_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(27));

-- Location: FF_X20_Y13_N15
\inst19|sweep_duration[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_sweep_duration\(27),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|sweep_duration\(27));

-- Location: FF_X22_Y14_N27
\inst19|t_sweep_duration[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[28]~87_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(28));

-- Location: FF_X23_Y16_N15
\inst19|sweep_duration[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_sweep_duration\(28),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|sweep_duration\(28));

-- Location: FF_X22_Y14_N29
\inst19|t_sweep_duration[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[29]~89_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(29));

-- Location: FF_X19_Y15_N15
\inst19|sweep_duration[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_sweep_duration\(29),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|sweep_duration\(29));

-- Location: LCCOMB_X12_Y15_N10
\inst8|fifo_proc:Memory~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc:Memory~5_combout\ = (\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & ((\inst8|fifo_proc:Memory~4_combout\ & (\inst8|fifo_proc_Memory_rtl_0_bypass\(47))) # (!\inst8|fifo_proc:Memory~4_combout\ & 
-- ((\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a30\))))) # (!\inst8|fifo_proc_Memory_rtl_0_bypass\(0) & (((\inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a30\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc_Memory_rtl_0_bypass\(0),
	datab => \inst8|fifo_proc_Memory_rtl_0_bypass\(47),
	datac => \inst8|fifo_proc:Memory~4_combout\,
	datad => \inst8|fifo_proc:Memory_rtl_0|auto_generated|ram_block1a30\,
	combout => \inst8|fifo_proc:Memory~5_combout\);

-- Location: LCCOMB_X14_Y17_N8
\inst8|fifo_proc~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc~3_combout\ = (\inst8|fifo_proc:Head[7]~q\ & (\inst8|fifo_proc:Tail[7]~q\ & (\inst8|fifo_proc:Head[6]~q\ $ (!\inst8|fifo_proc:Tail[6]~q\)))) # (!\inst8|fifo_proc:Head[7]~q\ & (!\inst8|fifo_proc:Tail[7]~q\ & (\inst8|fifo_proc:Head[6]~q\ $ 
-- (!\inst8|fifo_proc:Tail[6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Head[7]~q\,
	datab => \inst8|fifo_proc:Head[6]~q\,
	datac => \inst8|fifo_proc:Tail[6]~q\,
	datad => \inst8|fifo_proc:Tail[7]~q\,
	combout => \inst8|fifo_proc~3_combout\);

-- Location: LCCOMB_X14_Y17_N14
\inst8|fifo_proc~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc~1_combout\ = (\inst8|fifo_proc:Tail[2]~q\ & (\inst8|fifo_proc:Head[2]~q\ & (\inst8|fifo_proc:Head[3]~q\ $ (!\inst8|fifo_proc:Tail[3]~q\)))) # (!\inst8|fifo_proc:Tail[2]~q\ & (!\inst8|fifo_proc:Head[2]~q\ & (\inst8|fifo_proc:Head[3]~q\ $ 
-- (!\inst8|fifo_proc:Tail[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Tail[2]~q\,
	datab => \inst8|fifo_proc:Head[3]~q\,
	datac => \inst8|fifo_proc:Tail[3]~q\,
	datad => \inst8|fifo_proc:Head[2]~q\,
	combout => \inst8|fifo_proc~1_combout\);

-- Location: LCCOMB_X15_Y17_N24
\inst8|fifo_proc~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc~0_combout\ = (\inst8|fifo_proc:Head[0]~q\ & (\inst8|fifo_proc:Tail[0]~q\ & (\inst8|fifo_proc:Head[1]~q\ $ (!\inst8|fifo_proc:Tail[1]~q\)))) # (!\inst8|fifo_proc:Head[0]~q\ & (!\inst8|fifo_proc:Tail[0]~q\ & (\inst8|fifo_proc:Head[1]~q\ $ 
-- (!\inst8|fifo_proc:Tail[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Head[0]~q\,
	datab => \inst8|fifo_proc:Head[1]~q\,
	datac => \inst8|fifo_proc:Tail[0]~q\,
	datad => \inst8|fifo_proc:Tail[1]~q\,
	combout => \inst8|fifo_proc~0_combout\);

-- Location: LCCOMB_X14_Y17_N18
\inst8|fifo_proc~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc~4_combout\ = (\inst8|fifo_proc~2_combout\ & (\inst8|fifo_proc~3_combout\ & (\inst8|fifo_proc~1_combout\ & \inst8|fifo_proc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc~2_combout\,
	datab => \inst8|fifo_proc~3_combout\,
	datac => \inst8|fifo_proc~1_combout\,
	datad => \inst8|fifo_proc~0_combout\,
	combout => \inst8|fifo_proc~4_combout\);

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

-- Location: LCCOMB_X14_Y17_N0
\inst8|Looped~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Looped~7_combout\ = (\inst8|Looped~6_combout\ & \button1_reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Looped~6_combout\,
	datac => \button1_reset~input_o\,
	combout => \inst8|Looped~7_combout\);

-- Location: FF_X14_Y17_N1
\inst8|fifo_proc:Looped\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|Looped~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc:Looped~q\);

-- Location: LCCOMB_X14_Y17_N6
\inst8|DataOut[30]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|DataOut[30]~1_combout\ = (\button1_reset~input_o\ & (\button0_read~input_o\ & ((\inst8|fifo_proc:Looped~q\) # (!\inst8|fifo_proc~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button1_reset~input_o\,
	datab => \inst8|fifo_proc~4_combout\,
	datac => \button0_read~input_o\,
	datad => \inst8|fifo_proc:Looped~q\,
	combout => \inst8|DataOut[30]~1_combout\);

-- Location: FF_X12_Y15_N11
\inst8|DataOut[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|fifo_proc:Memory~5_combout\,
	ena => \inst8|DataOut[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|DataOut\(30));

-- Location: FF_X11_Y19_N17
\inst13|prev_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \button0_read~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|prev_data~q\);

-- Location: LCCOMB_X11_Y19_N16
\inst13|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|process_0~0_combout\ = (\button0_read~input_o\ & !\inst13|prev_data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button0_read~input_o\,
	datac => \inst13|prev_data~q\,
	combout => \inst13|process_0~0_combout\);

-- Location: FF_X11_Y16_N21
\inst13|spi_tx_data[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst8|DataOut\(30),
	sload => VCC,
	ena => \inst13|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(30));

-- Location: FF_X11_Y15_N21
\inst13|spi_tx_ena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	asdata => \inst13|process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_ena~q\);

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

-- Location: LCCOMB_X11_Y15_N20
\inst13|spi_slave_0|process_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|process_1~2_combout\ = (\inst13|spi_tx_ena~q\ & \spi_ss_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|spi_tx_ena~q\,
	datad => \spi_ss_n~input_o\,
	combout => \inst13|spi_slave_0|process_1~2_combout\);

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X11_Y16_N20
\inst13|spi_slave_0|tx_buf[30]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[30]~1_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_tx_data\(30)))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_slave_0|tx_buf[30]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[30]~1_combout\,
	datac => \inst13|spi_tx_data\(30),
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[30]~1_combout\);

-- Location: LCCOMB_X11_Y16_N16
\inst13|spi_slave_0|tx_buf[30]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[30]~2_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(30))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[30]~_emulated_q\ $ 
-- (((\inst13|spi_slave_0|tx_buf[30]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[30]~_emulated_q\,
	datab => \inst13|spi_tx_data\(30),
	datac => \inst13|spi_slave_0|process_1~2_combout\,
	datad => \inst13|spi_slave_0|tx_buf[30]~1_combout\,
	combout => \inst13|spi_slave_0|tx_buf[30]~2_combout\);

-- Location: LCCOMB_X11_Y4_N6
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

-- Location: FF_X11_Y4_N7
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

-- Location: LCCOMB_X11_Y4_N8
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

-- Location: FF_X11_Y4_N9
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

-- Location: LCCOMB_X11_Y4_N12
\inst13|spi_slave_0|rd_add~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|rd_add~0_combout\ = (\inst13|spi_slave_0|bit_cnt\(2) & ((\spi_mosi~input_o\))) # (!\inst13|spi_slave_0|bit_cnt\(2) & (\inst13|spi_slave_0|rd_add~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|bit_cnt\(2),
	datac => \inst13|spi_slave_0|rd_add~q\,
	datad => \spi_mosi~input_o\,
	combout => \inst13|spi_slave_0|rd_add~0_combout\);

-- Location: FF_X11_Y4_N13
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

-- Location: FF_X11_Y4_N31
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

-- Location: FF_X11_Y4_N27
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

-- Location: LCCOMB_X11_Y4_N26
\inst13|spi_slave_0|process_1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|process_1~1_combout\ = (!\inst13|spi_slave_0|bit_cnt\(3) & (!\inst13|spi_slave_0|bit_cnt\(2) & (!\inst13|spi_slave_0|bit_cnt\(4) & \inst13|spi_slave_0|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|bit_cnt\(3),
	datab => \inst13|spi_slave_0|bit_cnt\(2),
	datac => \inst13|spi_slave_0|bit_cnt\(4),
	datad => \inst13|spi_slave_0|bit_cnt\(1),
	combout => \inst13|spi_slave_0|process_1~1_combout\);

-- Location: LCCOMB_X10_Y4_N20
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

-- Location: FF_X10_Y4_N21
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

-- Location: LCCOMB_X10_Y4_N26
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

-- Location: FF_X10_Y4_N27
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

-- Location: FF_X10_Y4_N9
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

-- Location: FF_X11_Y4_N15
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

-- Location: FF_X11_Y4_N5
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

-- Location: FF_X11_Y4_N25
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

-- Location: FF_X11_Y4_N19
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

-- Location: LCCOMB_X12_Y5_N6
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

-- Location: FF_X12_Y5_N7
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

-- Location: LCCOMB_X12_Y5_N12
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

-- Location: FF_X12_Y5_N13
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

-- Location: LCCOMB_X12_Y5_N2
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

-- Location: FF_X12_Y5_N3
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

-- Location: LCCOMB_X12_Y5_N16
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

-- Location: FF_X12_Y5_N17
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

-- Location: LCCOMB_X12_Y5_N14
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

-- Location: FF_X12_Y5_N15
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

-- Location: FF_X12_Y5_N29
\inst13|spi_slave_0|bit_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	asdata => \inst13|spi_slave_0|bit_cnt\(16),
	clrn => \ALT_INV_spi_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(17));

-- Location: LCCOMB_X12_Y5_N10
\inst13|spi_slave_0|bit_cnt[18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|bit_cnt[18]~feeder_combout\ = \inst13|spi_slave_0|bit_cnt\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|spi_slave_0|bit_cnt\(17),
	combout => \inst13|spi_slave_0|bit_cnt[18]~feeder_combout\);

-- Location: FF_X12_Y5_N11
\inst13|spi_slave_0|bit_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|bit_cnt[18]~feeder_combout\,
	clrn => \ALT_INV_spi_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(18));

-- Location: LCCOMB_X12_Y5_N8
\inst13|spi_slave_0|bit_cnt[19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|bit_cnt[19]~feeder_combout\ = \inst13|spi_slave_0|bit_cnt\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|spi_slave_0|bit_cnt\(18),
	combout => \inst13|spi_slave_0|bit_cnt[19]~feeder_combout\);

-- Location: FF_X12_Y5_N9
\inst13|spi_slave_0|bit_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|bit_cnt[19]~feeder_combout\,
	clrn => \ALT_INV_spi_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(19));

-- Location: FF_X12_Y5_N23
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

-- Location: FF_X12_Y5_N21
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

-- Location: LCCOMB_X12_Y5_N18
\inst13|spi_slave_0|bit_cnt[22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|bit_cnt[22]~feeder_combout\ = \inst13|spi_slave_0|bit_cnt\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|spi_slave_0|bit_cnt\(21),
	combout => \inst13|spi_slave_0|bit_cnt[22]~feeder_combout\);

-- Location: FF_X12_Y5_N19
\inst13|spi_slave_0|bit_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|bit_cnt[22]~feeder_combout\,
	clrn => \ALT_INV_spi_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(22));

-- Location: LCCOMB_X12_Y5_N24
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

-- Location: FF_X12_Y5_N25
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

-- Location: LCCOMB_X12_Y5_N30
\inst13|spi_slave_0|bit_cnt[24]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|bit_cnt[24]~feeder_combout\ = \inst13|spi_slave_0|bit_cnt\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|spi_slave_0|bit_cnt\(23),
	combout => \inst13|spi_slave_0|bit_cnt[24]~feeder_combout\);

-- Location: FF_X12_Y5_N31
\inst13|spi_slave_0|bit_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|bit_cnt[24]~feeder_combout\,
	clrn => \ALT_INV_spi_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(24));

-- Location: FF_X12_Y5_N5
\inst13|spi_slave_0|bit_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	asdata => \inst13|spi_slave_0|bit_cnt\(24),
	clrn => \ALT_INV_spi_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(25));

-- Location: FF_X12_Y5_N27
\inst13|spi_slave_0|bit_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	asdata => \inst13|spi_slave_0|bit_cnt\(25),
	clrn => \ALT_INV_spi_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(26));

-- Location: FF_X12_Y5_N1
\inst13|spi_slave_0|bit_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	asdata => \inst13|spi_slave_0|bit_cnt\(26),
	clrn => \ALT_INV_spi_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(27));

-- Location: LCCOMB_X10_Y4_N28
\inst13|spi_slave_0|bit_cnt[28]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|bit_cnt[28]~feeder_combout\ = \inst13|spi_slave_0|bit_cnt\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|spi_slave_0|bit_cnt\(27),
	combout => \inst13|spi_slave_0|bit_cnt[28]~feeder_combout\);

-- Location: FF_X10_Y4_N29
\inst13|spi_slave_0|bit_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|bit_cnt[28]~feeder_combout\,
	clrn => \ALT_INV_spi_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(28));

-- Location: LCCOMB_X10_Y4_N2
\inst13|spi_slave_0|bit_cnt[29]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|bit_cnt[29]~feeder_combout\ = \inst13|spi_slave_0|bit_cnt\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|spi_slave_0|bit_cnt\(28),
	combout => \inst13|spi_slave_0|bit_cnt[29]~feeder_combout\);

-- Location: FF_X10_Y4_N3
\inst13|spi_slave_0|bit_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|bit_cnt[29]~feeder_combout\,
	clrn => \ALT_INV_spi_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(29));

-- Location: LCCOMB_X10_Y4_N24
\inst13|spi_slave_0|bit_cnt[30]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|bit_cnt[30]~feeder_combout\ = \inst13|spi_slave_0|bit_cnt\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|spi_slave_0|bit_cnt\(29),
	combout => \inst13|spi_slave_0|bit_cnt[30]~feeder_combout\);

-- Location: FF_X10_Y4_N25
\inst13|spi_slave_0|bit_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|bit_cnt[30]~feeder_combout\,
	clrn => \ALT_INV_spi_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(30));

-- Location: FF_X10_Y4_N23
\inst13|spi_slave_0|bit_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	asdata => \inst13|spi_slave_0|bit_cnt\(30),
	clrn => \ALT_INV_spi_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(31));

-- Location: FF_X10_Y4_N5
\inst13|spi_slave_0|bit_cnt[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	asdata => \inst13|spi_slave_0|bit_cnt\(31),
	clrn => \ALT_INV_spi_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(32));

-- Location: FF_X10_Y4_N19
\inst13|spi_slave_0|bit_cnt[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	asdata => \inst13|spi_slave_0|bit_cnt\(32),
	clrn => \ALT_INV_spi_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(33));

-- Location: LCCOMB_X10_Y4_N0
\inst13|spi_slave_0|bit_cnt[34]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|bit_cnt[34]~feeder_combout\ = \inst13|spi_slave_0|bit_cnt\(33)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|spi_slave_0|bit_cnt\(33),
	combout => \inst13|spi_slave_0|bit_cnt[34]~feeder_combout\);

-- Location: FF_X10_Y4_N1
\inst13|spi_slave_0|bit_cnt[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|bit_cnt[34]~feeder_combout\,
	clrn => \ALT_INV_spi_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(34));

-- Location: LCCOMB_X10_Y4_N14
\inst13|spi_slave_0|bit_cnt[35]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|bit_cnt[35]~feeder_combout\ = \inst13|spi_slave_0|bit_cnt\(34)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|spi_slave_0|bit_cnt\(34),
	combout => \inst13|spi_slave_0|bit_cnt[35]~feeder_combout\);

-- Location: FF_X10_Y4_N15
\inst13|spi_slave_0|bit_cnt[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|bit_cnt[35]~feeder_combout\,
	clrn => \ALT_INV_spi_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(35));

-- Location: FF_X10_Y4_N13
\inst13|spi_slave_0|bit_cnt[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	asdata => \inst13|spi_slave_0|bit_cnt\(35),
	clrn => \ALT_INV_spi_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(36));

-- Location: LCCOMB_X10_Y4_N10
\inst13|spi_slave_0|bit_cnt[37]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|bit_cnt[37]~feeder_combout\ = \inst13|spi_slave_0|bit_cnt\(36)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|spi_slave_0|bit_cnt\(36),
	combout => \inst13|spi_slave_0|bit_cnt[37]~feeder_combout\);

-- Location: FF_X10_Y4_N11
\inst13|spi_slave_0|bit_cnt[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|bit_cnt[37]~feeder_combout\,
	clrn => \ALT_INV_spi_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(37));

-- Location: LCCOMB_X10_Y4_N16
\inst13|spi_slave_0|bit_cnt[38]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|bit_cnt[38]~feeder_combout\ = \inst13|spi_slave_0|bit_cnt\(37)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|spi_slave_0|bit_cnt\(37),
	combout => \inst13|spi_slave_0|bit_cnt[38]~feeder_combout\);

-- Location: FF_X10_Y4_N17
\inst13|spi_slave_0|bit_cnt[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|bit_cnt[38]~feeder_combout\,
	clrn => \ALT_INV_spi_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(38));

-- Location: LCCOMB_X10_Y4_N6
\inst13|spi_slave_0|bit_cnt[39]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|bit_cnt[39]~feeder_combout\ = \inst13|spi_slave_0|bit_cnt\(38)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|spi_slave_0|bit_cnt\(38),
	combout => \inst13|spi_slave_0|bit_cnt[39]~feeder_combout\);

-- Location: FF_X10_Y4_N7
\inst13|spi_slave_0|bit_cnt[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|bit_cnt[39]~feeder_combout\,
	clrn => \ALT_INV_spi_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(39));

-- Location: FF_X11_Y4_N3
\inst13|spi_slave_0|bit_cnt[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	asdata => \inst13|spi_slave_0|bit_cnt\(39),
	clrn => \ALT_INV_spi_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(40));

-- Location: LCCOMB_X10_Y4_N8
\inst13|spi_slave_0|process_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|process_1~0_combout\ = (!\inst13|spi_slave_0|bit_cnt\(6) & (!\inst13|spi_slave_0|bit_cnt\(5) & (!\inst13|spi_slave_0|bit_cnt\(7) & !\inst13|spi_slave_0|bit_cnt\(40))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|bit_cnt\(6),
	datab => \inst13|spi_slave_0|bit_cnt\(5),
	datac => \inst13|spi_slave_0|bit_cnt\(7),
	datad => \inst13|spi_slave_0|bit_cnt\(40),
	combout => \inst13|spi_slave_0|process_1~0_combout\);

-- Location: LCCOMB_X11_Y4_N22
\inst13|spi_slave_0|process_1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|process_1~3_combout\ = (!\inst13|spi_slave_0|rd_add~q\ & (\inst13|spi_slave_0|process_1~1_combout\ & \inst13|spi_slave_0|process_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|rd_add~q\,
	datac => \inst13|spi_slave_0|process_1~1_combout\,
	datad => \inst13|spi_slave_0|process_1~0_combout\,
	combout => \inst13|spi_slave_0|process_1~3_combout\);

-- Location: FF_X11_Y16_N17
\inst13|spi_slave_0|tx_buf[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|tx_buf[30]~2_combout\,
	clrn => \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \inst13|spi_slave_0|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|tx_buf\(31));

-- Location: LCCOMB_X11_Y4_N20
\inst13|spi_slave_0|rrdy~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|rrdy~0_combout\ = (\inst13|spi_slave_0|bit_cnt\(10) & (\inst13|spi_slave_0|wr_add~q\ & (\spi_mosi~input_o\))) # (!\inst13|spi_slave_0|bit_cnt\(10) & (((\inst13|spi_slave_0|rrdy~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|wr_add~q\,
	datab => \spi_mosi~input_o\,
	datac => \inst13|spi_slave_0|bit_cnt\(10),
	datad => \inst13|spi_slave_0|rrdy~q\,
	combout => \inst13|spi_slave_0|rrdy~0_combout\);

-- Location: LCCOMB_X11_Y4_N28
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

-- Location: FF_X11_Y4_N29
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

-- Location: LCCOMB_X11_Y4_N16
\inst13|spi_slave_0|rrdy~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|rrdy~1_combout\ = (\inst13|spi_slave_0|rrdy~0_combout\) # ((!\inst13|spi_slave_0|wr_add~q\ & ((\inst13|spi_slave_0|bit_cnt\(40)) # (\inst13|spi_slave_0|rrdy~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|bit_cnt\(40),
	datab => \inst13|spi_slave_0|rrdy~0_combout\,
	datac => \inst13|spi_slave_0|rrdy~q\,
	datad => \inst13|spi_slave_0|wr_add~q\,
	combout => \inst13|spi_slave_0|rrdy~1_combout\);

-- Location: FF_X11_Y4_N17
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

-- Location: LCCOMB_X11_Y4_N4
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

-- Location: LCCOMB_X11_Y4_N2
\inst13|spi_slave_0|trdy~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|trdy~0_combout\ = (\inst13|spi_slave_0|trdy~q\) # ((\inst13|spi_slave_0|bit_cnt\(40) & !\inst13|spi_slave_0|rd_add~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|trdy~q\,
	datac => \inst13|spi_slave_0|bit_cnt\(40),
	datad => \inst13|spi_slave_0|rd_add~q\,
	combout => \inst13|spi_slave_0|trdy~0_combout\);

-- Location: LCCOMB_X11_Y2_N8
\inst13|spi_slave_0|trdy~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|trdy~1_combout\ = (\inst13|spi_slave_0|bit_cnt\(9) & ((\inst13|spi_slave_0|wr_add~q\ & (!\spi_mosi~input_o\)) # (!\inst13|spi_slave_0|wr_add~q\ & ((\inst13|spi_slave_0|trdy~0_combout\))))) # (!\inst13|spi_slave_0|bit_cnt\(9) & 
-- (((\inst13|spi_slave_0|trdy~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|bit_cnt\(9),
	datab => \spi_mosi~input_o\,
	datac => \inst13|spi_slave_0|trdy~0_combout\,
	datad => \inst13|spi_slave_0|wr_add~q\,
	combout => \inst13|spi_slave_0|trdy~1_combout\);

-- Location: FF_X11_Y2_N9
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

-- Location: LCCOMB_X11_Y4_N14
\inst13|spi_slave_0|miso~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|miso~0_combout\ = (\inst13|spi_slave_0|bit_cnt\(8) & !\inst13|spi_slave_0|trdy~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|spi_slave_0|bit_cnt\(8),
	datad => \inst13|spi_slave_0|trdy~q\,
	combout => \inst13|spi_slave_0|miso~0_combout\);

-- Location: LCCOMB_X12_Y4_N8
\inst13|spi_slave_0|miso~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|miso~2_combout\ = (\inst13|spi_slave_0|rd_add~q\ & (((\inst13|spi_slave_0|miso~1_combout\) # (\inst13|spi_slave_0|miso~0_combout\)))) # (!\inst13|spi_slave_0|rd_add~q\ & (\inst13|spi_slave_0|tx_buf\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|rd_add~q\,
	datab => \inst13|spi_slave_0|tx_buf\(31),
	datac => \inst13|spi_slave_0|miso~1_combout\,
	datad => \inst13|spi_slave_0|miso~0_combout\,
	combout => \inst13|spi_slave_0|miso~2_combout\);

-- Location: LCCOMB_X11_Y4_N24
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

-- Location: LCCOMB_X11_Y4_N0
\inst13|spi_slave_0|miso~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|miso~4_combout\ = (\inst13|spi_slave_0|miso~3_combout\) # ((\inst13|spi_slave_0|process_1~0_combout\ & (\inst13|spi_slave_0|process_1~1_combout\ & !\inst13|spi_slave_0|rd_add~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|process_1~0_combout\,
	datab => \inst13|spi_slave_0|miso~3_combout\,
	datac => \inst13|spi_slave_0|process_1~1_combout\,
	datad => \inst13|spi_slave_0|rd_add~q\,
	combout => \inst13|spi_slave_0|miso~4_combout\);

-- Location: FF_X12_Y4_N9
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

-- Location: LCCOMB_X12_Y4_N26
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

-- Location: FF_X12_Y4_N27
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

-- Location: LCCOMB_X11_Y17_N18
\inst8|Equal4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Equal4~3_combout\ = (\inst8|Add0~10_combout\ & (\inst8|Add1~10_combout\ & (\inst8|Add1~8_combout\ $ (!\inst8|Add0~8_combout\)))) # (!\inst8|Add0~10_combout\ & (!\inst8|Add1~10_combout\ & (\inst8|Add1~8_combout\ $ (!\inst8|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~10_combout\,
	datab => \inst8|Add1~8_combout\,
	datac => \inst8|Add0~8_combout\,
	datad => \inst8|Add1~10_combout\,
	combout => \inst8|Equal4~3_combout\);

-- Location: LCCOMB_X11_Y17_N28
\inst8|Looped~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Looped~5_combout\ = (\inst8|fifo_proc:Head[6]~q\ & \inst8|fifo_proc:Head[7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|fifo_proc:Head[6]~q\,
	datac => \inst8|fifo_proc:Head[7]~q\,
	combout => \inst8|Looped~5_combout\);

-- Location: FF_X14_Y17_N17
\inst8|fifo_proc:Tail[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|Tail~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc:Tail[4]~q\);

-- Location: FF_X14_Y17_N3
\inst8|fifo_proc:Tail[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst8|Tail~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc:Tail[5]~q\);

-- Location: LCCOMB_X14_Y17_N22
\inst8|Looped~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Looped~1_combout\ = (((!\inst8|fifo_proc:Tail[5]~q\) # (!\inst8|fifo_proc:Tail[6]~q\)) # (!\inst8|fifo_proc:Tail[4]~q\)) # (!\inst8|fifo_proc:Tail[3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Tail[3]~q\,
	datab => \inst8|fifo_proc:Tail[4]~q\,
	datac => \inst8|fifo_proc:Tail[6]~q\,
	datad => \inst8|fifo_proc:Tail[5]~q\,
	combout => \inst8|Looped~1_combout\);

-- Location: LCCOMB_X14_Y17_N10
\inst8|Looped~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Looped~2_combout\ = (\inst8|fifo_proc:Looped~q\ & ((\inst8|Looped~0_combout\) # ((\inst8|Looped~1_combout\) # (!\inst8|fifo_proc:Tail[7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Looped~0_combout\,
	datab => \inst8|fifo_proc:Looped~q\,
	datac => \inst8|Looped~1_combout\,
	datad => \inst8|fifo_proc:Tail[7]~q\,
	combout => \inst8|Looped~2_combout\);

-- Location: LCCOMB_X20_Y13_N12
\inst19|result~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|result~1_combout\ = (\inst19|t_sweep_start[0]~1_combout\ & (\inst19|result~0_combout\ & ((\inst19|Add0~54_combout\) # (\inst19|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~54_combout\,
	datab => \inst19|LessThan1~2_combout\,
	datac => \inst19|t_sweep_start[0]~1_combout\,
	datad => \inst19|result~0_combout\,
	combout => \inst19|result~1_combout\);

-- Location: LCCOMB_X21_Y13_N4
\inst19|result~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|result~4_combout\ = (\inst19|result~3_combout\) # ((\inst19|Add0~60_combout\) # (!\inst19|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|result~3_combout\,
	datac => \inst19|LessThan0~1_combout\,
	datad => \inst19|Add0~60_combout\,
	combout => \inst19|result~4_combout\);

-- Location: LCCOMB_X20_Y13_N16
\inst19|result~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|result~5_combout\ = (\inst19|LessThan0~6_combout\) # ((!\inst19|result~1_combout\ & (\inst19|result~q\ & \inst19|result~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan0~6_combout\,
	datab => \inst19|result~1_combout\,
	datac => \inst19|result~q\,
	datad => \inst19|result~4_combout\,
	combout => \inst19|result~5_combout\);

-- Location: FF_X20_Y13_N17
\inst19|result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|result~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|result~q\);

-- Location: LCCOMB_X12_Y17_N28
\inst8|Looped~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Looped~3_combout\ = (!\inst8|fifo_proc:prev_data~q\ & (\inst8|fifo_proc:Head[0]~q\ & (\inst19|result~q\ & \inst8|fifo_proc:Head[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:prev_data~q\,
	datab => \inst8|fifo_proc:Head[0]~q\,
	datac => \inst19|result~q\,
	datad => \inst8|fifo_proc:Head[1]~q\,
	combout => \inst8|Looped~3_combout\);

-- Location: LCCOMB_X11_Y17_N22
\inst8|Looped~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Looped~6_combout\ = (\inst8|Looped~2_combout\) # ((\inst8|Looped~4_combout\ & (\inst8|Looped~5_combout\ & \inst8|Looped~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Looped~4_combout\,
	datab => \inst8|Looped~5_combout\,
	datac => \inst8|Looped~2_combout\,
	datad => \inst8|Looped~3_combout\,
	combout => \inst8|Looped~6_combout\);

-- Location: LCCOMB_X11_Y17_N8
\inst8|Full~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Full~0_combout\ = (\inst8|Looped~6_combout\) # (\inst8|Full~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|Looped~6_combout\,
	datad => \inst8|Full~q\,
	combout => \inst8|Full~0_combout\);

-- Location: LCCOMB_X12_Y17_N4
\inst8|Equal4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Equal4~1_combout\ = \inst8|Add1~4_combout\ $ (\inst8|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add1~4_combout\,
	datad => \inst8|Add0~4_combout\,
	combout => \inst8|Equal4~1_combout\);

-- Location: LCCOMB_X12_Y17_N2
\inst8|Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Equal4~0_combout\ = (\inst8|Add1~2_combout\ & (\inst8|Add0~2_combout\ & (\inst8|Add1~0_combout\ $ (!\inst8|Add0~0_combout\)))) # (!\inst8|Add1~2_combout\ & (!\inst8|Add0~2_combout\ & (\inst8|Add1~0_combout\ $ (!\inst8|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add1~2_combout\,
	datab => \inst8|Add0~2_combout\,
	datac => \inst8|Add1~0_combout\,
	datad => \inst8|Add0~0_combout\,
	combout => \inst8|Equal4~0_combout\);

-- Location: LCCOMB_X12_Y17_N6
\inst8|Equal4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Equal4~2_combout\ = (!\inst8|Equal4~1_combout\ & (\inst8|Equal4~0_combout\ & (\inst8|Add0~6_combout\ $ (!\inst8|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~6_combout\,
	datab => \inst8|Equal4~1_combout\,
	datac => \inst8|Add1~6_combout\,
	datad => \inst8|Equal4~0_combout\,
	combout => \inst8|Equal4~2_combout\);

-- Location: LCCOMB_X11_Y17_N0
\inst8|Full~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Full~1_combout\ = (\inst8|Equal4~4_combout\ & (\inst8|Equal4~3_combout\ & (\inst8|Full~0_combout\ & \inst8|Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Equal4~4_combout\,
	datab => \inst8|Equal4~3_combout\,
	datac => \inst8|Full~0_combout\,
	datad => \inst8|Equal4~2_combout\,
	combout => \inst8|Full~1_combout\);

-- Location: FF_X11_Y17_N1
\inst8|Full\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|Full~1_combout\,
	sclr => \ALT_INV_button1_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|Full~q\);

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

-- Location: LCCOMB_X22_Y18_N10
\inst19|lighthouse_switch~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|lighthouse_switch~0_combout\ = !\inst19|lighthouse_switch~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|lighthouse_switch~q\,
	combout => \inst19|lighthouse_switch~0_combout\);

-- Location: LCCOMB_X23_Y15_N4
\inst19|start_valid_sync[29]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|start_valid_sync[29]~feeder_combout\ = \inst19|t_0\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(29),
	combout => \inst19|start_valid_sync[29]~feeder_combout\);

-- Location: FF_X21_Y14_N17
\inst19|start_valid_sync[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_0\(31),
	sload => VCC,
	ena => \inst19|start_valid_sync[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(31));

-- Location: LCCOMB_X19_Y13_N0
\inst19|stop_valid_sync~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~111_combout\ = (!\inst19|process_0~0_combout\ & \inst19|stop_valid_sync~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|process_0~0_combout\,
	datad => \inst19|stop_valid_sync~62_combout\,
	combout => \inst19|stop_valid_sync~111_combout\);

-- Location: FF_X19_Y13_N1
\inst19|stop_valid_sync[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|stop_valid_sync~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|stop_valid_sync\(5));

-- Location: LCCOMB_X19_Y13_N14
\inst19|stop_valid_sync~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~27_combout\ = (!\inst19|stop_valid_sync\(4) & (\inst19|stop_valid_sync~26_combout\ & (!\inst19|stop_valid_sync\(3) & !\inst19|stop_valid_sync\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(4),
	datab => \inst19|stop_valid_sync~26_combout\,
	datac => \inst19|stop_valid_sync\(3),
	datad => \inst19|stop_valid_sync\(5),
	combout => \inst19|stop_valid_sync~27_combout\);

-- Location: LCCOMB_X21_Y13_N0
\inst19|t_sweep_start[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_start[0]~0_combout\ = (!\inst19|Add0~62_combout\ & (((!\inst19|LessThan0~3_combout\) # (!\inst19|LessThan0~1_combout\)) # (!\inst19|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~62_combout\,
	datab => \inst19|LessThan0~4_combout\,
	datac => \inst19|LessThan0~1_combout\,
	datad => \inst19|LessThan0~3_combout\,
	combout => \inst19|t_sweep_start[0]~0_combout\);

-- Location: FF_X21_Y16_N9
\inst19|start_valid_sync[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_0\(12),
	sload => VCC,
	ena => \inst19|start_valid_sync[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(12));

-- Location: FF_X21_Y16_N5
\inst19|start_valid_sync[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_0\(14),
	sload => VCC,
	ena => \inst19|start_valid_sync[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(14));

-- Location: LCCOMB_X21_Y16_N2
\inst19|start_valid_sync[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|start_valid_sync[11]~feeder_combout\ = \inst19|t_0\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(11),
	combout => \inst19|start_valid_sync[11]~feeder_combout\);

-- Location: FF_X21_Y16_N3
\inst19|start_valid_sync[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|start_valid_sync[11]~feeder_combout\,
	ena => \inst19|start_valid_sync[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(11));

-- Location: LCCOMB_X21_Y16_N28
\inst19|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Equal0~5_combout\ = (!\inst19|start_valid_sync\(13) & (!\inst19|start_valid_sync\(12) & (!\inst19|start_valid_sync\(14) & !\inst19|start_valid_sync\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|start_valid_sync\(13),
	datab => \inst19|start_valid_sync\(12),
	datac => \inst19|start_valid_sync\(14),
	datad => \inst19|start_valid_sync\(11),
	combout => \inst19|Equal0~5_combout\);

-- Location: FF_X21_Y16_N19
\inst19|start_valid_sync[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_0\(17),
	sload => VCC,
	ena => \inst19|start_valid_sync[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(17));

-- Location: LCCOMB_X21_Y16_N30
\inst19|start_valid_sync[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|start_valid_sync[15]~feeder_combout\ = \inst19|t_0\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(15),
	combout => \inst19|start_valid_sync[15]~feeder_combout\);

-- Location: FF_X21_Y16_N31
\inst19|start_valid_sync[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|start_valid_sync[15]~feeder_combout\,
	ena => \inst19|start_valid_sync[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(15));

-- Location: FF_X21_Y16_N21
\inst19|start_valid_sync[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_0\(16),
	sload => VCC,
	ena => \inst19|start_valid_sync[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(16));

-- Location: LCCOMB_X21_Y16_N16
\inst19|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Equal0~3_combout\ = (!\inst19|start_valid_sync\(18) & (!\inst19|start_valid_sync\(17) & (!\inst19|start_valid_sync\(15) & !\inst19|start_valid_sync\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|start_valid_sync\(18),
	datab => \inst19|start_valid_sync\(17),
	datac => \inst19|start_valid_sync\(15),
	datad => \inst19|start_valid_sync\(16),
	combout => \inst19|Equal0~3_combout\);

-- Location: FF_X19_Y15_N17
\inst19|start_valid_sync[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_0\(21),
	sload => VCC,
	ena => \inst19|start_valid_sync[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(21));

-- Location: FF_X19_Y15_N13
\inst19|start_valid_sync[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_0\(19),
	sload => VCC,
	ena => \inst19|start_valid_sync[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(19));

-- Location: LCCOMB_X19_Y15_N10
\inst19|start_valid_sync[20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|start_valid_sync[20]~feeder_combout\ = \inst19|t_0\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(20),
	combout => \inst19|start_valid_sync[20]~feeder_combout\);

-- Location: FF_X19_Y15_N11
\inst19|start_valid_sync[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|start_valid_sync[20]~feeder_combout\,
	ena => \inst19|start_valid_sync[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(20));

-- Location: LCCOMB_X19_Y15_N22
\inst19|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Equal0~2_combout\ = (!\inst19|start_valid_sync\(22) & (!\inst19|start_valid_sync\(21) & (!\inst19|start_valid_sync\(19) & !\inst19|start_valid_sync\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|start_valid_sync\(22),
	datab => \inst19|start_valid_sync\(21),
	datac => \inst19|start_valid_sync\(19),
	datad => \inst19|start_valid_sync\(20),
	combout => \inst19|Equal0~2_combout\);

-- Location: FF_X23_Y15_N27
\inst19|start_valid_sync[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_0\(30),
	sload => VCC,
	ena => \inst19|start_valid_sync[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(30));

-- Location: LCCOMB_X23_Y15_N16
\inst19|start_valid_sync[27]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|start_valid_sync[27]~feeder_combout\ = \inst19|t_0\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(27),
	combout => \inst19|start_valid_sync[27]~feeder_combout\);

-- Location: FF_X23_Y15_N17
\inst19|start_valid_sync[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|start_valid_sync[27]~feeder_combout\,
	ena => \inst19|start_valid_sync[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(27));

-- Location: LCCOMB_X23_Y15_N2
\inst19|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Equal0~0_combout\ = (!\inst19|start_valid_sync\(28) & (!\inst19|start_valid_sync\(29) & (!\inst19|start_valid_sync\(30) & !\inst19|start_valid_sync\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|start_valid_sync\(28),
	datab => \inst19|start_valid_sync\(29),
	datac => \inst19|start_valid_sync\(30),
	datad => \inst19|start_valid_sync\(27),
	combout => \inst19|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y16_N26
\inst19|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Equal0~4_combout\ = (\inst19|Equal0~1_combout\ & (\inst19|Equal0~3_combout\ & (\inst19|Equal0~2_combout\ & \inst19|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal0~1_combout\,
	datab => \inst19|Equal0~3_combout\,
	datac => \inst19|Equal0~2_combout\,
	datad => \inst19|Equal0~0_combout\,
	combout => \inst19|Equal0~4_combout\);

-- Location: FF_X22_Y16_N25
\inst19|start_valid_sync[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_0\(0),
	sload => VCC,
	ena => \inst19|start_valid_sync[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(0));

-- Location: LCCOMB_X22_Y16_N4
\inst19|start_valid_sync[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|start_valid_sync[2]~feeder_combout\ = \inst19|t_0\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(2),
	combout => \inst19|start_valid_sync[2]~feeder_combout\);

-- Location: FF_X22_Y16_N5
\inst19|start_valid_sync[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|start_valid_sync[2]~feeder_combout\,
	ena => \inst19|start_valid_sync[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(2));

-- Location: FF_X22_Y16_N15
\inst19|start_valid_sync[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_0\(1),
	sload => VCC,
	ena => \inst19|start_valid_sync[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(1));

-- Location: LCCOMB_X22_Y16_N2
\inst19|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Equal0~8_combout\ = (\inst19|Equal0~7_combout\ & (!\inst19|start_valid_sync\(0) & (!\inst19|start_valid_sync\(2) & !\inst19|start_valid_sync\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal0~7_combout\,
	datab => \inst19|start_valid_sync\(0),
	datac => \inst19|start_valid_sync\(2),
	datad => \inst19|start_valid_sync\(1),
	combout => \inst19|Equal0~8_combout\);

-- Location: LCCOMB_X21_Y16_N12
\inst19|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Equal0~9_combout\ = (\inst19|Equal0~6_combout\ & (\inst19|Equal0~5_combout\ & (\inst19|Equal0~4_combout\ & \inst19|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal0~6_combout\,
	datab => \inst19|Equal0~5_combout\,
	datac => \inst19|Equal0~4_combout\,
	datad => \inst19|Equal0~8_combout\,
	combout => \inst19|Equal0~9_combout\);

-- Location: LCCOMB_X21_Y14_N30
\inst19|stop_valid_sync~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~116_combout\ = (\inst19|result~1_combout\ & ((\inst19|start_valid_sync\(31)) # (!\inst19|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|result~1_combout\,
	datab => \inst19|start_valid_sync\(31),
	datad => \inst19|Equal0~9_combout\,
	combout => \inst19|stop_valid_sync~116_combout\);

-- Location: LCCOMB_X21_Y14_N18
\inst19|Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Equal0~10_combout\ = (\inst19|start_valid_sync\(31)) # (!\inst19|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|start_valid_sync\(31),
	datad => \inst19|Equal0~9_combout\,
	combout => \inst19|Equal0~10_combout\);

-- Location: LCCOMB_X21_Y14_N28
\inst19|stop_valid_sync~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~20_combout\ = (\inst19|result~1_combout\ & (\inst19|Equal0~10_combout\ & (\inst19|t_sweep_start[0]~0_combout\ & \inst19|stop_valid_sync~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|result~1_combout\,
	datab => \inst19|Equal0~10_combout\,
	datac => \inst19|t_sweep_start[0]~0_combout\,
	datad => \inst19|stop_valid_sync~19_combout\,
	combout => \inst19|stop_valid_sync~20_combout\);

-- Location: LCCOMB_X20_Y14_N20
\inst19|stop_valid_sync~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~69_combout\ = (\inst19|stop_valid_sync~28_combout\ & (\inst19|stop_valid_sync~15_combout\ & \inst19|stop_valid_sync~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~28_combout\,
	datab => \inst19|stop_valid_sync~15_combout\,
	datad => \inst19|stop_valid_sync~20_combout\,
	combout => \inst19|stop_valid_sync~69_combout\);

-- Location: LCCOMB_X20_Y12_N28
\inst19|stop_valid_sync~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~40_combout\ = (\inst19|stop_valid_sync\(22)) # ((\inst19|stop_valid_sync~39_combout\ & (!\inst19|stop_valid_sync\(25) & \inst19|t_0\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~39_combout\,
	datab => \inst19|stop_valid_sync\(25),
	datac => \inst19|t_0\(22),
	datad => \inst19|stop_valid_sync\(22),
	combout => \inst19|stop_valid_sync~40_combout\);

-- Location: LCCOMB_X20_Y12_N26
\inst19|stop_valid_sync~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~90_combout\ = (!\inst19|process_0~0_combout\ & \inst19|stop_valid_sync~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|process_0~0_combout\,
	datad => \inst19|stop_valid_sync~40_combout\,
	combout => \inst19|stop_valid_sync~90_combout\);

-- Location: FF_X20_Y12_N27
\inst19|stop_valid_sync[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|stop_valid_sync~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|stop_valid_sync\(22));

-- Location: LCCOMB_X20_Y14_N30
\inst19|stop_valid_sync~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~38_combout\ = (\inst19|stop_valid_sync~28_combout\ & (\inst19|stop_valid_sync~15_combout\ & (!\inst19|stop_valid_sync\(26) & \inst19|stop_valid_sync~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~28_combout\,
	datab => \inst19|stop_valid_sync~15_combout\,
	datac => \inst19|stop_valid_sync\(26),
	datad => \inst19|stop_valid_sync~20_combout\,
	combout => \inst19|stop_valid_sync~38_combout\);

-- Location: LCCOMB_X20_Y12_N6
\inst19|stop_valid_sync~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~119_combout\ = (!\inst19|stop_valid_sync\(23) & (!\inst19|stop_valid_sync\(25) & (!\inst19|stop_valid_sync\(22) & \inst19|stop_valid_sync~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(23),
	datab => \inst19|stop_valid_sync\(25),
	datac => \inst19|stop_valid_sync\(22),
	datad => \inst19|stop_valid_sync~38_combout\,
	combout => \inst19|stop_valid_sync~119_combout\);

-- Location: LCCOMB_X20_Y12_N0
\inst19|stop_valid_sync~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~83_combout\ = (\inst19|stop_valid_sync\(24)) # ((!\inst19|stop_valid_sync\(28) & (\inst19|t_0\(24) & \inst19|stop_valid_sync~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(24),
	datab => \inst19|stop_valid_sync\(28),
	datac => \inst19|t_0\(24),
	datad => \inst19|stop_valid_sync~119_combout\,
	combout => \inst19|stop_valid_sync~83_combout\);

-- Location: LCCOMB_X20_Y12_N10
\inst19|stop_valid_sync~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~93_combout\ = (!\inst19|process_0~0_combout\ & \inst19|stop_valid_sync~83_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|process_0~0_combout\,
	datad => \inst19|stop_valid_sync~83_combout\,
	combout => \inst19|stop_valid_sync~93_combout\);

-- Location: FF_X20_Y12_N11
\inst19|stop_valid_sync[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|stop_valid_sync~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|stop_valid_sync\(24));

-- Location: LCCOMB_X23_Y15_N18
\inst19|stop_valid_sync~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~80_combout\ = (\inst19|stop_valid_sync\(28)) # ((\inst19|stop_valid_sync~119_combout\ & (\inst19|t_0\(28) & !\inst19|stop_valid_sync\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(28),
	datab => \inst19|stop_valid_sync~119_combout\,
	datac => \inst19|t_0\(28),
	datad => \inst19|stop_valid_sync\(24),
	combout => \inst19|stop_valid_sync~80_combout\);

-- Location: LCCOMB_X20_Y12_N16
\inst19|stop_valid_sync~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~92_combout\ = (!\inst19|process_0~0_combout\ & \inst19|stop_valid_sync~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|process_0~0_combout\,
	datad => \inst19|stop_valid_sync~80_combout\,
	combout => \inst19|stop_valid_sync~92_combout\);

-- Location: FF_X20_Y12_N17
\inst19|stop_valid_sync[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|stop_valid_sync~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|stop_valid_sync\(28));

-- Location: LCCOMB_X20_Y12_N2
\inst19|stop_valid_sync~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~75_combout\ = (!\inst19|stop_valid_sync\(28) & (!\inst19|stop_valid_sync\(24) & \inst19|stop_valid_sync~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|stop_valid_sync\(28),
	datac => \inst19|stop_valid_sync\(24),
	datad => \inst19|stop_valid_sync~38_combout\,
	combout => \inst19|stop_valid_sync~75_combout\);

-- Location: LCCOMB_X20_Y12_N18
\inst19|stop_valid_sync~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~76_combout\ = (\inst19|stop_valid_sync\(23)) # ((\inst19|stop_valid_sync~11_combout\ & (\inst19|t_0\(23) & \inst19|stop_valid_sync~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(23),
	datab => \inst19|stop_valid_sync~11_combout\,
	datac => \inst19|t_0\(23),
	datad => \inst19|stop_valid_sync~75_combout\,
	combout => \inst19|stop_valid_sync~76_combout\);

-- Location: LCCOMB_X20_Y12_N22
\inst19|stop_valid_sync~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~91_combout\ = (!\inst19|process_0~0_combout\ & \inst19|stop_valid_sync~76_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|process_0~0_combout\,
	datad => \inst19|stop_valid_sync~76_combout\,
	combout => \inst19|stop_valid_sync~91_combout\);

-- Location: FF_X20_Y12_N23
\inst19|stop_valid_sync[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|stop_valid_sync~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|stop_valid_sync\(23));

-- Location: LCCOMB_X20_Y12_N30
\inst19|stop_valid_sync~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~39_combout\ = (!\inst19|stop_valid_sync\(24) & (!\inst19|stop_valid_sync\(28) & (!\inst19|stop_valid_sync\(23) & \inst19|stop_valid_sync~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(24),
	datab => \inst19|stop_valid_sync\(28),
	datac => \inst19|stop_valid_sync\(23),
	datad => \inst19|stop_valid_sync~38_combout\,
	combout => \inst19|stop_valid_sync~39_combout\);

-- Location: LCCOMB_X20_Y12_N8
\inst19|stop_valid_sync~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~41_combout\ = (\inst19|stop_valid_sync\(25)) # ((!\inst19|stop_valid_sync\(22) & (\inst19|stop_valid_sync~39_combout\ & \inst19|t_0\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(22),
	datab => \inst19|stop_valid_sync\(25),
	datac => \inst19|stop_valid_sync~39_combout\,
	datad => \inst19|t_0\(25),
	combout => \inst19|stop_valid_sync~41_combout\);

-- Location: LCCOMB_X20_Y12_N24
\inst19|stop_valid_sync~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~89_combout\ = (\inst19|stop_valid_sync~41_combout\ & !\inst19|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|stop_valid_sync~41_combout\,
	datac => \inst19|process_0~0_combout\,
	combout => \inst19|stop_valid_sync~89_combout\);

-- Location: FF_X20_Y12_N25
\inst19|stop_valid_sync[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|stop_valid_sync~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|stop_valid_sync\(25));

-- Location: LCCOMB_X20_Y12_N4
\inst19|stop_valid_sync~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~11_combout\ = (!\inst19|stop_valid_sync\(25) & !\inst19|stop_valid_sync\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|stop_valid_sync\(25),
	datac => \inst19|stop_valid_sync\(22),
	combout => \inst19|stop_valid_sync~11_combout\);

-- Location: LCCOMB_X20_Y12_N12
\inst19|stop_valid_sync~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~12_combout\ = (!\inst19|stop_valid_sync\(24) & (\inst19|stop_valid_sync~11_combout\ & (!\inst19|stop_valid_sync\(23) & !\inst19|stop_valid_sync\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(24),
	datab => \inst19|stop_valid_sync~11_combout\,
	datac => \inst19|stop_valid_sync\(23),
	datad => \inst19|stop_valid_sync\(28),
	combout => \inst19|stop_valid_sync~12_combout\);

-- Location: LCCOMB_X20_Y14_N6
\inst19|stop_valid_sync~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~70_combout\ = (\inst19|stop_valid_sync\(26)) # ((\inst19|stop_valid_sync~69_combout\ & (\inst19|t_0\(26) & \inst19|stop_valid_sync~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(26),
	datab => \inst19|stop_valid_sync~69_combout\,
	datac => \inst19|t_0\(26),
	datad => \inst19|stop_valid_sync~12_combout\,
	combout => \inst19|stop_valid_sync~70_combout\);

-- Location: LCCOMB_X19_Y16_N8
\inst19|stop_valid_sync~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~101_combout\ = (!\inst19|process_0~0_combout\ & \inst19|stop_valid_sync~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|process_0~0_combout\,
	datad => \inst19|stop_valid_sync~70_combout\,
	combout => \inst19|stop_valid_sync~101_combout\);

-- Location: FF_X19_Y16_N9
\inst19|stop_valid_sync[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|stop_valid_sync~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|stop_valid_sync\(26));

-- Location: LCCOMB_X21_Y14_N4
\inst19|stop_valid_sync~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~28_combout\ = (\inst19|stop_valid_sync~10_combout\ & (!\inst19|stop_valid_sync\(7) & (!\inst19|stop_valid_sync\(31) & \inst19|stop_valid_sync~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~10_combout\,
	datab => \inst19|stop_valid_sync\(7),
	datac => \inst19|stop_valid_sync\(31),
	datad => \inst19|stop_valid_sync~27_combout\,
	combout => \inst19|stop_valid_sync~28_combout\);

-- Location: LCCOMB_X20_Y14_N28
\inst19|stop_valid_sync~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~29_combout\ = (\inst19|stop_valid_sync~12_combout\ & (\inst19|stop_valid_sync~20_combout\ & (!\inst19|stop_valid_sync\(26) & \inst19|stop_valid_sync~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~12_combout\,
	datab => \inst19|stop_valid_sync~20_combout\,
	datac => \inst19|stop_valid_sync\(26),
	datad => \inst19|stop_valid_sync~28_combout\,
	combout => \inst19|stop_valid_sync~29_combout\);

-- Location: LCCOMB_X19_Y14_N16
\inst19|stop_valid_sync~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~120_combout\ = (!\inst19|process_0~0_combout\ & ((\inst19|stop_valid_sync\(27)) # ((\inst19|stop_valid_sync~73_combout\ & \inst19|stop_valid_sync~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~73_combout\,
	datab => \inst19|process_0~0_combout\,
	datac => \inst19|stop_valid_sync\(27),
	datad => \inst19|stop_valid_sync~29_combout\,
	combout => \inst19|stop_valid_sync~120_combout\);

-- Location: FF_X19_Y14_N17
\inst19|stop_valid_sync[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|stop_valid_sync~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|stop_valid_sync\(27));

-- Location: LCCOMB_X19_Y15_N2
\inst19|stop_valid_sync~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~71_combout\ = (!\inst19|stop_valid_sync\(17) & (!\inst19|stop_valid_sync\(18) & !\inst19|stop_valid_sync\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(17),
	datab => \inst19|stop_valid_sync\(18),
	datac => \inst19|stop_valid_sync\(20),
	combout => \inst19|stop_valid_sync~71_combout\);

-- Location: LCCOMB_X19_Y14_N24
\inst19|stop_valid_sync~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~48_combout\ = (!\inst19|stop_valid_sync\(16) & (!\inst19|stop_valid_sync\(27) & (\inst19|stop_valid_sync~14_combout\ & \inst19|stop_valid_sync~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(16),
	datab => \inst19|stop_valid_sync\(27),
	datac => \inst19|stop_valid_sync~14_combout\,
	datad => \inst19|stop_valid_sync~29_combout\,
	combout => \inst19|stop_valid_sync~48_combout\);

-- Location: LCCOMB_X19_Y14_N2
\inst19|stop_valid_sync~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~49_combout\ = (\inst19|stop_valid_sync\(15)) # ((!\inst19|stop_valid_sync\(21) & (\inst19|stop_valid_sync~48_combout\ & \inst19|t_0\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(21),
	datab => \inst19|stop_valid_sync~48_combout\,
	datac => \inst19|stop_valid_sync\(15),
	datad => \inst19|t_0\(15),
	combout => \inst19|stop_valid_sync~49_combout\);

-- Location: LCCOMB_X19_Y14_N4
\inst19|stop_valid_sync~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~95_combout\ = (!\inst19|process_0~0_combout\ & \inst19|stop_valid_sync~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|process_0~0_combout\,
	datad => \inst19|stop_valid_sync~49_combout\,
	combout => \inst19|stop_valid_sync~95_combout\);

-- Location: FF_X19_Y14_N5
\inst19|stop_valid_sync[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|stop_valid_sync~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|stop_valid_sync\(15));

-- Location: LCCOMB_X19_Y14_N30
\inst19|stop_valid_sync~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~13_combout\ = (!\inst19|stop_valid_sync\(21) & !\inst19|stop_valid_sync\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(21),
	datac => \inst19|stop_valid_sync\(15),
	combout => \inst19|stop_valid_sync~13_combout\);

-- Location: LCCOMB_X19_Y14_N6
\inst19|stop_valid_sync~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~30_combout\ = (!\inst19|stop_valid_sync\(16) & (!\inst19|stop_valid_sync\(27) & (\inst19|stop_valid_sync~13_combout\ & \inst19|stop_valid_sync~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(16),
	datab => \inst19|stop_valid_sync\(27),
	datac => \inst19|stop_valid_sync~13_combout\,
	datad => \inst19|stop_valid_sync~29_combout\,
	combout => \inst19|stop_valid_sync~30_combout\);

-- Location: LCCOMB_X19_Y15_N4
\inst19|stop_valid_sync~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~72_combout\ = (\inst19|stop_valid_sync\(19)) # ((\inst19|stop_valid_sync~71_combout\ & (\inst19|t_0\(19) & \inst19|stop_valid_sync~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(19),
	datab => \inst19|stop_valid_sync~71_combout\,
	datac => \inst19|t_0\(19),
	datad => \inst19|stop_valid_sync~30_combout\,
	combout => \inst19|stop_valid_sync~72_combout\);

-- Location: LCCOMB_X20_Y12_N14
\inst19|stop_valid_sync~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~96_combout\ = (!\inst19|process_0~0_combout\ & \inst19|stop_valid_sync~72_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|process_0~0_combout\,
	datad => \inst19|stop_valid_sync~72_combout\,
	combout => \inst19|stop_valid_sync~96_combout\);

-- Location: FF_X20_Y12_N15
\inst19|stop_valid_sync[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|stop_valid_sync~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|stop_valid_sync\(19));

-- Location: LCCOMB_X19_Y15_N0
\inst19|stop_valid_sync~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~31_combout\ = (\inst19|stop_valid_sync~30_combout\ & (!\inst19|stop_valid_sync\(20) & !\inst19|stop_valid_sync\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~30_combout\,
	datac => \inst19|stop_valid_sync\(20),
	datad => \inst19|stop_valid_sync\(19),
	combout => \inst19|stop_valid_sync~31_combout\);

-- Location: LCCOMB_X19_Y15_N20
\inst19|stop_valid_sync~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~33_combout\ = (\inst19|stop_valid_sync\(18)) # ((!\inst19|stop_valid_sync\(17) & (\inst19|t_0\(18) & \inst19|stop_valid_sync~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(17),
	datab => \inst19|stop_valid_sync\(18),
	datac => \inst19|t_0\(18),
	datad => \inst19|stop_valid_sync~31_combout\,
	combout => \inst19|stop_valid_sync~33_combout\);

-- Location: LCCOMB_X19_Y15_N24
\inst19|stop_valid_sync~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~98_combout\ = (!\inst19|process_0~0_combout\ & \inst19|stop_valid_sync~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|process_0~0_combout\,
	datad => \inst19|stop_valid_sync~33_combout\,
	combout => \inst19|stop_valid_sync~98_combout\);

-- Location: FF_X19_Y15_N25
\inst19|stop_valid_sync[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|stop_valid_sync~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|stop_valid_sync\(18));

-- Location: LCCOMB_X19_Y15_N18
\inst19|stop_valid_sync~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~32_combout\ = (\inst19|stop_valid_sync\(17)) # ((\inst19|t_0\(17) & (!\inst19|stop_valid_sync\(18) & \inst19|stop_valid_sync~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(17),
	datab => \inst19|stop_valid_sync\(18),
	datac => \inst19|stop_valid_sync\(17),
	datad => \inst19|stop_valid_sync~31_combout\,
	combout => \inst19|stop_valid_sync~32_combout\);

-- Location: LCCOMB_X19_Y15_N26
\inst19|stop_valid_sync~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~99_combout\ = (!\inst19|process_0~0_combout\ & \inst19|stop_valid_sync~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|process_0~0_combout\,
	datad => \inst19|stop_valid_sync~32_combout\,
	combout => \inst19|stop_valid_sync~99_combout\);

-- Location: FF_X19_Y15_N27
\inst19|stop_valid_sync[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|stop_valid_sync~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|stop_valid_sync\(17));

-- Location: LCCOMB_X19_Y15_N30
\inst19|stop_valid_sync~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~36_combout\ = (!\inst19|stop_valid_sync\(18) & (!\inst19|stop_valid_sync\(17) & \inst19|t_0\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|stop_valid_sync\(18),
	datac => \inst19|stop_valid_sync\(17),
	datad => \inst19|t_0\(20),
	combout => \inst19|stop_valid_sync~36_combout\);

-- Location: LCCOMB_X19_Y15_N8
\inst19|stop_valid_sync~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~37_combout\ = (\inst19|stop_valid_sync\(20)) # ((\inst19|stop_valid_sync~30_combout\ & (\inst19|stop_valid_sync~36_combout\ & !\inst19|stop_valid_sync\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~30_combout\,
	datab => \inst19|stop_valid_sync\(20),
	datac => \inst19|stop_valid_sync~36_combout\,
	datad => \inst19|stop_valid_sync\(19),
	combout => \inst19|stop_valid_sync~37_combout\);

-- Location: LCCOMB_X20_Y13_N8
\inst19|stop_valid_sync~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~97_combout\ = (!\inst19|process_0~0_combout\ & \inst19|stop_valid_sync~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|process_0~0_combout\,
	datad => \inst19|stop_valid_sync~37_combout\,
	combout => \inst19|stop_valid_sync~97_combout\);

-- Location: FF_X20_Y13_N9
\inst19|stop_valid_sync[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|stop_valid_sync~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|stop_valid_sync\(20));

-- Location: LCCOMB_X19_Y15_N28
\inst19|stop_valid_sync~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~14_combout\ = (!\inst19|stop_valid_sync\(19) & (!\inst19|stop_valid_sync\(20) & (!\inst19|stop_valid_sync\(17) & !\inst19|stop_valid_sync\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(19),
	datab => \inst19|stop_valid_sync\(20),
	datac => \inst19|stop_valid_sync\(17),
	datad => \inst19|stop_valid_sync\(18),
	combout => \inst19|stop_valid_sync~14_combout\);

-- Location: LCCOMB_X19_Y14_N14
\inst19|stop_valid_sync~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~118_combout\ = (!\inst19|stop_valid_sync\(21) & (\inst19|stop_valid_sync~14_combout\ & (!\inst19|stop_valid_sync\(15) & \inst19|t_0\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(21),
	datab => \inst19|stop_valid_sync~14_combout\,
	datac => \inst19|stop_valid_sync\(15),
	datad => \inst19|t_0\(16),
	combout => \inst19|stop_valid_sync~118_combout\);

-- Location: LCCOMB_X19_Y14_N12
\inst19|stop_valid_sync~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~50_combout\ = (\inst19|stop_valid_sync\(16)) # ((!\inst19|stop_valid_sync\(27) & (\inst19|stop_valid_sync~118_combout\ & \inst19|stop_valid_sync~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(16),
	datab => \inst19|stop_valid_sync\(27),
	datac => \inst19|stop_valid_sync~118_combout\,
	datad => \inst19|stop_valid_sync~29_combout\,
	combout => \inst19|stop_valid_sync~50_combout\);

-- Location: LCCOMB_X19_Y14_N10
\inst19|stop_valid_sync~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~100_combout\ = (!\inst19|process_0~0_combout\ & \inst19|stop_valid_sync~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|process_0~0_combout\,
	datad => \inst19|stop_valid_sync~50_combout\,
	combout => \inst19|stop_valid_sync~100_combout\);

-- Location: FF_X19_Y14_N11
\inst19|stop_valid_sync[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|stop_valid_sync~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|stop_valid_sync\(16));

-- Location: LCCOMB_X19_Y14_N20
\inst19|stop_valid_sync~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~15_combout\ = (\inst19|stop_valid_sync~13_combout\ & (!\inst19|stop_valid_sync\(27) & (\inst19|stop_valid_sync~14_combout\ & !\inst19|stop_valid_sync\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~13_combout\,
	datab => \inst19|stop_valid_sync\(27),
	datac => \inst19|stop_valid_sync~14_combout\,
	datad => \inst19|stop_valid_sync\(16),
	combout => \inst19|stop_valid_sync~15_combout\);

-- Location: LCCOMB_X20_Y14_N22
\inst19|stop_valid_sync~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~117_combout\ = (\inst19|stop_valid_sync~12_combout\ & (\inst19|stop_valid_sync~15_combout\ & (!\inst19|stop_valid_sync\(26) & \inst19|stop_valid_sync~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~12_combout\,
	datab => \inst19|stop_valid_sync~15_combout\,
	datac => \inst19|stop_valid_sync\(26),
	datad => \inst19|stop_valid_sync~28_combout\,
	combout => \inst19|stop_valid_sync~117_combout\);

-- Location: LCCOMB_X21_Y14_N6
\inst19|stop_valid_sync~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~59_combout\ = (\inst19|result~1_combout\ & (\inst19|t_sweep_start[0]~0_combout\ & (\inst19|stop_valid_sync~117_combout\ & \inst19|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|result~1_combout\,
	datab => \inst19|t_sweep_start[0]~0_combout\,
	datac => \inst19|stop_valid_sync~117_combout\,
	datad => \inst19|Equal0~10_combout\,
	combout => \inst19|stop_valid_sync~59_combout\);

-- Location: LCCOMB_X21_Y16_N14
\inst19|stop_valid_sync~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~82_combout\ = (\inst19|stop_valid_sync\(9)) # ((\inst19|stop_valid_sync~81_combout\ & (\inst19|stop_valid_sync~59_combout\ & \inst19|t_0\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~81_combout\,
	datab => \inst19|stop_valid_sync\(9),
	datac => \inst19|stop_valid_sync~59_combout\,
	datad => \inst19|t_0\(9),
	combout => \inst19|stop_valid_sync~82_combout\);

-- Location: LCCOMB_X19_Y16_N0
\inst19|stop_valid_sync~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~107_combout\ = (!\inst19|process_0~0_combout\ & \inst19|stop_valid_sync~82_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|process_0~0_combout\,
	datad => \inst19|stop_valid_sync~82_combout\,
	combout => \inst19|stop_valid_sync~107_combout\);

-- Location: FF_X19_Y16_N1
\inst19|stop_valid_sync[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|stop_valid_sync~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|stop_valid_sync\(9));

-- Location: LCCOMB_X19_Y16_N24
\inst19|stop_valid_sync~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~68_combout\ = (\inst19|stop_valid_sync\(13)) # ((\inst19|stop_valid_sync~65_combout\ & (\inst19|t_0\(13) & !\inst19|stop_valid_sync\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~65_combout\,
	datab => \inst19|stop_valid_sync\(13),
	datac => \inst19|t_0\(13),
	datad => \inst19|stop_valid_sync\(11),
	combout => \inst19|stop_valid_sync~68_combout\);

-- Location: LCCOMB_X19_Y16_N2
\inst19|stop_valid_sync~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~102_combout\ = (!\inst19|process_0~0_combout\ & \inst19|stop_valid_sync~68_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|process_0~0_combout\,
	datad => \inst19|stop_valid_sync~68_combout\,
	combout => \inst19|stop_valid_sync~102_combout\);

-- Location: FF_X19_Y16_N3
\inst19|stop_valid_sync[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|stop_valid_sync~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|stop_valid_sync\(13));

-- Location: LCCOMB_X19_Y16_N20
\inst19|stop_valid_sync~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~66_combout\ = (\inst19|stop_valid_sync\(11)) # ((\inst19|stop_valid_sync~65_combout\ & (!\inst19|stop_valid_sync\(13) & \inst19|t_0\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~65_combout\,
	datab => \inst19|stop_valid_sync\(13),
	datac => \inst19|t_0\(11),
	datad => \inst19|stop_valid_sync\(11),
	combout => \inst19|stop_valid_sync~66_combout\);

-- Location: LCCOMB_X19_Y16_N28
\inst19|stop_valid_sync~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~103_combout\ = (!\inst19|process_0~0_combout\ & \inst19|stop_valid_sync~66_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|process_0~0_combout\,
	datad => \inst19|stop_valid_sync~66_combout\,
	combout => \inst19|stop_valid_sync~103_combout\);

-- Location: FF_X19_Y16_N29
\inst19|stop_valid_sync[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|stop_valid_sync~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|stop_valid_sync\(11));

-- Location: LCCOMB_X19_Y16_N6
\inst19|stop_valid_sync~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~17_combout\ = (!\inst19|stop_valid_sync\(11) & !\inst19|stop_valid_sync\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|stop_valid_sync\(11),
	datad => \inst19|stop_valid_sync\(13),
	combout => \inst19|stop_valid_sync~17_combout\);

-- Location: LCCOMB_X19_Y16_N22
\inst19|stop_valid_sync~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~67_combout\ = (\inst19|stop_valid_sync\(14)) # ((\inst19|t_0\(14) & (\inst19|stop_valid_sync~60_combout\ & !\inst19|stop_valid_sync\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(14),
	datab => \inst19|t_0\(14),
	datac => \inst19|stop_valid_sync~60_combout\,
	datad => \inst19|stop_valid_sync\(8),
	combout => \inst19|stop_valid_sync~67_combout\);

-- Location: LCCOMB_X19_Y16_N10
\inst19|stop_valid_sync~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~108_combout\ = (!\inst19|process_0~0_combout\ & \inst19|stop_valid_sync~67_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|process_0~0_combout\,
	datac => \inst19|stop_valid_sync~67_combout\,
	combout => \inst19|stop_valid_sync~108_combout\);

-- Location: FF_X19_Y16_N11
\inst19|stop_valid_sync[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|stop_valid_sync~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|stop_valid_sync\(14));

-- Location: LCCOMB_X23_Y16_N2
\inst19|stop_valid_sync~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~44_combout\ = (!\inst19|stop_valid_sync\(8) & !\inst19|stop_valid_sync\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|stop_valid_sync\(8),
	datac => \inst19|stop_valid_sync\(14),
	combout => \inst19|stop_valid_sync~44_combout\);

-- Location: LCCOMB_X23_Y16_N24
\inst19|stop_valid_sync~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~63_combout\ = (!\inst19|stop_valid_sync\(12) & (\inst19|t_0\(10) & (\inst19|stop_valid_sync~17_combout\ & \inst19|stop_valid_sync~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(12),
	datab => \inst19|t_0\(10),
	datac => \inst19|stop_valid_sync~17_combout\,
	datad => \inst19|stop_valid_sync~44_combout\,
	combout => \inst19|stop_valid_sync~63_combout\);

-- Location: LCCOMB_X23_Y16_N8
\inst19|stop_valid_sync~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~78_combout\ = (\inst19|t_0\(29) & !\inst19|stop_valid_sync\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|t_0\(29),
	datad => \inst19|stop_valid_sync\(10),
	combout => \inst19|stop_valid_sync~78_combout\);

-- Location: LCCOMB_X21_Y14_N22
\inst19|stop_valid_sync~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~45_combout\ = (!\inst19|stop_valid_sync\(9) & (\inst19|stop_valid_sync~117_combout\ & (\inst19|stop_valid_sync~116_combout\ & \inst19|t_sweep_start[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(9),
	datab => \inst19|stop_valid_sync~117_combout\,
	datac => \inst19|stop_valid_sync~116_combout\,
	datad => \inst19|t_sweep_start[0]~0_combout\,
	combout => \inst19|stop_valid_sync~45_combout\);

-- Location: LCCOMB_X23_Y16_N10
\inst19|stop_valid_sync~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~79_combout\ = (\inst19|stop_valid_sync\(29)) # ((\inst19|stop_valid_sync~77_combout\ & (\inst19|stop_valid_sync~78_combout\ & \inst19|stop_valid_sync~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~77_combout\,
	datab => \inst19|stop_valid_sync~78_combout\,
	datac => \inst19|stop_valid_sync\(29),
	datad => \inst19|stop_valid_sync~45_combout\,
	combout => \inst19|stop_valid_sync~79_combout\);

-- Location: LCCOMB_X23_Y16_N26
\inst19|stop_valid_sync~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~105_combout\ = (!\inst19|process_0~0_combout\ & \inst19|stop_valid_sync~79_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|process_0~0_combout\,
	datad => \inst19|stop_valid_sync~79_combout\,
	combout => \inst19|stop_valid_sync~105_combout\);

-- Location: FF_X23_Y16_N27
\inst19|stop_valid_sync[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|stop_valid_sync~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|stop_valid_sync\(29));

-- Location: LCCOMB_X23_Y16_N18
\inst19|stop_valid_sync~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~64_combout\ = (\inst19|stop_valid_sync\(10)) # ((\inst19|stop_valid_sync~45_combout\ & (\inst19|stop_valid_sync~63_combout\ & !\inst19|stop_valid_sync\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~45_combout\,
	datab => \inst19|stop_valid_sync~63_combout\,
	datac => \inst19|stop_valid_sync\(29),
	datad => \inst19|stop_valid_sync\(10),
	combout => \inst19|stop_valid_sync~64_combout\);

-- Location: LCCOMB_X23_Y16_N16
\inst19|stop_valid_sync~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~104_combout\ = (!\inst19|process_0~0_combout\ & \inst19|stop_valid_sync~64_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|process_0~0_combout\,
	datad => \inst19|stop_valid_sync~64_combout\,
	combout => \inst19|stop_valid_sync~104_combout\);

-- Location: FF_X23_Y16_N17
\inst19|stop_valid_sync[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|stop_valid_sync~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|stop_valid_sync\(10));

-- Location: LCCOMB_X23_Y16_N12
\inst19|stop_valid_sync~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~106_combout\ = (\inst19|stop_valid_sync~47_combout\ & !\inst19|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~47_combout\,
	datad => \inst19|process_0~0_combout\,
	combout => \inst19|stop_valid_sync~106_combout\);

-- Location: FF_X23_Y16_N13
\inst19|stop_valid_sync[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|stop_valid_sync~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|stop_valid_sync\(12));

-- Location: LCCOMB_X23_Y16_N6
\inst19|stop_valid_sync~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~18_combout\ = (\inst19|stop_valid_sync~17_combout\ & (!\inst19|stop_valid_sync\(10) & (!\inst19|stop_valid_sync\(29) & !\inst19|stop_valid_sync\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~17_combout\,
	datab => \inst19|stop_valid_sync\(10),
	datac => \inst19|stop_valid_sync\(29),
	datad => \inst19|stop_valid_sync\(12),
	combout => \inst19|stop_valid_sync~18_combout\);

-- Location: LCCOMB_X19_Y16_N30
\inst19|stop_valid_sync~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~60_combout\ = (\inst19|stop_valid_sync~59_combout\ & (!\inst19|stop_valid_sync\(9) & \inst19|stop_valid_sync~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~59_combout\,
	datab => \inst19|stop_valid_sync\(9),
	datad => \inst19|stop_valid_sync~18_combout\,
	combout => \inst19|stop_valid_sync~60_combout\);

-- Location: LCCOMB_X19_Y16_N16
\inst19|stop_valid_sync~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~61_combout\ = (\inst19|stop_valid_sync\(8)) # ((!\inst19|stop_valid_sync\(14) & (\inst19|t_0\(8) & \inst19|stop_valid_sync~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(14),
	datab => \inst19|t_0\(8),
	datac => \inst19|stop_valid_sync~60_combout\,
	datad => \inst19|stop_valid_sync\(8),
	combout => \inst19|stop_valid_sync~61_combout\);

-- Location: LCCOMB_X19_Y16_N12
\inst19|stop_valid_sync~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~109_combout\ = (!\inst19|process_0~0_combout\ & \inst19|stop_valid_sync~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|process_0~0_combout\,
	datad => \inst19|stop_valid_sync~61_combout\,
	combout => \inst19|stop_valid_sync~109_combout\);

-- Location: FF_X19_Y16_N13
\inst19|stop_valid_sync[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|stop_valid_sync~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|stop_valid_sync\(8));

-- Location: LCCOMB_X23_Y16_N0
\inst19|stop_valid_sync~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~19_combout\ = (!\inst19|stop_valid_sync\(9) & (!\inst19|stop_valid_sync\(8) & (!\inst19|stop_valid_sync\(14) & \inst19|stop_valid_sync~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(9),
	datab => \inst19|stop_valid_sync\(8),
	datac => \inst19|stop_valid_sync\(14),
	datad => \inst19|stop_valid_sync~18_combout\,
	combout => \inst19|stop_valid_sync~19_combout\);

-- Location: LCCOMB_X21_Y14_N8
\inst19|stop_valid_sync~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~52_combout\ = (\inst19|stop_valid_sync~16_combout\ & (\inst19|t_sweep_start[0]~0_combout\ & (\inst19|stop_valid_sync~116_combout\ & \inst19|stop_valid_sync~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~16_combout\,
	datab => \inst19|t_sweep_start[0]~0_combout\,
	datac => \inst19|stop_valid_sync~116_combout\,
	datad => \inst19|stop_valid_sync~19_combout\,
	combout => \inst19|stop_valid_sync~52_combout\);

-- Location: LCCOMB_X21_Y14_N24
\inst19|stop_valid_sync~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~84_combout\ = (\inst19|stop_valid_sync~27_combout\ & (\inst19|t_0\(31) & !\inst19|stop_valid_sync\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~27_combout\,
	datac => \inst19|t_0\(31),
	datad => \inst19|stop_valid_sync\(7),
	combout => \inst19|stop_valid_sync~84_combout\);

-- Location: LCCOMB_X21_Y14_N14
\inst19|stop_valid_sync~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~85_combout\ = (\inst19|stop_valid_sync\(31)) # ((\inst19|stop_valid_sync~10_combout\ & (\inst19|stop_valid_sync~52_combout\ & \inst19|stop_valid_sync~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~10_combout\,
	datab => \inst19|stop_valid_sync~52_combout\,
	datac => \inst19|stop_valid_sync\(31),
	datad => \inst19|stop_valid_sync~84_combout\,
	combout => \inst19|stop_valid_sync~85_combout\);

-- Location: FF_X21_Y14_N15
\inst19|stop_valid_sync[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|stop_valid_sync~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|stop_valid_sync\(31));

-- Location: LCCOMB_X21_Y14_N2
\inst19|stop_valid_sync~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~53_combout\ = (\inst19|stop_valid_sync~27_combout\ & (\inst19|t_0\(7) & !\inst19|stop_valid_sync\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~27_combout\,
	datab => \inst19|t_0\(7),
	datac => \inst19|stop_valid_sync\(31),
	combout => \inst19|stop_valid_sync~53_combout\);

-- Location: LCCOMB_X21_Y14_N20
\inst19|stop_valid_sync~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~54_combout\ = (\inst19|stop_valid_sync\(7)) # ((\inst19|stop_valid_sync~10_combout\ & (\inst19|stop_valid_sync~53_combout\ & \inst19|stop_valid_sync~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~10_combout\,
	datab => \inst19|stop_valid_sync~53_combout\,
	datac => \inst19|stop_valid_sync~52_combout\,
	datad => \inst19|stop_valid_sync\(7),
	combout => \inst19|stop_valid_sync~54_combout\);

-- Location: LCCOMB_X21_Y14_N0
\inst19|stop_valid_sync~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~110_combout\ = (!\inst19|process_0~0_combout\ & \inst19|stop_valid_sync~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|process_0~0_combout\,
	datad => \inst19|stop_valid_sync~54_combout\,
	combout => \inst19|stop_valid_sync~110_combout\);

-- Location: FF_X21_Y14_N1
\inst19|stop_valid_sync[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|stop_valid_sync~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|stop_valid_sync\(7));

-- Location: LCCOMB_X21_Y14_N26
\inst19|stop_valid_sync~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~21_combout\ = (\inst19|stop_valid_sync~16_combout\ & (!\inst19|stop_valid_sync\(7) & (!\inst19|stop_valid_sync\(31) & \inst19|stop_valid_sync~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~16_combout\,
	datab => \inst19|stop_valid_sync\(7),
	datac => \inst19|stop_valid_sync\(31),
	datad => \inst19|stop_valid_sync~20_combout\,
	combout => \inst19|stop_valid_sync~21_combout\);

-- Location: LCCOMB_X19_Y13_N12
\inst19|stop_valid_sync~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~42_combout\ = (\inst19|stop_valid_sync~27_combout\ & \inst19|stop_valid_sync~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|stop_valid_sync~27_combout\,
	datac => \inst19|stop_valid_sync~21_combout\,
	combout => \inst19|stop_valid_sync~42_combout\);

-- Location: LCCOMB_X23_Y15_N0
\inst19|stop_valid_sync~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~56_combout\ = (\inst19|stop_valid_sync\(30)) # ((!\inst19|stop_valid_sync\(1) & (\inst19|t_0\(30) & \inst19|stop_valid_sync~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(1),
	datab => \inst19|stop_valid_sync\(30),
	datac => \inst19|t_0\(30),
	datad => \inst19|stop_valid_sync~42_combout\,
	combout => \inst19|stop_valid_sync~56_combout\);

-- Location: LCCOMB_X20_Y13_N22
\inst19|stop_valid_sync~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~87_combout\ = (!\inst19|process_0~0_combout\ & \inst19|stop_valid_sync~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|process_0~0_combout\,
	datac => \inst19|stop_valid_sync~56_combout\,
	combout => \inst19|stop_valid_sync~87_combout\);

-- Location: FF_X20_Y13_N23
\inst19|stop_valid_sync[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|stop_valid_sync~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|stop_valid_sync\(30));

-- Location: LCCOMB_X23_Y15_N24
\inst19|stop_valid_sync~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~10_combout\ = (!\inst19|stop_valid_sync\(1) & !\inst19|stop_valid_sync\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(1),
	datac => \inst19|stop_valid_sync\(30),
	combout => \inst19|stop_valid_sync~10_combout\);

-- Location: LCCOMB_X19_Y13_N2
\inst19|stop_valid_sync~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~58_combout\ = (\inst19|stop_valid_sync\(4)) # ((\inst19|stop_valid_sync~57_combout\ & (\inst19|t_0\(4) & !\inst19|stop_valid_sync\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(4),
	datab => \inst19|stop_valid_sync~57_combout\,
	datac => \inst19|t_0\(4),
	datad => \inst19|stop_valid_sync\(5),
	combout => \inst19|stop_valid_sync~58_combout\);

-- Location: LCCOMB_X19_Y13_N10
\inst19|stop_valid_sync~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~112_combout\ = (!\inst19|process_0~0_combout\ & \inst19|stop_valid_sync~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|process_0~0_combout\,
	datad => \inst19|stop_valid_sync~58_combout\,
	combout => \inst19|stop_valid_sync~112_combout\);

-- Location: FF_X19_Y13_N11
\inst19|stop_valid_sync[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|stop_valid_sync~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|stop_valid_sync\(4));

-- Location: LCCOMB_X19_Y13_N4
\inst19|stop_valid_sync~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~22_combout\ = (\inst19|stop_valid_sync~21_combout\ & (!\inst19|stop_valid_sync\(5) & (\inst19|stop_valid_sync~10_combout\ & !\inst19|stop_valid_sync\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~21_combout\,
	datab => \inst19|stop_valid_sync\(5),
	datac => \inst19|stop_valid_sync~10_combout\,
	datad => \inst19|stop_valid_sync\(4),
	combout => \inst19|stop_valid_sync~22_combout\);

-- Location: LCCOMB_X19_Y13_N26
\inst19|stop_valid_sync~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~23_combout\ = (!\inst19|stop_valid_sync\(6) & (!\inst19|stop_valid_sync\(3) & \inst19|stop_valid_sync~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(6),
	datab => \inst19|stop_valid_sync\(3),
	datac => \inst19|stop_valid_sync~22_combout\,
	combout => \inst19|stop_valid_sync~23_combout\);

-- Location: LCCOMB_X20_Y13_N0
\inst19|stop_valid_sync~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~25_combout\ = (\inst19|stop_valid_sync\(2)) # ((!\inst19|stop_valid_sync\(0) & (\inst19|stop_valid_sync~23_combout\ & \inst19|t_0\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(2),
	datab => \inst19|stop_valid_sync\(0),
	datac => \inst19|stop_valid_sync~23_combout\,
	datad => \inst19|t_0\(2),
	combout => \inst19|stop_valid_sync~25_combout\);

-- Location: LCCOMB_X20_Y13_N6
\inst19|stop_valid_sync~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~115_combout\ = (!\inst19|process_0~0_combout\ & \inst19|stop_valid_sync~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|process_0~0_combout\,
	datad => \inst19|stop_valid_sync~25_combout\,
	combout => \inst19|stop_valid_sync~115_combout\);

-- Location: FF_X20_Y13_N7
\inst19|stop_valid_sync[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|stop_valid_sync~115_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|stop_valid_sync\(2));

-- Location: LCCOMB_X20_Y13_N4
\inst19|stop_valid_sync~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~24_combout\ = (\inst19|stop_valid_sync\(0)) # ((\inst19|stop_valid_sync~23_combout\ & (\inst19|t_0\(0) & !\inst19|stop_valid_sync\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~23_combout\,
	datab => \inst19|stop_valid_sync\(0),
	datac => \inst19|t_0\(0),
	datad => \inst19|stop_valid_sync\(2),
	combout => \inst19|stop_valid_sync~24_combout\);

-- Location: LCCOMB_X20_Y13_N10
\inst19|stop_valid_sync~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~86_combout\ = (!\inst19|process_0~0_combout\ & \inst19|stop_valid_sync~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|process_0~0_combout\,
	datad => \inst19|stop_valid_sync~24_combout\,
	combout => \inst19|stop_valid_sync~86_combout\);

-- Location: FF_X20_Y13_N11
\inst19|stop_valid_sync[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|stop_valid_sync~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|stop_valid_sync\(0));

-- Location: LCCOMB_X19_Y13_N24
\inst19|stop_valid_sync~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~34_combout\ = (!\inst19|stop_valid_sync\(2) & (!\inst19|stop_valid_sync\(0) & \inst19|t_0\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(2),
	datac => \inst19|stop_valid_sync\(0),
	datad => \inst19|t_0\(6),
	combout => \inst19|stop_valid_sync~34_combout\);

-- Location: LCCOMB_X19_Y13_N18
\inst19|stop_valid_sync~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~35_combout\ = (\inst19|stop_valid_sync\(6)) # ((!\inst19|stop_valid_sync\(3) & (\inst19|stop_valid_sync~22_combout\ & \inst19|stop_valid_sync~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(6),
	datab => \inst19|stop_valid_sync\(3),
	datac => \inst19|stop_valid_sync~22_combout\,
	datad => \inst19|stop_valid_sync~34_combout\,
	combout => \inst19|stop_valid_sync~35_combout\);

-- Location: LCCOMB_X19_Y13_N22
\inst19|stop_valid_sync~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~113_combout\ = (!\inst19|process_0~0_combout\ & \inst19|stop_valid_sync~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|process_0~0_combout\,
	datad => \inst19|stop_valid_sync~35_combout\,
	combout => \inst19|stop_valid_sync~113_combout\);

-- Location: FF_X19_Y13_N23
\inst19|stop_valid_sync[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|stop_valid_sync~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|stop_valid_sync\(6));

-- Location: LCCOMB_X19_Y13_N28
\inst19|stop_valid_sync~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~26_combout\ = (!\inst19|stop_valid_sync\(2) & (!\inst19|stop_valid_sync\(0) & !\inst19|stop_valid_sync\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(2),
	datab => \inst19|stop_valid_sync\(0),
	datac => \inst19|stop_valid_sync\(6),
	combout => \inst19|stop_valid_sync~26_combout\);

-- Location: LCCOMB_X19_Y13_N6
\inst19|stop_valid_sync~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~51_combout\ = (\inst19|stop_valid_sync\(3)) # ((\inst19|t_0\(3) & (\inst19|stop_valid_sync~26_combout\ & \inst19|stop_valid_sync~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(3),
	datab => \inst19|stop_valid_sync~26_combout\,
	datac => \inst19|stop_valid_sync~22_combout\,
	datad => \inst19|stop_valid_sync\(3),
	combout => \inst19|stop_valid_sync~51_combout\);

-- Location: LCCOMB_X19_Y13_N16
\inst19|stop_valid_sync~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~114_combout\ = (!\inst19|process_0~0_combout\ & \inst19|stop_valid_sync~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|process_0~0_combout\,
	datad => \inst19|stop_valid_sync~51_combout\,
	combout => \inst19|stop_valid_sync~114_combout\);

-- Location: FF_X19_Y13_N17
\inst19|stop_valid_sync[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|stop_valid_sync~114_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|stop_valid_sync\(3));

-- Location: LCCOMB_X19_Y13_N8
\inst19|stop_valid_sync~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~57_combout\ = (\inst19|stop_valid_sync~10_combout\ & (!\inst19|stop_valid_sync\(3) & (\inst19|stop_valid_sync~21_combout\ & \inst19|stop_valid_sync~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~10_combout\,
	datab => \inst19|stop_valid_sync\(3),
	datac => \inst19|stop_valid_sync~21_combout\,
	datad => \inst19|stop_valid_sync~26_combout\,
	combout => \inst19|stop_valid_sync~57_combout\);

-- Location: LCCOMB_X19_Y13_N20
\inst19|stop_valid_sync~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~62_combout\ = (\inst19|stop_valid_sync\(5)) # ((!\inst19|stop_valid_sync\(4) & (\inst19|stop_valid_sync~57_combout\ & \inst19|t_0\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(4),
	datab => \inst19|stop_valid_sync\(5),
	datac => \inst19|stop_valid_sync~57_combout\,
	datad => \inst19|t_0\(5),
	combout => \inst19|stop_valid_sync~62_combout\);

-- Location: LCCOMB_X19_Y16_N18
\inst19|LessThan6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan6~5_combout\ = (\inst19|stop_valid_sync~64_combout\) # ((\inst19|stop_valid_sync~62_combout\) # ((\inst19|stop_valid_sync~58_combout\) # (\inst19|stop_valid_sync~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~64_combout\,
	datab => \inst19|stop_valid_sync~62_combout\,
	datac => \inst19|stop_valid_sync~58_combout\,
	datad => \inst19|stop_valid_sync~61_combout\,
	combout => \inst19|LessThan6~5_combout\);

-- Location: LCCOMB_X19_Y14_N18
\inst19|stop_valid_sync~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~73_combout\ = (\inst19|stop_valid_sync~13_combout\ & (\inst19|t_0\(27) & (\inst19|stop_valid_sync~14_combout\ & !\inst19|stop_valid_sync\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~13_combout\,
	datab => \inst19|t_0\(27),
	datac => \inst19|stop_valid_sync~14_combout\,
	datad => \inst19|stop_valid_sync\(16),
	combout => \inst19|stop_valid_sync~73_combout\);

-- Location: LCCOMB_X19_Y14_N28
\inst19|stop_valid_sync~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~74_combout\ = (\inst19|stop_valid_sync\(27)) # ((\inst19|stop_valid_sync~73_combout\ & \inst19|stop_valid_sync~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|stop_valid_sync\(27),
	datac => \inst19|stop_valid_sync~73_combout\,
	datad => \inst19|stop_valid_sync~29_combout\,
	combout => \inst19|stop_valid_sync~74_combout\);

-- Location: LCCOMB_X20_Y12_N20
\inst19|LessThan6~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan6~7_combout\ = (\inst19|stop_valid_sync~72_combout\) # ((\inst19|stop_valid_sync~74_combout\) # ((\inst19|stop_valid_sync~79_combout\) # (\inst19|stop_valid_sync~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~72_combout\,
	datab => \inst19|stop_valid_sync~74_combout\,
	datac => \inst19|stop_valid_sync~79_combout\,
	datad => \inst19|stop_valid_sync~76_combout\,
	combout => \inst19|LessThan6~7_combout\);

-- Location: LCCOMB_X19_Y16_N4
\inst19|LessThan6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan6~8_combout\ = (\inst19|stop_valid_sync~82_combout\) # ((\inst19|stop_valid_sync~80_combout\) # ((\inst19|LessThan6~7_combout\) # (\inst19|stop_valid_sync~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~82_combout\,
	datab => \inst19|stop_valid_sync~80_combout\,
	datac => \inst19|LessThan6~7_combout\,
	datad => \inst19|stop_valid_sync~83_combout\,
	combout => \inst19|LessThan6~8_combout\);

-- Location: LCCOMB_X19_Y14_N0
\inst19|stop_valid_sync~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~88_combout\ = (!\inst19|process_0~0_combout\ & \inst19|stop_valid_sync~43_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|process_0~0_combout\,
	datad => \inst19|stop_valid_sync~43_combout\,
	combout => \inst19|stop_valid_sync~88_combout\);

-- Location: FF_X19_Y14_N1
\inst19|stop_valid_sync[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|stop_valid_sync~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|stop_valid_sync\(1));

-- Location: LCCOMB_X23_Y15_N14
\inst19|stop_valid_sync~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~43_combout\ = (\inst19|stop_valid_sync\(1)) # ((\inst19|stop_valid_sync~42_combout\ & (!\inst19|stop_valid_sync\(30) & \inst19|t_0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~42_combout\,
	datab => \inst19|stop_valid_sync\(30),
	datac => \inst19|stop_valid_sync\(1),
	datad => \inst19|t_0\(1),
	combout => \inst19|stop_valid_sync~43_combout\);

-- Location: LCCOMB_X23_Y16_N20
\inst19|stop_valid_sync~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~46_combout\ = (\inst19|stop_valid_sync~45_combout\ & (!\inst19|stop_valid_sync\(10) & (!\inst19|stop_valid_sync\(29) & \inst19|stop_valid_sync~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~45_combout\,
	datab => \inst19|stop_valid_sync\(10),
	datac => \inst19|stop_valid_sync\(29),
	datad => \inst19|stop_valid_sync~44_combout\,
	combout => \inst19|stop_valid_sync~46_combout\);

-- Location: LCCOMB_X23_Y16_N22
\inst19|stop_valid_sync~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~47_combout\ = (\inst19|stop_valid_sync\(12)) # ((\inst19|stop_valid_sync~17_combout\ & (\inst19|stop_valid_sync~46_combout\ & \inst19|t_0\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~17_combout\,
	datab => \inst19|stop_valid_sync~46_combout\,
	datac => \inst19|t_0\(12),
	datad => \inst19|stop_valid_sync\(12),
	combout => \inst19|stop_valid_sync~47_combout\);

-- Location: LCCOMB_X19_Y14_N22
\inst19|LessThan6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan6~2_combout\ = (\inst19|stop_valid_sync~50_combout\) # ((\inst19|stop_valid_sync~43_combout\) # ((\inst19|stop_valid_sync~49_combout\) # (\inst19|stop_valid_sync~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~50_combout\,
	datab => \inst19|stop_valid_sync~43_combout\,
	datac => \inst19|stop_valid_sync~49_combout\,
	datad => \inst19|stop_valid_sync~47_combout\,
	combout => \inst19|LessThan6~2_combout\);

-- Location: LCCOMB_X20_Y13_N18
\inst19|LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan6~0_combout\ = (\inst19|stop_valid_sync~24_combout\) # ((\inst19|stop_valid_sync~32_combout\) # ((\inst19|stop_valid_sync~33_combout\) # (\inst19|stop_valid_sync~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~24_combout\,
	datab => \inst19|stop_valid_sync~32_combout\,
	datac => \inst19|stop_valid_sync~33_combout\,
	datad => \inst19|stop_valid_sync~25_combout\,
	combout => \inst19|LessThan6~0_combout\);

-- Location: LCCOMB_X20_Y14_N24
\inst19|LessThan6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan6~1_combout\ = (\inst19|stop_valid_sync~37_combout\) # ((\inst19|stop_valid_sync~40_combout\) # ((\inst19|stop_valid_sync~35_combout\) # (\inst19|stop_valid_sync~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~37_combout\,
	datab => \inst19|stop_valid_sync~40_combout\,
	datac => \inst19|stop_valid_sync~35_combout\,
	datad => \inst19|stop_valid_sync~41_combout\,
	combout => \inst19|LessThan6~1_combout\);

-- Location: LCCOMB_X20_Y14_N18
\inst19|LessThan6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan6~4_combout\ = (\inst19|LessThan6~3_combout\) # ((\inst19|LessThan6~2_combout\) # ((\inst19|LessThan6~0_combout\) # (\inst19|LessThan6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan6~3_combout\,
	datab => \inst19|LessThan6~2_combout\,
	datac => \inst19|LessThan6~0_combout\,
	datad => \inst19|LessThan6~1_combout\,
	combout => \inst19|LessThan6~4_combout\);

-- Location: LCCOMB_X19_Y16_N14
\inst19|LessThan6~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan6~9_combout\ = (\inst19|LessThan6~6_combout\) # ((\inst19|LessThan6~5_combout\) # ((\inst19|LessThan6~8_combout\) # (\inst19|LessThan6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan6~6_combout\,
	datab => \inst19|LessThan6~5_combout\,
	datac => \inst19|LessThan6~8_combout\,
	datad => \inst19|LessThan6~4_combout\,
	combout => \inst19|LessThan6~9_combout\);

-- Location: LCCOMB_X21_Y14_N10
\inst19|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|process_0~0_combout\ = (!\inst19|stop_valid_sync~85_combout\ & (!\inst19|start_valid_sync\(31) & (\inst19|LessThan6~9_combout\ & !\inst19|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~85_combout\,
	datab => \inst19|start_valid_sync\(31),
	datac => \inst19|LessThan6~9_combout\,
	datad => \inst19|Equal0~9_combout\,
	combout => \inst19|process_0~0_combout\);

-- Location: LCCOMB_X20_Y13_N2
\inst19|start_valid_sync[22]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|start_valid_sync[22]~0_combout\ = (\inst19|process_0~0_combout\) # ((!\inst19|Equal0~10_combout\ & (\inst19|t_sweep_start[0]~2_combout\ & !\inst19|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal0~10_combout\,
	datab => \inst19|t_sweep_start[0]~2_combout\,
	datac => \inst19|LessThan0~6_combout\,
	datad => \inst19|process_0~0_combout\,
	combout => \inst19|start_valid_sync[22]~0_combout\);

-- Location: FF_X23_Y15_N5
\inst19|start_valid_sync[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|start_valid_sync[29]~feeder_combout\,
	ena => \inst19|start_valid_sync[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(29));

-- Location: FF_X23_Y15_N23
\inst19|start_valid_sync[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_0\(28),
	sload => VCC,
	ena => \inst19|start_valid_sync[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(28));

-- Location: FF_X20_Y14_N11
\inst19|start_valid_sync[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_0\(26),
	sload => VCC,
	ena => \inst19|start_valid_sync[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(26));

-- Location: FF_X20_Y14_N15
\inst19|start_valid_sync[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_0\(24),
	sload => VCC,
	ena => \inst19|start_valid_sync[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(24));

-- Location: LCCOMB_X20_Y14_N0
\inst19|start_valid_sync[23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|start_valid_sync[23]~feeder_combout\ = \inst19|t_0\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(23),
	combout => \inst19|start_valid_sync[23]~feeder_combout\);

-- Location: FF_X20_Y14_N1
\inst19|start_valid_sync[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|start_valid_sync[23]~feeder_combout\,
	ena => \inst19|start_valid_sync[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(23));

-- Location: LCCOMB_X19_Y15_N6
\inst19|start_valid_sync[22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|start_valid_sync[22]~feeder_combout\ = \inst19|t_0\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(22),
	combout => \inst19|start_valid_sync[22]~feeder_combout\);

-- Location: FF_X19_Y15_N7
\inst19|start_valid_sync[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|start_valid_sync[22]~feeder_combout\,
	ena => \inst19|start_valid_sync[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(22));

-- Location: LCCOMB_X21_Y16_N22
\inst19|start_valid_sync[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|start_valid_sync[13]~feeder_combout\ = \inst19|t_0\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(13),
	combout => \inst19|start_valid_sync[13]~feeder_combout\);

-- Location: FF_X21_Y16_N23
\inst19|start_valid_sync[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|start_valid_sync[13]~feeder_combout\,
	ena => \inst19|start_valid_sync[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(13));

-- Location: FF_X22_Y16_N17
\inst19|start_valid_sync[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_0\(10),
	sload => VCC,
	ena => \inst19|start_valid_sync[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(10));

-- Location: LCCOMB_X21_Y16_N0
\inst19|start_valid_sync[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|start_valid_sync[8]~feeder_combout\ = \inst19|t_0\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(8),
	combout => \inst19|start_valid_sync[8]~feeder_combout\);

-- Location: FF_X21_Y16_N1
\inst19|start_valid_sync[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|start_valid_sync[8]~feeder_combout\,
	ena => \inst19|start_valid_sync[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(8));

-- Location: FF_X23_Y15_N21
\inst19|start_valid_sync[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_0\(7),
	sload => VCC,
	ena => \inst19|start_valid_sync[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(7));

-- Location: FF_X22_Y16_N27
\inst19|start_valid_sync[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_0\(6),
	sload => VCC,
	ena => \inst19|start_valid_sync[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(6));

-- Location: FF_X22_Y16_N21
\inst19|start_valid_sync[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_0\(5),
	sload => VCC,
	ena => \inst19|start_valid_sync[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(5));

-- Location: FF_X22_Y16_N23
\inst19|start_valid_sync[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_0\(4),
	sload => VCC,
	ena => \inst19|start_valid_sync[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(4));

-- Location: LCCOMB_X22_Y16_N8
\inst19|start_valid_sync[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|start_valid_sync[3]~feeder_combout\ = \inst19|t_0\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(3),
	combout => \inst19|start_valid_sync[3]~feeder_combout\);

-- Location: FF_X22_Y16_N9
\inst19|start_valid_sync[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|start_valid_sync[3]~feeder_combout\,
	ena => \inst19|start_valid_sync[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(3));

-- Location: LCCOMB_X20_Y16_N2
\inst19|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~2_combout\ = (\inst19|start_valid_sync\(1) & ((\inst19|stop_valid_sync~43_combout\ & (!\inst19|Add2~1\)) # (!\inst19|stop_valid_sync~43_combout\ & ((\inst19|Add2~1\) # (GND))))) # (!\inst19|start_valid_sync\(1) & 
-- ((\inst19|stop_valid_sync~43_combout\ & (\inst19|Add2~1\ & VCC)) # (!\inst19|stop_valid_sync~43_combout\ & (!\inst19|Add2~1\))))
-- \inst19|Add2~3\ = CARRY((\inst19|start_valid_sync\(1) & ((!\inst19|Add2~1\) # (!\inst19|stop_valid_sync~43_combout\))) # (!\inst19|start_valid_sync\(1) & (!\inst19|stop_valid_sync~43_combout\ & !\inst19|Add2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|start_valid_sync\(1),
	datab => \inst19|stop_valid_sync~43_combout\,
	datad => VCC,
	cin => \inst19|Add2~1\,
	combout => \inst19|Add2~2_combout\,
	cout => \inst19|Add2~3\);

-- Location: LCCOMB_X20_Y16_N6
\inst19|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~6_combout\ = (\inst19|stop_valid_sync~51_combout\ & ((\inst19|start_valid_sync\(3) & (!\inst19|Add2~5\)) # (!\inst19|start_valid_sync\(3) & (\inst19|Add2~5\ & VCC)))) # (!\inst19|stop_valid_sync~51_combout\ & ((\inst19|start_valid_sync\(3) & 
-- ((\inst19|Add2~5\) # (GND))) # (!\inst19|start_valid_sync\(3) & (!\inst19|Add2~5\))))
-- \inst19|Add2~7\ = CARRY((\inst19|stop_valid_sync~51_combout\ & (\inst19|start_valid_sync\(3) & !\inst19|Add2~5\)) # (!\inst19|stop_valid_sync~51_combout\ & ((\inst19|start_valid_sync\(3)) # (!\inst19|Add2~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~51_combout\,
	datab => \inst19|start_valid_sync\(3),
	datad => VCC,
	cin => \inst19|Add2~5\,
	combout => \inst19|Add2~6_combout\,
	cout => \inst19|Add2~7\);

-- Location: LCCOMB_X20_Y16_N8
\inst19|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~8_combout\ = ((\inst19|stop_valid_sync~58_combout\ $ (\inst19|start_valid_sync\(4) $ (\inst19|Add2~7\)))) # (GND)
-- \inst19|Add2~9\ = CARRY((\inst19|stop_valid_sync~58_combout\ & ((!\inst19|Add2~7\) # (!\inst19|start_valid_sync\(4)))) # (!\inst19|stop_valid_sync~58_combout\ & (!\inst19|start_valid_sync\(4) & !\inst19|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~58_combout\,
	datab => \inst19|start_valid_sync\(4),
	datad => VCC,
	cin => \inst19|Add2~7\,
	combout => \inst19|Add2~8_combout\,
	cout => \inst19|Add2~9\);

-- Location: LCCOMB_X20_Y16_N12
\inst19|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~12_combout\ = ((\inst19|stop_valid_sync~35_combout\ $ (\inst19|start_valid_sync\(6) $ (\inst19|Add2~11\)))) # (GND)
-- \inst19|Add2~13\ = CARRY((\inst19|stop_valid_sync~35_combout\ & ((!\inst19|Add2~11\) # (!\inst19|start_valid_sync\(6)))) # (!\inst19|stop_valid_sync~35_combout\ & (!\inst19|start_valid_sync\(6) & !\inst19|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~35_combout\,
	datab => \inst19|start_valid_sync\(6),
	datad => VCC,
	cin => \inst19|Add2~11\,
	combout => \inst19|Add2~12_combout\,
	cout => \inst19|Add2~13\);

-- Location: LCCOMB_X20_Y16_N14
\inst19|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~14_combout\ = (\inst19|stop_valid_sync~54_combout\ & ((\inst19|start_valid_sync\(7) & (!\inst19|Add2~13\)) # (!\inst19|start_valid_sync\(7) & (\inst19|Add2~13\ & VCC)))) # (!\inst19|stop_valid_sync~54_combout\ & ((\inst19|start_valid_sync\(7) 
-- & ((\inst19|Add2~13\) # (GND))) # (!\inst19|start_valid_sync\(7) & (!\inst19|Add2~13\))))
-- \inst19|Add2~15\ = CARRY((\inst19|stop_valid_sync~54_combout\ & (\inst19|start_valid_sync\(7) & !\inst19|Add2~13\)) # (!\inst19|stop_valid_sync~54_combout\ & ((\inst19|start_valid_sync\(7)) # (!\inst19|Add2~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~54_combout\,
	datab => \inst19|start_valid_sync\(7),
	datad => VCC,
	cin => \inst19|Add2~13\,
	combout => \inst19|Add2~14_combout\,
	cout => \inst19|Add2~15\);

-- Location: LCCOMB_X20_Y16_N20
\inst19|Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~20_combout\ = ((\inst19|stop_valid_sync~64_combout\ $ (\inst19|start_valid_sync\(10) $ (\inst19|Add2~19\)))) # (GND)
-- \inst19|Add2~21\ = CARRY((\inst19|stop_valid_sync~64_combout\ & ((!\inst19|Add2~19\) # (!\inst19|start_valid_sync\(10)))) # (!\inst19|stop_valid_sync~64_combout\ & (!\inst19|start_valid_sync\(10) & !\inst19|Add2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~64_combout\,
	datab => \inst19|start_valid_sync\(10),
	datad => VCC,
	cin => \inst19|Add2~19\,
	combout => \inst19|Add2~20_combout\,
	cout => \inst19|Add2~21\);

-- Location: LCCOMB_X20_Y16_N22
\inst19|Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~22_combout\ = (\inst19|start_valid_sync\(11) & ((\inst19|stop_valid_sync~66_combout\ & (!\inst19|Add2~21\)) # (!\inst19|stop_valid_sync~66_combout\ & ((\inst19|Add2~21\) # (GND))))) # (!\inst19|start_valid_sync\(11) & 
-- ((\inst19|stop_valid_sync~66_combout\ & (\inst19|Add2~21\ & VCC)) # (!\inst19|stop_valid_sync~66_combout\ & (!\inst19|Add2~21\))))
-- \inst19|Add2~23\ = CARRY((\inst19|start_valid_sync\(11) & ((!\inst19|Add2~21\) # (!\inst19|stop_valid_sync~66_combout\))) # (!\inst19|start_valid_sync\(11) & (!\inst19|stop_valid_sync~66_combout\ & !\inst19|Add2~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|start_valid_sync\(11),
	datab => \inst19|stop_valid_sync~66_combout\,
	datad => VCC,
	cin => \inst19|Add2~21\,
	combout => \inst19|Add2~22_combout\,
	cout => \inst19|Add2~23\);

-- Location: LCCOMB_X20_Y16_N26
\inst19|Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~26_combout\ = (\inst19|stop_valid_sync~68_combout\ & ((\inst19|start_valid_sync\(13) & (!\inst19|Add2~25\)) # (!\inst19|start_valid_sync\(13) & (\inst19|Add2~25\ & VCC)))) # (!\inst19|stop_valid_sync~68_combout\ & 
-- ((\inst19|start_valid_sync\(13) & ((\inst19|Add2~25\) # (GND))) # (!\inst19|start_valid_sync\(13) & (!\inst19|Add2~25\))))
-- \inst19|Add2~27\ = CARRY((\inst19|stop_valid_sync~68_combout\ & (\inst19|start_valid_sync\(13) & !\inst19|Add2~25\)) # (!\inst19|stop_valid_sync~68_combout\ & ((\inst19|start_valid_sync\(13)) # (!\inst19|Add2~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~68_combout\,
	datab => \inst19|start_valid_sync\(13),
	datad => VCC,
	cin => \inst19|Add2~25\,
	combout => \inst19|Add2~26_combout\,
	cout => \inst19|Add2~27\);

-- Location: LCCOMB_X20_Y15_N0
\inst19|Add2~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~32_combout\ = ((\inst19|stop_valid_sync~50_combout\ $ (\inst19|start_valid_sync\(16) $ (\inst19|Add2~31\)))) # (GND)
-- \inst19|Add2~33\ = CARRY((\inst19|stop_valid_sync~50_combout\ & ((!\inst19|Add2~31\) # (!\inst19|start_valid_sync\(16)))) # (!\inst19|stop_valid_sync~50_combout\ & (!\inst19|start_valid_sync\(16) & !\inst19|Add2~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~50_combout\,
	datab => \inst19|start_valid_sync\(16),
	datad => VCC,
	cin => \inst19|Add2~31\,
	combout => \inst19|Add2~32_combout\,
	cout => \inst19|Add2~33\);

-- Location: LCCOMB_X20_Y15_N6
\inst19|Add2~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~38_combout\ = (\inst19|start_valid_sync\(19) & ((\inst19|stop_valid_sync~72_combout\ & (!\inst19|Add2~37\)) # (!\inst19|stop_valid_sync~72_combout\ & ((\inst19|Add2~37\) # (GND))))) # (!\inst19|start_valid_sync\(19) & 
-- ((\inst19|stop_valid_sync~72_combout\ & (\inst19|Add2~37\ & VCC)) # (!\inst19|stop_valid_sync~72_combout\ & (!\inst19|Add2~37\))))
-- \inst19|Add2~39\ = CARRY((\inst19|start_valid_sync\(19) & ((!\inst19|Add2~37\) # (!\inst19|stop_valid_sync~72_combout\))) # (!\inst19|start_valid_sync\(19) & (!\inst19|stop_valid_sync~72_combout\ & !\inst19|Add2~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|start_valid_sync\(19),
	datab => \inst19|stop_valid_sync~72_combout\,
	datad => VCC,
	cin => \inst19|Add2~37\,
	combout => \inst19|Add2~38_combout\,
	cout => \inst19|Add2~39\);

-- Location: LCCOMB_X20_Y15_N8
\inst19|Add2~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~40_combout\ = ((\inst19|start_valid_sync\(20) $ (\inst19|stop_valid_sync~37_combout\ $ (\inst19|Add2~39\)))) # (GND)
-- \inst19|Add2~41\ = CARRY((\inst19|start_valid_sync\(20) & (\inst19|stop_valid_sync~37_combout\ & !\inst19|Add2~39\)) # (!\inst19|start_valid_sync\(20) & ((\inst19|stop_valid_sync~37_combout\) # (!\inst19|Add2~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|start_valid_sync\(20),
	datab => \inst19|stop_valid_sync~37_combout\,
	datad => VCC,
	cin => \inst19|Add2~39\,
	combout => \inst19|Add2~40_combout\,
	cout => \inst19|Add2~41\);

-- Location: LCCOMB_X20_Y15_N12
\inst19|Add2~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~44_combout\ = ((\inst19|stop_valid_sync~40_combout\ $ (\inst19|start_valid_sync\(22) $ (\inst19|Add2~43\)))) # (GND)
-- \inst19|Add2~45\ = CARRY((\inst19|stop_valid_sync~40_combout\ & ((!\inst19|Add2~43\) # (!\inst19|start_valid_sync\(22)))) # (!\inst19|stop_valid_sync~40_combout\ & (!\inst19|start_valid_sync\(22) & !\inst19|Add2~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~40_combout\,
	datab => \inst19|start_valid_sync\(22),
	datad => VCC,
	cin => \inst19|Add2~43\,
	combout => \inst19|Add2~44_combout\,
	cout => \inst19|Add2~45\);

-- Location: LCCOMB_X20_Y15_N14
\inst19|Add2~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~46_combout\ = (\inst19|stop_valid_sync~76_combout\ & ((\inst19|start_valid_sync\(23) & (!\inst19|Add2~45\)) # (!\inst19|start_valid_sync\(23) & (\inst19|Add2~45\ & VCC)))) # (!\inst19|stop_valid_sync~76_combout\ & 
-- ((\inst19|start_valid_sync\(23) & ((\inst19|Add2~45\) # (GND))) # (!\inst19|start_valid_sync\(23) & (!\inst19|Add2~45\))))
-- \inst19|Add2~47\ = CARRY((\inst19|stop_valid_sync~76_combout\ & (\inst19|start_valid_sync\(23) & !\inst19|Add2~45\)) # (!\inst19|stop_valid_sync~76_combout\ & ((\inst19|start_valid_sync\(23)) # (!\inst19|Add2~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~76_combout\,
	datab => \inst19|start_valid_sync\(23),
	datad => VCC,
	cin => \inst19|Add2~45\,
	combout => \inst19|Add2~46_combout\,
	cout => \inst19|Add2~47\);

-- Location: LCCOMB_X20_Y15_N20
\inst19|Add2~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~52_combout\ = ((\inst19|stop_valid_sync~70_combout\ $ (\inst19|start_valid_sync\(26) $ (\inst19|Add2~51\)))) # (GND)
-- \inst19|Add2~53\ = CARRY((\inst19|stop_valid_sync~70_combout\ & ((!\inst19|Add2~51\) # (!\inst19|start_valid_sync\(26)))) # (!\inst19|stop_valid_sync~70_combout\ & (!\inst19|start_valid_sync\(26) & !\inst19|Add2~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~70_combout\,
	datab => \inst19|start_valid_sync\(26),
	datad => VCC,
	cin => \inst19|Add2~51\,
	combout => \inst19|Add2~52_combout\,
	cout => \inst19|Add2~53\);

-- Location: LCCOMB_X20_Y15_N22
\inst19|Add2~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~54_combout\ = (\inst19|start_valid_sync\(27) & ((\inst19|stop_valid_sync~74_combout\ & (!\inst19|Add2~53\)) # (!\inst19|stop_valid_sync~74_combout\ & ((\inst19|Add2~53\) # (GND))))) # (!\inst19|start_valid_sync\(27) & 
-- ((\inst19|stop_valid_sync~74_combout\ & (\inst19|Add2~53\ & VCC)) # (!\inst19|stop_valid_sync~74_combout\ & (!\inst19|Add2~53\))))
-- \inst19|Add2~55\ = CARRY((\inst19|start_valid_sync\(27) & ((!\inst19|Add2~53\) # (!\inst19|stop_valid_sync~74_combout\))) # (!\inst19|start_valid_sync\(27) & (!\inst19|stop_valid_sync~74_combout\ & !\inst19|Add2~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|start_valid_sync\(27),
	datab => \inst19|stop_valid_sync~74_combout\,
	datad => VCC,
	cin => \inst19|Add2~53\,
	combout => \inst19|Add2~54_combout\,
	cout => \inst19|Add2~55\);

-- Location: LCCOMB_X20_Y15_N24
\inst19|Add2~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~56_combout\ = ((\inst19|stop_valid_sync~80_combout\ $ (\inst19|start_valid_sync\(28) $ (\inst19|Add2~55\)))) # (GND)
-- \inst19|Add2~57\ = CARRY((\inst19|stop_valid_sync~80_combout\ & ((!\inst19|Add2~55\) # (!\inst19|start_valid_sync\(28)))) # (!\inst19|stop_valid_sync~80_combout\ & (!\inst19|start_valid_sync\(28) & !\inst19|Add2~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~80_combout\,
	datab => \inst19|start_valid_sync\(28),
	datad => VCC,
	cin => \inst19|Add2~55\,
	combout => \inst19|Add2~56_combout\,
	cout => \inst19|Add2~57\);

-- Location: LCCOMB_X20_Y19_N4
\inst19|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~2_combout\ = (\inst19|Add2~6_combout\ & (!\inst19|Add3~1\)) # (!\inst19|Add2~6_combout\ & ((\inst19|Add3~1\) # (GND)))
-- \inst19|Add3~3\ = CARRY((!\inst19|Add3~1\) # (!\inst19|Add2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add2~6_combout\,
	datad => VCC,
	cin => \inst19|Add3~1\,
	combout => \inst19|Add3~2_combout\,
	cout => \inst19|Add3~3\);

-- Location: LCCOMB_X20_Y19_N6
\inst19|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~4_combout\ = (\inst19|Add2~8_combout\ & ((GND) # (!\inst19|Add3~3\))) # (!\inst19|Add2~8_combout\ & (\inst19|Add3~3\ $ (GND)))
-- \inst19|Add3~5\ = CARRY((\inst19|Add2~8_combout\) # (!\inst19|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add2~8_combout\,
	datad => VCC,
	cin => \inst19|Add3~3\,
	combout => \inst19|Add3~4_combout\,
	cout => \inst19|Add3~5\);

-- Location: LCCOMB_X20_Y19_N18
\inst19|Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~16_combout\ = (\inst19|Add2~20_combout\ & ((GND) # (!\inst19|Add3~15\))) # (!\inst19|Add2~20_combout\ & (\inst19|Add3~15\ $ (GND)))
-- \inst19|Add3~17\ = CARRY((\inst19|Add2~20_combout\) # (!\inst19|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add2~20_combout\,
	datad => VCC,
	cin => \inst19|Add3~15\,
	combout => \inst19|Add3~16_combout\,
	cout => \inst19|Add3~17\);

-- Location: LCCOMB_X20_Y19_N20
\inst19|Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~18_combout\ = (\inst19|Add2~22_combout\ & (\inst19|Add3~17\ & VCC)) # (!\inst19|Add2~22_combout\ & (!\inst19|Add3~17\))
-- \inst19|Add3~19\ = CARRY((!\inst19|Add2~22_combout\ & !\inst19|Add3~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add2~22_combout\,
	datad => VCC,
	cin => \inst19|Add3~17\,
	combout => \inst19|Add3~18_combout\,
	cout => \inst19|Add3~19\);

-- Location: LCCOMB_X20_Y19_N22
\inst19|Add3~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~20_combout\ = (\inst19|Add2~24_combout\ & ((GND) # (!\inst19|Add3~19\))) # (!\inst19|Add2~24_combout\ & (\inst19|Add3~19\ $ (GND)))
-- \inst19|Add3~21\ = CARRY((\inst19|Add2~24_combout\) # (!\inst19|Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add2~24_combout\,
	datad => VCC,
	cin => \inst19|Add3~19\,
	combout => \inst19|Add3~20_combout\,
	cout => \inst19|Add3~21\);

-- Location: LCCOMB_X20_Y19_N24
\inst19|Add3~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~22_combout\ = (\inst19|Add2~26_combout\ & (!\inst19|Add3~21\)) # (!\inst19|Add2~26_combout\ & ((\inst19|Add3~21\) # (GND)))
-- \inst19|Add3~23\ = CARRY((!\inst19|Add3~21\) # (!\inst19|Add2~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add2~26_combout\,
	datad => VCC,
	cin => \inst19|Add3~21\,
	combout => \inst19|Add3~22_combout\,
	cout => \inst19|Add3~23\);

-- Location: LCCOMB_X20_Y19_N28
\inst19|Add3~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~26_combout\ = (\inst19|Add2~30_combout\ & (\inst19|Add3~25\ & VCC)) # (!\inst19|Add2~30_combout\ & (!\inst19|Add3~25\))
-- \inst19|Add3~27\ = CARRY((!\inst19|Add2~30_combout\ & !\inst19|Add3~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add2~30_combout\,
	datad => VCC,
	cin => \inst19|Add3~25\,
	combout => \inst19|Add3~26_combout\,
	cout => \inst19|Add3~27\);

-- Location: LCCOMB_X20_Y19_N30
\inst19|Add3~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~28_combout\ = (\inst19|Add2~32_combout\ & ((GND) # (!\inst19|Add3~27\))) # (!\inst19|Add2~32_combout\ & (\inst19|Add3~27\ $ (GND)))
-- \inst19|Add3~29\ = CARRY((\inst19|Add2~32_combout\) # (!\inst19|Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add2~32_combout\,
	datad => VCC,
	cin => \inst19|Add3~27\,
	combout => \inst19|Add3~28_combout\,
	cout => \inst19|Add3~29\);

-- Location: LCCOMB_X20_Y18_N0
\inst19|Add3~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~30_combout\ = (\inst19|Add2~34_combout\ & (\inst19|Add3~29\ & VCC)) # (!\inst19|Add2~34_combout\ & (!\inst19|Add3~29\))
-- \inst19|Add3~31\ = CARRY((!\inst19|Add2~34_combout\ & !\inst19|Add3~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add2~34_combout\,
	datad => VCC,
	cin => \inst19|Add3~29\,
	combout => \inst19|Add3~30_combout\,
	cout => \inst19|Add3~31\);

-- Location: LCCOMB_X20_Y18_N2
\inst19|Add3~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~32_combout\ = (\inst19|Add2~36_combout\ & ((GND) # (!\inst19|Add3~31\))) # (!\inst19|Add2~36_combout\ & (\inst19|Add3~31\ $ (GND)))
-- \inst19|Add3~33\ = CARRY((\inst19|Add2~36_combout\) # (!\inst19|Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add2~36_combout\,
	datad => VCC,
	cin => \inst19|Add3~31\,
	combout => \inst19|Add3~32_combout\,
	cout => \inst19|Add3~33\);

-- Location: LCCOMB_X20_Y18_N4
\inst19|Add3~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~34_combout\ = (\inst19|Add2~38_combout\ & (\inst19|Add3~33\ & VCC)) # (!\inst19|Add2~38_combout\ & (!\inst19|Add3~33\))
-- \inst19|Add3~35\ = CARRY((!\inst19|Add2~38_combout\ & !\inst19|Add3~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add2~38_combout\,
	datad => VCC,
	cin => \inst19|Add3~33\,
	combout => \inst19|Add3~34_combout\,
	cout => \inst19|Add3~35\);

-- Location: LCCOMB_X20_Y18_N6
\inst19|Add3~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~36_combout\ = (\inst19|Add2~40_combout\ & ((GND) # (!\inst19|Add3~35\))) # (!\inst19|Add2~40_combout\ & (\inst19|Add3~35\ $ (GND)))
-- \inst19|Add3~37\ = CARRY((\inst19|Add2~40_combout\) # (!\inst19|Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add2~40_combout\,
	datad => VCC,
	cin => \inst19|Add3~35\,
	combout => \inst19|Add3~36_combout\,
	cout => \inst19|Add3~37\);

-- Location: LCCOMB_X20_Y18_N24
\inst19|Add3~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~54_combout\ = (\inst19|Add2~58_combout\ & (\inst19|Add3~53\ & VCC)) # (!\inst19|Add2~58_combout\ & (!\inst19|Add3~53\))
-- \inst19|Add3~55\ = CARRY((!\inst19|Add2~58_combout\ & !\inst19|Add3~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add2~58_combout\,
	datad => VCC,
	cin => \inst19|Add3~53\,
	combout => \inst19|Add3~54_combout\,
	cout => \inst19|Add3~55\);

-- Location: LCCOMB_X20_Y18_N26
\inst19|Add3~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~56_combout\ = (\inst19|Add2~60_combout\ & ((GND) # (!\inst19|Add3~55\))) # (!\inst19|Add2~60_combout\ & (\inst19|Add3~55\ $ (GND)))
-- \inst19|Add3~57\ = CARRY((\inst19|Add2~60_combout\) # (!\inst19|Add3~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add2~60_combout\,
	datad => VCC,
	cin => \inst19|Add3~55\,
	combout => \inst19|Add3~56_combout\,
	cout => \inst19|Add3~57\);

-- Location: LCCOMB_X20_Y18_N28
\inst19|Add3~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~58_combout\ = \inst19|Add2~62_combout\ $ (!\inst19|Add3~57\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add2~62_combout\,
	cin => \inst19|Add3~57\,
	combout => \inst19|Add3~58_combout\);

-- Location: LCCOMB_X21_Y19_N0
\inst19|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~0_combout\ = (\inst19|result~2_combout\ & (\inst19|Add3~58_combout\ $ (VCC))) # (!\inst19|result~2_combout\ & (\inst19|Add3~58_combout\ & VCC))
-- \inst19|Add4~1\ = CARRY((\inst19|result~2_combout\ & \inst19|Add3~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|result~2_combout\,
	datab => \inst19|Add3~58_combout\,
	datad => VCC,
	combout => \inst19|Add4~0_combout\,
	cout => \inst19|Add4~1\);

-- Location: LCCOMB_X21_Y19_N4
\inst19|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~4_combout\ = (\inst19|Add4~3\ & ((\inst19|Add3~0_combout\ $ (\inst19|Add3~58_combout\)))) # (!\inst19|Add4~3\ & (\inst19|Add3~0_combout\ $ (\inst19|Add3~58_combout\ $ (VCC))))
-- \inst19|Add4~5\ = CARRY((!\inst19|Add4~3\ & (\inst19|Add3~0_combout\ $ (\inst19|Add3~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~0_combout\,
	datab => \inst19|Add3~58_combout\,
	datad => VCC,
	cin => \inst19|Add4~3\,
	combout => \inst19|Add4~4_combout\,
	cout => \inst19|Add4~5\);

-- Location: LCCOMB_X21_Y19_N6
\inst19|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~6_combout\ = (\inst19|Add4~5\ & (\inst19|Add3~58_combout\ $ ((!\inst19|Add3~2_combout\)))) # (!\inst19|Add4~5\ & ((\inst19|Add3~58_combout\ $ (\inst19|Add3~2_combout\)) # (GND)))
-- \inst19|Add4~7\ = CARRY((\inst19|Add3~58_combout\ $ (!\inst19|Add3~2_combout\)) # (!\inst19|Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~58_combout\,
	datab => \inst19|Add3~2_combout\,
	datad => VCC,
	cin => \inst19|Add4~5\,
	combout => \inst19|Add4~6_combout\,
	cout => \inst19|Add4~7\);

-- Location: LCCOMB_X21_Y19_N8
\inst19|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~8_combout\ = (\inst19|Add4~7\ & ((\inst19|Add3~58_combout\ $ (\inst19|Add3~4_combout\)))) # (!\inst19|Add4~7\ & (\inst19|Add3~58_combout\ $ (\inst19|Add3~4_combout\ $ (VCC))))
-- \inst19|Add4~9\ = CARRY((!\inst19|Add4~7\ & (\inst19|Add3~58_combout\ $ (\inst19|Add3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~58_combout\,
	datab => \inst19|Add3~4_combout\,
	datad => VCC,
	cin => \inst19|Add4~7\,
	combout => \inst19|Add4~8_combout\,
	cout => \inst19|Add4~9\);

-- Location: LCCOMB_X21_Y19_N14
\inst19|Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~14_combout\ = (\inst19|Add4~13\ & (\inst19|Add3~10_combout\ $ ((!\inst19|Add3~58_combout\)))) # (!\inst19|Add4~13\ & ((\inst19|Add3~10_combout\ $ (\inst19|Add3~58_combout\)) # (GND)))
-- \inst19|Add4~15\ = CARRY((\inst19|Add3~10_combout\ $ (!\inst19|Add3~58_combout\)) # (!\inst19|Add4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~10_combout\,
	datab => \inst19|Add3~58_combout\,
	datad => VCC,
	cin => \inst19|Add4~13\,
	combout => \inst19|Add4~14_combout\,
	cout => \inst19|Add4~15\);

-- Location: LCCOMB_X21_Y19_N16
\inst19|Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~16_combout\ = (\inst19|Add4~15\ & ((\inst19|Add3~12_combout\ $ (\inst19|Add3~58_combout\)))) # (!\inst19|Add4~15\ & (\inst19|Add3~12_combout\ $ (\inst19|Add3~58_combout\ $ (VCC))))
-- \inst19|Add4~17\ = CARRY((!\inst19|Add4~15\ & (\inst19|Add3~12_combout\ $ (\inst19|Add3~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~12_combout\,
	datab => \inst19|Add3~58_combout\,
	datad => VCC,
	cin => \inst19|Add4~15\,
	combout => \inst19|Add4~16_combout\,
	cout => \inst19|Add4~17\);

-- Location: LCCOMB_X21_Y19_N20
\inst19|Add4~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~20_combout\ = (\inst19|Add4~19\ & ((\inst19|Add3~58_combout\ $ (\inst19|Add3~16_combout\)))) # (!\inst19|Add4~19\ & (\inst19|Add3~58_combout\ $ (\inst19|Add3~16_combout\ $ (VCC))))
-- \inst19|Add4~21\ = CARRY((!\inst19|Add4~19\ & (\inst19|Add3~58_combout\ $ (\inst19|Add3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~58_combout\,
	datab => \inst19|Add3~16_combout\,
	datad => VCC,
	cin => \inst19|Add4~19\,
	combout => \inst19|Add4~20_combout\,
	cout => \inst19|Add4~21\);

-- Location: LCCOMB_X21_Y18_N30
\inst19|Add4~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~62_combout\ = \inst19|Add4~61\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst19|Add4~61\,
	combout => \inst19|Add4~62_combout\);

-- Location: LCCOMB_X22_Y18_N16
\inst19|LessThan7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan7~2_combout\ = (\inst19|Add4~6_combout\) # ((\inst19|Add4~4_combout\ & ((\inst19|Add4~2_combout\) # (\inst19|Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add4~2_combout\,
	datab => \inst19|Add4~6_combout\,
	datac => \inst19|Add4~4_combout\,
	datad => \inst19|Add4~0_combout\,
	combout => \inst19|LessThan7~2_combout\);

-- Location: LCCOMB_X22_Y18_N12
\inst19|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan7~0_combout\ = (\inst19|Add4~18_combout\) # ((\inst19|Add4~20_combout\) # ((\inst19|Add4~14_combout\) # (\inst19|Add4~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add4~18_combout\,
	datab => \inst19|Add4~20_combout\,
	datac => \inst19|Add4~14_combout\,
	datad => \inst19|Add4~16_combout\,
	combout => \inst19|LessThan7~0_combout\);

-- Location: LCCOMB_X22_Y18_N2
\inst19|LessThan7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan7~3_combout\ = (\inst19|LessThan7~0_combout\) # ((\inst19|LessThan7~1_combout\ & ((\inst19|LessThan7~2_combout\) # (\inst19|Add4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan7~1_combout\,
	datab => \inst19|LessThan7~2_combout\,
	datac => \inst19|Add4~8_combout\,
	datad => \inst19|LessThan7~0_combout\,
	combout => \inst19|LessThan7~3_combout\);

-- Location: LCCOMB_X22_Y18_N8
\inst19|lighthouse_A~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|lighthouse_A~0_combout\ = (!\inst19|Add4~62_combout\ & (\inst19|process_0~0_combout\ & ((\inst19|LessThan7~10_combout\) # (\inst19|LessThan7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan7~10_combout\,
	datab => \inst19|Add4~62_combout\,
	datac => \inst19|process_0~0_combout\,
	datad => \inst19|LessThan7~3_combout\,
	combout => \inst19|lighthouse_A~0_combout\);

-- Location: FF_X22_Y18_N11
\inst19|lighthouse_switch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|lighthouse_switch~0_combout\,
	ena => \inst19|lighthouse_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|lighthouse_switch~q\);

-- Location: LCCOMB_X22_Y18_N24
\inst19|lighthouse_A~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|lighthouse_A~feeder_combout\ = \inst19|lighthouse_switch~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|lighthouse_switch~q\,
	combout => \inst19|lighthouse_A~feeder_combout\);

-- Location: FF_X22_Y18_N25
\inst19|lighthouse_A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|lighthouse_A~feeder_combout\,
	ena => \inst19|lighthouse_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|lighthouse_A~q\);

-- Location: LCCOMB_X11_Y17_N14
\inst8|Empty~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Empty~0_combout\ = (\inst8|Empty~q\) # (!\inst8|Looped~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|Looped~6_combout\,
	datad => \inst8|Empty~q\,
	combout => \inst8|Empty~0_combout\);

-- Location: LCCOMB_X11_Y17_N16
\inst8|Empty~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Empty~1_combout\ = (\inst8|Equal4~4_combout\ & (\inst8|Equal4~3_combout\ & (\inst8|Empty~0_combout\ & \inst8|Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Equal4~4_combout\,
	datab => \inst8|Equal4~3_combout\,
	datac => \inst8|Empty~0_combout\,
	datad => \inst8|Equal4~2_combout\,
	combout => \inst8|Empty~1_combout\);

-- Location: LCCOMB_X12_Y15_N0
\inst8|Empty~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Empty~feeder_combout\ = \inst8|Empty~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|Empty~1_combout\,
	combout => \inst8|Empty~feeder_combout\);

-- Location: FF_X12_Y15_N1
\inst8|Empty\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst8|Empty~feeder_combout\,
	asdata => VCC,
	sload => \ALT_INV_button1_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|Empty~q\);

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


