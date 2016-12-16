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

-- DATE "12/16/2016 20:12:23"

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
	sensor0 : IN std_logic;
	SW0 : IN std_logic;
	led_fifo_full : OUT std_logic;
	button1_reset : IN std_logic;
	button0_read : IN std_logic;
	spi_miso : OUT std_logic;
	spi_trdy : OUT std_logic;
	lighthouse_led : OUT std_logic;
	LCD0 : OUT std_logic_vector(7 DOWNTO 0);
	LCD1 : OUT std_logic_vector(7 DOWNTO 0);
	LCD2 : OUT std_logic_vector(7 DOWNTO 0);
	LCD3 : OUT std_logic_vector(7 DOWNTO 0);
	led : OUT std_logic_vector(3 DOWNTO 0);
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
-- SW1	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW0	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_50	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button0_read	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_sensor0 : std_logic;
SIGNAL ww_SW0 : std_logic;
SIGNAL ww_led_fifo_full : std_logic;
SIGNAL ww_button1_reset : std_logic;
SIGNAL ww_button0_read : std_logic;
SIGNAL ww_spi_miso : std_logic;
SIGNAL ww_spi_trdy : std_logic;
SIGNAL ww_lighthouse_led : std_logic;
SIGNAL ww_LCD0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LCD1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LCD2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LCD3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_led : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW1 : std_logic;
SIGNAL ww_SW2 : std_logic;
SIGNAL \inst|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst13|spi_slave_0|process_1~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst8|Add0~0_combout\ : std_logic;
SIGNAL \inst8|Add0~10_combout\ : std_logic;
SIGNAL \inst8|Add1~2_combout\ : std_logic;
SIGNAL \inst8|Add1~4_combout\ : std_logic;
SIGNAL \inst8|Add1~10_combout\ : std_logic;
SIGNAL \inst19|Add0~32_combout\ : std_logic;
SIGNAL \inst19|Add0~38_combout\ : std_logic;
SIGNAL \inst19|Add0~48_combout\ : std_logic;
SIGNAL \inst19|Add2~2_combout\ : std_logic;
SIGNAL \inst19|Add2~8_combout\ : std_logic;
SIGNAL \inst19|Add2~10_combout\ : std_logic;
SIGNAL \inst19|Add2~12_combout\ : std_logic;
SIGNAL \inst19|Add2~14_combout\ : std_logic;
SIGNAL \inst19|Add2~16_combout\ : std_logic;
SIGNAL \inst19|Add2~26_combout\ : std_logic;
SIGNAL \inst19|Add2~32_combout\ : std_logic;
SIGNAL \inst19|Add2~34_combout\ : std_logic;
SIGNAL \inst19|Add2~40_combout\ : std_logic;
SIGNAL \inst19|Add2~42_combout\ : std_logic;
SIGNAL \inst19|Add2~44_combout\ : std_logic;
SIGNAL \inst19|Add2~46_combout\ : std_logic;
SIGNAL \inst19|Add2~48_combout\ : std_logic;
SIGNAL \inst19|Add2~58_combout\ : std_logic;
SIGNAL \inst19|Add2~60_combout\ : std_logic;
SIGNAL \inst19|Add3~2_combout\ : std_logic;
SIGNAL \inst19|Add3~6_combout\ : std_logic;
SIGNAL \inst19|Add3~10_combout\ : std_logic;
SIGNAL \inst19|Add3~18_combout\ : std_logic;
SIGNAL \inst19|Add3~22_combout\ : std_logic;
SIGNAL \inst19|Add3~24_combout\ : std_logic;
SIGNAL \inst19|Add3~26_combout\ : std_logic;
SIGNAL \inst19|Add3~34_combout\ : std_logic;
SIGNAL \inst19|Add3~40_combout\ : std_logic;
SIGNAL \inst19|Add3~42_combout\ : std_logic;
SIGNAL \inst19|Add3~44_combout\ : std_logic;
SIGNAL \inst19|Add3~46_combout\ : std_logic;
SIGNAL \inst19|Add3~48_combout\ : std_logic;
SIGNAL \inst19|Add3~50_combout\ : std_logic;
SIGNAL \inst19|Add3~52_combout\ : std_logic;
SIGNAL \inst19|Add4~0_combout\ : std_logic;
SIGNAL \inst19|Add4~2_combout\ : std_logic;
SIGNAL \inst19|Add4~4_combout\ : std_logic;
SIGNAL \inst19|Add4~6_combout\ : std_logic;
SIGNAL \inst19|Add4~8_combout\ : std_logic;
SIGNAL \inst19|Add4~10_combout\ : std_logic;
SIGNAL \inst19|Add4~12_combout\ : std_logic;
SIGNAL \inst19|Add4~14_combout\ : std_logic;
SIGNAL \inst19|Add4~16_combout\ : std_logic;
SIGNAL \inst19|Add4~18_combout\ : std_logic;
SIGNAL \inst19|Add4~20_combout\ : std_logic;
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
SIGNAL \inst19|Add15~1\ : std_logic;
SIGNAL \inst19|Add15~0_combout\ : std_logic;
SIGNAL \inst19|Add15~3\ : std_logic;
SIGNAL \inst19|Add15~2_combout\ : std_logic;
SIGNAL \inst19|Add15~5\ : std_logic;
SIGNAL \inst19|Add15~4_combout\ : std_logic;
SIGNAL \inst19|Add15~7\ : std_logic;
SIGNAL \inst19|Add15~6_combout\ : std_logic;
SIGNAL \inst19|Add15~9\ : std_logic;
SIGNAL \inst19|Add15~8_combout\ : std_logic;
SIGNAL \inst19|Add15~11\ : std_logic;
SIGNAL \inst19|Add15~10_combout\ : std_logic;
SIGNAL \inst19|Add15~13\ : std_logic;
SIGNAL \inst19|Add15~12_combout\ : std_logic;
SIGNAL \inst19|Add15~15\ : std_logic;
SIGNAL \inst19|Add15~14_combout\ : std_logic;
SIGNAL \inst19|Add15~17\ : std_logic;
SIGNAL \inst19|Add15~16_combout\ : std_logic;
SIGNAL \inst19|Add15~19\ : std_logic;
SIGNAL \inst19|Add15~18_combout\ : std_logic;
SIGNAL \inst19|Add15~21\ : std_logic;
SIGNAL \inst19|Add15~20_combout\ : std_logic;
SIGNAL \inst19|Add15~23\ : std_logic;
SIGNAL \inst19|Add15~22_combout\ : std_logic;
SIGNAL \inst19|Add15~25\ : std_logic;
SIGNAL \inst19|Add15~24_combout\ : std_logic;
SIGNAL \inst19|Add15~27\ : std_logic;
SIGNAL \inst19|Add15~26_combout\ : std_logic;
SIGNAL \inst19|Add15~29\ : std_logic;
SIGNAL \inst19|Add15~28_combout\ : std_logic;
SIGNAL \inst19|Add15~31\ : std_logic;
SIGNAL \inst19|Add15~30_combout\ : std_logic;
SIGNAL \inst19|Add15~33\ : std_logic;
SIGNAL \inst19|Add15~32_combout\ : std_logic;
SIGNAL \inst19|Add15~35\ : std_logic;
SIGNAL \inst19|Add15~34_combout\ : std_logic;
SIGNAL \inst19|Add15~37\ : std_logic;
SIGNAL \inst19|Add15~36_combout\ : std_logic;
SIGNAL \inst19|Add15~39\ : std_logic;
SIGNAL \inst19|Add15~38_combout\ : std_logic;
SIGNAL \inst19|Add15~41\ : std_logic;
SIGNAL \inst19|Add15~40_combout\ : std_logic;
SIGNAL \inst19|Add15~43\ : std_logic;
SIGNAL \inst19|Add15~42_combout\ : std_logic;
SIGNAL \inst19|Add15~45\ : std_logic;
SIGNAL \inst19|Add15~44_combout\ : std_logic;
SIGNAL \inst19|Add15~47\ : std_logic;
SIGNAL \inst19|Add15~46_combout\ : std_logic;
SIGNAL \inst19|Add15~49\ : std_logic;
SIGNAL \inst19|Add15~48_combout\ : std_logic;
SIGNAL \inst19|Add15~51\ : std_logic;
SIGNAL \inst19|Add15~50_combout\ : std_logic;
SIGNAL \inst19|Add15~53\ : std_logic;
SIGNAL \inst19|Add15~52_combout\ : std_logic;
SIGNAL \inst19|Add15~55\ : std_logic;
SIGNAL \inst19|Add15~54_combout\ : std_logic;
SIGNAL \inst19|Add15~57\ : std_logic;
SIGNAL \inst19|Add15~56_combout\ : std_logic;
SIGNAL \inst19|Add15~59\ : std_logic;
SIGNAL \inst19|Add15~58_combout\ : std_logic;
SIGNAL \inst19|Add15~61\ : std_logic;
SIGNAL \inst19|Add15~60_combout\ : std_logic;
SIGNAL \inst19|Add15~62_combout\ : std_logic;
SIGNAL \inst19|Add16~1\ : std_logic;
SIGNAL \inst19|Add16~0_combout\ : std_logic;
SIGNAL \inst19|Add16~3\ : std_logic;
SIGNAL \inst19|Add16~2_combout\ : std_logic;
SIGNAL \inst19|Add16~5\ : std_logic;
SIGNAL \inst19|Add16~4_combout\ : std_logic;
SIGNAL \inst19|Add16~7\ : std_logic;
SIGNAL \inst19|Add16~6_combout\ : std_logic;
SIGNAL \inst19|Add16~9\ : std_logic;
SIGNAL \inst19|Add16~8_combout\ : std_logic;
SIGNAL \inst19|Add16~11\ : std_logic;
SIGNAL \inst19|Add16~10_combout\ : std_logic;
SIGNAL \inst19|Add16~13\ : std_logic;
SIGNAL \inst19|Add16~12_combout\ : std_logic;
SIGNAL \inst19|Add16~15\ : std_logic;
SIGNAL \inst19|Add16~14_combout\ : std_logic;
SIGNAL \inst19|Add16~17\ : std_logic;
SIGNAL \inst19|Add16~16_combout\ : std_logic;
SIGNAL \inst19|Add16~19\ : std_logic;
SIGNAL \inst19|Add16~18_combout\ : std_logic;
SIGNAL \inst19|Add16~21\ : std_logic;
SIGNAL \inst19|Add16~20_combout\ : std_logic;
SIGNAL \inst19|Add16~23\ : std_logic;
SIGNAL \inst19|Add16~22_combout\ : std_logic;
SIGNAL \inst19|Add16~25\ : std_logic;
SIGNAL \inst19|Add16~24_combout\ : std_logic;
SIGNAL \inst19|Add16~27\ : std_logic;
SIGNAL \inst19|Add16~26_combout\ : std_logic;
SIGNAL \inst19|Add16~29\ : std_logic;
SIGNAL \inst19|Add16~28_combout\ : std_logic;
SIGNAL \inst19|Add16~31\ : std_logic;
SIGNAL \inst19|Add16~30_combout\ : std_logic;
SIGNAL \inst19|Add16~33\ : std_logic;
SIGNAL \inst19|Add16~32_combout\ : std_logic;
SIGNAL \inst19|Add16~35\ : std_logic;
SIGNAL \inst19|Add16~34_combout\ : std_logic;
SIGNAL \inst19|Add16~37\ : std_logic;
SIGNAL \inst19|Add16~36_combout\ : std_logic;
SIGNAL \inst19|Add16~39\ : std_logic;
SIGNAL \inst19|Add16~38_combout\ : std_logic;
SIGNAL \inst19|Add16~41\ : std_logic;
SIGNAL \inst19|Add16~40_combout\ : std_logic;
SIGNAL \inst19|Add16~43\ : std_logic;
SIGNAL \inst19|Add16~42_combout\ : std_logic;
SIGNAL \inst19|Add16~45\ : std_logic;
SIGNAL \inst19|Add16~44_combout\ : std_logic;
SIGNAL \inst19|Add16~47\ : std_logic;
SIGNAL \inst19|Add16~46_combout\ : std_logic;
SIGNAL \inst19|Add16~49\ : std_logic;
SIGNAL \inst19|Add16~48_combout\ : std_logic;
SIGNAL \inst19|Add16~51\ : std_logic;
SIGNAL \inst19|Add16~50_combout\ : std_logic;
SIGNAL \inst19|Add16~53\ : std_logic;
SIGNAL \inst19|Add16~52_combout\ : std_logic;
SIGNAL \inst19|Add16~55\ : std_logic;
SIGNAL \inst19|Add16~54_combout\ : std_logic;
SIGNAL \inst19|Add16~57\ : std_logic;
SIGNAL \inst19|Add16~56_combout\ : std_logic;
SIGNAL \inst19|Add16~59\ : std_logic;
SIGNAL \inst19|Add16~58_combout\ : std_logic;
SIGNAL \inst19|Add16~61\ : std_logic;
SIGNAL \inst19|Add16~60_combout\ : std_logic;
SIGNAL \inst19|Add16~62_combout\ : std_logic;
SIGNAL \inst19|Add19~1\ : std_logic;
SIGNAL \inst19|Add19~0_combout\ : std_logic;
SIGNAL \inst19|Add19~3\ : std_logic;
SIGNAL \inst19|Add19~2_combout\ : std_logic;
SIGNAL \inst19|Add19~5\ : std_logic;
SIGNAL \inst19|Add19~4_combout\ : std_logic;
SIGNAL \inst19|Add19~7\ : std_logic;
SIGNAL \inst19|Add19~6_combout\ : std_logic;
SIGNAL \inst19|Add19~9\ : std_logic;
SIGNAL \inst19|Add19~8_combout\ : std_logic;
SIGNAL \inst19|Add19~11\ : std_logic;
SIGNAL \inst19|Add19~10_combout\ : std_logic;
SIGNAL \inst19|Add19~13\ : std_logic;
SIGNAL \inst19|Add19~12_combout\ : std_logic;
SIGNAL \inst19|Add19~15\ : std_logic;
SIGNAL \inst19|Add19~14_combout\ : std_logic;
SIGNAL \inst19|Add19~17\ : std_logic;
SIGNAL \inst19|Add19~16_combout\ : std_logic;
SIGNAL \inst19|Add19~19\ : std_logic;
SIGNAL \inst19|Add19~18_combout\ : std_logic;
SIGNAL \inst19|Add19~21\ : std_logic;
SIGNAL \inst19|Add19~20_combout\ : std_logic;
SIGNAL \inst19|Add19~23\ : std_logic;
SIGNAL \inst19|Add19~22_combout\ : std_logic;
SIGNAL \inst19|Add19~25\ : std_logic;
SIGNAL \inst19|Add19~24_combout\ : std_logic;
SIGNAL \inst19|Add19~27\ : std_logic;
SIGNAL \inst19|Add19~26_combout\ : std_logic;
SIGNAL \inst19|Add19~29\ : std_logic;
SIGNAL \inst19|Add19~28_combout\ : std_logic;
SIGNAL \inst19|Add19~31\ : std_logic;
SIGNAL \inst19|Add19~30_combout\ : std_logic;
SIGNAL \inst19|Add19~33\ : std_logic;
SIGNAL \inst19|Add19~32_combout\ : std_logic;
SIGNAL \inst19|Add19~35\ : std_logic;
SIGNAL \inst19|Add19~34_combout\ : std_logic;
SIGNAL \inst19|Add19~37\ : std_logic;
SIGNAL \inst19|Add19~36_combout\ : std_logic;
SIGNAL \inst19|Add19~39\ : std_logic;
SIGNAL \inst19|Add19~38_combout\ : std_logic;
SIGNAL \inst19|Add19~41\ : std_logic;
SIGNAL \inst19|Add19~40_combout\ : std_logic;
SIGNAL \inst19|Add19~43\ : std_logic;
SIGNAL \inst19|Add19~42_combout\ : std_logic;
SIGNAL \inst19|Add19~45\ : std_logic;
SIGNAL \inst19|Add19~44_combout\ : std_logic;
SIGNAL \inst19|Add19~47\ : std_logic;
SIGNAL \inst19|Add19~46_combout\ : std_logic;
SIGNAL \inst19|Add19~49\ : std_logic;
SIGNAL \inst19|Add19~48_combout\ : std_logic;
SIGNAL \inst19|Add19~51\ : std_logic;
SIGNAL \inst19|Add19~50_combout\ : std_logic;
SIGNAL \inst19|Add19~53\ : std_logic;
SIGNAL \inst19|Add19~52_combout\ : std_logic;
SIGNAL \inst19|Add19~55\ : std_logic;
SIGNAL \inst19|Add19~54_combout\ : std_logic;
SIGNAL \inst19|Add19~57\ : std_logic;
SIGNAL \inst19|Add19~56_combout\ : std_logic;
SIGNAL \inst19|Add19~59\ : std_logic;
SIGNAL \inst19|Add19~58_combout\ : std_logic;
SIGNAL \inst19|Add19~61\ : std_logic;
SIGNAL \inst19|Add19~60_combout\ : std_logic;
SIGNAL \inst19|Add19~62_combout\ : std_logic;
SIGNAL \inst19|Add20~1\ : std_logic;
SIGNAL \inst19|Add20~0_combout\ : std_logic;
SIGNAL \inst19|Add20~3\ : std_logic;
SIGNAL \inst19|Add20~2_combout\ : std_logic;
SIGNAL \inst19|Add20~5\ : std_logic;
SIGNAL \inst19|Add20~4_combout\ : std_logic;
SIGNAL \inst19|Add20~7\ : std_logic;
SIGNAL \inst19|Add20~6_combout\ : std_logic;
SIGNAL \inst19|Add20~9\ : std_logic;
SIGNAL \inst19|Add20~8_combout\ : std_logic;
SIGNAL \inst19|Add20~11\ : std_logic;
SIGNAL \inst19|Add20~10_combout\ : std_logic;
SIGNAL \inst19|Add20~13\ : std_logic;
SIGNAL \inst19|Add20~12_combout\ : std_logic;
SIGNAL \inst19|Add20~15\ : std_logic;
SIGNAL \inst19|Add20~14_combout\ : std_logic;
SIGNAL \inst19|Add20~17\ : std_logic;
SIGNAL \inst19|Add20~16_combout\ : std_logic;
SIGNAL \inst19|Add20~19\ : std_logic;
SIGNAL \inst19|Add20~18_combout\ : std_logic;
SIGNAL \inst19|Add20~21\ : std_logic;
SIGNAL \inst19|Add20~20_combout\ : std_logic;
SIGNAL \inst19|Add20~23\ : std_logic;
SIGNAL \inst19|Add20~22_combout\ : std_logic;
SIGNAL \inst19|Add20~25\ : std_logic;
SIGNAL \inst19|Add20~24_combout\ : std_logic;
SIGNAL \inst19|Add20~27\ : std_logic;
SIGNAL \inst19|Add20~26_combout\ : std_logic;
SIGNAL \inst19|Add20~29\ : std_logic;
SIGNAL \inst19|Add20~28_combout\ : std_logic;
SIGNAL \inst19|Add20~31\ : std_logic;
SIGNAL \inst19|Add20~30_combout\ : std_logic;
SIGNAL \inst19|Add20~33\ : std_logic;
SIGNAL \inst19|Add20~32_combout\ : std_logic;
SIGNAL \inst19|Add20~35\ : std_logic;
SIGNAL \inst19|Add20~34_combout\ : std_logic;
SIGNAL \inst19|Add20~37\ : std_logic;
SIGNAL \inst19|Add20~36_combout\ : std_logic;
SIGNAL \inst19|Add20~39\ : std_logic;
SIGNAL \inst19|Add20~38_combout\ : std_logic;
SIGNAL \inst19|Add20~41\ : std_logic;
SIGNAL \inst19|Add20~40_combout\ : std_logic;
SIGNAL \inst19|Add20~43\ : std_logic;
SIGNAL \inst19|Add20~42_combout\ : std_logic;
SIGNAL \inst19|Add20~45\ : std_logic;
SIGNAL \inst19|Add20~44_combout\ : std_logic;
SIGNAL \inst19|Add20~47\ : std_logic;
SIGNAL \inst19|Add20~46_combout\ : std_logic;
SIGNAL \inst19|Add20~49\ : std_logic;
SIGNAL \inst19|Add20~48_combout\ : std_logic;
SIGNAL \inst19|Add20~51\ : std_logic;
SIGNAL \inst19|Add20~50_combout\ : std_logic;
SIGNAL \inst19|Add20~53\ : std_logic;
SIGNAL \inst19|Add20~52_combout\ : std_logic;
SIGNAL \inst19|Add20~55\ : std_logic;
SIGNAL \inst19|Add20~54_combout\ : std_logic;
SIGNAL \inst19|Add20~57\ : std_logic;
SIGNAL \inst19|Add20~56_combout\ : std_logic;
SIGNAL \inst19|Add20~59\ : std_logic;
SIGNAL \inst19|Add20~58_combout\ : std_logic;
SIGNAL \inst19|Add20~61\ : std_logic;
SIGNAL \inst19|Add20~60_combout\ : std_logic;
SIGNAL \inst19|Add20~62_combout\ : std_logic;
SIGNAL \inst19|Add17~1\ : std_logic;
SIGNAL \inst19|Add17~0_combout\ : std_logic;
SIGNAL \inst19|Add17~3\ : std_logic;
SIGNAL \inst19|Add17~2_combout\ : std_logic;
SIGNAL \inst19|Add17~5\ : std_logic;
SIGNAL \inst19|Add17~4_combout\ : std_logic;
SIGNAL \inst19|Add17~7\ : std_logic;
SIGNAL \inst19|Add17~6_combout\ : std_logic;
SIGNAL \inst19|Add17~9\ : std_logic;
SIGNAL \inst19|Add17~8_combout\ : std_logic;
SIGNAL \inst19|Add17~11\ : std_logic;
SIGNAL \inst19|Add17~10_combout\ : std_logic;
SIGNAL \inst19|Add17~13\ : std_logic;
SIGNAL \inst19|Add17~12_combout\ : std_logic;
SIGNAL \inst19|Add17~15\ : std_logic;
SIGNAL \inst19|Add17~14_combout\ : std_logic;
SIGNAL \inst19|Add17~17\ : std_logic;
SIGNAL \inst19|Add17~16_combout\ : std_logic;
SIGNAL \inst19|Add17~19\ : std_logic;
SIGNAL \inst19|Add17~18_combout\ : std_logic;
SIGNAL \inst19|Add17~21\ : std_logic;
SIGNAL \inst19|Add17~20_combout\ : std_logic;
SIGNAL \inst19|Add17~23\ : std_logic;
SIGNAL \inst19|Add17~22_combout\ : std_logic;
SIGNAL \inst19|Add17~25\ : std_logic;
SIGNAL \inst19|Add17~24_combout\ : std_logic;
SIGNAL \inst19|Add17~27\ : std_logic;
SIGNAL \inst19|Add17~26_combout\ : std_logic;
SIGNAL \inst19|Add17~29\ : std_logic;
SIGNAL \inst19|Add17~28_combout\ : std_logic;
SIGNAL \inst19|Add17~31\ : std_logic;
SIGNAL \inst19|Add17~30_combout\ : std_logic;
SIGNAL \inst19|Add17~33\ : std_logic;
SIGNAL \inst19|Add17~32_combout\ : std_logic;
SIGNAL \inst19|Add17~35\ : std_logic;
SIGNAL \inst19|Add17~34_combout\ : std_logic;
SIGNAL \inst19|Add17~37\ : std_logic;
SIGNAL \inst19|Add17~36_combout\ : std_logic;
SIGNAL \inst19|Add17~39\ : std_logic;
SIGNAL \inst19|Add17~38_combout\ : std_logic;
SIGNAL \inst19|Add17~41\ : std_logic;
SIGNAL \inst19|Add17~40_combout\ : std_logic;
SIGNAL \inst19|Add17~43\ : std_logic;
SIGNAL \inst19|Add17~42_combout\ : std_logic;
SIGNAL \inst19|Add17~45\ : std_logic;
SIGNAL \inst19|Add17~44_combout\ : std_logic;
SIGNAL \inst19|Add17~47\ : std_logic;
SIGNAL \inst19|Add17~46_combout\ : std_logic;
SIGNAL \inst19|Add17~49\ : std_logic;
SIGNAL \inst19|Add17~48_combout\ : std_logic;
SIGNAL \inst19|Add17~51\ : std_logic;
SIGNAL \inst19|Add17~50_combout\ : std_logic;
SIGNAL \inst19|Add17~53\ : std_logic;
SIGNAL \inst19|Add17~52_combout\ : std_logic;
SIGNAL \inst19|Add17~55\ : std_logic;
SIGNAL \inst19|Add17~54_combout\ : std_logic;
SIGNAL \inst19|Add17~57\ : std_logic;
SIGNAL \inst19|Add17~56_combout\ : std_logic;
SIGNAL \inst19|Add17~59\ : std_logic;
SIGNAL \inst19|Add17~58_combout\ : std_logic;
SIGNAL \inst19|Add17~61\ : std_logic;
SIGNAL \inst19|Add17~60_combout\ : std_logic;
SIGNAL \inst19|Add17~62_combout\ : std_logic;
SIGNAL \inst19|Add18~1\ : std_logic;
SIGNAL \inst19|Add18~0_combout\ : std_logic;
SIGNAL \inst19|Add18~3\ : std_logic;
SIGNAL \inst19|Add18~2_combout\ : std_logic;
SIGNAL \inst19|Add18~5\ : std_logic;
SIGNAL \inst19|Add18~4_combout\ : std_logic;
SIGNAL \inst19|Add18~7\ : std_logic;
SIGNAL \inst19|Add18~6_combout\ : std_logic;
SIGNAL \inst19|Add18~9\ : std_logic;
SIGNAL \inst19|Add18~8_combout\ : std_logic;
SIGNAL \inst19|Add18~11\ : std_logic;
SIGNAL \inst19|Add18~10_combout\ : std_logic;
SIGNAL \inst19|Add18~13\ : std_logic;
SIGNAL \inst19|Add18~12_combout\ : std_logic;
SIGNAL \inst19|Add18~15\ : std_logic;
SIGNAL \inst19|Add18~14_combout\ : std_logic;
SIGNAL \inst19|Add18~17\ : std_logic;
SIGNAL \inst19|Add18~16_combout\ : std_logic;
SIGNAL \inst19|Add18~19\ : std_logic;
SIGNAL \inst19|Add18~18_combout\ : std_logic;
SIGNAL \inst19|Add18~21\ : std_logic;
SIGNAL \inst19|Add18~20_combout\ : std_logic;
SIGNAL \inst19|Add18~23\ : std_logic;
SIGNAL \inst19|Add18~22_combout\ : std_logic;
SIGNAL \inst19|Add18~25\ : std_logic;
SIGNAL \inst19|Add18~24_combout\ : std_logic;
SIGNAL \inst19|Add18~27\ : std_logic;
SIGNAL \inst19|Add18~26_combout\ : std_logic;
SIGNAL \inst19|Add18~29\ : std_logic;
SIGNAL \inst19|Add18~28_combout\ : std_logic;
SIGNAL \inst19|Add18~31\ : std_logic;
SIGNAL \inst19|Add18~30_combout\ : std_logic;
SIGNAL \inst19|Add18~33\ : std_logic;
SIGNAL \inst19|Add18~32_combout\ : std_logic;
SIGNAL \inst19|Add18~35\ : std_logic;
SIGNAL \inst19|Add18~34_combout\ : std_logic;
SIGNAL \inst19|Add18~37\ : std_logic;
SIGNAL \inst19|Add18~36_combout\ : std_logic;
SIGNAL \inst19|Add18~39\ : std_logic;
SIGNAL \inst19|Add18~38_combout\ : std_logic;
SIGNAL \inst19|Add18~41\ : std_logic;
SIGNAL \inst19|Add18~40_combout\ : std_logic;
SIGNAL \inst19|Add18~43\ : std_logic;
SIGNAL \inst19|Add18~42_combout\ : std_logic;
SIGNAL \inst19|Add18~45\ : std_logic;
SIGNAL \inst19|Add18~44_combout\ : std_logic;
SIGNAL \inst19|Add18~47\ : std_logic;
SIGNAL \inst19|Add18~46_combout\ : std_logic;
SIGNAL \inst19|Add18~49\ : std_logic;
SIGNAL \inst19|Add18~48_combout\ : std_logic;
SIGNAL \inst19|Add18~51\ : std_logic;
SIGNAL \inst19|Add18~50_combout\ : std_logic;
SIGNAL \inst19|Add18~53\ : std_logic;
SIGNAL \inst19|Add18~52_combout\ : std_logic;
SIGNAL \inst19|Add18~55\ : std_logic;
SIGNAL \inst19|Add18~54_combout\ : std_logic;
SIGNAL \inst19|Add18~57\ : std_logic;
SIGNAL \inst19|Add18~56_combout\ : std_logic;
SIGNAL \inst19|Add18~59\ : std_logic;
SIGNAL \inst19|Add18~58_combout\ : std_logic;
SIGNAL \inst19|Add18~61\ : std_logic;
SIGNAL \inst19|Add18~60_combout\ : std_logic;
SIGNAL \inst19|Add18~62_combout\ : std_logic;
SIGNAL \inst19|Add13~1\ : std_logic;
SIGNAL \inst19|Add13~0_combout\ : std_logic;
SIGNAL \inst19|Add13~3\ : std_logic;
SIGNAL \inst19|Add13~2_combout\ : std_logic;
SIGNAL \inst19|Add13~5\ : std_logic;
SIGNAL \inst19|Add13~4_combout\ : std_logic;
SIGNAL \inst19|Add13~7\ : std_logic;
SIGNAL \inst19|Add13~6_combout\ : std_logic;
SIGNAL \inst19|Add13~9\ : std_logic;
SIGNAL \inst19|Add13~8_combout\ : std_logic;
SIGNAL \inst19|Add13~11\ : std_logic;
SIGNAL \inst19|Add13~10_combout\ : std_logic;
SIGNAL \inst19|Add13~13\ : std_logic;
SIGNAL \inst19|Add13~12_combout\ : std_logic;
SIGNAL \inst19|Add13~15\ : std_logic;
SIGNAL \inst19|Add13~14_combout\ : std_logic;
SIGNAL \inst19|Add13~17\ : std_logic;
SIGNAL \inst19|Add13~16_combout\ : std_logic;
SIGNAL \inst19|Add13~19\ : std_logic;
SIGNAL \inst19|Add13~18_combout\ : std_logic;
SIGNAL \inst19|Add13~21\ : std_logic;
SIGNAL \inst19|Add13~20_combout\ : std_logic;
SIGNAL \inst19|Add13~23\ : std_logic;
SIGNAL \inst19|Add13~22_combout\ : std_logic;
SIGNAL \inst19|Add13~25\ : std_logic;
SIGNAL \inst19|Add13~24_combout\ : std_logic;
SIGNAL \inst19|Add13~27\ : std_logic;
SIGNAL \inst19|Add13~26_combout\ : std_logic;
SIGNAL \inst19|Add13~29\ : std_logic;
SIGNAL \inst19|Add13~28_combout\ : std_logic;
SIGNAL \inst19|Add13~31\ : std_logic;
SIGNAL \inst19|Add13~30_combout\ : std_logic;
SIGNAL \inst19|Add13~33\ : std_logic;
SIGNAL \inst19|Add13~32_combout\ : std_logic;
SIGNAL \inst19|Add13~35\ : std_logic;
SIGNAL \inst19|Add13~34_combout\ : std_logic;
SIGNAL \inst19|Add13~37\ : std_logic;
SIGNAL \inst19|Add13~36_combout\ : std_logic;
SIGNAL \inst19|Add13~39\ : std_logic;
SIGNAL \inst19|Add13~38_combout\ : std_logic;
SIGNAL \inst19|Add13~41\ : std_logic;
SIGNAL \inst19|Add13~40_combout\ : std_logic;
SIGNAL \inst19|Add13~43\ : std_logic;
SIGNAL \inst19|Add13~42_combout\ : std_logic;
SIGNAL \inst19|Add13~45\ : std_logic;
SIGNAL \inst19|Add13~44_combout\ : std_logic;
SIGNAL \inst19|Add13~47\ : std_logic;
SIGNAL \inst19|Add13~46_combout\ : std_logic;
SIGNAL \inst19|Add13~49\ : std_logic;
SIGNAL \inst19|Add13~48_combout\ : std_logic;
SIGNAL \inst19|Add13~51\ : std_logic;
SIGNAL \inst19|Add13~50_combout\ : std_logic;
SIGNAL \inst19|Add13~53\ : std_logic;
SIGNAL \inst19|Add13~52_combout\ : std_logic;
SIGNAL \inst19|Add13~55\ : std_logic;
SIGNAL \inst19|Add13~54_combout\ : std_logic;
SIGNAL \inst19|Add13~56_combout\ : std_logic;
SIGNAL \inst19|Add14~1\ : std_logic;
SIGNAL \inst19|Add14~0_combout\ : std_logic;
SIGNAL \inst19|Add14~3\ : std_logic;
SIGNAL \inst19|Add14~2_combout\ : std_logic;
SIGNAL \inst19|Add14~5\ : std_logic;
SIGNAL \inst19|Add14~4_combout\ : std_logic;
SIGNAL \inst19|Add14~7\ : std_logic;
SIGNAL \inst19|Add14~6_combout\ : std_logic;
SIGNAL \inst19|Add14~9\ : std_logic;
SIGNAL \inst19|Add14~8_combout\ : std_logic;
SIGNAL \inst19|Add14~11\ : std_logic;
SIGNAL \inst19|Add14~10_combout\ : std_logic;
SIGNAL \inst19|Add14~13\ : std_logic;
SIGNAL \inst19|Add14~12_combout\ : std_logic;
SIGNAL \inst19|Add14~15\ : std_logic;
SIGNAL \inst19|Add14~14_combout\ : std_logic;
SIGNAL \inst19|Add14~17\ : std_logic;
SIGNAL \inst19|Add14~16_combout\ : std_logic;
SIGNAL \inst19|Add14~19\ : std_logic;
SIGNAL \inst19|Add14~18_combout\ : std_logic;
SIGNAL \inst19|Add14~21\ : std_logic;
SIGNAL \inst19|Add14~20_combout\ : std_logic;
SIGNAL \inst19|Add14~23\ : std_logic;
SIGNAL \inst19|Add14~22_combout\ : std_logic;
SIGNAL \inst19|Add14~25\ : std_logic;
SIGNAL \inst19|Add14~24_combout\ : std_logic;
SIGNAL \inst19|Add14~27\ : std_logic;
SIGNAL \inst19|Add14~26_combout\ : std_logic;
SIGNAL \inst19|Add14~29\ : std_logic;
SIGNAL \inst19|Add14~28_combout\ : std_logic;
SIGNAL \inst19|Add14~31\ : std_logic;
SIGNAL \inst19|Add14~30_combout\ : std_logic;
SIGNAL \inst19|Add14~33\ : std_logic;
SIGNAL \inst19|Add14~32_combout\ : std_logic;
SIGNAL \inst19|Add14~35\ : std_logic;
SIGNAL \inst19|Add14~34_combout\ : std_logic;
SIGNAL \inst19|Add14~37\ : std_logic;
SIGNAL \inst19|Add14~36_combout\ : std_logic;
SIGNAL \inst19|Add14~39\ : std_logic;
SIGNAL \inst19|Add14~38_combout\ : std_logic;
SIGNAL \inst19|Add14~41\ : std_logic;
SIGNAL \inst19|Add14~40_combout\ : std_logic;
SIGNAL \inst19|Add14~43\ : std_logic;
SIGNAL \inst19|Add14~42_combout\ : std_logic;
SIGNAL \inst19|Add14~45\ : std_logic;
SIGNAL \inst19|Add14~44_combout\ : std_logic;
SIGNAL \inst19|Add14~47\ : std_logic;
SIGNAL \inst19|Add14~46_combout\ : std_logic;
SIGNAL \inst19|Add14~49\ : std_logic;
SIGNAL \inst19|Add14~48_combout\ : std_logic;
SIGNAL \inst19|Add14~51\ : std_logic;
SIGNAL \inst19|Add14~50_combout\ : std_logic;
SIGNAL \inst19|Add14~53\ : std_logic;
SIGNAL \inst19|Add14~52_combout\ : std_logic;
SIGNAL \inst19|Add14~55\ : std_logic;
SIGNAL \inst19|Add14~54_combout\ : std_logic;
SIGNAL \inst19|Add14~57\ : std_logic;
SIGNAL \inst19|Add14~56_combout\ : std_logic;
SIGNAL \inst19|Add14~59\ : std_logic;
SIGNAL \inst19|Add14~58_combout\ : std_logic;
SIGNAL \inst19|Add14~61\ : std_logic;
SIGNAL \inst19|Add14~60_combout\ : std_logic;
SIGNAL \inst19|Add14~62_combout\ : std_logic;
SIGNAL \inst19|Add11~1\ : std_logic;
SIGNAL \inst19|Add11~0_combout\ : std_logic;
SIGNAL \inst19|Add11~3\ : std_logic;
SIGNAL \inst19|Add11~2_combout\ : std_logic;
SIGNAL \inst19|Add11~5\ : std_logic;
SIGNAL \inst19|Add11~4_combout\ : std_logic;
SIGNAL \inst19|Add11~7\ : std_logic;
SIGNAL \inst19|Add11~6_combout\ : std_logic;
SIGNAL \inst19|Add11~9\ : std_logic;
SIGNAL \inst19|Add11~8_combout\ : std_logic;
SIGNAL \inst19|Add11~11\ : std_logic;
SIGNAL \inst19|Add11~10_combout\ : std_logic;
SIGNAL \inst19|Add11~13\ : std_logic;
SIGNAL \inst19|Add11~12_combout\ : std_logic;
SIGNAL \inst19|Add11~15\ : std_logic;
SIGNAL \inst19|Add11~14_combout\ : std_logic;
SIGNAL \inst19|Add11~17\ : std_logic;
SIGNAL \inst19|Add11~16_combout\ : std_logic;
SIGNAL \inst19|Add11~19\ : std_logic;
SIGNAL \inst19|Add11~18_combout\ : std_logic;
SIGNAL \inst19|Add11~21\ : std_logic;
SIGNAL \inst19|Add11~20_combout\ : std_logic;
SIGNAL \inst19|Add11~23\ : std_logic;
SIGNAL \inst19|Add11~22_combout\ : std_logic;
SIGNAL \inst19|Add11~25\ : std_logic;
SIGNAL \inst19|Add11~24_combout\ : std_logic;
SIGNAL \inst19|Add11~27\ : std_logic;
SIGNAL \inst19|Add11~26_combout\ : std_logic;
SIGNAL \inst19|Add11~29\ : std_logic;
SIGNAL \inst19|Add11~28_combout\ : std_logic;
SIGNAL \inst19|Add11~31\ : std_logic;
SIGNAL \inst19|Add11~30_combout\ : std_logic;
SIGNAL \inst19|Add11~33\ : std_logic;
SIGNAL \inst19|Add11~32_combout\ : std_logic;
SIGNAL \inst19|Add11~35\ : std_logic;
SIGNAL \inst19|Add11~34_combout\ : std_logic;
SIGNAL \inst19|Add11~37\ : std_logic;
SIGNAL \inst19|Add11~36_combout\ : std_logic;
SIGNAL \inst19|Add11~39\ : std_logic;
SIGNAL \inst19|Add11~38_combout\ : std_logic;
SIGNAL \inst19|Add11~41\ : std_logic;
SIGNAL \inst19|Add11~40_combout\ : std_logic;
SIGNAL \inst19|Add11~43\ : std_logic;
SIGNAL \inst19|Add11~42_combout\ : std_logic;
SIGNAL \inst19|Add11~45\ : std_logic;
SIGNAL \inst19|Add11~44_combout\ : std_logic;
SIGNAL \inst19|Add11~47\ : std_logic;
SIGNAL \inst19|Add11~46_combout\ : std_logic;
SIGNAL \inst19|Add11~49\ : std_logic;
SIGNAL \inst19|Add11~48_combout\ : std_logic;
SIGNAL \inst19|Add11~51\ : std_logic;
SIGNAL \inst19|Add11~50_combout\ : std_logic;
SIGNAL \inst19|Add11~53\ : std_logic;
SIGNAL \inst19|Add11~52_combout\ : std_logic;
SIGNAL \inst19|Add11~55\ : std_logic;
SIGNAL \inst19|Add11~54_combout\ : std_logic;
SIGNAL \inst19|Add11~57\ : std_logic;
SIGNAL \inst19|Add11~56_combout\ : std_logic;
SIGNAL \inst19|Add11~59\ : std_logic;
SIGNAL \inst19|Add11~58_combout\ : std_logic;
SIGNAL \inst19|Add11~60_combout\ : std_logic;
SIGNAL \inst19|Add12~1\ : std_logic;
SIGNAL \inst19|Add12~0_combout\ : std_logic;
SIGNAL \inst19|Add12~3\ : std_logic;
SIGNAL \inst19|Add12~2_combout\ : std_logic;
SIGNAL \inst19|Add12~5\ : std_logic;
SIGNAL \inst19|Add12~4_combout\ : std_logic;
SIGNAL \inst19|Add12~7\ : std_logic;
SIGNAL \inst19|Add12~6_combout\ : std_logic;
SIGNAL \inst19|Add12~9\ : std_logic;
SIGNAL \inst19|Add12~8_combout\ : std_logic;
SIGNAL \inst19|Add12~11\ : std_logic;
SIGNAL \inst19|Add12~10_combout\ : std_logic;
SIGNAL \inst19|Add12~13\ : std_logic;
SIGNAL \inst19|Add12~12_combout\ : std_logic;
SIGNAL \inst19|Add12~15\ : std_logic;
SIGNAL \inst19|Add12~14_combout\ : std_logic;
SIGNAL \inst19|Add12~17\ : std_logic;
SIGNAL \inst19|Add12~16_combout\ : std_logic;
SIGNAL \inst19|Add12~19\ : std_logic;
SIGNAL \inst19|Add12~18_combout\ : std_logic;
SIGNAL \inst19|Add12~21\ : std_logic;
SIGNAL \inst19|Add12~20_combout\ : std_logic;
SIGNAL \inst19|Add12~23\ : std_logic;
SIGNAL \inst19|Add12~22_combout\ : std_logic;
SIGNAL \inst19|Add12~25\ : std_logic;
SIGNAL \inst19|Add12~24_combout\ : std_logic;
SIGNAL \inst19|Add12~27\ : std_logic;
SIGNAL \inst19|Add12~26_combout\ : std_logic;
SIGNAL \inst19|Add12~29\ : std_logic;
SIGNAL \inst19|Add12~28_combout\ : std_logic;
SIGNAL \inst19|Add12~31\ : std_logic;
SIGNAL \inst19|Add12~30_combout\ : std_logic;
SIGNAL \inst19|Add12~33\ : std_logic;
SIGNAL \inst19|Add12~32_combout\ : std_logic;
SIGNAL \inst19|Add12~35\ : std_logic;
SIGNAL \inst19|Add12~34_combout\ : std_logic;
SIGNAL \inst19|Add12~37\ : std_logic;
SIGNAL \inst19|Add12~36_combout\ : std_logic;
SIGNAL \inst19|Add12~39\ : std_logic;
SIGNAL \inst19|Add12~38_combout\ : std_logic;
SIGNAL \inst19|Add12~41\ : std_logic;
SIGNAL \inst19|Add12~40_combout\ : std_logic;
SIGNAL \inst19|Add12~43\ : std_logic;
SIGNAL \inst19|Add12~42_combout\ : std_logic;
SIGNAL \inst19|Add12~45\ : std_logic;
SIGNAL \inst19|Add12~44_combout\ : std_logic;
SIGNAL \inst19|Add12~47\ : std_logic;
SIGNAL \inst19|Add12~46_combout\ : std_logic;
SIGNAL \inst19|Add12~49\ : std_logic;
SIGNAL \inst19|Add12~48_combout\ : std_logic;
SIGNAL \inst19|Add12~51\ : std_logic;
SIGNAL \inst19|Add12~50_combout\ : std_logic;
SIGNAL \inst19|Add12~53\ : std_logic;
SIGNAL \inst19|Add12~52_combout\ : std_logic;
SIGNAL \inst19|Add12~55\ : std_logic;
SIGNAL \inst19|Add12~54_combout\ : std_logic;
SIGNAL \inst19|Add12~57\ : std_logic;
SIGNAL \inst19|Add12~56_combout\ : std_logic;
SIGNAL \inst19|Add12~59\ : std_logic;
SIGNAL \inst19|Add12~58_combout\ : std_logic;
SIGNAL \inst19|Add12~61\ : std_logic;
SIGNAL \inst19|Add12~60_combout\ : std_logic;
SIGNAL \inst19|Add12~62_combout\ : std_logic;
SIGNAL \inst19|Add9~1\ : std_logic;
SIGNAL \inst19|Add9~0_combout\ : std_logic;
SIGNAL \inst19|Add9~3\ : std_logic;
SIGNAL \inst19|Add9~2_combout\ : std_logic;
SIGNAL \inst19|Add9~5\ : std_logic;
SIGNAL \inst19|Add9~4_combout\ : std_logic;
SIGNAL \inst19|Add9~7\ : std_logic;
SIGNAL \inst19|Add9~6_combout\ : std_logic;
SIGNAL \inst19|Add9~9\ : std_logic;
SIGNAL \inst19|Add9~8_combout\ : std_logic;
SIGNAL \inst19|Add9~11\ : std_logic;
SIGNAL \inst19|Add9~10_combout\ : std_logic;
SIGNAL \inst19|Add9~13\ : std_logic;
SIGNAL \inst19|Add9~12_combout\ : std_logic;
SIGNAL \inst19|Add9~15\ : std_logic;
SIGNAL \inst19|Add9~14_combout\ : std_logic;
SIGNAL \inst19|Add9~17\ : std_logic;
SIGNAL \inst19|Add9~16_combout\ : std_logic;
SIGNAL \inst19|Add9~19\ : std_logic;
SIGNAL \inst19|Add9~18_combout\ : std_logic;
SIGNAL \inst19|Add9~21\ : std_logic;
SIGNAL \inst19|Add9~20_combout\ : std_logic;
SIGNAL \inst19|Add9~23\ : std_logic;
SIGNAL \inst19|Add9~22_combout\ : std_logic;
SIGNAL \inst19|Add9~25\ : std_logic;
SIGNAL \inst19|Add9~24_combout\ : std_logic;
SIGNAL \inst19|Add9~27\ : std_logic;
SIGNAL \inst19|Add9~26_combout\ : std_logic;
SIGNAL \inst19|Add9~29\ : std_logic;
SIGNAL \inst19|Add9~28_combout\ : std_logic;
SIGNAL \inst19|Add9~31\ : std_logic;
SIGNAL \inst19|Add9~30_combout\ : std_logic;
SIGNAL \inst19|Add9~33\ : std_logic;
SIGNAL \inst19|Add9~32_combout\ : std_logic;
SIGNAL \inst19|Add9~35\ : std_logic;
SIGNAL \inst19|Add9~34_combout\ : std_logic;
SIGNAL \inst19|Add9~37\ : std_logic;
SIGNAL \inst19|Add9~36_combout\ : std_logic;
SIGNAL \inst19|Add9~39\ : std_logic;
SIGNAL \inst19|Add9~38_combout\ : std_logic;
SIGNAL \inst19|Add9~41\ : std_logic;
SIGNAL \inst19|Add9~40_combout\ : std_logic;
SIGNAL \inst19|Add9~43\ : std_logic;
SIGNAL \inst19|Add9~42_combout\ : std_logic;
SIGNAL \inst19|Add9~45\ : std_logic;
SIGNAL \inst19|Add9~44_combout\ : std_logic;
SIGNAL \inst19|Add9~47\ : std_logic;
SIGNAL \inst19|Add9~46_combout\ : std_logic;
SIGNAL \inst19|Add9~49\ : std_logic;
SIGNAL \inst19|Add9~48_combout\ : std_logic;
SIGNAL \inst19|Add9~51\ : std_logic;
SIGNAL \inst19|Add9~50_combout\ : std_logic;
SIGNAL \inst19|Add9~53\ : std_logic;
SIGNAL \inst19|Add9~52_combout\ : std_logic;
SIGNAL \inst19|Add9~55\ : std_logic;
SIGNAL \inst19|Add9~54_combout\ : std_logic;
SIGNAL \inst19|Add9~57\ : std_logic;
SIGNAL \inst19|Add9~56_combout\ : std_logic;
SIGNAL \inst19|Add9~59\ : std_logic;
SIGNAL \inst19|Add9~58_combout\ : std_logic;
SIGNAL \inst19|Add9~61\ : std_logic;
SIGNAL \inst19|Add9~60_combout\ : std_logic;
SIGNAL \inst19|Add9~62_combout\ : std_logic;
SIGNAL \inst19|Add10~1\ : std_logic;
SIGNAL \inst19|Add10~0_combout\ : std_logic;
SIGNAL \inst19|Add10~3\ : std_logic;
SIGNAL \inst19|Add10~2_combout\ : std_logic;
SIGNAL \inst19|Add10~5\ : std_logic;
SIGNAL \inst19|Add10~4_combout\ : std_logic;
SIGNAL \inst19|Add10~7\ : std_logic;
SIGNAL \inst19|Add10~6_combout\ : std_logic;
SIGNAL \inst19|Add10~9\ : std_logic;
SIGNAL \inst19|Add10~8_combout\ : std_logic;
SIGNAL \inst19|Add10~11\ : std_logic;
SIGNAL \inst19|Add10~10_combout\ : std_logic;
SIGNAL \inst19|Add10~13\ : std_logic;
SIGNAL \inst19|Add10~12_combout\ : std_logic;
SIGNAL \inst19|Add10~15\ : std_logic;
SIGNAL \inst19|Add10~14_combout\ : std_logic;
SIGNAL \inst19|Add10~17\ : std_logic;
SIGNAL \inst19|Add10~16_combout\ : std_logic;
SIGNAL \inst19|Add10~19\ : std_logic;
SIGNAL \inst19|Add10~18_combout\ : std_logic;
SIGNAL \inst19|Add10~21\ : std_logic;
SIGNAL \inst19|Add10~20_combout\ : std_logic;
SIGNAL \inst19|Add10~23\ : std_logic;
SIGNAL \inst19|Add10~22_combout\ : std_logic;
SIGNAL \inst19|Add10~25\ : std_logic;
SIGNAL \inst19|Add10~24_combout\ : std_logic;
SIGNAL \inst19|Add10~27\ : std_logic;
SIGNAL \inst19|Add10~26_combout\ : std_logic;
SIGNAL \inst19|Add10~29\ : std_logic;
SIGNAL \inst19|Add10~28_combout\ : std_logic;
SIGNAL \inst19|Add10~31\ : std_logic;
SIGNAL \inst19|Add10~30_combout\ : std_logic;
SIGNAL \inst19|Add10~33\ : std_logic;
SIGNAL \inst19|Add10~32_combout\ : std_logic;
SIGNAL \inst19|Add10~35\ : std_logic;
SIGNAL \inst19|Add10~34_combout\ : std_logic;
SIGNAL \inst19|Add10~37\ : std_logic;
SIGNAL \inst19|Add10~36_combout\ : std_logic;
SIGNAL \inst19|Add10~39\ : std_logic;
SIGNAL \inst19|Add10~38_combout\ : std_logic;
SIGNAL \inst19|Add10~41\ : std_logic;
SIGNAL \inst19|Add10~40_combout\ : std_logic;
SIGNAL \inst19|Add10~43\ : std_logic;
SIGNAL \inst19|Add10~42_combout\ : std_logic;
SIGNAL \inst19|Add10~45\ : std_logic;
SIGNAL \inst19|Add10~44_combout\ : std_logic;
SIGNAL \inst19|Add10~47\ : std_logic;
SIGNAL \inst19|Add10~46_combout\ : std_logic;
SIGNAL \inst19|Add10~49\ : std_logic;
SIGNAL \inst19|Add10~48_combout\ : std_logic;
SIGNAL \inst19|Add10~51\ : std_logic;
SIGNAL \inst19|Add10~50_combout\ : std_logic;
SIGNAL \inst19|Add10~53\ : std_logic;
SIGNAL \inst19|Add10~52_combout\ : std_logic;
SIGNAL \inst19|Add10~55\ : std_logic;
SIGNAL \inst19|Add10~54_combout\ : std_logic;
SIGNAL \inst19|Add10~57\ : std_logic;
SIGNAL \inst19|Add10~56_combout\ : std_logic;
SIGNAL \inst19|Add10~59\ : std_logic;
SIGNAL \inst19|Add10~58_combout\ : std_logic;
SIGNAL \inst19|Add10~61\ : std_logic;
SIGNAL \inst19|Add10~60_combout\ : std_logic;
SIGNAL \inst19|Add10~62_combout\ : std_logic;
SIGNAL \inst19|Add7~0_combout\ : std_logic;
SIGNAL \inst19|Add7~2_combout\ : std_logic;
SIGNAL \inst19|Add7~4_combout\ : std_logic;
SIGNAL \inst19|Add7~6_combout\ : std_logic;
SIGNAL \inst19|Add7~12_combout\ : std_logic;
SIGNAL \inst19|Add7~18_combout\ : std_logic;
SIGNAL \inst19|Add7~20_combout\ : std_logic;
SIGNAL \inst19|Add7~26_combout\ : std_logic;
SIGNAL \inst19|Add7~34_combout\ : std_logic;
SIGNAL \inst19|Add7~36_combout\ : std_logic;
SIGNAL \inst19|Add7~38_combout\ : std_logic;
SIGNAL \inst19|Add7~40_combout\ : std_logic;
SIGNAL \inst19|Add7~42_combout\ : std_logic;
SIGNAL \inst19|Add7~52_combout\ : std_logic;
SIGNAL \inst19|Add7~58_combout\ : std_logic;
SIGNAL \inst19|Add7~60_combout\ : std_logic;
SIGNAL \inst19|Add8~4_combout\ : std_logic;
SIGNAL \inst19|Add8~14_combout\ : std_logic;
SIGNAL \inst19|Add8~16_combout\ : std_logic;
SIGNAL \inst19|Add8~18_combout\ : std_logic;
SIGNAL \inst19|Add8~20_combout\ : std_logic;
SIGNAL \inst19|Add8~22_combout\ : std_logic;
SIGNAL \inst19|Add8~26_combout\ : std_logic;
SIGNAL \inst19|Add8~32_combout\ : std_logic;
SIGNAL \inst19|Add8~34_combout\ : std_logic;
SIGNAL \inst19|Add8~36_combout\ : std_logic;
SIGNAL \inst19|Add8~38_combout\ : std_logic;
SIGNAL \inst19|Add8~44_combout\ : std_logic;
SIGNAL \inst19|Add8~48_combout\ : std_logic;
SIGNAL \inst19|Add8~50_combout\ : std_logic;
SIGNAL \inst19|Add8~52_combout\ : std_logic;
SIGNAL \inst19|Add8~54_combout\ : std_logic;
SIGNAL \inst19|Add5~0_combout\ : std_logic;
SIGNAL \inst19|Add5~2_combout\ : std_logic;
SIGNAL \inst19|Add5~4_combout\ : std_logic;
SIGNAL \inst19|Add5~12_combout\ : std_logic;
SIGNAL \inst19|Add5~18_combout\ : std_logic;
SIGNAL \inst19|Add5~20_combout\ : std_logic;
SIGNAL \inst19|Add5~26_combout\ : std_logic;
SIGNAL \inst19|Add5~28_combout\ : std_logic;
SIGNAL \inst19|Add5~32_combout\ : std_logic;
SIGNAL \inst19|Add5~34_combout\ : std_logic;
SIGNAL \inst19|Add5~36_combout\ : std_logic;
SIGNAL \inst19|Add5~38_combout\ : std_logic;
SIGNAL \inst19|Add5~40_combout\ : std_logic;
SIGNAL \inst19|Add5~52_combout\ : std_logic;
SIGNAL \inst19|Add5~60_combout\ : std_logic;
SIGNAL \inst19|Add6~0_combout\ : std_logic;
SIGNAL \inst19|Add6~2_combout\ : std_logic;
SIGNAL \inst19|Add6~4_combout\ : std_logic;
SIGNAL \inst19|Add6~6_combout\ : std_logic;
SIGNAL \inst19|Add6~8_combout\ : std_logic;
SIGNAL \inst19|Add6~10_combout\ : std_logic;
SIGNAL \inst19|Add6~12_combout\ : std_logic;
SIGNAL \inst19|Add6~14_combout\ : std_logic;
SIGNAL \inst19|Add6~16_combout\ : std_logic;
SIGNAL \inst19|Add6~18_combout\ : std_logic;
SIGNAL \inst19|Add6~20_combout\ : std_logic;
SIGNAL \inst19|Add6~22_combout\ : std_logic;
SIGNAL \inst19|Add6~24_combout\ : std_logic;
SIGNAL \inst19|Add6~26_combout\ : std_logic;
SIGNAL \inst19|Add6~28_combout\ : std_logic;
SIGNAL \inst19|Add6~30_combout\ : std_logic;
SIGNAL \inst19|Add6~32_combout\ : std_logic;
SIGNAL \inst19|Add6~34_combout\ : std_logic;
SIGNAL \inst19|Add6~36_combout\ : std_logic;
SIGNAL \inst19|Add6~38_combout\ : std_logic;
SIGNAL \inst19|Add6~40_combout\ : std_logic;
SIGNAL \inst19|Add6~42_combout\ : std_logic;
SIGNAL \inst19|Add6~44_combout\ : std_logic;
SIGNAL \inst19|Add6~46_combout\ : std_logic;
SIGNAL \inst19|Add6~48_combout\ : std_logic;
SIGNAL \inst19|Add6~50_combout\ : std_logic;
SIGNAL \inst19|Add6~52_combout\ : std_logic;
SIGNAL \inst19|Add6~54_combout\ : std_logic;
SIGNAL \inst19|Add6~56_combout\ : std_logic;
SIGNAL \inst19|Add6~58_combout\ : std_logic;
SIGNAL \inst19|Add6~60_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[0]~16_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[1]~18_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[2]~20_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[3]~22_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[4]~24_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[5]~26_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[6]~28_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[7]~30_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[8]~32_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[9]~34_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[10]~36_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[11]~38_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[12]~40_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[13]~42_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Tail[0]~q\ : std_logic;
SIGNAL \inst8|fifo_proc:Head[1]~q\ : std_logic;
SIGNAL \inst8|fifo_proc~0_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Head[2]~q\ : std_logic;
SIGNAL \inst8|fifo_proc~1_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Tail[5]~q\ : std_logic;
SIGNAL \inst8|fifo_proc:Head[5]~q\ : std_logic;
SIGNAL \inst8|fifo_proc~2_combout\ : std_logic;
SIGNAL \inst8|fifo_proc~3_combout\ : std_logic;
SIGNAL \inst8|fifo_proc~4_combout\ : std_logic;
SIGNAL \inst8|fifo_proc~5_combout\ : std_logic;
SIGNAL \inst8|fifo_proc~6_combout\ : std_logic;
SIGNAL \inst8|fifo_proc~7_combout\ : std_logic;
SIGNAL \inst8|fifo_proc~8_combout\ : std_logic;
SIGNAL \inst8|fifo_proc~9_combout\ : std_logic;
SIGNAL \inst8|Head~0_combout\ : std_logic;
SIGNAL \inst8|Full~0_combout\ : std_logic;
SIGNAL \inst8|Full~1_combout\ : std_logic;
SIGNAL \inst8|Full~2_combout\ : std_logic;
SIGNAL \inst8|Full~3_combout\ : std_logic;
SIGNAL \inst8|Full~4_combout\ : std_logic;
SIGNAL \inst8|Full~5_combout\ : std_logic;
SIGNAL \inst19|LessThan2~4_combout\ : std_logic;
SIGNAL \inst19|Equal0~0_combout\ : std_logic;
SIGNAL \inst19|Equal0~7_combout\ : std_logic;
SIGNAL \inst19|Equal0~8_combout\ : std_logic;
SIGNAL \inst19|LessThan0~4_combout\ : std_logic;
SIGNAL \inst19|LessThan1~0_combout\ : std_logic;
SIGNAL \inst19|LessThan1~2_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~20_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~28_combout\ : std_logic;
SIGNAL \inst19|LessThan6~1_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~42_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~54_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~57_combout\ : std_logic;
SIGNAL \inst19|LessThan6~5_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~62_combout\ : std_logic;
SIGNAL \inst19|LessThan6~7_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~80_combout\ : std_logic;
SIGNAL \inst19|LessThan7~0_combout\ : std_logic;
SIGNAL \inst19|LessThan7~1_combout\ : std_logic;
SIGNAL \inst19|LessThan7~2_combout\ : std_logic;
SIGNAL \inst19|LessThan7~3_combout\ : std_logic;
SIGNAL \inst19|LessThan7~4_combout\ : std_logic;
SIGNAL \inst19|LessThan7~5_combout\ : std_logic;
SIGNAL \inst19|LessThan7~6_combout\ : std_logic;
SIGNAL \inst19|LessThan7~7_combout\ : std_logic;
SIGNAL \inst19|LessThan7~8_combout\ : std_logic;
SIGNAL \inst19|LessThan7~9_combout\ : std_logic;
SIGNAL \inst19|LessThan3~0_combout\ : std_logic;
SIGNAL \inst19|result~5_combout\ : std_logic;
SIGNAL \inst19|LessThan13~0_combout\ : std_logic;
SIGNAL \inst19|LessThan13~1_combout\ : std_logic;
SIGNAL \inst19|LessThan13~2_combout\ : std_logic;
SIGNAL \inst19|LessThan13~3_combout\ : std_logic;
SIGNAL \inst19|LessThan13~4_combout\ : std_logic;
SIGNAL \inst19|LessThan13~5_combout\ : std_logic;
SIGNAL \inst19|LessThan13~6_combout\ : std_logic;
SIGNAL \inst19|LessThan13~7_combout\ : std_logic;
SIGNAL \inst19|LessThan13~8_combout\ : std_logic;
SIGNAL \inst19|LessThan13~9_combout\ : std_logic;
SIGNAL \inst19|result~6_combout\ : std_logic;
SIGNAL \inst19|rotor~0_combout\ : std_logic;
SIGNAL \inst19|rotor~1_combout\ : std_logic;
SIGNAL \inst19|rotor~2_combout\ : std_logic;
SIGNAL \inst19|rotor~3_combout\ : std_logic;
SIGNAL \inst19|rotor~4_combout\ : std_logic;
SIGNAL \inst19|rotor~5_combout\ : std_logic;
SIGNAL \inst19|rotor~6_combout\ : std_logic;
SIGNAL \inst19|rotor~7_combout\ : std_logic;
SIGNAL \inst19|rotor~8_combout\ : std_logic;
SIGNAL \inst19|rotor~9_combout\ : std_logic;
SIGNAL \inst19|result~7_combout\ : std_logic;
SIGNAL \inst19|rotor~10_combout\ : std_logic;
SIGNAL \inst19|LessThan14~0_combout\ : std_logic;
SIGNAL \inst19|LessThan14~1_combout\ : std_logic;
SIGNAL \inst19|LessThan14~2_combout\ : std_logic;
SIGNAL \inst19|LessThan14~3_combout\ : std_logic;
SIGNAL \inst19|LessThan14~4_combout\ : std_logic;
SIGNAL \inst19|LessThan14~5_combout\ : std_logic;
SIGNAL \inst19|LessThan14~6_combout\ : std_logic;
SIGNAL \inst19|LessThan14~7_combout\ : std_logic;
SIGNAL \inst19|LessThan14~8_combout\ : std_logic;
SIGNAL \inst19|LessThan14~9_combout\ : std_logic;
SIGNAL \inst19|rotor~11_combout\ : std_logic;
SIGNAL \inst19|result~8_combout\ : std_logic;
SIGNAL \inst19|LessThan12~0_combout\ : std_logic;
SIGNAL \inst19|LessThan12~1_combout\ : std_logic;
SIGNAL \inst19|LessThan12~2_combout\ : std_logic;
SIGNAL \inst19|LessThan12~3_combout\ : std_logic;
SIGNAL \inst19|LessThan12~4_combout\ : std_logic;
SIGNAL \inst19|LessThan12~5_combout\ : std_logic;
SIGNAL \inst19|LessThan12~6_combout\ : std_logic;
SIGNAL \inst19|LessThan12~7_combout\ : std_logic;
SIGNAL \inst19|LessThan12~8_combout\ : std_logic;
SIGNAL \inst19|LessThan12~9_combout\ : std_logic;
SIGNAL \inst19|rotor~12_combout\ : std_logic;
SIGNAL \inst19|result~9_combout\ : std_logic;
SIGNAL \inst19|rotor~13_combout\ : std_logic;
SIGNAL \inst19|rotor~14_combout\ : std_logic;
SIGNAL \inst19|rotor~15_combout\ : std_logic;
SIGNAL \inst19|rotor~16_combout\ : std_logic;
SIGNAL \inst19|rotor~17_combout\ : std_logic;
SIGNAL \inst19|rotor~18_combout\ : std_logic;
SIGNAL \inst19|rotor~19_combout\ : std_logic;
SIGNAL \inst19|rotor~20_combout\ : std_logic;
SIGNAL \inst19|rotor~21_combout\ : std_logic;
SIGNAL \inst19|rotor~22_combout\ : std_logic;
SIGNAL \inst19|rotor~23_combout\ : std_logic;
SIGNAL \inst19|result~10_combout\ : std_logic;
SIGNAL \inst19|LessThan10~0_combout\ : std_logic;
SIGNAL \inst19|LessThan10~1_combout\ : std_logic;
SIGNAL \inst19|LessThan10~2_combout\ : std_logic;
SIGNAL \inst19|LessThan10~3_combout\ : std_logic;
SIGNAL \inst19|LessThan10~4_combout\ : std_logic;
SIGNAL \inst19|LessThan10~5_combout\ : std_logic;
SIGNAL \inst19|LessThan10~6_combout\ : std_logic;
SIGNAL \inst19|LessThan10~7_combout\ : std_logic;
SIGNAL \inst19|LessThan10~8_combout\ : std_logic;
SIGNAL \inst19|LessThan10~9_combout\ : std_logic;
SIGNAL \inst19|rotor~24_combout\ : std_logic;
SIGNAL \inst19|result~11_combout\ : std_logic;
SIGNAL \inst19|LessThan9~2_combout\ : std_logic;
SIGNAL \inst19|LessThan9~5_combout\ : std_logic;
SIGNAL \inst19|LessThan9~7_combout\ : std_logic;
SIGNAL \inst19|result~12_combout\ : std_logic;
SIGNAL \inst19|LessThan8~0_combout\ : std_logic;
SIGNAL \inst19|LessThan8~1_combout\ : std_logic;
SIGNAL \inst19|LessThan8~2_combout\ : std_logic;
SIGNAL \inst19|LessThan8~3_combout\ : std_logic;
SIGNAL \inst19|LessThan8~4_combout\ : std_logic;
SIGNAL \inst19|LessThan8~5_combout\ : std_logic;
SIGNAL \inst19|LessThan8~6_combout\ : std_logic;
SIGNAL \inst19|LessThan8~7_combout\ : std_logic;
SIGNAL \inst19|LessThan8~8_combout\ : std_logic;
SIGNAL \inst19|LessThan8~9_combout\ : std_logic;
SIGNAL \inst8|Tail~1_combout\ : std_logic;
SIGNAL \inst8|Head~1_combout\ : std_logic;
SIGNAL \inst8|Head~4_combout\ : std_logic;
SIGNAL \inst8|Tail~6_combout\ : std_logic;
SIGNAL \inst8|Head~5_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|miso~0_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[14]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[14]~7_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[13]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[13]~10_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[13]~11_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[12]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[12]~14_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[12]~15_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[11]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[11]~18_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[11]~19_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[10]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[10]~22_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[10]~23_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[9]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[9]~26_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[9]~27_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[8]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[8]~30_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[8]~31_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[7]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[7]~34_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[7]~35_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[6]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[6]~38_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[6]~39_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[5]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[5]~42_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[5]~43_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[4]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[4]~46_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[4]~47_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[3]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[3]~50_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[3]~51_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[2]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[2]~54_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[2]~55_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[1]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[1]~58_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[1]~59_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[0]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[0]~62_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[0]~63_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[13]~9_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[12]~13_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[11]~17_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[10]~21_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[9]~25_combout\ : std_logic;
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
SIGNAL \SW1~input_o\ : std_logic;
SIGNAL \SW2~input_o\ : std_logic;
SIGNAL \SW0~input_o\ : std_logic;
SIGNAL \sensor0~input_o\ : std_logic;
SIGNAL \clock_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst19|sweep_duration[13]~feeder_combout\ : std_logic;
SIGNAL \inst19|sweep_duration[10]~feeder_combout\ : std_logic;
SIGNAL \inst19|sweep_duration[6]~feeder_combout\ : std_logic;
SIGNAL \inst19|sweep_duration[3]~feeder_combout\ : std_logic;
SIGNAL \inst19|sweep_duration[2]~feeder_combout\ : std_logic;
SIGNAL \inst19|sweep_duration[1]~feeder_combout\ : std_logic;
SIGNAL \inst19|start_valid_sync[0]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_start[0]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_start[14]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_start[13]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_start[10]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_start[7]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_start[6]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_start[5]~feeder_combout\ : std_logic;
SIGNAL \inst19|start_valid_sync[2]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_start[2]~feeder_combout\ : std_logic;
SIGNAL \spi_sclk~input_o\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[1]~feeder_combout\ : std_logic;
SIGNAL \spi_ss_n~input_o\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[2]~0_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[3]~feeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[5]~feeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[6]~feeder_combout\ : std_logic;
SIGNAL \spi_mosi~input_o\ : std_logic;
SIGNAL \inst13|spi_slave_0|wr_add~0_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|wr_add~q\ : std_logic;
SIGNAL \inst13|spi_slave_0|roe~0_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|rrdy~0_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|rrdy~1_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|rrdy~q\ : std_logic;
SIGNAL \inst13|spi_slave_0|roe~1_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|roe~q\ : std_logic;
SIGNAL \inst13|spi_slave_0|miso~1_combout\ : std_logic;
SIGNAL \inst1|temp[31]~93_combout\ : std_logic;
SIGNAL \inst1|temp[30]~32\ : std_logic;
SIGNAL \inst1|temp[29]~33_combout\ : std_logic;
SIGNAL \inst1|temp[29]~34\ : std_logic;
SIGNAL \inst1|temp[28]~35_combout\ : std_logic;
SIGNAL \inst1|temp[30]~31_combout\ : std_logic;
SIGNAL \inst19|Add0~1\ : std_logic;
SIGNAL \inst19|Add0~3\ : std_logic;
SIGNAL \inst19|Add0~5\ : std_logic;
SIGNAL \inst19|Add0~6_combout\ : std_logic;
SIGNAL \inst1|temp[28]~36\ : std_logic;
SIGNAL \inst1|temp[27]~37_combout\ : std_logic;
SIGNAL \inst1|temp[27]~38\ : std_logic;
SIGNAL \inst1|temp[26]~39_combout\ : std_logic;
SIGNAL \inst19|Add0~7\ : std_logic;
SIGNAL \inst19|Add0~9\ : std_logic;
SIGNAL \inst19|Add0~10_combout\ : std_logic;
SIGNAL \inst19|Add0~4_combout\ : std_logic;
SIGNAL \inst19|LessThan4~0_combout\ : std_logic;
SIGNAL \inst1|temp[26]~40\ : std_logic;
SIGNAL \inst1|temp[25]~41_combout\ : std_logic;
SIGNAL \inst19|Add0~11\ : std_logic;
SIGNAL \inst19|Add0~12_combout\ : std_logic;
SIGNAL \inst1|temp[25]~42\ : std_logic;
SIGNAL \inst1|temp[24]~43_combout\ : std_logic;
SIGNAL \inst19|Add0~13\ : std_logic;
SIGNAL \inst19|Add0~14_combout\ : std_logic;
SIGNAL \inst19|result~1_combout\ : std_logic;
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
SIGNAL \inst1|temp[12]~67_combout\ : std_logic;
SIGNAL \inst1|temp[16]~59_combout\ : std_logic;
SIGNAL \inst1|temp[18]~55_combout\ : std_logic;
SIGNAL \inst1|temp[20]~51_combout\ : std_logic;
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
SIGNAL \inst19|Add0~40_combout\ : std_logic;
SIGNAL \inst1|temp[11]~70\ : std_logic;
SIGNAL \inst1|temp[10]~72\ : std_logic;
SIGNAL \inst1|temp[9]~74\ : std_logic;
SIGNAL \inst1|temp[8]~75_combout\ : std_logic;
SIGNAL \inst1|temp[9]~73_combout\ : std_logic;
SIGNAL \inst1|temp[10]~71_combout\ : std_logic;
SIGNAL \inst19|Add0~41\ : std_logic;
SIGNAL \inst19|Add0~43\ : std_logic;
SIGNAL \inst19|Add0~45\ : std_logic;
SIGNAL \inst19|Add0~46_combout\ : std_logic;
SIGNAL \inst19|Add0~42_combout\ : std_logic;
SIGNAL \inst19|LessThan2~5_combout\ : std_logic;
SIGNAL \inst1|temp[8]~76\ : std_logic;
SIGNAL \inst1|temp[7]~77_combout\ : std_logic;
SIGNAL \inst1|temp[7]~78\ : std_logic;
SIGNAL \inst1|temp[6]~79_combout\ : std_logic;
SIGNAL \inst1|temp[6]~80\ : std_logic;
SIGNAL \inst1|temp[5]~81_combout\ : std_logic;
SIGNAL \inst19|Add0~47\ : std_logic;
SIGNAL \inst19|Add0~49\ : std_logic;
SIGNAL \inst19|Add0~51\ : std_logic;
SIGNAL \inst19|Add0~52_combout\ : std_logic;
SIGNAL \inst19|Add0~50_combout\ : std_logic;
SIGNAL \inst19|LessThan2~0_combout\ : std_logic;
SIGNAL \inst19|Add0~30_combout\ : std_logic;
SIGNAL \inst19|Add0~26_combout\ : std_logic;
SIGNAL \inst19|Add0~28_combout\ : std_logic;
SIGNAL \inst19|LessThan2~2_combout\ : std_logic;
SIGNAL \inst19|Add0~18_combout\ : std_logic;
SIGNAL \inst19|Add0~22_combout\ : std_logic;
SIGNAL \inst19|Add0~16_combout\ : std_logic;
SIGNAL \inst19|LessThan2~1_combout\ : std_logic;
SIGNAL \inst19|LessThan2~3_combout\ : std_logic;
SIGNAL \inst19|LessThan2~6_combout\ : std_logic;
SIGNAL \inst1|temp[5]~82\ : std_logic;
SIGNAL \inst1|temp[4]~83_combout\ : std_logic;
SIGNAL \inst19|Add0~53\ : std_logic;
SIGNAL \inst19|Add0~54_combout\ : std_logic;
SIGNAL \inst1|temp[4]~84\ : std_logic;
SIGNAL \inst1|temp[3]~85_combout\ : std_logic;
SIGNAL \inst19|Add0~55\ : std_logic;
SIGNAL \inst19|Add0~56_combout\ : std_logic;
SIGNAL \inst19|LessThan0~0_combout\ : std_logic;
SIGNAL \inst19|result~2_combout\ : std_logic;
SIGNAL \inst19|LessThan2~8_combout\ : std_logic;
SIGNAL \inst19|LessThan0~1_combout\ : std_logic;
SIGNAL \inst19|Add0~8_combout\ : std_logic;
SIGNAL \inst19|LessThan1~1_combout\ : std_logic;
SIGNAL \inst19|LessThan1~3_combout\ : std_logic;
SIGNAL \inst19|Add0~2_combout\ : std_logic;
SIGNAL \inst19|Add0~0_combout\ : std_logic;
SIGNAL \inst19|LessThan2~7_combout\ : std_logic;
SIGNAL \inst19|t_sweep_start[0]~1_combout\ : std_logic;
SIGNAL \inst19|t_sweep_start[0]~2_combout\ : std_logic;
SIGNAL \inst19|result~3_combout\ : std_logic;
SIGNAL \inst19|result~4_combout\ : std_logic;
SIGNAL \inst19|result~q\ : std_logic;
SIGNAL \inst1|temp[3]~86\ : std_logic;
SIGNAL \inst1|temp[2]~88\ : std_logic;
SIGNAL \inst1|temp[1]~89_combout\ : std_logic;
SIGNAL \inst1|temp[1]~90\ : std_logic;
SIGNAL \inst1|temp[0]~91_combout\ : std_logic;
SIGNAL \inst1|temp[2]~87_combout\ : std_logic;
SIGNAL \inst19|Add0~57\ : std_logic;
SIGNAL \inst19|Add0~59\ : std_logic;
SIGNAL \inst19|Add0~61\ : std_logic;
SIGNAL \inst19|Add0~62_combout\ : std_logic;
SIGNAL \inst19|Add0~60_combout\ : std_logic;
SIGNAL \inst19|Add0~58_combout\ : std_logic;
SIGNAL \inst19|Add0~44_combout\ : std_logic;
SIGNAL \inst19|Add0~36_combout\ : std_logic;
SIGNAL \inst19|Add0~24_combout\ : std_logic;
SIGNAL \inst19|Add0~20_combout\ : std_logic;
SIGNAL \inst19|Add5~1\ : std_logic;
SIGNAL \inst19|Add5~3\ : std_logic;
SIGNAL \inst19|Add5~5\ : std_logic;
SIGNAL \inst19|Add5~7\ : std_logic;
SIGNAL \inst19|Add5~9\ : std_logic;
SIGNAL \inst19|Add5~11\ : std_logic;
SIGNAL \inst19|Add5~13\ : std_logic;
SIGNAL \inst19|Add5~15\ : std_logic;
SIGNAL \inst19|Add5~17\ : std_logic;
SIGNAL \inst19|Add5~19\ : std_logic;
SIGNAL \inst19|Add5~21\ : std_logic;
SIGNAL \inst19|Add5~23\ : std_logic;
SIGNAL \inst19|Add5~25\ : std_logic;
SIGNAL \inst19|Add5~27\ : std_logic;
SIGNAL \inst19|Add5~29\ : std_logic;
SIGNAL \inst19|Add5~31\ : std_logic;
SIGNAL \inst19|Add5~33\ : std_logic;
SIGNAL \inst19|Add5~35\ : std_logic;
SIGNAL \inst19|Add5~37\ : std_logic;
SIGNAL \inst19|Add5~39\ : std_logic;
SIGNAL \inst19|Add5~41\ : std_logic;
SIGNAL \inst19|Add5~43\ : std_logic;
SIGNAL \inst19|Add5~45\ : std_logic;
SIGNAL \inst19|Add5~47\ : std_logic;
SIGNAL \inst19|Add5~49\ : std_logic;
SIGNAL \inst19|Add5~51\ : std_logic;
SIGNAL \inst19|Add5~53\ : std_logic;
SIGNAL \inst19|Add5~55\ : std_logic;
SIGNAL \inst19|Add5~57\ : std_logic;
SIGNAL \inst19|Add5~59\ : std_logic;
SIGNAL \inst19|Add5~61\ : std_logic;
SIGNAL \inst19|Add5~62_combout\ : std_logic;
SIGNAL \inst19|Add5~58_combout\ : std_logic;
SIGNAL \inst19|Add5~56_combout\ : std_logic;
SIGNAL \inst19|Add5~54_combout\ : std_logic;
SIGNAL \inst19|Add5~50_combout\ : std_logic;
SIGNAL \inst19|Add5~48_combout\ : std_logic;
SIGNAL \inst19|Add5~46_combout\ : std_logic;
SIGNAL \inst19|Add5~44_combout\ : std_logic;
SIGNAL \inst19|Add5~42_combout\ : std_logic;
SIGNAL \inst19|Add5~30_combout\ : std_logic;
SIGNAL \inst19|Add5~24_combout\ : std_logic;
SIGNAL \inst19|Add5~22_combout\ : std_logic;
SIGNAL \inst19|Add5~16_combout\ : std_logic;
SIGNAL \inst19|Add5~14_combout\ : std_logic;
SIGNAL \inst19|Add5~10_combout\ : std_logic;
SIGNAL \inst19|Add5~8_combout\ : std_logic;
SIGNAL \inst19|Add5~6_combout\ : std_logic;
SIGNAL \inst19|Add6~1\ : std_logic;
SIGNAL \inst19|Add6~3\ : std_logic;
SIGNAL \inst19|Add6~5\ : std_logic;
SIGNAL \inst19|Add6~7\ : std_logic;
SIGNAL \inst19|Add6~9\ : std_logic;
SIGNAL \inst19|Add6~11\ : std_logic;
SIGNAL \inst19|Add6~13\ : std_logic;
SIGNAL \inst19|Add6~15\ : std_logic;
SIGNAL \inst19|Add6~17\ : std_logic;
SIGNAL \inst19|Add6~19\ : std_logic;
SIGNAL \inst19|Add6~21\ : std_logic;
SIGNAL \inst19|Add6~23\ : std_logic;
SIGNAL \inst19|Add6~25\ : std_logic;
SIGNAL \inst19|Add6~27\ : std_logic;
SIGNAL \inst19|Add6~29\ : std_logic;
SIGNAL \inst19|Add6~31\ : std_logic;
SIGNAL \inst19|Add6~33\ : std_logic;
SIGNAL \inst19|Add6~35\ : std_logic;
SIGNAL \inst19|Add6~37\ : std_logic;
SIGNAL \inst19|Add6~39\ : std_logic;
SIGNAL \inst19|Add6~41\ : std_logic;
SIGNAL \inst19|Add6~43\ : std_logic;
SIGNAL \inst19|Add6~45\ : std_logic;
SIGNAL \inst19|Add6~47\ : std_logic;
SIGNAL \inst19|Add6~49\ : std_logic;
SIGNAL \inst19|Add6~51\ : std_logic;
SIGNAL \inst19|Add6~53\ : std_logic;
SIGNAL \inst19|Add6~55\ : std_logic;
SIGNAL \inst19|Add6~57\ : std_logic;
SIGNAL \inst19|Add6~59\ : std_logic;
SIGNAL \inst19|Add6~61\ : std_logic;
SIGNAL \inst19|Add6~62_combout\ : std_logic;
SIGNAL \inst19|Add0~34_combout\ : std_logic;
SIGNAL \inst19|Add7~1\ : std_logic;
SIGNAL \inst19|Add7~3\ : std_logic;
SIGNAL \inst19|Add7~5\ : std_logic;
SIGNAL \inst19|Add7~7\ : std_logic;
SIGNAL \inst19|Add7~9\ : std_logic;
SIGNAL \inst19|Add7~11\ : std_logic;
SIGNAL \inst19|Add7~13\ : std_logic;
SIGNAL \inst19|Add7~15\ : std_logic;
SIGNAL \inst19|Add7~17\ : std_logic;
SIGNAL \inst19|Add7~19\ : std_logic;
SIGNAL \inst19|Add7~21\ : std_logic;
SIGNAL \inst19|Add7~23\ : std_logic;
SIGNAL \inst19|Add7~25\ : std_logic;
SIGNAL \inst19|Add7~27\ : std_logic;
SIGNAL \inst19|Add7~29\ : std_logic;
SIGNAL \inst19|Add7~31\ : std_logic;
SIGNAL \inst19|Add7~33\ : std_logic;
SIGNAL \inst19|Add7~35\ : std_logic;
SIGNAL \inst19|Add7~37\ : std_logic;
SIGNAL \inst19|Add7~39\ : std_logic;
SIGNAL \inst19|Add7~41\ : std_logic;
SIGNAL \inst19|Add7~43\ : std_logic;
SIGNAL \inst19|Add7~45\ : std_logic;
SIGNAL \inst19|Add7~47\ : std_logic;
SIGNAL \inst19|Add7~49\ : std_logic;
SIGNAL \inst19|Add7~51\ : std_logic;
SIGNAL \inst19|Add7~53\ : std_logic;
SIGNAL \inst19|Add7~55\ : std_logic;
SIGNAL \inst19|Add7~57\ : std_logic;
SIGNAL \inst19|Add7~59\ : std_logic;
SIGNAL \inst19|Add7~61\ : std_logic;
SIGNAL \inst19|Add7~62_combout\ : std_logic;
SIGNAL \inst19|Add7~56_combout\ : std_logic;
SIGNAL \inst19|Add7~54_combout\ : std_logic;
SIGNAL \inst19|Add7~50_combout\ : std_logic;
SIGNAL \inst19|Add7~48_combout\ : std_logic;
SIGNAL \inst19|Add7~46_combout\ : std_logic;
SIGNAL \inst19|Add7~44_combout\ : std_logic;
SIGNAL \inst19|Add7~32_combout\ : std_logic;
SIGNAL \inst19|Add7~30_combout\ : std_logic;
SIGNAL \inst19|Add7~28_combout\ : std_logic;
SIGNAL \inst19|Add7~24_combout\ : std_logic;
SIGNAL \inst19|Add7~22_combout\ : std_logic;
SIGNAL \inst19|Add7~16_combout\ : std_logic;
SIGNAL \inst19|Add7~14_combout\ : std_logic;
SIGNAL \inst19|Add7~10_combout\ : std_logic;
SIGNAL \inst19|Add7~8_combout\ : std_logic;
SIGNAL \inst19|Add8~1\ : std_logic;
SIGNAL \inst19|Add8~3\ : std_logic;
SIGNAL \inst19|Add8~5\ : std_logic;
SIGNAL \inst19|Add8~7\ : std_logic;
SIGNAL \inst19|Add8~9\ : std_logic;
SIGNAL \inst19|Add8~11\ : std_logic;
SIGNAL \inst19|Add8~13\ : std_logic;
SIGNAL \inst19|Add8~15\ : std_logic;
SIGNAL \inst19|Add8~17\ : std_logic;
SIGNAL \inst19|Add8~19\ : std_logic;
SIGNAL \inst19|Add8~21\ : std_logic;
SIGNAL \inst19|Add8~23\ : std_logic;
SIGNAL \inst19|Add8~25\ : std_logic;
SIGNAL \inst19|Add8~27\ : std_logic;
SIGNAL \inst19|Add8~29\ : std_logic;
SIGNAL \inst19|Add8~31\ : std_logic;
SIGNAL \inst19|Add8~33\ : std_logic;
SIGNAL \inst19|Add8~35\ : std_logic;
SIGNAL \inst19|Add8~37\ : std_logic;
SIGNAL \inst19|Add8~39\ : std_logic;
SIGNAL \inst19|Add8~41\ : std_logic;
SIGNAL \inst19|Add8~43\ : std_logic;
SIGNAL \inst19|Add8~45\ : std_logic;
SIGNAL \inst19|Add8~47\ : std_logic;
SIGNAL \inst19|Add8~49\ : std_logic;
SIGNAL \inst19|Add8~51\ : std_logic;
SIGNAL \inst19|Add8~53\ : std_logic;
SIGNAL \inst19|Add8~55\ : std_logic;
SIGNAL \inst19|Add8~57\ : std_logic;
SIGNAL \inst19|Add8~59\ : std_logic;
SIGNAL \inst19|Add8~61\ : std_logic;
SIGNAL \inst19|Add8~62_combout\ : std_logic;
SIGNAL \inst19|Add8~56_combout\ : std_logic;
SIGNAL \inst19|Add8~60_combout\ : std_logic;
SIGNAL \inst19|Add8~58_combout\ : std_logic;
SIGNAL \inst19|LessThan9~8_combout\ : std_logic;
SIGNAL \inst19|Add8~12_combout\ : std_logic;
SIGNAL \inst19|Add8~10_combout\ : std_logic;
SIGNAL \inst19|Add8~8_combout\ : std_logic;
SIGNAL \inst19|LessThan9~1_combout\ : std_logic;
SIGNAL \inst19|Add8~28_combout\ : std_logic;
SIGNAL \inst19|Add8~30_combout\ : std_logic;
SIGNAL \inst19|Add8~24_combout\ : std_logic;
SIGNAL \inst19|LessThan9~3_combout\ : std_logic;
SIGNAL \inst19|Add8~2_combout\ : std_logic;
SIGNAL \inst19|Add8~0_combout\ : std_logic;
SIGNAL \inst19|Add8~6_combout\ : std_logic;
SIGNAL \inst19|LessThan9~0_combout\ : std_logic;
SIGNAL \inst19|LessThan9~4_combout\ : std_logic;
SIGNAL \inst19|Add8~46_combout\ : std_logic;
SIGNAL \inst19|Add8~40_combout\ : std_logic;
SIGNAL \inst19|Add8~42_combout\ : std_logic;
SIGNAL \inst19|LessThan9~6_combout\ : std_logic;
SIGNAL \inst19|LessThan9~9_combout\ : std_logic;
SIGNAL \inst19|rotor~25_combout\ : std_logic;
SIGNAL \inst19|rotor~26_combout\ : std_logic;
SIGNAL \inst19|rotor~q\ : std_logic;
SIGNAL \inst19|lighthouse_switch~0_combout\ : std_logic;
SIGNAL \inst19|LessThan0~5_combout\ : std_logic;
SIGNAL \inst19|t_sweep_start[0]~3_combout\ : std_logic;
SIGNAL \inst19|start_valid_sync[8]~feeder_combout\ : std_logic;
SIGNAL \inst19|start_valid_sync[10]~feeder_combout\ : std_logic;
SIGNAL \inst19|start_valid_sync[7]~feeder_combout\ : std_logic;
SIGNAL \inst19|Equal0~6_combout\ : std_logic;
SIGNAL \inst19|start_valid_sync[23]~feeder_combout\ : std_logic;
SIGNAL \inst19|Equal0~1_combout\ : std_logic;
SIGNAL \inst19|Equal0~3_combout\ : std_logic;
SIGNAL \inst19|start_valid_sync[21]~feeder_combout\ : std_logic;
SIGNAL \inst19|Equal0~2_combout\ : std_logic;
SIGNAL \inst19|Equal0~4_combout\ : std_logic;
SIGNAL \inst19|start_valid_sync[14]~feeder_combout\ : std_logic;
SIGNAL \inst19|start_valid_sync[11]~feeder_combout\ : std_logic;
SIGNAL \inst19|start_valid_sync[13]~feeder_combout\ : std_logic;
SIGNAL \inst19|Equal0~5_combout\ : std_logic;
SIGNAL \inst19|Equal0~9_combout\ : std_logic;
SIGNAL \inst19|Equal0~10_combout\ : std_logic;
SIGNAL \inst19|LessThan0~2_combout\ : std_logic;
SIGNAL \inst19|LessThan0~3_combout\ : std_logic;
SIGNAL \inst19|t_sweep_start[0]~0_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~9_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~38_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~84_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~2_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~97_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~33_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~71_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~87_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~34_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~85_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~35_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~86_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~3_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~74_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~75_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~88_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~4_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~8_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~50_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~108_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~15_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~49_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~110_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~16_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~18_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~111_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~17_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~82_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~29_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~109_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~48_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~79_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~81_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~51_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~106_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~13_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~14_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~59_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~107_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~37_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~53_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~83_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~21_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~22_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~39_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~102_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~58_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~99_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~64_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~98_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~10_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~41_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~40_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~43_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~101_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~60_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~56_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~61_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~105_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~72_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~73_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~100_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~11_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~76_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~77_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~104_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~12_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~19_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~23_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~69_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~70_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~95_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~44_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~52_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~90_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~45_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~91_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~5_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~46_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~47_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~96_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~24_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~25_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~27_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~93_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~26_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~94_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~67_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~112_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~30_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~31_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~92_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~6_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~7_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~32_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~66_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~63_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~103_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~65_combout\ : std_logic;
SIGNAL \inst19|LessThan6~6_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~89_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~78_combout\ : std_logic;
SIGNAL \inst19|LessThan6~8_combout\ : std_logic;
SIGNAL \inst19|LessThan6~3_combout\ : std_logic;
SIGNAL \inst19|LessThan6~2_combout\ : std_logic;
SIGNAL \inst19|LessThan6~0_combout\ : std_logic;
SIGNAL \inst19|LessThan6~4_combout\ : std_logic;
SIGNAL \inst19|LessThan6~9_combout\ : std_logic;
SIGNAL \inst19|process_0~0_combout\ : std_logic;
SIGNAL \inst19|start_valid_sync[16]~0_combout\ : std_logic;
SIGNAL \inst19|start_valid_sync[26]~feeder_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~36_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~68_combout\ : std_logic;
SIGNAL \inst19|start_valid_sync[6]~feeder_combout\ : std_logic;
SIGNAL \inst19|start_valid_sync[5]~feeder_combout\ : std_logic;
SIGNAL \inst19|stop_valid_sync~55_combout\ : std_logic;
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
SIGNAL \inst19|Add2~56_combout\ : std_logic;
SIGNAL \inst19|Add2~54_combout\ : std_logic;
SIGNAL \inst19|Add2~52_combout\ : std_logic;
SIGNAL \inst19|Add2~50_combout\ : std_logic;
SIGNAL \inst19|Add2~38_combout\ : std_logic;
SIGNAL \inst19|Add2~36_combout\ : std_logic;
SIGNAL \inst19|Add2~30_combout\ : std_logic;
SIGNAL \inst19|Add2~28_combout\ : std_logic;
SIGNAL \inst19|Add2~24_combout\ : std_logic;
SIGNAL \inst19|Add2~22_combout\ : std_logic;
SIGNAL \inst19|Add2~20_combout\ : std_logic;
SIGNAL \inst19|Add2~18_combout\ : std_logic;
SIGNAL \inst19|Add2~6_combout\ : std_logic;
SIGNAL \inst19|Add2~4_combout\ : std_logic;
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
SIGNAL \inst19|start_valid_sync[31]~feeder_combout\ : std_logic;
SIGNAL \inst19|start_valid_sync[30]~feeder_combout\ : std_logic;
SIGNAL \inst19|Add2~57\ : std_logic;
SIGNAL \inst19|Add2~59\ : std_logic;
SIGNAL \inst19|Add2~61\ : std_logic;
SIGNAL \inst19|Add2~62_combout\ : std_logic;
SIGNAL \inst19|Add3~57\ : std_logic;
SIGNAL \inst19|Add3~58_combout\ : std_logic;
SIGNAL \inst19|Add3~38_combout\ : std_logic;
SIGNAL \inst19|Add3~36_combout\ : std_logic;
SIGNAL \inst19|Add3~32_combout\ : std_logic;
SIGNAL \inst19|Add3~30_combout\ : std_logic;
SIGNAL \inst19|Add3~28_combout\ : std_logic;
SIGNAL \inst19|Add3~20_combout\ : std_logic;
SIGNAL \inst19|Add3~16_combout\ : std_logic;
SIGNAL \inst19|Add3~14_combout\ : std_logic;
SIGNAL \inst19|Add3~12_combout\ : std_logic;
SIGNAL \inst19|Add3~8_combout\ : std_logic;
SIGNAL \inst19|Add3~4_combout\ : std_logic;
SIGNAL \inst19|Add3~0_combout\ : std_logic;
SIGNAL \inst19|Add2~0_combout\ : std_logic;
SIGNAL \inst19|result~0_combout\ : std_logic;
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
SIGNAL \inst19|lighthouse_A~0_combout\ : std_logic;
SIGNAL \inst19|lighthouse_switch~q\ : std_logic;
SIGNAL \inst19|lighthouse_A~feeder_combout\ : std_logic;
SIGNAL \inst19|lighthouse_A~q\ : std_logic;
SIGNAL \inst13|process_0~0_combout\ : std_logic;
SIGNAL \inst13|prev_data~q\ : std_logic;
SIGNAL \inst13|process_0~1_combout\ : std_logic;
SIGNAL \inst13|spi_tx_ena~q\ : std_logic;
SIGNAL \inst13|spi_slave_0|process_1~2_combout\ : std_logic;
SIGNAL \inst19|t_sweep_start[0]~4_combout\ : std_logic;
SIGNAL \inst19|t_sweep_start[11]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_start[9]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_start[8]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_start[3]~feeder_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[0]~17\ : std_logic;
SIGNAL \inst19|t_sweep_duration[1]~19\ : std_logic;
SIGNAL \inst19|t_sweep_duration[2]~21\ : std_logic;
SIGNAL \inst19|t_sweep_duration[3]~23\ : std_logic;
SIGNAL \inst19|t_sweep_duration[4]~25\ : std_logic;
SIGNAL \inst19|t_sweep_duration[5]~27\ : std_logic;
SIGNAL \inst19|t_sweep_duration[6]~29\ : std_logic;
SIGNAL \inst19|t_sweep_duration[7]~31\ : std_logic;
SIGNAL \inst19|t_sweep_duration[8]~33\ : std_logic;
SIGNAL \inst19|t_sweep_duration[9]~35\ : std_logic;
SIGNAL \inst19|t_sweep_duration[10]~37\ : std_logic;
SIGNAL \inst19|t_sweep_duration[11]~39\ : std_logic;
SIGNAL \inst19|t_sweep_duration[12]~41\ : std_logic;
SIGNAL \inst19|t_sweep_duration[13]~43\ : std_logic;
SIGNAL \inst19|t_sweep_duration[14]~45\ : std_logic;
SIGNAL \inst19|t_sweep_duration[15]~46_combout\ : std_logic;
SIGNAL \inst19|LessThan0~6_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|process_1~2clkctrl_outclk\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[15]~1_combout\ : std_logic;
SIGNAL \inst19|t_sweep_duration[14]~44_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[14]~5_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[14]~6_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[15]~3_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|process_1~0_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|process_1~1_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|rd_add~0_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|rd_add~q\ : std_logic;
SIGNAL \inst13|spi_slave_0|process_1~3_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[15]~_emulated_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|tx_buf[15]~2_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|miso~2_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|miso~3_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|miso~4_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|miso~reg0_q\ : std_logic;
SIGNAL \inst13|spi_slave_0|miso~enfeeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|miso~en_q\ : std_logic;
SIGNAL \clock_50~input_o\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \button1_reset~input_o\ : std_logic;
SIGNAL \inst8|Add1~0_combout\ : std_logic;
SIGNAL \inst8|Head~2_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Head[0]~q\ : std_logic;
SIGNAL \inst8|Add1~1\ : std_logic;
SIGNAL \inst8|Add1~3\ : std_logic;
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
SIGNAL \inst8|Add1~12_combout\ : std_logic;
SIGNAL \inst8|Head~7_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Head[6]~q\ : std_logic;
SIGNAL \inst8|Full~6_combout\ : std_logic;
SIGNAL \inst8|Looped~3_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Looped~q\ : std_logic;
SIGNAL \button0_read~input_o\ : std_logic;
SIGNAL \inst8|Tail~0_combout\ : std_logic;
SIGNAL \inst8|Add0~1\ : std_logic;
SIGNAL \inst8|Add0~2_combout\ : std_logic;
SIGNAL \inst8|Tail~2_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Tail[1]~q\ : std_logic;
SIGNAL \inst8|Add0~3\ : std_logic;
SIGNAL \inst8|Add0~4_combout\ : std_logic;
SIGNAL \inst8|Tail~3_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Tail[2]~q\ : std_logic;
SIGNAL \inst8|Add0~5\ : std_logic;
SIGNAL \inst8|Add0~7\ : std_logic;
SIGNAL \inst8|Add0~8_combout\ : std_logic;
SIGNAL \inst8|Tail~5_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Tail[4]~q\ : std_logic;
SIGNAL \inst8|Add0~9\ : std_logic;
SIGNAL \inst8|Add0~11\ : std_logic;
SIGNAL \inst8|Add0~12_combout\ : std_logic;
SIGNAL \inst8|Tail~8_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Tail[6]~q\ : std_logic;
SIGNAL \inst8|Add0~13\ : std_logic;
SIGNAL \inst8|Add0~14_combout\ : std_logic;
SIGNAL \inst8|Tail~7_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Tail[7]~q\ : std_logic;
SIGNAL \inst8|Looped~0_combout\ : std_logic;
SIGNAL \inst8|Add0~6_combout\ : std_logic;
SIGNAL \inst8|Tail~4_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Tail[3]~q\ : std_logic;
SIGNAL \inst8|Looped~1_combout\ : std_logic;
SIGNAL \inst8|Looped~2_combout\ : std_logic;
SIGNAL \inst8|Add1~13\ : std_logic;
SIGNAL \inst8|Add1~14_combout\ : std_logic;
SIGNAL \inst8|Head~8_combout\ : std_logic;
SIGNAL \inst8|fifo_proc:Head[7]~q\ : std_logic;
SIGNAL \inst8|Full~7_combout\ : std_logic;
SIGNAL \inst8|Full~8_combout\ : std_logic;
SIGNAL \inst8|Full~q\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[12]~feeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[14]~feeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[15]~feeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[17]~feeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[19]~feeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[20]~feeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[22]~feeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|bit_cnt[23]~feeder_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|trdy~0_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|trdy~1_combout\ : std_logic;
SIGNAL \inst13|spi_slave_0|trdy~q\ : std_logic;
SIGNAL \inst19|t_sweep_start\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst19|t_sweep_duration\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst19|t_0\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst19|sweep_duration\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst19|stop_valid_sync\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst19|start_valid_sync\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|temp\ : std_logic_vector(0 TO 31);
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst13|spi_tx_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst13|spi_slave_0|bit_cnt\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \inst13|spi_slave_0|ALT_INV_trdy~q\ : std_logic;
SIGNAL \inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_spi_ss_n~input_o\ : std_logic;
SIGNAL \ALT_INV_sensor0~input_o\ : std_logic;
SIGNAL \ALT_INV_spi_sclk~input_o\ : std_logic;

BEGIN

sensor0_led <= ww_sensor0_led;
ww_clock_50 <= clock_50;
ww_spi_reset_n <= spi_reset_n;
ww_spi_sclk <= spi_sclk;
ww_spi_ss_n <= spi_ss_n;
ww_spi_mosi <= spi_mosi;
ww_sensor0 <= sensor0;
ww_SW0 <= SW0;
led_fifo_full <= ww_led_fifo_full;
ww_button1_reset <= button1_reset;
ww_button0_read <= button0_read;
spi_miso <= ww_spi_miso;
spi_trdy <= ww_spi_trdy;
lighthouse_led <= ww_lighthouse_led;
LCD0 <= ww_LCD0;
LCD1 <= ww_LCD1;
LCD2 <= ww_LCD2;
LCD3 <= ww_LCD3;
led <= ww_led;
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

\inst13|spi_slave_0|process_1~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst13|spi_slave_0|process_1~2_combout\);

\inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|altpll_component|auto_generated|wire_pll1_clk\(0));

\clock_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_50~input_o\);
\inst13|spi_slave_0|ALT_INV_trdy~q\ <= NOT \inst13|spi_slave_0|trdy~q\;
\inst13|spi_slave_0|ALT_INV_process_1~2clkctrl_outclk\ <= NOT \inst13|spi_slave_0|process_1~2clkctrl_outclk\;
\ALT_INV_spi_ss_n~input_o\ <= NOT \spi_ss_n~input_o\;
\ALT_INV_sensor0~input_o\ <= NOT \sensor0~input_o\;
\ALT_INV_spi_sclk~input_o\ <= NOT \spi_sclk~input_o\;

-- Location: LCCOMB_X15_Y16_N0
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

-- Location: LCCOMB_X15_Y16_N10
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

-- Location: LCCOMB_X17_Y16_N6
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

-- Location: LCCOMB_X17_Y16_N8
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

-- Location: LCCOMB_X17_Y16_N14
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

-- Location: LCCOMB_X26_Y16_N0
\inst19|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~32_combout\ = ((\inst19|t_0\(16) $ (\inst1|temp\(15) $ (\inst19|Add0~31\)))) # (GND)
-- \inst19|Add0~33\ = CARRY((\inst19|t_0\(16) & (\inst1|temp\(15) & !\inst19|Add0~31\)) # (!\inst19|t_0\(16) & ((\inst1|temp\(15)) # (!\inst19|Add0~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(16),
	datab => \inst1|temp\(15),
	datad => VCC,
	cin => \inst19|Add0~31\,
	combout => \inst19|Add0~32_combout\,
	cout => \inst19|Add0~33\);

-- Location: LCCOMB_X26_Y16_N6
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

-- Location: LCCOMB_X26_Y16_N16
\inst19|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~48_combout\ = ((\inst1|temp\(7) $ (\inst19|t_0\(24) $ (\inst19|Add0~47\)))) # (GND)
-- \inst19|Add0~49\ = CARRY((\inst1|temp\(7) & ((!\inst19|Add0~47\) # (!\inst19|t_0\(24)))) # (!\inst1|temp\(7) & (!\inst19|t_0\(24) & !\inst19|Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(7),
	datab => \inst19|t_0\(24),
	datad => VCC,
	cin => \inst19|Add0~47\,
	combout => \inst19|Add0~48_combout\,
	cout => \inst19|Add0~49\);

-- Location: LCCOMB_X23_Y19_N2
\inst19|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~2_combout\ = (\inst19|stop_valid_sync~38_combout\ & ((\inst19|start_valid_sync\(1) & (!\inst19|Add2~1\)) # (!\inst19|start_valid_sync\(1) & (\inst19|Add2~1\ & VCC)))) # (!\inst19|stop_valid_sync~38_combout\ & ((\inst19|start_valid_sync\(1) & 
-- ((\inst19|Add2~1\) # (GND))) # (!\inst19|start_valid_sync\(1) & (!\inst19|Add2~1\))))
-- \inst19|Add2~3\ = CARRY((\inst19|stop_valid_sync~38_combout\ & (\inst19|start_valid_sync\(1) & !\inst19|Add2~1\)) # (!\inst19|stop_valid_sync~38_combout\ & ((\inst19|start_valid_sync\(1)) # (!\inst19|Add2~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~38_combout\,
	datab => \inst19|start_valid_sync\(1),
	datad => VCC,
	cin => \inst19|Add2~1\,
	combout => \inst19|Add2~2_combout\,
	cout => \inst19|Add2~3\);

-- Location: LCCOMB_X23_Y19_N8
\inst19|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~8_combout\ = ((\inst19|start_valid_sync\(4) $ (\inst19|stop_valid_sync~55_combout\ $ (\inst19|Add2~7\)))) # (GND)
-- \inst19|Add2~9\ = CARRY((\inst19|start_valid_sync\(4) & (\inst19|stop_valid_sync~55_combout\ & !\inst19|Add2~7\)) # (!\inst19|start_valid_sync\(4) & ((\inst19|stop_valid_sync~55_combout\) # (!\inst19|Add2~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|start_valid_sync\(4),
	datab => \inst19|stop_valid_sync~55_combout\,
	datad => VCC,
	cin => \inst19|Add2~7\,
	combout => \inst19|Add2~8_combout\,
	cout => \inst19|Add2~9\);

-- Location: LCCOMB_X23_Y19_N10
\inst19|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~10_combout\ = (\inst19|stop_valid_sync~59_combout\ & ((\inst19|start_valid_sync\(5) & (!\inst19|Add2~9\)) # (!\inst19|start_valid_sync\(5) & (\inst19|Add2~9\ & VCC)))) # (!\inst19|stop_valid_sync~59_combout\ & ((\inst19|start_valid_sync\(5) & 
-- ((\inst19|Add2~9\) # (GND))) # (!\inst19|start_valid_sync\(5) & (!\inst19|Add2~9\))))
-- \inst19|Add2~11\ = CARRY((\inst19|stop_valid_sync~59_combout\ & (\inst19|start_valid_sync\(5) & !\inst19|Add2~9\)) # (!\inst19|stop_valid_sync~59_combout\ & ((\inst19|start_valid_sync\(5)) # (!\inst19|Add2~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~59_combout\,
	datab => \inst19|start_valid_sync\(5),
	datad => VCC,
	cin => \inst19|Add2~9\,
	combout => \inst19|Add2~10_combout\,
	cout => \inst19|Add2~11\);

-- Location: LCCOMB_X23_Y19_N12
\inst19|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~12_combout\ = ((\inst19|stop_valid_sync~29_combout\ $ (\inst19|start_valid_sync\(6) $ (\inst19|Add2~11\)))) # (GND)
-- \inst19|Add2~13\ = CARRY((\inst19|stop_valid_sync~29_combout\ & ((!\inst19|Add2~11\) # (!\inst19|start_valid_sync\(6)))) # (!\inst19|stop_valid_sync~29_combout\ & (!\inst19|start_valid_sync\(6) & !\inst19|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~29_combout\,
	datab => \inst19|start_valid_sync\(6),
	datad => VCC,
	cin => \inst19|Add2~11\,
	combout => \inst19|Add2~12_combout\,
	cout => \inst19|Add2~13\);

-- Location: LCCOMB_X23_Y19_N14
\inst19|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~14_combout\ = (\inst19|stop_valid_sync~51_combout\ & ((\inst19|start_valid_sync\(7) & (!\inst19|Add2~13\)) # (!\inst19|start_valid_sync\(7) & (\inst19|Add2~13\ & VCC)))) # (!\inst19|stop_valid_sync~51_combout\ & ((\inst19|start_valid_sync\(7) 
-- & ((\inst19|Add2~13\) # (GND))) # (!\inst19|start_valid_sync\(7) & (!\inst19|Add2~13\))))
-- \inst19|Add2~15\ = CARRY((\inst19|stop_valid_sync~51_combout\ & (\inst19|start_valid_sync\(7) & !\inst19|Add2~13\)) # (!\inst19|stop_valid_sync~51_combout\ & ((\inst19|start_valid_sync\(7)) # (!\inst19|Add2~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~51_combout\,
	datab => \inst19|start_valid_sync\(7),
	datad => VCC,
	cin => \inst19|Add2~13\,
	combout => \inst19|Add2~14_combout\,
	cout => \inst19|Add2~15\);

-- Location: LCCOMB_X23_Y19_N16
\inst19|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~16_combout\ = ((\inst19|stop_valid_sync~58_combout\ $ (\inst19|start_valid_sync\(8) $ (\inst19|Add2~15\)))) # (GND)
-- \inst19|Add2~17\ = CARRY((\inst19|stop_valid_sync~58_combout\ & ((!\inst19|Add2~15\) # (!\inst19|start_valid_sync\(8)))) # (!\inst19|stop_valid_sync~58_combout\ & (!\inst19|start_valid_sync\(8) & !\inst19|Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~58_combout\,
	datab => \inst19|start_valid_sync\(8),
	datad => VCC,
	cin => \inst19|Add2~15\,
	combout => \inst19|Add2~16_combout\,
	cout => \inst19|Add2~17\);

-- Location: LCCOMB_X23_Y19_N26
\inst19|Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~26_combout\ = (\inst19|stop_valid_sync~65_combout\ & ((\inst19|start_valid_sync\(13) & (!\inst19|Add2~25\)) # (!\inst19|start_valid_sync\(13) & (\inst19|Add2~25\ & VCC)))) # (!\inst19|stop_valid_sync~65_combout\ & 
-- ((\inst19|start_valid_sync\(13) & ((\inst19|Add2~25\) # (GND))) # (!\inst19|start_valid_sync\(13) & (!\inst19|Add2~25\))))
-- \inst19|Add2~27\ = CARRY((\inst19|stop_valid_sync~65_combout\ & (\inst19|start_valid_sync\(13) & !\inst19|Add2~25\)) # (!\inst19|stop_valid_sync~65_combout\ & ((\inst19|start_valid_sync\(13)) # (!\inst19|Add2~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~65_combout\,
	datab => \inst19|start_valid_sync\(13),
	datad => VCC,
	cin => \inst19|Add2~25\,
	combout => \inst19|Add2~26_combout\,
	cout => \inst19|Add2~27\);

-- Location: LCCOMB_X23_Y18_N0
\inst19|Add2~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~32_combout\ = ((\inst19|stop_valid_sync~47_combout\ $ (\inst19|start_valid_sync\(16) $ (\inst19|Add2~31\)))) # (GND)
-- \inst19|Add2~33\ = CARRY((\inst19|stop_valid_sync~47_combout\ & ((!\inst19|Add2~31\) # (!\inst19|start_valid_sync\(16)))) # (!\inst19|stop_valid_sync~47_combout\ & (!\inst19|start_valid_sync\(16) & !\inst19|Add2~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~47_combout\,
	datab => \inst19|start_valid_sync\(16),
	datad => VCC,
	cin => \inst19|Add2~31\,
	combout => \inst19|Add2~32_combout\,
	cout => \inst19|Add2~33\);

-- Location: LCCOMB_X23_Y18_N2
\inst19|Add2~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~34_combout\ = (\inst19|stop_valid_sync~26_combout\ & ((\inst19|start_valid_sync\(17) & (!\inst19|Add2~33\)) # (!\inst19|start_valid_sync\(17) & (\inst19|Add2~33\ & VCC)))) # (!\inst19|stop_valid_sync~26_combout\ & 
-- ((\inst19|start_valid_sync\(17) & ((\inst19|Add2~33\) # (GND))) # (!\inst19|start_valid_sync\(17) & (!\inst19|Add2~33\))))
-- \inst19|Add2~35\ = CARRY((\inst19|stop_valid_sync~26_combout\ & (\inst19|start_valid_sync\(17) & !\inst19|Add2~33\)) # (!\inst19|stop_valid_sync~26_combout\ & ((\inst19|start_valid_sync\(17)) # (!\inst19|Add2~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~26_combout\,
	datab => \inst19|start_valid_sync\(17),
	datad => VCC,
	cin => \inst19|Add2~33\,
	combout => \inst19|Add2~34_combout\,
	cout => \inst19|Add2~35\);

-- Location: LCCOMB_X23_Y18_N8
\inst19|Add2~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~40_combout\ = ((\inst19|start_valid_sync\(20) $ (\inst19|stop_valid_sync~31_combout\ $ (\inst19|Add2~39\)))) # (GND)
-- \inst19|Add2~41\ = CARRY((\inst19|start_valid_sync\(20) & (\inst19|stop_valid_sync~31_combout\ & !\inst19|Add2~39\)) # (!\inst19|start_valid_sync\(20) & ((\inst19|stop_valid_sync~31_combout\) # (!\inst19|Add2~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|start_valid_sync\(20),
	datab => \inst19|stop_valid_sync~31_combout\,
	datad => VCC,
	cin => \inst19|Add2~39\,
	combout => \inst19|Add2~40_combout\,
	cout => \inst19|Add2~41\);

-- Location: LCCOMB_X23_Y18_N10
\inst19|Add2~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~42_combout\ = (\inst19|start_valid_sync\(21) & ((\inst19|stop_valid_sync~52_combout\ & (!\inst19|Add2~41\)) # (!\inst19|stop_valid_sync~52_combout\ & ((\inst19|Add2~41\) # (GND))))) # (!\inst19|start_valid_sync\(21) & 
-- ((\inst19|stop_valid_sync~52_combout\ & (\inst19|Add2~41\ & VCC)) # (!\inst19|stop_valid_sync~52_combout\ & (!\inst19|Add2~41\))))
-- \inst19|Add2~43\ = CARRY((\inst19|start_valid_sync\(21) & ((!\inst19|Add2~41\) # (!\inst19|stop_valid_sync~52_combout\))) # (!\inst19|start_valid_sync\(21) & (!\inst19|stop_valid_sync~52_combout\ & !\inst19|Add2~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|start_valid_sync\(21),
	datab => \inst19|stop_valid_sync~52_combout\,
	datad => VCC,
	cin => \inst19|Add2~41\,
	combout => \inst19|Add2~42_combout\,
	cout => \inst19|Add2~43\);

-- Location: LCCOMB_X23_Y18_N12
\inst19|Add2~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~44_combout\ = ((\inst19|stop_valid_sync~35_combout\ $ (\inst19|start_valid_sync\(22) $ (\inst19|Add2~43\)))) # (GND)
-- \inst19|Add2~45\ = CARRY((\inst19|stop_valid_sync~35_combout\ & ((!\inst19|Add2~43\) # (!\inst19|start_valid_sync\(22)))) # (!\inst19|stop_valid_sync~35_combout\ & (!\inst19|start_valid_sync\(22) & !\inst19|Add2~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~35_combout\,
	datab => \inst19|start_valid_sync\(22),
	datad => VCC,
	cin => \inst19|Add2~43\,
	combout => \inst19|Add2~44_combout\,
	cout => \inst19|Add2~45\);

-- Location: LCCOMB_X23_Y18_N14
\inst19|Add2~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~46_combout\ = (\inst19|stop_valid_sync~71_combout\ & ((\inst19|start_valid_sync\(23) & (!\inst19|Add2~45\)) # (!\inst19|start_valid_sync\(23) & (\inst19|Add2~45\ & VCC)))) # (!\inst19|stop_valid_sync~71_combout\ & 
-- ((\inst19|start_valid_sync\(23) & ((\inst19|Add2~45\) # (GND))) # (!\inst19|start_valid_sync\(23) & (!\inst19|Add2~45\))))
-- \inst19|Add2~47\ = CARRY((\inst19|stop_valid_sync~71_combout\ & (\inst19|start_valid_sync\(23) & !\inst19|Add2~45\)) # (!\inst19|stop_valid_sync~71_combout\ & ((\inst19|start_valid_sync\(23)) # (!\inst19|Add2~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~71_combout\,
	datab => \inst19|start_valid_sync\(23),
	datad => VCC,
	cin => \inst19|Add2~45\,
	combout => \inst19|Add2~46_combout\,
	cout => \inst19|Add2~47\);

-- Location: LCCOMB_X23_Y18_N16
\inst19|Add2~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~48_combout\ = ((\inst19|stop_valid_sync~78_combout\ $ (\inst19|start_valid_sync\(24) $ (\inst19|Add2~47\)))) # (GND)
-- \inst19|Add2~49\ = CARRY((\inst19|stop_valid_sync~78_combout\ & ((!\inst19|Add2~47\) # (!\inst19|start_valid_sync\(24)))) # (!\inst19|stop_valid_sync~78_combout\ & (!\inst19|start_valid_sync\(24) & !\inst19|Add2~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~78_combout\,
	datab => \inst19|start_valid_sync\(24),
	datad => VCC,
	cin => \inst19|Add2~47\,
	combout => \inst19|Add2~48_combout\,
	cout => \inst19|Add2~49\);

-- Location: LCCOMB_X23_Y18_N26
\inst19|Add2~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~58_combout\ = (\inst19|stop_valid_sync~73_combout\ & ((\inst19|start_valid_sync\(29) & (!\inst19|Add2~57\)) # (!\inst19|start_valid_sync\(29) & (\inst19|Add2~57\ & VCC)))) # (!\inst19|stop_valid_sync~73_combout\ & 
-- ((\inst19|start_valid_sync\(29) & ((\inst19|Add2~57\) # (GND))) # (!\inst19|start_valid_sync\(29) & (!\inst19|Add2~57\))))
-- \inst19|Add2~59\ = CARRY((\inst19|stop_valid_sync~73_combout\ & (\inst19|start_valid_sync\(29) & !\inst19|Add2~57\)) # (!\inst19|stop_valid_sync~73_combout\ & ((\inst19|start_valid_sync\(29)) # (!\inst19|Add2~57\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~73_combout\,
	datab => \inst19|start_valid_sync\(29),
	datad => VCC,
	cin => \inst19|Add2~57\,
	combout => \inst19|Add2~58_combout\,
	cout => \inst19|Add2~59\);

-- Location: LCCOMB_X23_Y18_N28
\inst19|Add2~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~60_combout\ = ((\inst19|stop_valid_sync~53_combout\ $ (\inst19|start_valid_sync\(30) $ (\inst19|Add2~59\)))) # (GND)
-- \inst19|Add2~61\ = CARRY((\inst19|stop_valid_sync~53_combout\ & ((!\inst19|Add2~59\) # (!\inst19|start_valid_sync\(30)))) # (!\inst19|stop_valid_sync~53_combout\ & (!\inst19|start_valid_sync\(30) & !\inst19|Add2~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~53_combout\,
	datab => \inst19|start_valid_sync\(30),
	datad => VCC,
	cin => \inst19|Add2~59\,
	combout => \inst19|Add2~60_combout\,
	cout => \inst19|Add2~61\);

-- Location: LCCOMB_X24_Y19_N4
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

-- Location: LCCOMB_X24_Y19_N8
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

-- Location: LCCOMB_X24_Y19_N12
\inst19|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~10_combout\ = (\inst19|Add2~14_combout\ & (!\inst19|Add3~9\)) # (!\inst19|Add2~14_combout\ & ((\inst19|Add3~9\) # (GND)))
-- \inst19|Add3~11\ = CARRY((!\inst19|Add3~9\) # (!\inst19|Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add2~14_combout\,
	datad => VCC,
	cin => \inst19|Add3~9\,
	combout => \inst19|Add3~10_combout\,
	cout => \inst19|Add3~11\);

-- Location: LCCOMB_X24_Y19_N20
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

-- Location: LCCOMB_X24_Y19_N24
\inst19|Add3~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~22_combout\ = (\inst19|Add2~26_combout\ & (!\inst19|Add3~21\)) # (!\inst19|Add2~26_combout\ & ((\inst19|Add3~21\) # (GND)))
-- \inst19|Add3~23\ = CARRY((!\inst19|Add3~21\) # (!\inst19|Add2~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add2~26_combout\,
	datad => VCC,
	cin => \inst19|Add3~21\,
	combout => \inst19|Add3~22_combout\,
	cout => \inst19|Add3~23\);

-- Location: LCCOMB_X24_Y19_N26
\inst19|Add3~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~24_combout\ = (\inst19|Add2~28_combout\ & ((GND) # (!\inst19|Add3~23\))) # (!\inst19|Add2~28_combout\ & (\inst19|Add3~23\ $ (GND)))
-- \inst19|Add3~25\ = CARRY((\inst19|Add2~28_combout\) # (!\inst19|Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add2~28_combout\,
	datad => VCC,
	cin => \inst19|Add3~23\,
	combout => \inst19|Add3~24_combout\,
	cout => \inst19|Add3~25\);

-- Location: LCCOMB_X24_Y19_N28
\inst19|Add3~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~26_combout\ = (\inst19|Add2~30_combout\ & (\inst19|Add3~25\ & VCC)) # (!\inst19|Add2~30_combout\ & (!\inst19|Add3~25\))
-- \inst19|Add3~27\ = CARRY((!\inst19|Add2~30_combout\ & !\inst19|Add3~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add2~30_combout\,
	datad => VCC,
	cin => \inst19|Add3~25\,
	combout => \inst19|Add3~26_combout\,
	cout => \inst19|Add3~27\);

-- Location: LCCOMB_X24_Y18_N4
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

-- Location: LCCOMB_X24_Y18_N10
\inst19|Add3~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~40_combout\ = (\inst19|Add2~44_combout\ & ((GND) # (!\inst19|Add3~39\))) # (!\inst19|Add2~44_combout\ & (\inst19|Add3~39\ $ (GND)))
-- \inst19|Add3~41\ = CARRY((\inst19|Add2~44_combout\) # (!\inst19|Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add2~44_combout\,
	datad => VCC,
	cin => \inst19|Add3~39\,
	combout => \inst19|Add3~40_combout\,
	cout => \inst19|Add3~41\);

-- Location: LCCOMB_X24_Y18_N12
\inst19|Add3~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~42_combout\ = (\inst19|Add2~46_combout\ & (\inst19|Add3~41\ & VCC)) # (!\inst19|Add2~46_combout\ & (!\inst19|Add3~41\))
-- \inst19|Add3~43\ = CARRY((!\inst19|Add2~46_combout\ & !\inst19|Add3~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add2~46_combout\,
	datad => VCC,
	cin => \inst19|Add3~41\,
	combout => \inst19|Add3~42_combout\,
	cout => \inst19|Add3~43\);

-- Location: LCCOMB_X24_Y18_N14
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

-- Location: LCCOMB_X24_Y18_N16
\inst19|Add3~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~46_combout\ = (\inst19|Add2~50_combout\ & (\inst19|Add3~45\ & VCC)) # (!\inst19|Add2~50_combout\ & (!\inst19|Add3~45\))
-- \inst19|Add3~47\ = CARRY((!\inst19|Add2~50_combout\ & !\inst19|Add3~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add2~50_combout\,
	datad => VCC,
	cin => \inst19|Add3~45\,
	combout => \inst19|Add3~46_combout\,
	cout => \inst19|Add3~47\);

-- Location: LCCOMB_X24_Y18_N18
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

-- Location: LCCOMB_X24_Y18_N20
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

-- Location: LCCOMB_X24_Y18_N22
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

-- Location: LCCOMB_X27_Y19_N0
\inst19|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~0_combout\ = (\inst19|Add3~58_combout\ & (\inst19|result~0_combout\ $ (VCC))) # (!\inst19|Add3~58_combout\ & (\inst19|result~0_combout\ & VCC))
-- \inst19|Add4~1\ = CARRY((\inst19|Add3~58_combout\ & \inst19|result~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~58_combout\,
	datab => \inst19|result~0_combout\,
	datad => VCC,
	combout => \inst19|Add4~0_combout\,
	cout => \inst19|Add4~1\);

-- Location: LCCOMB_X27_Y19_N2
\inst19|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~2_combout\ = (\inst19|Add4~1\ & (\inst19|Add2~2_combout\ $ ((!\inst19|Add3~58_combout\)))) # (!\inst19|Add4~1\ & ((\inst19|Add2~2_combout\ $ (\inst19|Add3~58_combout\)) # (GND)))
-- \inst19|Add4~3\ = CARRY((\inst19|Add2~2_combout\ $ (!\inst19|Add3~58_combout\)) # (!\inst19|Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add2~2_combout\,
	datab => \inst19|Add3~58_combout\,
	datad => VCC,
	cin => \inst19|Add4~1\,
	combout => \inst19|Add4~2_combout\,
	cout => \inst19|Add4~3\);

-- Location: LCCOMB_X27_Y19_N4
\inst19|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~4_combout\ = (\inst19|Add4~3\ & ((\inst19|Add3~58_combout\ $ (\inst19|Add3~0_combout\)))) # (!\inst19|Add4~3\ & (\inst19|Add3~58_combout\ $ (\inst19|Add3~0_combout\ $ (VCC))))
-- \inst19|Add4~5\ = CARRY((!\inst19|Add4~3\ & (\inst19|Add3~58_combout\ $ (\inst19|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~58_combout\,
	datab => \inst19|Add3~0_combout\,
	datad => VCC,
	cin => \inst19|Add4~3\,
	combout => \inst19|Add4~4_combout\,
	cout => \inst19|Add4~5\);

-- Location: LCCOMB_X27_Y19_N6
\inst19|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~6_combout\ = (\inst19|Add4~5\ & (\inst19|Add3~2_combout\ $ ((!\inst19|Add3~58_combout\)))) # (!\inst19|Add4~5\ & ((\inst19|Add3~2_combout\ $ (\inst19|Add3~58_combout\)) # (GND)))
-- \inst19|Add4~7\ = CARRY((\inst19|Add3~2_combout\ $ (!\inst19|Add3~58_combout\)) # (!\inst19|Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~2_combout\,
	datab => \inst19|Add3~58_combout\,
	datad => VCC,
	cin => \inst19|Add4~5\,
	combout => \inst19|Add4~6_combout\,
	cout => \inst19|Add4~7\);

-- Location: LCCOMB_X27_Y19_N8
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

-- Location: LCCOMB_X27_Y19_N10
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

-- Location: LCCOMB_X27_Y19_N12
\inst19|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~12_combout\ = (\inst19|Add4~11\ & ((\inst19|Add3~58_combout\ $ (\inst19|Add3~8_combout\)))) # (!\inst19|Add4~11\ & (\inst19|Add3~58_combout\ $ (\inst19|Add3~8_combout\ $ (VCC))))
-- \inst19|Add4~13\ = CARRY((!\inst19|Add4~11\ & (\inst19|Add3~58_combout\ $ (\inst19|Add3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~58_combout\,
	datab => \inst19|Add3~8_combout\,
	datad => VCC,
	cin => \inst19|Add4~11\,
	combout => \inst19|Add4~12_combout\,
	cout => \inst19|Add4~13\);

-- Location: LCCOMB_X27_Y19_N14
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

-- Location: LCCOMB_X27_Y19_N16
\inst19|Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~16_combout\ = (\inst19|Add4~15\ & ((\inst19|Add3~58_combout\ $ (\inst19|Add3~12_combout\)))) # (!\inst19|Add4~15\ & (\inst19|Add3~58_combout\ $ (\inst19|Add3~12_combout\ $ (VCC))))
-- \inst19|Add4~17\ = CARRY((!\inst19|Add4~15\ & (\inst19|Add3~58_combout\ $ (\inst19|Add3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~58_combout\,
	datab => \inst19|Add3~12_combout\,
	datad => VCC,
	cin => \inst19|Add4~15\,
	combout => \inst19|Add4~16_combout\,
	cout => \inst19|Add4~17\);

-- Location: LCCOMB_X27_Y19_N18
\inst19|Add4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~18_combout\ = (\inst19|Add4~17\ & (\inst19|Add3~58_combout\ $ ((!\inst19|Add3~14_combout\)))) # (!\inst19|Add4~17\ & ((\inst19|Add3~58_combout\ $ (\inst19|Add3~14_combout\)) # (GND)))
-- \inst19|Add4~19\ = CARRY((\inst19|Add3~58_combout\ $ (!\inst19|Add3~14_combout\)) # (!\inst19|Add4~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~58_combout\,
	datab => \inst19|Add3~14_combout\,
	datad => VCC,
	cin => \inst19|Add4~17\,
	combout => \inst19|Add4~18_combout\,
	cout => \inst19|Add4~19\);

-- Location: LCCOMB_X27_Y19_N20
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

-- Location: LCCOMB_X27_Y19_N22
\inst19|Add4~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~22_combout\ = (\inst19|Add4~21\ & (\inst19|Add3~18_combout\ $ ((!\inst19|Add3~58_combout\)))) # (!\inst19|Add4~21\ & ((\inst19|Add3~18_combout\ $ (\inst19|Add3~58_combout\)) # (GND)))
-- \inst19|Add4~23\ = CARRY((\inst19|Add3~18_combout\ $ (!\inst19|Add3~58_combout\)) # (!\inst19|Add4~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~18_combout\,
	datab => \inst19|Add3~58_combout\,
	datad => VCC,
	cin => \inst19|Add4~21\,
	combout => \inst19|Add4~22_combout\,
	cout => \inst19|Add4~23\);

-- Location: LCCOMB_X27_Y19_N24
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

-- Location: LCCOMB_X27_Y19_N26
\inst19|Add4~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~26_combout\ = (\inst19|Add4~25\ & (\inst19|Add3~22_combout\ $ ((!\inst19|Add3~58_combout\)))) # (!\inst19|Add4~25\ & ((\inst19|Add3~22_combout\ $ (\inst19|Add3~58_combout\)) # (GND)))
-- \inst19|Add4~27\ = CARRY((\inst19|Add3~22_combout\ $ (!\inst19|Add3~58_combout\)) # (!\inst19|Add4~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~22_combout\,
	datab => \inst19|Add3~58_combout\,
	datad => VCC,
	cin => \inst19|Add4~25\,
	combout => \inst19|Add4~26_combout\,
	cout => \inst19|Add4~27\);

-- Location: LCCOMB_X27_Y19_N28
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

-- Location: LCCOMB_X27_Y19_N30
\inst19|Add4~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~30_combout\ = (\inst19|Add4~29\ & (\inst19|Add3~26_combout\ $ ((!\inst19|Add3~58_combout\)))) # (!\inst19|Add4~29\ & ((\inst19|Add3~26_combout\ $ (\inst19|Add3~58_combout\)) # (GND)))
-- \inst19|Add4~31\ = CARRY((\inst19|Add3~26_combout\ $ (!\inst19|Add3~58_combout\)) # (!\inst19|Add4~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~26_combout\,
	datab => \inst19|Add3~58_combout\,
	datad => VCC,
	cin => \inst19|Add4~29\,
	combout => \inst19|Add4~30_combout\,
	cout => \inst19|Add4~31\);

-- Location: LCCOMB_X27_Y18_N0
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

-- Location: LCCOMB_X27_Y18_N2
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

-- Location: LCCOMB_X27_Y18_N4
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

-- Location: LCCOMB_X27_Y18_N6
\inst19|Add4~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~38_combout\ = (\inst19|Add4~37\ & (\inst19|Add3~34_combout\ $ ((!\inst19|Add3~58_combout\)))) # (!\inst19|Add4~37\ & ((\inst19|Add3~34_combout\ $ (\inst19|Add3~58_combout\)) # (GND)))
-- \inst19|Add4~39\ = CARRY((\inst19|Add3~34_combout\ $ (!\inst19|Add3~58_combout\)) # (!\inst19|Add4~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~34_combout\,
	datab => \inst19|Add3~58_combout\,
	datad => VCC,
	cin => \inst19|Add4~37\,
	combout => \inst19|Add4~38_combout\,
	cout => \inst19|Add4~39\);

-- Location: LCCOMB_X27_Y18_N8
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

-- Location: LCCOMB_X27_Y18_N10
\inst19|Add4~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add4~42_combout\ = (\inst19|Add4~41\ & (\inst19|Add3~58_combout\ $ ((!\inst19|Add3~38_combout\)))) # (!\inst19|Add4~41\ & ((\inst19|Add3~58_combout\ $ (\inst19|Add3~38_combout\)) # (GND)))
-- \inst19|Add4~43\ = CARRY((\inst19|Add3~58_combout\ $ (!\inst19|Add3~38_combout\)) # (!\inst19|Add4~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~58_combout\,
	datab => \inst19|Add3~38_combout\,
	datad => VCC,
	cin => \inst19|Add4~41\,
	combout => \inst19|Add4~42_combout\,
	cout => \inst19|Add4~43\);

-- Location: LCCOMB_X27_Y18_N12
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

-- Location: LCCOMB_X27_Y18_N14
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

-- Location: LCCOMB_X27_Y18_N16
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

-- Location: LCCOMB_X27_Y18_N18
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

-- Location: LCCOMB_X27_Y18_N20
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

-- Location: LCCOMB_X27_Y18_N22
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

-- Location: LCCOMB_X27_Y18_N24
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

-- Location: LCCOMB_X27_Y18_N26
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

-- Location: LCCOMB_X27_Y18_N28
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

-- Location: LCCOMB_X29_Y17_N0
\inst19|Add15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add15~0_combout\ = \inst19|Add0~0_combout\ $ (VCC)
-- \inst19|Add15~1\ = CARRY(\inst19|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~0_combout\,
	datad => VCC,
	combout => \inst19|Add15~0_combout\,
	cout => \inst19|Add15~1\);

-- Location: LCCOMB_X29_Y17_N2
\inst19|Add15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add15~2_combout\ = (\inst19|Add0~2_combout\ & (!\inst19|Add15~1\)) # (!\inst19|Add0~2_combout\ & ((\inst19|Add15~1\) # (GND)))
-- \inst19|Add15~3\ = CARRY((!\inst19|Add15~1\) # (!\inst19|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~2_combout\,
	datad => VCC,
	cin => \inst19|Add15~1\,
	combout => \inst19|Add15~2_combout\,
	cout => \inst19|Add15~3\);

-- Location: LCCOMB_X29_Y17_N4
\inst19|Add15~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add15~4_combout\ = (\inst19|Add0~4_combout\ & ((GND) # (!\inst19|Add15~3\))) # (!\inst19|Add0~4_combout\ & (\inst19|Add15~3\ $ (GND)))
-- \inst19|Add15~5\ = CARRY((\inst19|Add0~4_combout\) # (!\inst19|Add15~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~4_combout\,
	datad => VCC,
	cin => \inst19|Add15~3\,
	combout => \inst19|Add15~4_combout\,
	cout => \inst19|Add15~5\);

-- Location: LCCOMB_X29_Y17_N6
\inst19|Add15~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add15~6_combout\ = (\inst19|Add0~6_combout\ & (\inst19|Add15~5\ & VCC)) # (!\inst19|Add0~6_combout\ & (!\inst19|Add15~5\))
-- \inst19|Add15~7\ = CARRY((!\inst19|Add0~6_combout\ & !\inst19|Add15~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~6_combout\,
	datad => VCC,
	cin => \inst19|Add15~5\,
	combout => \inst19|Add15~6_combout\,
	cout => \inst19|Add15~7\);

-- Location: LCCOMB_X29_Y17_N8
\inst19|Add15~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add15~8_combout\ = (\inst19|Add0~8_combout\ & (\inst19|Add15~7\ $ (GND))) # (!\inst19|Add0~8_combout\ & (!\inst19|Add15~7\ & VCC))
-- \inst19|Add15~9\ = CARRY((\inst19|Add0~8_combout\ & !\inst19|Add15~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~8_combout\,
	datad => VCC,
	cin => \inst19|Add15~7\,
	combout => \inst19|Add15~8_combout\,
	cout => \inst19|Add15~9\);

-- Location: LCCOMB_X29_Y17_N10
\inst19|Add15~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add15~10_combout\ = (\inst19|Add0~10_combout\ & (!\inst19|Add15~9\)) # (!\inst19|Add0~10_combout\ & ((\inst19|Add15~9\) # (GND)))
-- \inst19|Add15~11\ = CARRY((!\inst19|Add15~9\) # (!\inst19|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~10_combout\,
	datad => VCC,
	cin => \inst19|Add15~9\,
	combout => \inst19|Add15~10_combout\,
	cout => \inst19|Add15~11\);

-- Location: LCCOMB_X29_Y17_N12
\inst19|Add15~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add15~12_combout\ = (\inst19|Add0~12_combout\ & (\inst19|Add15~11\ $ (GND))) # (!\inst19|Add0~12_combout\ & (!\inst19|Add15~11\ & VCC))
-- \inst19|Add15~13\ = CARRY((\inst19|Add0~12_combout\ & !\inst19|Add15~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~12_combout\,
	datad => VCC,
	cin => \inst19|Add15~11\,
	combout => \inst19|Add15~12_combout\,
	cout => \inst19|Add15~13\);

-- Location: LCCOMB_X29_Y17_N14
\inst19|Add15~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add15~14_combout\ = (\inst19|Add0~14_combout\ & (\inst19|Add15~13\ & VCC)) # (!\inst19|Add0~14_combout\ & (!\inst19|Add15~13\))
-- \inst19|Add15~15\ = CARRY((!\inst19|Add0~14_combout\ & !\inst19|Add15~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~14_combout\,
	datad => VCC,
	cin => \inst19|Add15~13\,
	combout => \inst19|Add15~14_combout\,
	cout => \inst19|Add15~15\);

-- Location: LCCOMB_X29_Y17_N16
\inst19|Add15~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add15~16_combout\ = (\inst19|Add0~16_combout\ & ((GND) # (!\inst19|Add15~15\))) # (!\inst19|Add0~16_combout\ & (\inst19|Add15~15\ $ (GND)))
-- \inst19|Add15~17\ = CARRY((\inst19|Add0~16_combout\) # (!\inst19|Add15~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~16_combout\,
	datad => VCC,
	cin => \inst19|Add15~15\,
	combout => \inst19|Add15~16_combout\,
	cout => \inst19|Add15~17\);

-- Location: LCCOMB_X29_Y17_N18
\inst19|Add15~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add15~18_combout\ = (\inst19|Add0~18_combout\ & (\inst19|Add15~17\ & VCC)) # (!\inst19|Add0~18_combout\ & (!\inst19|Add15~17\))
-- \inst19|Add15~19\ = CARRY((!\inst19|Add0~18_combout\ & !\inst19|Add15~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~18_combout\,
	datad => VCC,
	cin => \inst19|Add15~17\,
	combout => \inst19|Add15~18_combout\,
	cout => \inst19|Add15~19\);

-- Location: LCCOMB_X29_Y17_N20
\inst19|Add15~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add15~20_combout\ = (\inst19|Add0~20_combout\ & ((GND) # (!\inst19|Add15~19\))) # (!\inst19|Add0~20_combout\ & (\inst19|Add15~19\ $ (GND)))
-- \inst19|Add15~21\ = CARRY((\inst19|Add0~20_combout\) # (!\inst19|Add15~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~20_combout\,
	datad => VCC,
	cin => \inst19|Add15~19\,
	combout => \inst19|Add15~20_combout\,
	cout => \inst19|Add15~21\);

-- Location: LCCOMB_X29_Y17_N22
\inst19|Add15~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add15~22_combout\ = (\inst19|Add0~22_combout\ & (\inst19|Add15~21\ & VCC)) # (!\inst19|Add0~22_combout\ & (!\inst19|Add15~21\))
-- \inst19|Add15~23\ = CARRY((!\inst19|Add0~22_combout\ & !\inst19|Add15~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~22_combout\,
	datad => VCC,
	cin => \inst19|Add15~21\,
	combout => \inst19|Add15~22_combout\,
	cout => \inst19|Add15~23\);

-- Location: LCCOMB_X29_Y17_N24
\inst19|Add15~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add15~24_combout\ = (\inst19|Add0~24_combout\ & ((GND) # (!\inst19|Add15~23\))) # (!\inst19|Add0~24_combout\ & (\inst19|Add15~23\ $ (GND)))
-- \inst19|Add15~25\ = CARRY((\inst19|Add0~24_combout\) # (!\inst19|Add15~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~24_combout\,
	datad => VCC,
	cin => \inst19|Add15~23\,
	combout => \inst19|Add15~24_combout\,
	cout => \inst19|Add15~25\);

-- Location: LCCOMB_X29_Y17_N26
\inst19|Add15~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add15~26_combout\ = (\inst19|Add0~26_combout\ & (\inst19|Add15~25\ & VCC)) # (!\inst19|Add0~26_combout\ & (!\inst19|Add15~25\))
-- \inst19|Add15~27\ = CARRY((!\inst19|Add0~26_combout\ & !\inst19|Add15~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~26_combout\,
	datad => VCC,
	cin => \inst19|Add15~25\,
	combout => \inst19|Add15~26_combout\,
	cout => \inst19|Add15~27\);

-- Location: LCCOMB_X29_Y17_N28
\inst19|Add15~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add15~28_combout\ = (\inst19|Add0~28_combout\ & ((GND) # (!\inst19|Add15~27\))) # (!\inst19|Add0~28_combout\ & (\inst19|Add15~27\ $ (GND)))
-- \inst19|Add15~29\ = CARRY((\inst19|Add0~28_combout\) # (!\inst19|Add15~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~28_combout\,
	datad => VCC,
	cin => \inst19|Add15~27\,
	combout => \inst19|Add15~28_combout\,
	cout => \inst19|Add15~29\);

-- Location: LCCOMB_X29_Y17_N30
\inst19|Add15~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add15~30_combout\ = (\inst19|Add0~30_combout\ & (\inst19|Add15~29\ & VCC)) # (!\inst19|Add0~30_combout\ & (!\inst19|Add15~29\))
-- \inst19|Add15~31\ = CARRY((!\inst19|Add0~30_combout\ & !\inst19|Add15~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~30_combout\,
	datad => VCC,
	cin => \inst19|Add15~29\,
	combout => \inst19|Add15~30_combout\,
	cout => \inst19|Add15~31\);

-- Location: LCCOMB_X29_Y16_N0
\inst19|Add15~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add15~32_combout\ = (\inst19|Add0~32_combout\ & ((GND) # (!\inst19|Add15~31\))) # (!\inst19|Add0~32_combout\ & (\inst19|Add15~31\ $ (GND)))
-- \inst19|Add15~33\ = CARRY((\inst19|Add0~32_combout\) # (!\inst19|Add15~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~32_combout\,
	datad => VCC,
	cin => \inst19|Add15~31\,
	combout => \inst19|Add15~32_combout\,
	cout => \inst19|Add15~33\);

-- Location: LCCOMB_X29_Y16_N2
\inst19|Add15~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add15~34_combout\ = (\inst19|Add0~34_combout\ & (\inst19|Add15~33\ & VCC)) # (!\inst19|Add0~34_combout\ & (!\inst19|Add15~33\))
-- \inst19|Add15~35\ = CARRY((!\inst19|Add0~34_combout\ & !\inst19|Add15~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~34_combout\,
	datad => VCC,
	cin => \inst19|Add15~33\,
	combout => \inst19|Add15~34_combout\,
	cout => \inst19|Add15~35\);

-- Location: LCCOMB_X29_Y16_N4
\inst19|Add15~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add15~36_combout\ = (\inst19|Add0~36_combout\ & ((GND) # (!\inst19|Add15~35\))) # (!\inst19|Add0~36_combout\ & (\inst19|Add15~35\ $ (GND)))
-- \inst19|Add15~37\ = CARRY((\inst19|Add0~36_combout\) # (!\inst19|Add15~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~36_combout\,
	datad => VCC,
	cin => \inst19|Add15~35\,
	combout => \inst19|Add15~36_combout\,
	cout => \inst19|Add15~37\);

-- Location: LCCOMB_X29_Y16_N6
\inst19|Add15~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add15~38_combout\ = (\inst19|Add0~38_combout\ & (\inst19|Add15~37\ & VCC)) # (!\inst19|Add0~38_combout\ & (!\inst19|Add15~37\))
-- \inst19|Add15~39\ = CARRY((!\inst19|Add0~38_combout\ & !\inst19|Add15~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~38_combout\,
	datad => VCC,
	cin => \inst19|Add15~37\,
	combout => \inst19|Add15~38_combout\,
	cout => \inst19|Add15~39\);

-- Location: LCCOMB_X29_Y16_N8
\inst19|Add15~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add15~40_combout\ = (\inst19|Add0~40_combout\ & ((GND) # (!\inst19|Add15~39\))) # (!\inst19|Add0~40_combout\ & (\inst19|Add15~39\ $ (GND)))
-- \inst19|Add15~41\ = CARRY((\inst19|Add0~40_combout\) # (!\inst19|Add15~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~40_combout\,
	datad => VCC,
	cin => \inst19|Add15~39\,
	combout => \inst19|Add15~40_combout\,
	cout => \inst19|Add15~41\);

-- Location: LCCOMB_X29_Y16_N10
\inst19|Add15~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add15~42_combout\ = (\inst19|Add0~42_combout\ & (\inst19|Add15~41\ & VCC)) # (!\inst19|Add0~42_combout\ & (!\inst19|Add15~41\))
-- \inst19|Add15~43\ = CARRY((!\inst19|Add0~42_combout\ & !\inst19|Add15~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~42_combout\,
	datad => VCC,
	cin => \inst19|Add15~41\,
	combout => \inst19|Add15~42_combout\,
	cout => \inst19|Add15~43\);

-- Location: LCCOMB_X29_Y16_N12
\inst19|Add15~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add15~44_combout\ = (\inst19|Add0~44_combout\ & ((GND) # (!\inst19|Add15~43\))) # (!\inst19|Add0~44_combout\ & (\inst19|Add15~43\ $ (GND)))
-- \inst19|Add15~45\ = CARRY((\inst19|Add0~44_combout\) # (!\inst19|Add15~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~44_combout\,
	datad => VCC,
	cin => \inst19|Add15~43\,
	combout => \inst19|Add15~44_combout\,
	cout => \inst19|Add15~45\);

-- Location: LCCOMB_X29_Y16_N14
\inst19|Add15~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add15~46_combout\ = (\inst19|Add0~46_combout\ & (\inst19|Add15~45\ & VCC)) # (!\inst19|Add0~46_combout\ & (!\inst19|Add15~45\))
-- \inst19|Add15~47\ = CARRY((!\inst19|Add0~46_combout\ & !\inst19|Add15~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~46_combout\,
	datad => VCC,
	cin => \inst19|Add15~45\,
	combout => \inst19|Add15~46_combout\,
	cout => \inst19|Add15~47\);

-- Location: LCCOMB_X29_Y16_N16
\inst19|Add15~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add15~48_combout\ = (\inst19|Add0~48_combout\ & ((GND) # (!\inst19|Add15~47\))) # (!\inst19|Add0~48_combout\ & (\inst19|Add15~47\ $ (GND)))
-- \inst19|Add15~49\ = CARRY((\inst19|Add0~48_combout\) # (!\inst19|Add15~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~48_combout\,
	datad => VCC,
	cin => \inst19|Add15~47\,
	combout => \inst19|Add15~48_combout\,
	cout => \inst19|Add15~49\);

-- Location: LCCOMB_X29_Y16_N18
\inst19|Add15~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add15~50_combout\ = (\inst19|Add0~50_combout\ & (\inst19|Add15~49\ & VCC)) # (!\inst19|Add0~50_combout\ & (!\inst19|Add15~49\))
-- \inst19|Add15~51\ = CARRY((!\inst19|Add0~50_combout\ & !\inst19|Add15~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~50_combout\,
	datad => VCC,
	cin => \inst19|Add15~49\,
	combout => \inst19|Add15~50_combout\,
	cout => \inst19|Add15~51\);

-- Location: LCCOMB_X29_Y16_N20
\inst19|Add15~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add15~52_combout\ = (\inst19|Add0~52_combout\ & ((GND) # (!\inst19|Add15~51\))) # (!\inst19|Add0~52_combout\ & (\inst19|Add15~51\ $ (GND)))
-- \inst19|Add15~53\ = CARRY((\inst19|Add0~52_combout\) # (!\inst19|Add15~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~52_combout\,
	datad => VCC,
	cin => \inst19|Add15~51\,
	combout => \inst19|Add15~52_combout\,
	cout => \inst19|Add15~53\);

-- Location: LCCOMB_X29_Y16_N22
\inst19|Add15~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add15~54_combout\ = (\inst19|Add0~54_combout\ & (\inst19|Add15~53\ & VCC)) # (!\inst19|Add0~54_combout\ & (!\inst19|Add15~53\))
-- \inst19|Add15~55\ = CARRY((!\inst19|Add0~54_combout\ & !\inst19|Add15~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~54_combout\,
	datad => VCC,
	cin => \inst19|Add15~53\,
	combout => \inst19|Add15~54_combout\,
	cout => \inst19|Add15~55\);

-- Location: LCCOMB_X29_Y16_N24
\inst19|Add15~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add15~56_combout\ = (\inst19|Add0~56_combout\ & ((GND) # (!\inst19|Add15~55\))) # (!\inst19|Add0~56_combout\ & (\inst19|Add15~55\ $ (GND)))
-- \inst19|Add15~57\ = CARRY((\inst19|Add0~56_combout\) # (!\inst19|Add15~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~56_combout\,
	datad => VCC,
	cin => \inst19|Add15~55\,
	combout => \inst19|Add15~56_combout\,
	cout => \inst19|Add15~57\);

-- Location: LCCOMB_X29_Y16_N26
\inst19|Add15~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add15~58_combout\ = (\inst19|Add0~58_combout\ & (\inst19|Add15~57\ & VCC)) # (!\inst19|Add0~58_combout\ & (!\inst19|Add15~57\))
-- \inst19|Add15~59\ = CARRY((!\inst19|Add0~58_combout\ & !\inst19|Add15~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~58_combout\,
	datad => VCC,
	cin => \inst19|Add15~57\,
	combout => \inst19|Add15~58_combout\,
	cout => \inst19|Add15~59\);

-- Location: LCCOMB_X29_Y16_N28
\inst19|Add15~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add15~60_combout\ = (\inst19|Add0~60_combout\ & ((GND) # (!\inst19|Add15~59\))) # (!\inst19|Add0~60_combout\ & (\inst19|Add15~59\ $ (GND)))
-- \inst19|Add15~61\ = CARRY((\inst19|Add0~60_combout\) # (!\inst19|Add15~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~60_combout\,
	datad => VCC,
	cin => \inst19|Add15~59\,
	combout => \inst19|Add15~60_combout\,
	cout => \inst19|Add15~61\);

-- Location: LCCOMB_X29_Y16_N30
\inst19|Add15~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add15~62_combout\ = \inst19|Add0~62_combout\ $ (!\inst19|Add15~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~62_combout\,
	cin => \inst19|Add15~61\,
	combout => \inst19|Add15~62_combout\);

-- Location: LCCOMB_X28_Y17_N0
\inst19|Add16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add16~0_combout\ = (\inst19|result~5_combout\ & (\inst19|Add15~62_combout\ $ (VCC))) # (!\inst19|result~5_combout\ & (\inst19|Add15~62_combout\ & VCC))
-- \inst19|Add16~1\ = CARRY((\inst19|result~5_combout\ & \inst19|Add15~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|result~5_combout\,
	datab => \inst19|Add15~62_combout\,
	datad => VCC,
	combout => \inst19|Add16~0_combout\,
	cout => \inst19|Add16~1\);

-- Location: LCCOMB_X28_Y17_N2
\inst19|Add16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add16~2_combout\ = (\inst19|Add16~1\ & (\inst19|Add15~2_combout\ $ ((!\inst19|Add15~62_combout\)))) # (!\inst19|Add16~1\ & ((\inst19|Add15~2_combout\ $ (\inst19|Add15~62_combout\)) # (GND)))
-- \inst19|Add16~3\ = CARRY((\inst19|Add15~2_combout\ $ (!\inst19|Add15~62_combout\)) # (!\inst19|Add16~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add15~2_combout\,
	datab => \inst19|Add15~62_combout\,
	datad => VCC,
	cin => \inst19|Add16~1\,
	combout => \inst19|Add16~2_combout\,
	cout => \inst19|Add16~3\);

-- Location: LCCOMB_X28_Y17_N4
\inst19|Add16~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add16~4_combout\ = (\inst19|Add16~3\ & ((\inst19|Add15~4_combout\ $ (\inst19|Add15~62_combout\)))) # (!\inst19|Add16~3\ & (\inst19|Add15~4_combout\ $ (\inst19|Add15~62_combout\ $ (VCC))))
-- \inst19|Add16~5\ = CARRY((!\inst19|Add16~3\ & (\inst19|Add15~4_combout\ $ (\inst19|Add15~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add15~4_combout\,
	datab => \inst19|Add15~62_combout\,
	datad => VCC,
	cin => \inst19|Add16~3\,
	combout => \inst19|Add16~4_combout\,
	cout => \inst19|Add16~5\);

-- Location: LCCOMB_X28_Y17_N6
\inst19|Add16~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add16~6_combout\ = (\inst19|Add16~5\ & (\inst19|Add15~6_combout\ $ ((!\inst19|Add15~62_combout\)))) # (!\inst19|Add16~5\ & ((\inst19|Add15~6_combout\ $ (\inst19|Add15~62_combout\)) # (GND)))
-- \inst19|Add16~7\ = CARRY((\inst19|Add15~6_combout\ $ (!\inst19|Add15~62_combout\)) # (!\inst19|Add16~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add15~6_combout\,
	datab => \inst19|Add15~62_combout\,
	datad => VCC,
	cin => \inst19|Add16~5\,
	combout => \inst19|Add16~6_combout\,
	cout => \inst19|Add16~7\);

-- Location: LCCOMB_X28_Y17_N8
\inst19|Add16~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add16~8_combout\ = (\inst19|Add16~7\ & ((\inst19|Add15~62_combout\ $ (\inst19|Add15~8_combout\)))) # (!\inst19|Add16~7\ & (\inst19|Add15~62_combout\ $ (\inst19|Add15~8_combout\ $ (VCC))))
-- \inst19|Add16~9\ = CARRY((!\inst19|Add16~7\ & (\inst19|Add15~62_combout\ $ (\inst19|Add15~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add15~62_combout\,
	datab => \inst19|Add15~8_combout\,
	datad => VCC,
	cin => \inst19|Add16~7\,
	combout => \inst19|Add16~8_combout\,
	cout => \inst19|Add16~9\);

-- Location: LCCOMB_X28_Y17_N10
\inst19|Add16~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add16~10_combout\ = (\inst19|Add16~9\ & (\inst19|Add15~10_combout\ $ ((!\inst19|Add15~62_combout\)))) # (!\inst19|Add16~9\ & ((\inst19|Add15~10_combout\ $ (\inst19|Add15~62_combout\)) # (GND)))
-- \inst19|Add16~11\ = CARRY((\inst19|Add15~10_combout\ $ (!\inst19|Add15~62_combout\)) # (!\inst19|Add16~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add15~10_combout\,
	datab => \inst19|Add15~62_combout\,
	datad => VCC,
	cin => \inst19|Add16~9\,
	combout => \inst19|Add16~10_combout\,
	cout => \inst19|Add16~11\);

-- Location: LCCOMB_X28_Y17_N12
\inst19|Add16~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add16~12_combout\ = (\inst19|Add16~11\ & ((\inst19|Add15~62_combout\ $ (\inst19|Add15~12_combout\)))) # (!\inst19|Add16~11\ & (\inst19|Add15~62_combout\ $ (\inst19|Add15~12_combout\ $ (VCC))))
-- \inst19|Add16~13\ = CARRY((!\inst19|Add16~11\ & (\inst19|Add15~62_combout\ $ (\inst19|Add15~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add15~62_combout\,
	datab => \inst19|Add15~12_combout\,
	datad => VCC,
	cin => \inst19|Add16~11\,
	combout => \inst19|Add16~12_combout\,
	cout => \inst19|Add16~13\);

-- Location: LCCOMB_X28_Y17_N14
\inst19|Add16~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add16~14_combout\ = (\inst19|Add16~13\ & (\inst19|Add15~62_combout\ $ ((!\inst19|Add15~14_combout\)))) # (!\inst19|Add16~13\ & ((\inst19|Add15~62_combout\ $ (\inst19|Add15~14_combout\)) # (GND)))
-- \inst19|Add16~15\ = CARRY((\inst19|Add15~62_combout\ $ (!\inst19|Add15~14_combout\)) # (!\inst19|Add16~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add15~62_combout\,
	datab => \inst19|Add15~14_combout\,
	datad => VCC,
	cin => \inst19|Add16~13\,
	combout => \inst19|Add16~14_combout\,
	cout => \inst19|Add16~15\);

-- Location: LCCOMB_X28_Y17_N16
\inst19|Add16~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add16~16_combout\ = (\inst19|Add16~15\ & ((\inst19|Add15~16_combout\ $ (\inst19|Add15~62_combout\)))) # (!\inst19|Add16~15\ & (\inst19|Add15~16_combout\ $ (\inst19|Add15~62_combout\ $ (VCC))))
-- \inst19|Add16~17\ = CARRY((!\inst19|Add16~15\ & (\inst19|Add15~16_combout\ $ (\inst19|Add15~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add15~16_combout\,
	datab => \inst19|Add15~62_combout\,
	datad => VCC,
	cin => \inst19|Add16~15\,
	combout => \inst19|Add16~16_combout\,
	cout => \inst19|Add16~17\);

-- Location: LCCOMB_X28_Y17_N18
\inst19|Add16~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add16~18_combout\ = (\inst19|Add16~17\ & (\inst19|Add15~62_combout\ $ ((!\inst19|Add15~18_combout\)))) # (!\inst19|Add16~17\ & ((\inst19|Add15~62_combout\ $ (\inst19|Add15~18_combout\)) # (GND)))
-- \inst19|Add16~19\ = CARRY((\inst19|Add15~62_combout\ $ (!\inst19|Add15~18_combout\)) # (!\inst19|Add16~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add15~62_combout\,
	datab => \inst19|Add15~18_combout\,
	datad => VCC,
	cin => \inst19|Add16~17\,
	combout => \inst19|Add16~18_combout\,
	cout => \inst19|Add16~19\);

-- Location: LCCOMB_X28_Y17_N20
\inst19|Add16~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add16~20_combout\ = (\inst19|Add16~19\ & ((\inst19|Add15~20_combout\ $ (\inst19|Add15~62_combout\)))) # (!\inst19|Add16~19\ & (\inst19|Add15~20_combout\ $ (\inst19|Add15~62_combout\ $ (VCC))))
-- \inst19|Add16~21\ = CARRY((!\inst19|Add16~19\ & (\inst19|Add15~20_combout\ $ (\inst19|Add15~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add15~20_combout\,
	datab => \inst19|Add15~62_combout\,
	datad => VCC,
	cin => \inst19|Add16~19\,
	combout => \inst19|Add16~20_combout\,
	cout => \inst19|Add16~21\);

-- Location: LCCOMB_X28_Y17_N22
\inst19|Add16~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add16~22_combout\ = (\inst19|Add16~21\ & (\inst19|Add15~62_combout\ $ ((!\inst19|Add15~22_combout\)))) # (!\inst19|Add16~21\ & ((\inst19|Add15~62_combout\ $ (\inst19|Add15~22_combout\)) # (GND)))
-- \inst19|Add16~23\ = CARRY((\inst19|Add15~62_combout\ $ (!\inst19|Add15~22_combout\)) # (!\inst19|Add16~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add15~62_combout\,
	datab => \inst19|Add15~22_combout\,
	datad => VCC,
	cin => \inst19|Add16~21\,
	combout => \inst19|Add16~22_combout\,
	cout => \inst19|Add16~23\);

-- Location: LCCOMB_X28_Y17_N24
\inst19|Add16~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add16~24_combout\ = (\inst19|Add16~23\ & ((\inst19|Add15~62_combout\ $ (\inst19|Add15~24_combout\)))) # (!\inst19|Add16~23\ & (\inst19|Add15~62_combout\ $ (\inst19|Add15~24_combout\ $ (VCC))))
-- \inst19|Add16~25\ = CARRY((!\inst19|Add16~23\ & (\inst19|Add15~62_combout\ $ (\inst19|Add15~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add15~62_combout\,
	datab => \inst19|Add15~24_combout\,
	datad => VCC,
	cin => \inst19|Add16~23\,
	combout => \inst19|Add16~24_combout\,
	cout => \inst19|Add16~25\);

-- Location: LCCOMB_X28_Y17_N26
\inst19|Add16~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add16~26_combout\ = (\inst19|Add16~25\ & (\inst19|Add15~62_combout\ $ ((!\inst19|Add15~26_combout\)))) # (!\inst19|Add16~25\ & ((\inst19|Add15~62_combout\ $ (\inst19|Add15~26_combout\)) # (GND)))
-- \inst19|Add16~27\ = CARRY((\inst19|Add15~62_combout\ $ (!\inst19|Add15~26_combout\)) # (!\inst19|Add16~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add15~62_combout\,
	datab => \inst19|Add15~26_combout\,
	datad => VCC,
	cin => \inst19|Add16~25\,
	combout => \inst19|Add16~26_combout\,
	cout => \inst19|Add16~27\);

-- Location: LCCOMB_X28_Y17_N28
\inst19|Add16~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add16~28_combout\ = (\inst19|Add16~27\ & ((\inst19|Add15~62_combout\ $ (\inst19|Add15~28_combout\)))) # (!\inst19|Add16~27\ & (\inst19|Add15~62_combout\ $ (\inst19|Add15~28_combout\ $ (VCC))))
-- \inst19|Add16~29\ = CARRY((!\inst19|Add16~27\ & (\inst19|Add15~62_combout\ $ (\inst19|Add15~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add15~62_combout\,
	datab => \inst19|Add15~28_combout\,
	datad => VCC,
	cin => \inst19|Add16~27\,
	combout => \inst19|Add16~28_combout\,
	cout => \inst19|Add16~29\);

-- Location: LCCOMB_X28_Y17_N30
\inst19|Add16~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add16~30_combout\ = (\inst19|Add16~29\ & (\inst19|Add15~30_combout\ $ ((!\inst19|Add15~62_combout\)))) # (!\inst19|Add16~29\ & ((\inst19|Add15~30_combout\ $ (\inst19|Add15~62_combout\)) # (GND)))
-- \inst19|Add16~31\ = CARRY((\inst19|Add15~30_combout\ $ (!\inst19|Add15~62_combout\)) # (!\inst19|Add16~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add15~30_combout\,
	datab => \inst19|Add15~62_combout\,
	datad => VCC,
	cin => \inst19|Add16~29\,
	combout => \inst19|Add16~30_combout\,
	cout => \inst19|Add16~31\);

-- Location: LCCOMB_X28_Y16_N0
\inst19|Add16~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add16~32_combout\ = (\inst19|Add16~31\ & ((\inst19|Add15~32_combout\ $ (\inst19|Add15~62_combout\)))) # (!\inst19|Add16~31\ & (\inst19|Add15~32_combout\ $ (\inst19|Add15~62_combout\ $ (VCC))))
-- \inst19|Add16~33\ = CARRY((!\inst19|Add16~31\ & (\inst19|Add15~32_combout\ $ (\inst19|Add15~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add15~32_combout\,
	datab => \inst19|Add15~62_combout\,
	datad => VCC,
	cin => \inst19|Add16~31\,
	combout => \inst19|Add16~32_combout\,
	cout => \inst19|Add16~33\);

-- Location: LCCOMB_X28_Y16_N2
\inst19|Add16~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add16~34_combout\ = (\inst19|Add16~33\ & (\inst19|Add15~34_combout\ $ ((!\inst19|Add15~62_combout\)))) # (!\inst19|Add16~33\ & ((\inst19|Add15~34_combout\ $ (\inst19|Add15~62_combout\)) # (GND)))
-- \inst19|Add16~35\ = CARRY((\inst19|Add15~34_combout\ $ (!\inst19|Add15~62_combout\)) # (!\inst19|Add16~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add15~34_combout\,
	datab => \inst19|Add15~62_combout\,
	datad => VCC,
	cin => \inst19|Add16~33\,
	combout => \inst19|Add16~34_combout\,
	cout => \inst19|Add16~35\);

-- Location: LCCOMB_X28_Y16_N4
\inst19|Add16~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add16~36_combout\ = (\inst19|Add16~35\ & ((\inst19|Add15~36_combout\ $ (\inst19|Add15~62_combout\)))) # (!\inst19|Add16~35\ & (\inst19|Add15~36_combout\ $ (\inst19|Add15~62_combout\ $ (VCC))))
-- \inst19|Add16~37\ = CARRY((!\inst19|Add16~35\ & (\inst19|Add15~36_combout\ $ (\inst19|Add15~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add15~36_combout\,
	datab => \inst19|Add15~62_combout\,
	datad => VCC,
	cin => \inst19|Add16~35\,
	combout => \inst19|Add16~36_combout\,
	cout => \inst19|Add16~37\);

-- Location: LCCOMB_X28_Y16_N6
\inst19|Add16~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add16~38_combout\ = (\inst19|Add16~37\ & (\inst19|Add15~38_combout\ $ ((!\inst19|Add15~62_combout\)))) # (!\inst19|Add16~37\ & ((\inst19|Add15~38_combout\ $ (\inst19|Add15~62_combout\)) # (GND)))
-- \inst19|Add16~39\ = CARRY((\inst19|Add15~38_combout\ $ (!\inst19|Add15~62_combout\)) # (!\inst19|Add16~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add15~38_combout\,
	datab => \inst19|Add15~62_combout\,
	datad => VCC,
	cin => \inst19|Add16~37\,
	combout => \inst19|Add16~38_combout\,
	cout => \inst19|Add16~39\);

-- Location: LCCOMB_X28_Y16_N8
\inst19|Add16~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add16~40_combout\ = (\inst19|Add16~39\ & ((\inst19|Add15~40_combout\ $ (\inst19|Add15~62_combout\)))) # (!\inst19|Add16~39\ & (\inst19|Add15~40_combout\ $ (\inst19|Add15~62_combout\ $ (VCC))))
-- \inst19|Add16~41\ = CARRY((!\inst19|Add16~39\ & (\inst19|Add15~40_combout\ $ (\inst19|Add15~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add15~40_combout\,
	datab => \inst19|Add15~62_combout\,
	datad => VCC,
	cin => \inst19|Add16~39\,
	combout => \inst19|Add16~40_combout\,
	cout => \inst19|Add16~41\);

-- Location: LCCOMB_X28_Y16_N10
\inst19|Add16~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add16~42_combout\ = (\inst19|Add16~41\ & (\inst19|Add15~42_combout\ $ ((!\inst19|Add15~62_combout\)))) # (!\inst19|Add16~41\ & ((\inst19|Add15~42_combout\ $ (\inst19|Add15~62_combout\)) # (GND)))
-- \inst19|Add16~43\ = CARRY((\inst19|Add15~42_combout\ $ (!\inst19|Add15~62_combout\)) # (!\inst19|Add16~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add15~42_combout\,
	datab => \inst19|Add15~62_combout\,
	datad => VCC,
	cin => \inst19|Add16~41\,
	combout => \inst19|Add16~42_combout\,
	cout => \inst19|Add16~43\);

-- Location: LCCOMB_X28_Y16_N12
\inst19|Add16~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add16~44_combout\ = (\inst19|Add16~43\ & ((\inst19|Add15~62_combout\ $ (\inst19|Add15~44_combout\)))) # (!\inst19|Add16~43\ & (\inst19|Add15~62_combout\ $ (\inst19|Add15~44_combout\ $ (VCC))))
-- \inst19|Add16~45\ = CARRY((!\inst19|Add16~43\ & (\inst19|Add15~62_combout\ $ (\inst19|Add15~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add15~62_combout\,
	datab => \inst19|Add15~44_combout\,
	datad => VCC,
	cin => \inst19|Add16~43\,
	combout => \inst19|Add16~44_combout\,
	cout => \inst19|Add16~45\);

-- Location: LCCOMB_X28_Y16_N14
\inst19|Add16~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add16~46_combout\ = (\inst19|Add16~45\ & (\inst19|Add15~62_combout\ $ ((!\inst19|Add15~46_combout\)))) # (!\inst19|Add16~45\ & ((\inst19|Add15~62_combout\ $ (\inst19|Add15~46_combout\)) # (GND)))
-- \inst19|Add16~47\ = CARRY((\inst19|Add15~62_combout\ $ (!\inst19|Add15~46_combout\)) # (!\inst19|Add16~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add15~62_combout\,
	datab => \inst19|Add15~46_combout\,
	datad => VCC,
	cin => \inst19|Add16~45\,
	combout => \inst19|Add16~46_combout\,
	cout => \inst19|Add16~47\);

-- Location: LCCOMB_X28_Y16_N16
\inst19|Add16~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add16~48_combout\ = (\inst19|Add16~47\ & ((\inst19|Add15~62_combout\ $ (\inst19|Add15~48_combout\)))) # (!\inst19|Add16~47\ & (\inst19|Add15~62_combout\ $ (\inst19|Add15~48_combout\ $ (VCC))))
-- \inst19|Add16~49\ = CARRY((!\inst19|Add16~47\ & (\inst19|Add15~62_combout\ $ (\inst19|Add15~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add15~62_combout\,
	datab => \inst19|Add15~48_combout\,
	datad => VCC,
	cin => \inst19|Add16~47\,
	combout => \inst19|Add16~48_combout\,
	cout => \inst19|Add16~49\);

-- Location: LCCOMB_X28_Y16_N18
\inst19|Add16~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add16~50_combout\ = (\inst19|Add16~49\ & (\inst19|Add15~62_combout\ $ ((!\inst19|Add15~50_combout\)))) # (!\inst19|Add16~49\ & ((\inst19|Add15~62_combout\ $ (\inst19|Add15~50_combout\)) # (GND)))
-- \inst19|Add16~51\ = CARRY((\inst19|Add15~62_combout\ $ (!\inst19|Add15~50_combout\)) # (!\inst19|Add16~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add15~62_combout\,
	datab => \inst19|Add15~50_combout\,
	datad => VCC,
	cin => \inst19|Add16~49\,
	combout => \inst19|Add16~50_combout\,
	cout => \inst19|Add16~51\);

-- Location: LCCOMB_X28_Y16_N20
\inst19|Add16~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add16~52_combout\ = (\inst19|Add16~51\ & ((\inst19|Add15~62_combout\ $ (\inst19|Add15~52_combout\)))) # (!\inst19|Add16~51\ & (\inst19|Add15~62_combout\ $ (\inst19|Add15~52_combout\ $ (VCC))))
-- \inst19|Add16~53\ = CARRY((!\inst19|Add16~51\ & (\inst19|Add15~62_combout\ $ (\inst19|Add15~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add15~62_combout\,
	datab => \inst19|Add15~52_combout\,
	datad => VCC,
	cin => \inst19|Add16~51\,
	combout => \inst19|Add16~52_combout\,
	cout => \inst19|Add16~53\);

-- Location: LCCOMB_X28_Y16_N22
\inst19|Add16~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add16~54_combout\ = (\inst19|Add16~53\ & (\inst19|Add15~62_combout\ $ ((!\inst19|Add15~54_combout\)))) # (!\inst19|Add16~53\ & ((\inst19|Add15~62_combout\ $ (\inst19|Add15~54_combout\)) # (GND)))
-- \inst19|Add16~55\ = CARRY((\inst19|Add15~62_combout\ $ (!\inst19|Add15~54_combout\)) # (!\inst19|Add16~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add15~62_combout\,
	datab => \inst19|Add15~54_combout\,
	datad => VCC,
	cin => \inst19|Add16~53\,
	combout => \inst19|Add16~54_combout\,
	cout => \inst19|Add16~55\);

-- Location: LCCOMB_X28_Y16_N24
\inst19|Add16~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add16~56_combout\ = (\inst19|Add16~55\ & ((\inst19|Add15~62_combout\ $ (\inst19|Add15~56_combout\)))) # (!\inst19|Add16~55\ & (\inst19|Add15~62_combout\ $ (\inst19|Add15~56_combout\ $ (VCC))))
-- \inst19|Add16~57\ = CARRY((!\inst19|Add16~55\ & (\inst19|Add15~62_combout\ $ (\inst19|Add15~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add15~62_combout\,
	datab => \inst19|Add15~56_combout\,
	datad => VCC,
	cin => \inst19|Add16~55\,
	combout => \inst19|Add16~56_combout\,
	cout => \inst19|Add16~57\);

-- Location: LCCOMB_X28_Y16_N26
\inst19|Add16~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add16~58_combout\ = (\inst19|Add16~57\ & (\inst19|Add15~62_combout\ $ ((!\inst19|Add15~58_combout\)))) # (!\inst19|Add16~57\ & ((\inst19|Add15~62_combout\ $ (\inst19|Add15~58_combout\)) # (GND)))
-- \inst19|Add16~59\ = CARRY((\inst19|Add15~62_combout\ $ (!\inst19|Add15~58_combout\)) # (!\inst19|Add16~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add15~62_combout\,
	datab => \inst19|Add15~58_combout\,
	datad => VCC,
	cin => \inst19|Add16~57\,
	combout => \inst19|Add16~58_combout\,
	cout => \inst19|Add16~59\);

-- Location: LCCOMB_X28_Y16_N28
\inst19|Add16~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add16~60_combout\ = (\inst19|Add16~59\ & ((\inst19|Add15~60_combout\ $ (\inst19|Add15~62_combout\)))) # (!\inst19|Add16~59\ & (\inst19|Add15~60_combout\ $ (\inst19|Add15~62_combout\ $ (VCC))))
-- \inst19|Add16~61\ = CARRY((!\inst19|Add16~59\ & (\inst19|Add15~60_combout\ $ (\inst19|Add15~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add15~60_combout\,
	datab => \inst19|Add15~62_combout\,
	datad => VCC,
	cin => \inst19|Add16~59\,
	combout => \inst19|Add16~60_combout\,
	cout => \inst19|Add16~61\);

-- Location: LCCOMB_X28_Y16_N30
\inst19|Add16~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add16~62_combout\ = \inst19|Add16~61\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst19|Add16~61\,
	combout => \inst19|Add16~62_combout\);

-- Location: LCCOMB_X30_Y17_N0
\inst19|Add19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add19~0_combout\ = \inst19|Add0~0_combout\ $ (VCC)
-- \inst19|Add19~1\ = CARRY(\inst19|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~0_combout\,
	datad => VCC,
	combout => \inst19|Add19~0_combout\,
	cout => \inst19|Add19~1\);

-- Location: LCCOMB_X30_Y17_N2
\inst19|Add19~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add19~2_combout\ = (\inst19|Add0~2_combout\ & (!\inst19|Add19~1\)) # (!\inst19|Add0~2_combout\ & ((\inst19|Add19~1\) # (GND)))
-- \inst19|Add19~3\ = CARRY((!\inst19|Add19~1\) # (!\inst19|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~2_combout\,
	datad => VCC,
	cin => \inst19|Add19~1\,
	combout => \inst19|Add19~2_combout\,
	cout => \inst19|Add19~3\);

-- Location: LCCOMB_X30_Y17_N4
\inst19|Add19~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add19~4_combout\ = (\inst19|Add0~4_combout\ & (\inst19|Add19~3\ $ (GND))) # (!\inst19|Add0~4_combout\ & (!\inst19|Add19~3\ & VCC))
-- \inst19|Add19~5\ = CARRY((\inst19|Add0~4_combout\ & !\inst19|Add19~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~4_combout\,
	datad => VCC,
	cin => \inst19|Add19~3\,
	combout => \inst19|Add19~4_combout\,
	cout => \inst19|Add19~5\);

-- Location: LCCOMB_X30_Y17_N6
\inst19|Add19~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add19~6_combout\ = (\inst19|Add0~6_combout\ & (\inst19|Add19~5\ & VCC)) # (!\inst19|Add0~6_combout\ & (!\inst19|Add19~5\))
-- \inst19|Add19~7\ = CARRY((!\inst19|Add0~6_combout\ & !\inst19|Add19~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~6_combout\,
	datad => VCC,
	cin => \inst19|Add19~5\,
	combout => \inst19|Add19~6_combout\,
	cout => \inst19|Add19~7\);

-- Location: LCCOMB_X30_Y17_N8
\inst19|Add19~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add19~8_combout\ = (\inst19|Add0~8_combout\ & ((GND) # (!\inst19|Add19~7\))) # (!\inst19|Add0~8_combout\ & (\inst19|Add19~7\ $ (GND)))
-- \inst19|Add19~9\ = CARRY((\inst19|Add0~8_combout\) # (!\inst19|Add19~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~8_combout\,
	datad => VCC,
	cin => \inst19|Add19~7\,
	combout => \inst19|Add19~8_combout\,
	cout => \inst19|Add19~9\);

-- Location: LCCOMB_X30_Y17_N10
\inst19|Add19~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add19~10_combout\ = (\inst19|Add0~10_combout\ & (\inst19|Add19~9\ & VCC)) # (!\inst19|Add0~10_combout\ & (!\inst19|Add19~9\))
-- \inst19|Add19~11\ = CARRY((!\inst19|Add0~10_combout\ & !\inst19|Add19~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~10_combout\,
	datad => VCC,
	cin => \inst19|Add19~9\,
	combout => \inst19|Add19~10_combout\,
	cout => \inst19|Add19~11\);

-- Location: LCCOMB_X30_Y17_N12
\inst19|Add19~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add19~12_combout\ = (\inst19|Add0~12_combout\ & ((GND) # (!\inst19|Add19~11\))) # (!\inst19|Add0~12_combout\ & (\inst19|Add19~11\ $ (GND)))
-- \inst19|Add19~13\ = CARRY((\inst19|Add0~12_combout\) # (!\inst19|Add19~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~12_combout\,
	datad => VCC,
	cin => \inst19|Add19~11\,
	combout => \inst19|Add19~12_combout\,
	cout => \inst19|Add19~13\);

-- Location: LCCOMB_X30_Y17_N14
\inst19|Add19~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add19~14_combout\ = (\inst19|Add0~14_combout\ & (!\inst19|Add19~13\)) # (!\inst19|Add0~14_combout\ & ((\inst19|Add19~13\) # (GND)))
-- \inst19|Add19~15\ = CARRY((!\inst19|Add19~13\) # (!\inst19|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~14_combout\,
	datad => VCC,
	cin => \inst19|Add19~13\,
	combout => \inst19|Add19~14_combout\,
	cout => \inst19|Add19~15\);

-- Location: LCCOMB_X30_Y17_N16
\inst19|Add19~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add19~16_combout\ = (\inst19|Add0~16_combout\ & ((GND) # (!\inst19|Add19~15\))) # (!\inst19|Add0~16_combout\ & (\inst19|Add19~15\ $ (GND)))
-- \inst19|Add19~17\ = CARRY((\inst19|Add0~16_combout\) # (!\inst19|Add19~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~16_combout\,
	datad => VCC,
	cin => \inst19|Add19~15\,
	combout => \inst19|Add19~16_combout\,
	cout => \inst19|Add19~17\);

-- Location: LCCOMB_X30_Y17_N18
\inst19|Add19~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add19~18_combout\ = (\inst19|Add0~18_combout\ & (\inst19|Add19~17\ & VCC)) # (!\inst19|Add0~18_combout\ & (!\inst19|Add19~17\))
-- \inst19|Add19~19\ = CARRY((!\inst19|Add0~18_combout\ & !\inst19|Add19~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~18_combout\,
	datad => VCC,
	cin => \inst19|Add19~17\,
	combout => \inst19|Add19~18_combout\,
	cout => \inst19|Add19~19\);

-- Location: LCCOMB_X30_Y17_N20
\inst19|Add19~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add19~20_combout\ = (\inst19|Add0~20_combout\ & ((GND) # (!\inst19|Add19~19\))) # (!\inst19|Add0~20_combout\ & (\inst19|Add19~19\ $ (GND)))
-- \inst19|Add19~21\ = CARRY((\inst19|Add0~20_combout\) # (!\inst19|Add19~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~20_combout\,
	datad => VCC,
	cin => \inst19|Add19~19\,
	combout => \inst19|Add19~20_combout\,
	cout => \inst19|Add19~21\);

-- Location: LCCOMB_X30_Y17_N22
\inst19|Add19~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add19~22_combout\ = (\inst19|Add0~22_combout\ & (\inst19|Add19~21\ & VCC)) # (!\inst19|Add0~22_combout\ & (!\inst19|Add19~21\))
-- \inst19|Add19~23\ = CARRY((!\inst19|Add0~22_combout\ & !\inst19|Add19~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~22_combout\,
	datad => VCC,
	cin => \inst19|Add19~21\,
	combout => \inst19|Add19~22_combout\,
	cout => \inst19|Add19~23\);

-- Location: LCCOMB_X30_Y17_N24
\inst19|Add19~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add19~24_combout\ = (\inst19|Add0~24_combout\ & ((GND) # (!\inst19|Add19~23\))) # (!\inst19|Add0~24_combout\ & (\inst19|Add19~23\ $ (GND)))
-- \inst19|Add19~25\ = CARRY((\inst19|Add0~24_combout\) # (!\inst19|Add19~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~24_combout\,
	datad => VCC,
	cin => \inst19|Add19~23\,
	combout => \inst19|Add19~24_combout\,
	cout => \inst19|Add19~25\);

-- Location: LCCOMB_X30_Y17_N26
\inst19|Add19~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add19~26_combout\ = (\inst19|Add0~26_combout\ & (\inst19|Add19~25\ & VCC)) # (!\inst19|Add0~26_combout\ & (!\inst19|Add19~25\))
-- \inst19|Add19~27\ = CARRY((!\inst19|Add0~26_combout\ & !\inst19|Add19~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~26_combout\,
	datad => VCC,
	cin => \inst19|Add19~25\,
	combout => \inst19|Add19~26_combout\,
	cout => \inst19|Add19~27\);

-- Location: LCCOMB_X30_Y17_N28
\inst19|Add19~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add19~28_combout\ = (\inst19|Add0~28_combout\ & ((GND) # (!\inst19|Add19~27\))) # (!\inst19|Add0~28_combout\ & (\inst19|Add19~27\ $ (GND)))
-- \inst19|Add19~29\ = CARRY((\inst19|Add0~28_combout\) # (!\inst19|Add19~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~28_combout\,
	datad => VCC,
	cin => \inst19|Add19~27\,
	combout => \inst19|Add19~28_combout\,
	cout => \inst19|Add19~29\);

-- Location: LCCOMB_X30_Y17_N30
\inst19|Add19~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add19~30_combout\ = (\inst19|Add0~30_combout\ & (\inst19|Add19~29\ & VCC)) # (!\inst19|Add0~30_combout\ & (!\inst19|Add19~29\))
-- \inst19|Add19~31\ = CARRY((!\inst19|Add0~30_combout\ & !\inst19|Add19~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~30_combout\,
	datad => VCC,
	cin => \inst19|Add19~29\,
	combout => \inst19|Add19~30_combout\,
	cout => \inst19|Add19~31\);

-- Location: LCCOMB_X30_Y16_N0
\inst19|Add19~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add19~32_combout\ = (\inst19|Add0~32_combout\ & ((GND) # (!\inst19|Add19~31\))) # (!\inst19|Add0~32_combout\ & (\inst19|Add19~31\ $ (GND)))
-- \inst19|Add19~33\ = CARRY((\inst19|Add0~32_combout\) # (!\inst19|Add19~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~32_combout\,
	datad => VCC,
	cin => \inst19|Add19~31\,
	combout => \inst19|Add19~32_combout\,
	cout => \inst19|Add19~33\);

-- Location: LCCOMB_X30_Y16_N2
\inst19|Add19~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add19~34_combout\ = (\inst19|Add0~34_combout\ & (\inst19|Add19~33\ & VCC)) # (!\inst19|Add0~34_combout\ & (!\inst19|Add19~33\))
-- \inst19|Add19~35\ = CARRY((!\inst19|Add0~34_combout\ & !\inst19|Add19~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~34_combout\,
	datad => VCC,
	cin => \inst19|Add19~33\,
	combout => \inst19|Add19~34_combout\,
	cout => \inst19|Add19~35\);

-- Location: LCCOMB_X30_Y16_N4
\inst19|Add19~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add19~36_combout\ = (\inst19|Add0~36_combout\ & ((GND) # (!\inst19|Add19~35\))) # (!\inst19|Add0~36_combout\ & (\inst19|Add19~35\ $ (GND)))
-- \inst19|Add19~37\ = CARRY((\inst19|Add0~36_combout\) # (!\inst19|Add19~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~36_combout\,
	datad => VCC,
	cin => \inst19|Add19~35\,
	combout => \inst19|Add19~36_combout\,
	cout => \inst19|Add19~37\);

-- Location: LCCOMB_X30_Y16_N6
\inst19|Add19~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add19~38_combout\ = (\inst19|Add0~38_combout\ & (\inst19|Add19~37\ & VCC)) # (!\inst19|Add0~38_combout\ & (!\inst19|Add19~37\))
-- \inst19|Add19~39\ = CARRY((!\inst19|Add0~38_combout\ & !\inst19|Add19~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~38_combout\,
	datad => VCC,
	cin => \inst19|Add19~37\,
	combout => \inst19|Add19~38_combout\,
	cout => \inst19|Add19~39\);

-- Location: LCCOMB_X30_Y16_N8
\inst19|Add19~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add19~40_combout\ = (\inst19|Add0~40_combout\ & ((GND) # (!\inst19|Add19~39\))) # (!\inst19|Add0~40_combout\ & (\inst19|Add19~39\ $ (GND)))
-- \inst19|Add19~41\ = CARRY((\inst19|Add0~40_combout\) # (!\inst19|Add19~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~40_combout\,
	datad => VCC,
	cin => \inst19|Add19~39\,
	combout => \inst19|Add19~40_combout\,
	cout => \inst19|Add19~41\);

-- Location: LCCOMB_X30_Y16_N10
\inst19|Add19~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add19~42_combout\ = (\inst19|Add0~42_combout\ & (\inst19|Add19~41\ & VCC)) # (!\inst19|Add0~42_combout\ & (!\inst19|Add19~41\))
-- \inst19|Add19~43\ = CARRY((!\inst19|Add0~42_combout\ & !\inst19|Add19~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~42_combout\,
	datad => VCC,
	cin => \inst19|Add19~41\,
	combout => \inst19|Add19~42_combout\,
	cout => \inst19|Add19~43\);

-- Location: LCCOMB_X30_Y16_N12
\inst19|Add19~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add19~44_combout\ = (\inst19|Add0~44_combout\ & ((GND) # (!\inst19|Add19~43\))) # (!\inst19|Add0~44_combout\ & (\inst19|Add19~43\ $ (GND)))
-- \inst19|Add19~45\ = CARRY((\inst19|Add0~44_combout\) # (!\inst19|Add19~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~44_combout\,
	datad => VCC,
	cin => \inst19|Add19~43\,
	combout => \inst19|Add19~44_combout\,
	cout => \inst19|Add19~45\);

-- Location: LCCOMB_X30_Y16_N14
\inst19|Add19~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add19~46_combout\ = (\inst19|Add0~46_combout\ & (\inst19|Add19~45\ & VCC)) # (!\inst19|Add0~46_combout\ & (!\inst19|Add19~45\))
-- \inst19|Add19~47\ = CARRY((!\inst19|Add0~46_combout\ & !\inst19|Add19~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~46_combout\,
	datad => VCC,
	cin => \inst19|Add19~45\,
	combout => \inst19|Add19~46_combout\,
	cout => \inst19|Add19~47\);

-- Location: LCCOMB_X30_Y16_N16
\inst19|Add19~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add19~48_combout\ = (\inst19|Add0~48_combout\ & ((GND) # (!\inst19|Add19~47\))) # (!\inst19|Add0~48_combout\ & (\inst19|Add19~47\ $ (GND)))
-- \inst19|Add19~49\ = CARRY((\inst19|Add0~48_combout\) # (!\inst19|Add19~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~48_combout\,
	datad => VCC,
	cin => \inst19|Add19~47\,
	combout => \inst19|Add19~48_combout\,
	cout => \inst19|Add19~49\);

-- Location: LCCOMB_X30_Y16_N18
\inst19|Add19~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add19~50_combout\ = (\inst19|Add0~50_combout\ & (\inst19|Add19~49\ & VCC)) # (!\inst19|Add0~50_combout\ & (!\inst19|Add19~49\))
-- \inst19|Add19~51\ = CARRY((!\inst19|Add0~50_combout\ & !\inst19|Add19~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~50_combout\,
	datad => VCC,
	cin => \inst19|Add19~49\,
	combout => \inst19|Add19~50_combout\,
	cout => \inst19|Add19~51\);

-- Location: LCCOMB_X30_Y16_N20
\inst19|Add19~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add19~52_combout\ = (\inst19|Add0~52_combout\ & ((GND) # (!\inst19|Add19~51\))) # (!\inst19|Add0~52_combout\ & (\inst19|Add19~51\ $ (GND)))
-- \inst19|Add19~53\ = CARRY((\inst19|Add0~52_combout\) # (!\inst19|Add19~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~52_combout\,
	datad => VCC,
	cin => \inst19|Add19~51\,
	combout => \inst19|Add19~52_combout\,
	cout => \inst19|Add19~53\);

-- Location: LCCOMB_X30_Y16_N22
\inst19|Add19~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add19~54_combout\ = (\inst19|Add0~54_combout\ & (\inst19|Add19~53\ & VCC)) # (!\inst19|Add0~54_combout\ & (!\inst19|Add19~53\))
-- \inst19|Add19~55\ = CARRY((!\inst19|Add0~54_combout\ & !\inst19|Add19~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~54_combout\,
	datad => VCC,
	cin => \inst19|Add19~53\,
	combout => \inst19|Add19~54_combout\,
	cout => \inst19|Add19~55\);

-- Location: LCCOMB_X30_Y16_N24
\inst19|Add19~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add19~56_combout\ = (\inst19|Add0~56_combout\ & ((GND) # (!\inst19|Add19~55\))) # (!\inst19|Add0~56_combout\ & (\inst19|Add19~55\ $ (GND)))
-- \inst19|Add19~57\ = CARRY((\inst19|Add0~56_combout\) # (!\inst19|Add19~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~56_combout\,
	datad => VCC,
	cin => \inst19|Add19~55\,
	combout => \inst19|Add19~56_combout\,
	cout => \inst19|Add19~57\);

-- Location: LCCOMB_X30_Y16_N26
\inst19|Add19~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add19~58_combout\ = (\inst19|Add0~58_combout\ & (\inst19|Add19~57\ & VCC)) # (!\inst19|Add0~58_combout\ & (!\inst19|Add19~57\))
-- \inst19|Add19~59\ = CARRY((!\inst19|Add0~58_combout\ & !\inst19|Add19~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~58_combout\,
	datad => VCC,
	cin => \inst19|Add19~57\,
	combout => \inst19|Add19~58_combout\,
	cout => \inst19|Add19~59\);

-- Location: LCCOMB_X30_Y16_N28
\inst19|Add19~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add19~60_combout\ = (\inst19|Add0~60_combout\ & ((GND) # (!\inst19|Add19~59\))) # (!\inst19|Add0~60_combout\ & (\inst19|Add19~59\ $ (GND)))
-- \inst19|Add19~61\ = CARRY((\inst19|Add0~60_combout\) # (!\inst19|Add19~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~60_combout\,
	datad => VCC,
	cin => \inst19|Add19~59\,
	combout => \inst19|Add19~60_combout\,
	cout => \inst19|Add19~61\);

-- Location: LCCOMB_X30_Y16_N30
\inst19|Add19~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add19~62_combout\ = \inst19|Add19~61\ $ (!\inst19|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst19|Add0~62_combout\,
	cin => \inst19|Add19~61\,
	combout => \inst19|Add19~62_combout\);

-- Location: LCCOMB_X31_Y17_N0
\inst19|Add20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add20~0_combout\ = (\inst19|Add19~62_combout\ & (\inst19|result~6_combout\ $ (VCC))) # (!\inst19|Add19~62_combout\ & (\inst19|result~6_combout\ & VCC))
-- \inst19|Add20~1\ = CARRY((\inst19|Add19~62_combout\ & \inst19|result~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add19~62_combout\,
	datab => \inst19|result~6_combout\,
	datad => VCC,
	combout => \inst19|Add20~0_combout\,
	cout => \inst19|Add20~1\);

-- Location: LCCOMB_X31_Y17_N2
\inst19|Add20~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add20~2_combout\ = (\inst19|Add20~1\ & (\inst19|Add19~2_combout\ $ ((!\inst19|Add19~62_combout\)))) # (!\inst19|Add20~1\ & ((\inst19|Add19~2_combout\ $ (\inst19|Add19~62_combout\)) # (GND)))
-- \inst19|Add20~3\ = CARRY((\inst19|Add19~2_combout\ $ (!\inst19|Add19~62_combout\)) # (!\inst19|Add20~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add19~2_combout\,
	datab => \inst19|Add19~62_combout\,
	datad => VCC,
	cin => \inst19|Add20~1\,
	combout => \inst19|Add20~2_combout\,
	cout => \inst19|Add20~3\);

-- Location: LCCOMB_X31_Y17_N4
\inst19|Add20~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add20~4_combout\ = (\inst19|Add20~3\ & ((\inst19|Add19~62_combout\ $ (\inst19|Add19~4_combout\)))) # (!\inst19|Add20~3\ & (\inst19|Add19~62_combout\ $ (\inst19|Add19~4_combout\ $ (VCC))))
-- \inst19|Add20~5\ = CARRY((!\inst19|Add20~3\ & (\inst19|Add19~62_combout\ $ (\inst19|Add19~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add19~62_combout\,
	datab => \inst19|Add19~4_combout\,
	datad => VCC,
	cin => \inst19|Add20~3\,
	combout => \inst19|Add20~4_combout\,
	cout => \inst19|Add20~5\);

-- Location: LCCOMB_X31_Y17_N6
\inst19|Add20~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add20~6_combout\ = (\inst19|Add20~5\ & (\inst19|Add19~62_combout\ $ ((!\inst19|Add19~6_combout\)))) # (!\inst19|Add20~5\ & ((\inst19|Add19~62_combout\ $ (\inst19|Add19~6_combout\)) # (GND)))
-- \inst19|Add20~7\ = CARRY((\inst19|Add19~62_combout\ $ (!\inst19|Add19~6_combout\)) # (!\inst19|Add20~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add19~62_combout\,
	datab => \inst19|Add19~6_combout\,
	datad => VCC,
	cin => \inst19|Add20~5\,
	combout => \inst19|Add20~6_combout\,
	cout => \inst19|Add20~7\);

-- Location: LCCOMB_X31_Y17_N8
\inst19|Add20~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add20~8_combout\ = (\inst19|Add20~7\ & ((\inst19|Add19~8_combout\ $ (\inst19|Add19~62_combout\)))) # (!\inst19|Add20~7\ & (\inst19|Add19~8_combout\ $ (\inst19|Add19~62_combout\ $ (VCC))))
-- \inst19|Add20~9\ = CARRY((!\inst19|Add20~7\ & (\inst19|Add19~8_combout\ $ (\inst19|Add19~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add19~8_combout\,
	datab => \inst19|Add19~62_combout\,
	datad => VCC,
	cin => \inst19|Add20~7\,
	combout => \inst19|Add20~8_combout\,
	cout => \inst19|Add20~9\);

-- Location: LCCOMB_X31_Y17_N10
\inst19|Add20~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add20~10_combout\ = (\inst19|Add20~9\ & (\inst19|Add19~10_combout\ $ ((!\inst19|Add19~62_combout\)))) # (!\inst19|Add20~9\ & ((\inst19|Add19~10_combout\ $ (\inst19|Add19~62_combout\)) # (GND)))
-- \inst19|Add20~11\ = CARRY((\inst19|Add19~10_combout\ $ (!\inst19|Add19~62_combout\)) # (!\inst19|Add20~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add19~10_combout\,
	datab => \inst19|Add19~62_combout\,
	datad => VCC,
	cin => \inst19|Add20~9\,
	combout => \inst19|Add20~10_combout\,
	cout => \inst19|Add20~11\);

-- Location: LCCOMB_X31_Y17_N12
\inst19|Add20~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add20~12_combout\ = (\inst19|Add20~11\ & ((\inst19|Add19~12_combout\ $ (\inst19|Add19~62_combout\)))) # (!\inst19|Add20~11\ & (\inst19|Add19~12_combout\ $ (\inst19|Add19~62_combout\ $ (VCC))))
-- \inst19|Add20~13\ = CARRY((!\inst19|Add20~11\ & (\inst19|Add19~12_combout\ $ (\inst19|Add19~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add19~12_combout\,
	datab => \inst19|Add19~62_combout\,
	datad => VCC,
	cin => \inst19|Add20~11\,
	combout => \inst19|Add20~12_combout\,
	cout => \inst19|Add20~13\);

-- Location: LCCOMB_X31_Y17_N14
\inst19|Add20~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add20~14_combout\ = (\inst19|Add20~13\ & (\inst19|Add19~14_combout\ $ ((!\inst19|Add19~62_combout\)))) # (!\inst19|Add20~13\ & ((\inst19|Add19~14_combout\ $ (\inst19|Add19~62_combout\)) # (GND)))
-- \inst19|Add20~15\ = CARRY((\inst19|Add19~14_combout\ $ (!\inst19|Add19~62_combout\)) # (!\inst19|Add20~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add19~14_combout\,
	datab => \inst19|Add19~62_combout\,
	datad => VCC,
	cin => \inst19|Add20~13\,
	combout => \inst19|Add20~14_combout\,
	cout => \inst19|Add20~15\);

-- Location: LCCOMB_X31_Y17_N16
\inst19|Add20~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add20~16_combout\ = (\inst19|Add20~15\ & ((\inst19|Add19~16_combout\ $ (\inst19|Add19~62_combout\)))) # (!\inst19|Add20~15\ & (\inst19|Add19~16_combout\ $ (\inst19|Add19~62_combout\ $ (VCC))))
-- \inst19|Add20~17\ = CARRY((!\inst19|Add20~15\ & (\inst19|Add19~16_combout\ $ (\inst19|Add19~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add19~16_combout\,
	datab => \inst19|Add19~62_combout\,
	datad => VCC,
	cin => \inst19|Add20~15\,
	combout => \inst19|Add20~16_combout\,
	cout => \inst19|Add20~17\);

-- Location: LCCOMB_X31_Y17_N18
\inst19|Add20~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add20~18_combout\ = (\inst19|Add20~17\ & (\inst19|Add19~62_combout\ $ ((!\inst19|Add19~18_combout\)))) # (!\inst19|Add20~17\ & ((\inst19|Add19~62_combout\ $ (\inst19|Add19~18_combout\)) # (GND)))
-- \inst19|Add20~19\ = CARRY((\inst19|Add19~62_combout\ $ (!\inst19|Add19~18_combout\)) # (!\inst19|Add20~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add19~62_combout\,
	datab => \inst19|Add19~18_combout\,
	datad => VCC,
	cin => \inst19|Add20~17\,
	combout => \inst19|Add20~18_combout\,
	cout => \inst19|Add20~19\);

-- Location: LCCOMB_X31_Y17_N20
\inst19|Add20~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add20~20_combout\ = (\inst19|Add20~19\ & ((\inst19|Add19~62_combout\ $ (\inst19|Add19~20_combout\)))) # (!\inst19|Add20~19\ & (\inst19|Add19~62_combout\ $ (\inst19|Add19~20_combout\ $ (VCC))))
-- \inst19|Add20~21\ = CARRY((!\inst19|Add20~19\ & (\inst19|Add19~62_combout\ $ (\inst19|Add19~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add19~62_combout\,
	datab => \inst19|Add19~20_combout\,
	datad => VCC,
	cin => \inst19|Add20~19\,
	combout => \inst19|Add20~20_combout\,
	cout => \inst19|Add20~21\);

-- Location: LCCOMB_X31_Y17_N22
\inst19|Add20~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add20~22_combout\ = (\inst19|Add20~21\ & (\inst19|Add19~62_combout\ $ ((!\inst19|Add19~22_combout\)))) # (!\inst19|Add20~21\ & ((\inst19|Add19~62_combout\ $ (\inst19|Add19~22_combout\)) # (GND)))
-- \inst19|Add20~23\ = CARRY((\inst19|Add19~62_combout\ $ (!\inst19|Add19~22_combout\)) # (!\inst19|Add20~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add19~62_combout\,
	datab => \inst19|Add19~22_combout\,
	datad => VCC,
	cin => \inst19|Add20~21\,
	combout => \inst19|Add20~22_combout\,
	cout => \inst19|Add20~23\);

-- Location: LCCOMB_X31_Y17_N24
\inst19|Add20~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add20~24_combout\ = (\inst19|Add20~23\ & ((\inst19|Add19~62_combout\ $ (\inst19|Add19~24_combout\)))) # (!\inst19|Add20~23\ & (\inst19|Add19~62_combout\ $ (\inst19|Add19~24_combout\ $ (VCC))))
-- \inst19|Add20~25\ = CARRY((!\inst19|Add20~23\ & (\inst19|Add19~62_combout\ $ (\inst19|Add19~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add19~62_combout\,
	datab => \inst19|Add19~24_combout\,
	datad => VCC,
	cin => \inst19|Add20~23\,
	combout => \inst19|Add20~24_combout\,
	cout => \inst19|Add20~25\);

-- Location: LCCOMB_X31_Y17_N26
\inst19|Add20~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add20~26_combout\ = (\inst19|Add20~25\ & (\inst19|Add19~26_combout\ $ ((!\inst19|Add19~62_combout\)))) # (!\inst19|Add20~25\ & ((\inst19|Add19~26_combout\ $ (\inst19|Add19~62_combout\)) # (GND)))
-- \inst19|Add20~27\ = CARRY((\inst19|Add19~26_combout\ $ (!\inst19|Add19~62_combout\)) # (!\inst19|Add20~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add19~26_combout\,
	datab => \inst19|Add19~62_combout\,
	datad => VCC,
	cin => \inst19|Add20~25\,
	combout => \inst19|Add20~26_combout\,
	cout => \inst19|Add20~27\);

-- Location: LCCOMB_X31_Y17_N28
\inst19|Add20~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add20~28_combout\ = (\inst19|Add20~27\ & ((\inst19|Add19~28_combout\ $ (\inst19|Add19~62_combout\)))) # (!\inst19|Add20~27\ & (\inst19|Add19~28_combout\ $ (\inst19|Add19~62_combout\ $ (VCC))))
-- \inst19|Add20~29\ = CARRY((!\inst19|Add20~27\ & (\inst19|Add19~28_combout\ $ (\inst19|Add19~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add19~28_combout\,
	datab => \inst19|Add19~62_combout\,
	datad => VCC,
	cin => \inst19|Add20~27\,
	combout => \inst19|Add20~28_combout\,
	cout => \inst19|Add20~29\);

-- Location: LCCOMB_X31_Y17_N30
\inst19|Add20~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add20~30_combout\ = (\inst19|Add20~29\ & (\inst19|Add19~62_combout\ $ ((!\inst19|Add19~30_combout\)))) # (!\inst19|Add20~29\ & ((\inst19|Add19~62_combout\ $ (\inst19|Add19~30_combout\)) # (GND)))
-- \inst19|Add20~31\ = CARRY((\inst19|Add19~62_combout\ $ (!\inst19|Add19~30_combout\)) # (!\inst19|Add20~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add19~62_combout\,
	datab => \inst19|Add19~30_combout\,
	datad => VCC,
	cin => \inst19|Add20~29\,
	combout => \inst19|Add20~30_combout\,
	cout => \inst19|Add20~31\);

-- Location: LCCOMB_X31_Y16_N0
\inst19|Add20~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add20~32_combout\ = (\inst19|Add20~31\ & ((\inst19|Add19~62_combout\ $ (\inst19|Add19~32_combout\)))) # (!\inst19|Add20~31\ & (\inst19|Add19~62_combout\ $ (\inst19|Add19~32_combout\ $ (VCC))))
-- \inst19|Add20~33\ = CARRY((!\inst19|Add20~31\ & (\inst19|Add19~62_combout\ $ (\inst19|Add19~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add19~62_combout\,
	datab => \inst19|Add19~32_combout\,
	datad => VCC,
	cin => \inst19|Add20~31\,
	combout => \inst19|Add20~32_combout\,
	cout => \inst19|Add20~33\);

-- Location: LCCOMB_X31_Y16_N2
\inst19|Add20~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add20~34_combout\ = (\inst19|Add20~33\ & (\inst19|Add19~34_combout\ $ ((!\inst19|Add19~62_combout\)))) # (!\inst19|Add20~33\ & ((\inst19|Add19~34_combout\ $ (\inst19|Add19~62_combout\)) # (GND)))
-- \inst19|Add20~35\ = CARRY((\inst19|Add19~34_combout\ $ (!\inst19|Add19~62_combout\)) # (!\inst19|Add20~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add19~34_combout\,
	datab => \inst19|Add19~62_combout\,
	datad => VCC,
	cin => \inst19|Add20~33\,
	combout => \inst19|Add20~34_combout\,
	cout => \inst19|Add20~35\);

-- Location: LCCOMB_X31_Y16_N4
\inst19|Add20~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add20~36_combout\ = (\inst19|Add20~35\ & ((\inst19|Add19~62_combout\ $ (\inst19|Add19~36_combout\)))) # (!\inst19|Add20~35\ & (\inst19|Add19~62_combout\ $ (\inst19|Add19~36_combout\ $ (VCC))))
-- \inst19|Add20~37\ = CARRY((!\inst19|Add20~35\ & (\inst19|Add19~62_combout\ $ (\inst19|Add19~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add19~62_combout\,
	datab => \inst19|Add19~36_combout\,
	datad => VCC,
	cin => \inst19|Add20~35\,
	combout => \inst19|Add20~36_combout\,
	cout => \inst19|Add20~37\);

-- Location: LCCOMB_X31_Y16_N6
\inst19|Add20~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add20~38_combout\ = (\inst19|Add20~37\ & (\inst19|Add19~62_combout\ $ ((!\inst19|Add19~38_combout\)))) # (!\inst19|Add20~37\ & ((\inst19|Add19~62_combout\ $ (\inst19|Add19~38_combout\)) # (GND)))
-- \inst19|Add20~39\ = CARRY((\inst19|Add19~62_combout\ $ (!\inst19|Add19~38_combout\)) # (!\inst19|Add20~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add19~62_combout\,
	datab => \inst19|Add19~38_combout\,
	datad => VCC,
	cin => \inst19|Add20~37\,
	combout => \inst19|Add20~38_combout\,
	cout => \inst19|Add20~39\);

-- Location: LCCOMB_X31_Y16_N8
\inst19|Add20~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add20~40_combout\ = (\inst19|Add20~39\ & ((\inst19|Add19~40_combout\ $ (\inst19|Add19~62_combout\)))) # (!\inst19|Add20~39\ & (\inst19|Add19~40_combout\ $ (\inst19|Add19~62_combout\ $ (VCC))))
-- \inst19|Add20~41\ = CARRY((!\inst19|Add20~39\ & (\inst19|Add19~40_combout\ $ (\inst19|Add19~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add19~40_combout\,
	datab => \inst19|Add19~62_combout\,
	datad => VCC,
	cin => \inst19|Add20~39\,
	combout => \inst19|Add20~40_combout\,
	cout => \inst19|Add20~41\);

-- Location: LCCOMB_X31_Y16_N10
\inst19|Add20~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add20~42_combout\ = (\inst19|Add20~41\ & (\inst19|Add19~62_combout\ $ ((!\inst19|Add19~42_combout\)))) # (!\inst19|Add20~41\ & ((\inst19|Add19~62_combout\ $ (\inst19|Add19~42_combout\)) # (GND)))
-- \inst19|Add20~43\ = CARRY((\inst19|Add19~62_combout\ $ (!\inst19|Add19~42_combout\)) # (!\inst19|Add20~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add19~62_combout\,
	datab => \inst19|Add19~42_combout\,
	datad => VCC,
	cin => \inst19|Add20~41\,
	combout => \inst19|Add20~42_combout\,
	cout => \inst19|Add20~43\);

-- Location: LCCOMB_X31_Y16_N12
\inst19|Add20~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add20~44_combout\ = (\inst19|Add20~43\ & ((\inst19|Add19~44_combout\ $ (\inst19|Add19~62_combout\)))) # (!\inst19|Add20~43\ & (\inst19|Add19~44_combout\ $ (\inst19|Add19~62_combout\ $ (VCC))))
-- \inst19|Add20~45\ = CARRY((!\inst19|Add20~43\ & (\inst19|Add19~44_combout\ $ (\inst19|Add19~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add19~44_combout\,
	datab => \inst19|Add19~62_combout\,
	datad => VCC,
	cin => \inst19|Add20~43\,
	combout => \inst19|Add20~44_combout\,
	cout => \inst19|Add20~45\);

-- Location: LCCOMB_X31_Y16_N14
\inst19|Add20~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add20~46_combout\ = (\inst19|Add20~45\ & (\inst19|Add19~46_combout\ $ ((!\inst19|Add19~62_combout\)))) # (!\inst19|Add20~45\ & ((\inst19|Add19~46_combout\ $ (\inst19|Add19~62_combout\)) # (GND)))
-- \inst19|Add20~47\ = CARRY((\inst19|Add19~46_combout\ $ (!\inst19|Add19~62_combout\)) # (!\inst19|Add20~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add19~46_combout\,
	datab => \inst19|Add19~62_combout\,
	datad => VCC,
	cin => \inst19|Add20~45\,
	combout => \inst19|Add20~46_combout\,
	cout => \inst19|Add20~47\);

-- Location: LCCOMB_X31_Y16_N16
\inst19|Add20~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add20~48_combout\ = (\inst19|Add20~47\ & ((\inst19|Add19~48_combout\ $ (\inst19|Add19~62_combout\)))) # (!\inst19|Add20~47\ & (\inst19|Add19~48_combout\ $ (\inst19|Add19~62_combout\ $ (VCC))))
-- \inst19|Add20~49\ = CARRY((!\inst19|Add20~47\ & (\inst19|Add19~48_combout\ $ (\inst19|Add19~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add19~48_combout\,
	datab => \inst19|Add19~62_combout\,
	datad => VCC,
	cin => \inst19|Add20~47\,
	combout => \inst19|Add20~48_combout\,
	cout => \inst19|Add20~49\);

-- Location: LCCOMB_X31_Y16_N18
\inst19|Add20~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add20~50_combout\ = (\inst19|Add20~49\ & (\inst19|Add19~50_combout\ $ ((!\inst19|Add19~62_combout\)))) # (!\inst19|Add20~49\ & ((\inst19|Add19~50_combout\ $ (\inst19|Add19~62_combout\)) # (GND)))
-- \inst19|Add20~51\ = CARRY((\inst19|Add19~50_combout\ $ (!\inst19|Add19~62_combout\)) # (!\inst19|Add20~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add19~50_combout\,
	datab => \inst19|Add19~62_combout\,
	datad => VCC,
	cin => \inst19|Add20~49\,
	combout => \inst19|Add20~50_combout\,
	cout => \inst19|Add20~51\);

-- Location: LCCOMB_X31_Y16_N20
\inst19|Add20~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add20~52_combout\ = (\inst19|Add20~51\ & ((\inst19|Add19~62_combout\ $ (\inst19|Add19~52_combout\)))) # (!\inst19|Add20~51\ & (\inst19|Add19~62_combout\ $ (\inst19|Add19~52_combout\ $ (VCC))))
-- \inst19|Add20~53\ = CARRY((!\inst19|Add20~51\ & (\inst19|Add19~62_combout\ $ (\inst19|Add19~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add19~62_combout\,
	datab => \inst19|Add19~52_combout\,
	datad => VCC,
	cin => \inst19|Add20~51\,
	combout => \inst19|Add20~52_combout\,
	cout => \inst19|Add20~53\);

-- Location: LCCOMB_X31_Y16_N22
\inst19|Add20~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add20~54_combout\ = (\inst19|Add20~53\ & (\inst19|Add19~54_combout\ $ ((!\inst19|Add19~62_combout\)))) # (!\inst19|Add20~53\ & ((\inst19|Add19~54_combout\ $ (\inst19|Add19~62_combout\)) # (GND)))
-- \inst19|Add20~55\ = CARRY((\inst19|Add19~54_combout\ $ (!\inst19|Add19~62_combout\)) # (!\inst19|Add20~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add19~54_combout\,
	datab => \inst19|Add19~62_combout\,
	datad => VCC,
	cin => \inst19|Add20~53\,
	combout => \inst19|Add20~54_combout\,
	cout => \inst19|Add20~55\);

-- Location: LCCOMB_X31_Y16_N24
\inst19|Add20~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add20~56_combout\ = (\inst19|Add20~55\ & ((\inst19|Add19~62_combout\ $ (\inst19|Add19~56_combout\)))) # (!\inst19|Add20~55\ & (\inst19|Add19~62_combout\ $ (\inst19|Add19~56_combout\ $ (VCC))))
-- \inst19|Add20~57\ = CARRY((!\inst19|Add20~55\ & (\inst19|Add19~62_combout\ $ (\inst19|Add19~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add19~62_combout\,
	datab => \inst19|Add19~56_combout\,
	datad => VCC,
	cin => \inst19|Add20~55\,
	combout => \inst19|Add20~56_combout\,
	cout => \inst19|Add20~57\);

-- Location: LCCOMB_X31_Y16_N26
\inst19|Add20~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add20~58_combout\ = (\inst19|Add20~57\ & (\inst19|Add19~58_combout\ $ ((!\inst19|Add19~62_combout\)))) # (!\inst19|Add20~57\ & ((\inst19|Add19~58_combout\ $ (\inst19|Add19~62_combout\)) # (GND)))
-- \inst19|Add20~59\ = CARRY((\inst19|Add19~58_combout\ $ (!\inst19|Add19~62_combout\)) # (!\inst19|Add20~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add19~58_combout\,
	datab => \inst19|Add19~62_combout\,
	datad => VCC,
	cin => \inst19|Add20~57\,
	combout => \inst19|Add20~58_combout\,
	cout => \inst19|Add20~59\);

-- Location: LCCOMB_X31_Y16_N28
\inst19|Add20~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add20~60_combout\ = (\inst19|Add20~59\ & ((\inst19|Add19~62_combout\ $ (\inst19|Add19~60_combout\)))) # (!\inst19|Add20~59\ & (\inst19|Add19~62_combout\ $ (\inst19|Add19~60_combout\ $ (VCC))))
-- \inst19|Add20~61\ = CARRY((!\inst19|Add20~59\ & (\inst19|Add19~62_combout\ $ (\inst19|Add19~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add19~62_combout\,
	datab => \inst19|Add19~60_combout\,
	datad => VCC,
	cin => \inst19|Add20~59\,
	combout => \inst19|Add20~60_combout\,
	cout => \inst19|Add20~61\);

-- Location: LCCOMB_X31_Y16_N30
\inst19|Add20~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add20~62_combout\ = \inst19|Add20~61\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst19|Add20~61\,
	combout => \inst19|Add20~62_combout\);

-- Location: LCCOMB_X19_Y17_N0
\inst19|Add17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add17~0_combout\ = \inst19|Add0~0_combout\ $ (VCC)
-- \inst19|Add17~1\ = CARRY(\inst19|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~0_combout\,
	datad => VCC,
	combout => \inst19|Add17~0_combout\,
	cout => \inst19|Add17~1\);

-- Location: LCCOMB_X19_Y17_N2
\inst19|Add17~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add17~2_combout\ = (\inst19|Add0~2_combout\ & (\inst19|Add17~1\ & VCC)) # (!\inst19|Add0~2_combout\ & (!\inst19|Add17~1\))
-- \inst19|Add17~3\ = CARRY((!\inst19|Add0~2_combout\ & !\inst19|Add17~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~2_combout\,
	datad => VCC,
	cin => \inst19|Add17~1\,
	combout => \inst19|Add17~2_combout\,
	cout => \inst19|Add17~3\);

-- Location: LCCOMB_X19_Y17_N4
\inst19|Add17~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add17~4_combout\ = (\inst19|Add0~4_combout\ & (\inst19|Add17~3\ $ (GND))) # (!\inst19|Add0~4_combout\ & (!\inst19|Add17~3\ & VCC))
-- \inst19|Add17~5\ = CARRY((\inst19|Add0~4_combout\ & !\inst19|Add17~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~4_combout\,
	datad => VCC,
	cin => \inst19|Add17~3\,
	combout => \inst19|Add17~4_combout\,
	cout => \inst19|Add17~5\);

-- Location: LCCOMB_X19_Y17_N6
\inst19|Add17~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add17~6_combout\ = (\inst19|Add0~6_combout\ & (!\inst19|Add17~5\)) # (!\inst19|Add0~6_combout\ & ((\inst19|Add17~5\) # (GND)))
-- \inst19|Add17~7\ = CARRY((!\inst19|Add17~5\) # (!\inst19|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~6_combout\,
	datad => VCC,
	cin => \inst19|Add17~5\,
	combout => \inst19|Add17~6_combout\,
	cout => \inst19|Add17~7\);

-- Location: LCCOMB_X19_Y17_N8
\inst19|Add17~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add17~8_combout\ = (\inst19|Add0~8_combout\ & (\inst19|Add17~7\ $ (GND))) # (!\inst19|Add0~8_combout\ & (!\inst19|Add17~7\ & VCC))
-- \inst19|Add17~9\ = CARRY((\inst19|Add0~8_combout\ & !\inst19|Add17~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~8_combout\,
	datad => VCC,
	cin => \inst19|Add17~7\,
	combout => \inst19|Add17~8_combout\,
	cout => \inst19|Add17~9\);

-- Location: LCCOMB_X19_Y17_N10
\inst19|Add17~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add17~10_combout\ = (\inst19|Add0~10_combout\ & (!\inst19|Add17~9\)) # (!\inst19|Add0~10_combout\ & ((\inst19|Add17~9\) # (GND)))
-- \inst19|Add17~11\ = CARRY((!\inst19|Add17~9\) # (!\inst19|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~10_combout\,
	datad => VCC,
	cin => \inst19|Add17~9\,
	combout => \inst19|Add17~10_combout\,
	cout => \inst19|Add17~11\);

-- Location: LCCOMB_X19_Y17_N12
\inst19|Add17~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add17~12_combout\ = (\inst19|Add0~12_combout\ & (\inst19|Add17~11\ $ (GND))) # (!\inst19|Add0~12_combout\ & (!\inst19|Add17~11\ & VCC))
-- \inst19|Add17~13\ = CARRY((\inst19|Add0~12_combout\ & !\inst19|Add17~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~12_combout\,
	datad => VCC,
	cin => \inst19|Add17~11\,
	combout => \inst19|Add17~12_combout\,
	cout => \inst19|Add17~13\);

-- Location: LCCOMB_X19_Y17_N14
\inst19|Add17~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add17~14_combout\ = (\inst19|Add0~14_combout\ & (\inst19|Add17~13\ & VCC)) # (!\inst19|Add0~14_combout\ & (!\inst19|Add17~13\))
-- \inst19|Add17~15\ = CARRY((!\inst19|Add0~14_combout\ & !\inst19|Add17~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~14_combout\,
	datad => VCC,
	cin => \inst19|Add17~13\,
	combout => \inst19|Add17~14_combout\,
	cout => \inst19|Add17~15\);

-- Location: LCCOMB_X19_Y17_N16
\inst19|Add17~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add17~16_combout\ = (\inst19|Add0~16_combout\ & ((GND) # (!\inst19|Add17~15\))) # (!\inst19|Add0~16_combout\ & (\inst19|Add17~15\ $ (GND)))
-- \inst19|Add17~17\ = CARRY((\inst19|Add0~16_combout\) # (!\inst19|Add17~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~16_combout\,
	datad => VCC,
	cin => \inst19|Add17~15\,
	combout => \inst19|Add17~16_combout\,
	cout => \inst19|Add17~17\);

-- Location: LCCOMB_X19_Y17_N18
\inst19|Add17~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add17~18_combout\ = (\inst19|Add0~18_combout\ & (\inst19|Add17~17\ & VCC)) # (!\inst19|Add0~18_combout\ & (!\inst19|Add17~17\))
-- \inst19|Add17~19\ = CARRY((!\inst19|Add0~18_combout\ & !\inst19|Add17~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~18_combout\,
	datad => VCC,
	cin => \inst19|Add17~17\,
	combout => \inst19|Add17~18_combout\,
	cout => \inst19|Add17~19\);

-- Location: LCCOMB_X19_Y17_N20
\inst19|Add17~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add17~20_combout\ = (\inst19|Add0~20_combout\ & ((GND) # (!\inst19|Add17~19\))) # (!\inst19|Add0~20_combout\ & (\inst19|Add17~19\ $ (GND)))
-- \inst19|Add17~21\ = CARRY((\inst19|Add0~20_combout\) # (!\inst19|Add17~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~20_combout\,
	datad => VCC,
	cin => \inst19|Add17~19\,
	combout => \inst19|Add17~20_combout\,
	cout => \inst19|Add17~21\);

-- Location: LCCOMB_X19_Y17_N22
\inst19|Add17~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add17~22_combout\ = (\inst19|Add0~22_combout\ & (\inst19|Add17~21\ & VCC)) # (!\inst19|Add0~22_combout\ & (!\inst19|Add17~21\))
-- \inst19|Add17~23\ = CARRY((!\inst19|Add0~22_combout\ & !\inst19|Add17~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~22_combout\,
	datad => VCC,
	cin => \inst19|Add17~21\,
	combout => \inst19|Add17~22_combout\,
	cout => \inst19|Add17~23\);

-- Location: LCCOMB_X19_Y17_N24
\inst19|Add17~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add17~24_combout\ = (\inst19|Add0~24_combout\ & ((GND) # (!\inst19|Add17~23\))) # (!\inst19|Add0~24_combout\ & (\inst19|Add17~23\ $ (GND)))
-- \inst19|Add17~25\ = CARRY((\inst19|Add0~24_combout\) # (!\inst19|Add17~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~24_combout\,
	datad => VCC,
	cin => \inst19|Add17~23\,
	combout => \inst19|Add17~24_combout\,
	cout => \inst19|Add17~25\);

-- Location: LCCOMB_X19_Y17_N26
\inst19|Add17~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add17~26_combout\ = (\inst19|Add0~26_combout\ & (\inst19|Add17~25\ & VCC)) # (!\inst19|Add0~26_combout\ & (!\inst19|Add17~25\))
-- \inst19|Add17~27\ = CARRY((!\inst19|Add0~26_combout\ & !\inst19|Add17~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~26_combout\,
	datad => VCC,
	cin => \inst19|Add17~25\,
	combout => \inst19|Add17~26_combout\,
	cout => \inst19|Add17~27\);

-- Location: LCCOMB_X19_Y17_N28
\inst19|Add17~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add17~28_combout\ = (\inst19|Add0~28_combout\ & ((GND) # (!\inst19|Add17~27\))) # (!\inst19|Add0~28_combout\ & (\inst19|Add17~27\ $ (GND)))
-- \inst19|Add17~29\ = CARRY((\inst19|Add0~28_combout\) # (!\inst19|Add17~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~28_combout\,
	datad => VCC,
	cin => \inst19|Add17~27\,
	combout => \inst19|Add17~28_combout\,
	cout => \inst19|Add17~29\);

-- Location: LCCOMB_X19_Y17_N30
\inst19|Add17~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add17~30_combout\ = (\inst19|Add0~30_combout\ & (\inst19|Add17~29\ & VCC)) # (!\inst19|Add0~30_combout\ & (!\inst19|Add17~29\))
-- \inst19|Add17~31\ = CARRY((!\inst19|Add0~30_combout\ & !\inst19|Add17~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~30_combout\,
	datad => VCC,
	cin => \inst19|Add17~29\,
	combout => \inst19|Add17~30_combout\,
	cout => \inst19|Add17~31\);

-- Location: LCCOMB_X19_Y16_N0
\inst19|Add17~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add17~32_combout\ = (\inst19|Add0~32_combout\ & ((GND) # (!\inst19|Add17~31\))) # (!\inst19|Add0~32_combout\ & (\inst19|Add17~31\ $ (GND)))
-- \inst19|Add17~33\ = CARRY((\inst19|Add0~32_combout\) # (!\inst19|Add17~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~32_combout\,
	datad => VCC,
	cin => \inst19|Add17~31\,
	combout => \inst19|Add17~32_combout\,
	cout => \inst19|Add17~33\);

-- Location: LCCOMB_X19_Y16_N2
\inst19|Add17~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add17~34_combout\ = (\inst19|Add0~34_combout\ & (\inst19|Add17~33\ & VCC)) # (!\inst19|Add0~34_combout\ & (!\inst19|Add17~33\))
-- \inst19|Add17~35\ = CARRY((!\inst19|Add0~34_combout\ & !\inst19|Add17~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~34_combout\,
	datad => VCC,
	cin => \inst19|Add17~33\,
	combout => \inst19|Add17~34_combout\,
	cout => \inst19|Add17~35\);

-- Location: LCCOMB_X19_Y16_N4
\inst19|Add17~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add17~36_combout\ = (\inst19|Add0~36_combout\ & ((GND) # (!\inst19|Add17~35\))) # (!\inst19|Add0~36_combout\ & (\inst19|Add17~35\ $ (GND)))
-- \inst19|Add17~37\ = CARRY((\inst19|Add0~36_combout\) # (!\inst19|Add17~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~36_combout\,
	datad => VCC,
	cin => \inst19|Add17~35\,
	combout => \inst19|Add17~36_combout\,
	cout => \inst19|Add17~37\);

-- Location: LCCOMB_X19_Y16_N6
\inst19|Add17~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add17~38_combout\ = (\inst19|Add0~38_combout\ & (\inst19|Add17~37\ & VCC)) # (!\inst19|Add0~38_combout\ & (!\inst19|Add17~37\))
-- \inst19|Add17~39\ = CARRY((!\inst19|Add0~38_combout\ & !\inst19|Add17~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~38_combout\,
	datad => VCC,
	cin => \inst19|Add17~37\,
	combout => \inst19|Add17~38_combout\,
	cout => \inst19|Add17~39\);

-- Location: LCCOMB_X19_Y16_N8
\inst19|Add17~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add17~40_combout\ = (\inst19|Add0~40_combout\ & ((GND) # (!\inst19|Add17~39\))) # (!\inst19|Add0~40_combout\ & (\inst19|Add17~39\ $ (GND)))
-- \inst19|Add17~41\ = CARRY((\inst19|Add0~40_combout\) # (!\inst19|Add17~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~40_combout\,
	datad => VCC,
	cin => \inst19|Add17~39\,
	combout => \inst19|Add17~40_combout\,
	cout => \inst19|Add17~41\);

-- Location: LCCOMB_X19_Y16_N10
\inst19|Add17~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add17~42_combout\ = (\inst19|Add0~42_combout\ & (\inst19|Add17~41\ & VCC)) # (!\inst19|Add0~42_combout\ & (!\inst19|Add17~41\))
-- \inst19|Add17~43\ = CARRY((!\inst19|Add0~42_combout\ & !\inst19|Add17~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~42_combout\,
	datad => VCC,
	cin => \inst19|Add17~41\,
	combout => \inst19|Add17~42_combout\,
	cout => \inst19|Add17~43\);

-- Location: LCCOMB_X19_Y16_N12
\inst19|Add17~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add17~44_combout\ = (\inst19|Add0~44_combout\ & ((GND) # (!\inst19|Add17~43\))) # (!\inst19|Add0~44_combout\ & (\inst19|Add17~43\ $ (GND)))
-- \inst19|Add17~45\ = CARRY((\inst19|Add0~44_combout\) # (!\inst19|Add17~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~44_combout\,
	datad => VCC,
	cin => \inst19|Add17~43\,
	combout => \inst19|Add17~44_combout\,
	cout => \inst19|Add17~45\);

-- Location: LCCOMB_X19_Y16_N14
\inst19|Add17~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add17~46_combout\ = (\inst19|Add0~46_combout\ & (\inst19|Add17~45\ & VCC)) # (!\inst19|Add0~46_combout\ & (!\inst19|Add17~45\))
-- \inst19|Add17~47\ = CARRY((!\inst19|Add0~46_combout\ & !\inst19|Add17~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~46_combout\,
	datad => VCC,
	cin => \inst19|Add17~45\,
	combout => \inst19|Add17~46_combout\,
	cout => \inst19|Add17~47\);

-- Location: LCCOMB_X19_Y16_N16
\inst19|Add17~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add17~48_combout\ = (\inst19|Add0~48_combout\ & ((GND) # (!\inst19|Add17~47\))) # (!\inst19|Add0~48_combout\ & (\inst19|Add17~47\ $ (GND)))
-- \inst19|Add17~49\ = CARRY((\inst19|Add0~48_combout\) # (!\inst19|Add17~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~48_combout\,
	datad => VCC,
	cin => \inst19|Add17~47\,
	combout => \inst19|Add17~48_combout\,
	cout => \inst19|Add17~49\);

-- Location: LCCOMB_X19_Y16_N18
\inst19|Add17~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add17~50_combout\ = (\inst19|Add0~50_combout\ & (\inst19|Add17~49\ & VCC)) # (!\inst19|Add0~50_combout\ & (!\inst19|Add17~49\))
-- \inst19|Add17~51\ = CARRY((!\inst19|Add0~50_combout\ & !\inst19|Add17~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~50_combout\,
	datad => VCC,
	cin => \inst19|Add17~49\,
	combout => \inst19|Add17~50_combout\,
	cout => \inst19|Add17~51\);

-- Location: LCCOMB_X19_Y16_N20
\inst19|Add17~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add17~52_combout\ = (\inst19|Add0~52_combout\ & ((GND) # (!\inst19|Add17~51\))) # (!\inst19|Add0~52_combout\ & (\inst19|Add17~51\ $ (GND)))
-- \inst19|Add17~53\ = CARRY((\inst19|Add0~52_combout\) # (!\inst19|Add17~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~52_combout\,
	datad => VCC,
	cin => \inst19|Add17~51\,
	combout => \inst19|Add17~52_combout\,
	cout => \inst19|Add17~53\);

-- Location: LCCOMB_X19_Y16_N22
\inst19|Add17~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add17~54_combout\ = (\inst19|Add0~54_combout\ & (\inst19|Add17~53\ & VCC)) # (!\inst19|Add0~54_combout\ & (!\inst19|Add17~53\))
-- \inst19|Add17~55\ = CARRY((!\inst19|Add0~54_combout\ & !\inst19|Add17~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~54_combout\,
	datad => VCC,
	cin => \inst19|Add17~53\,
	combout => \inst19|Add17~54_combout\,
	cout => \inst19|Add17~55\);

-- Location: LCCOMB_X19_Y16_N24
\inst19|Add17~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add17~56_combout\ = (\inst19|Add0~56_combout\ & ((GND) # (!\inst19|Add17~55\))) # (!\inst19|Add0~56_combout\ & (\inst19|Add17~55\ $ (GND)))
-- \inst19|Add17~57\ = CARRY((\inst19|Add0~56_combout\) # (!\inst19|Add17~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~56_combout\,
	datad => VCC,
	cin => \inst19|Add17~55\,
	combout => \inst19|Add17~56_combout\,
	cout => \inst19|Add17~57\);

-- Location: LCCOMB_X19_Y16_N26
\inst19|Add17~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add17~58_combout\ = (\inst19|Add0~58_combout\ & (\inst19|Add17~57\ & VCC)) # (!\inst19|Add0~58_combout\ & (!\inst19|Add17~57\))
-- \inst19|Add17~59\ = CARRY((!\inst19|Add0~58_combout\ & !\inst19|Add17~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~58_combout\,
	datad => VCC,
	cin => \inst19|Add17~57\,
	combout => \inst19|Add17~58_combout\,
	cout => \inst19|Add17~59\);

-- Location: LCCOMB_X19_Y16_N28
\inst19|Add17~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add17~60_combout\ = (\inst19|Add0~60_combout\ & ((GND) # (!\inst19|Add17~59\))) # (!\inst19|Add0~60_combout\ & (\inst19|Add17~59\ $ (GND)))
-- \inst19|Add17~61\ = CARRY((\inst19|Add0~60_combout\) # (!\inst19|Add17~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~60_combout\,
	datad => VCC,
	cin => \inst19|Add17~59\,
	combout => \inst19|Add17~60_combout\,
	cout => \inst19|Add17~61\);

-- Location: LCCOMB_X19_Y16_N30
\inst19|Add17~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add17~62_combout\ = \inst19|Add17~61\ $ (!\inst19|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst19|Add0~62_combout\,
	cin => \inst19|Add17~61\,
	combout => \inst19|Add17~62_combout\);

-- Location: LCCOMB_X20_Y17_N0
\inst19|Add18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add18~0_combout\ = (\inst19|result~7_combout\ & (\inst19|Add17~62_combout\ $ (VCC))) # (!\inst19|result~7_combout\ & (\inst19|Add17~62_combout\ & VCC))
-- \inst19|Add18~1\ = CARRY((\inst19|result~7_combout\ & \inst19|Add17~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|result~7_combout\,
	datab => \inst19|Add17~62_combout\,
	datad => VCC,
	combout => \inst19|Add18~0_combout\,
	cout => \inst19|Add18~1\);

-- Location: LCCOMB_X20_Y17_N2
\inst19|Add18~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add18~2_combout\ = (\inst19|Add18~1\ & (\inst19|Add17~62_combout\ $ ((!\inst19|Add17~2_combout\)))) # (!\inst19|Add18~1\ & ((\inst19|Add17~62_combout\ $ (\inst19|Add17~2_combout\)) # (GND)))
-- \inst19|Add18~3\ = CARRY((\inst19|Add17~62_combout\ $ (!\inst19|Add17~2_combout\)) # (!\inst19|Add18~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add17~62_combout\,
	datab => \inst19|Add17~2_combout\,
	datad => VCC,
	cin => \inst19|Add18~1\,
	combout => \inst19|Add18~2_combout\,
	cout => \inst19|Add18~3\);

-- Location: LCCOMB_X20_Y17_N4
\inst19|Add18~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add18~4_combout\ = (\inst19|Add18~3\ & ((\inst19|Add17~62_combout\ $ (\inst19|Add17~4_combout\)))) # (!\inst19|Add18~3\ & (\inst19|Add17~62_combout\ $ (\inst19|Add17~4_combout\ $ (VCC))))
-- \inst19|Add18~5\ = CARRY((!\inst19|Add18~3\ & (\inst19|Add17~62_combout\ $ (\inst19|Add17~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add17~62_combout\,
	datab => \inst19|Add17~4_combout\,
	datad => VCC,
	cin => \inst19|Add18~3\,
	combout => \inst19|Add18~4_combout\,
	cout => \inst19|Add18~5\);

-- Location: LCCOMB_X20_Y17_N6
\inst19|Add18~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add18~6_combout\ = (\inst19|Add18~5\ & (\inst19|Add17~6_combout\ $ ((!\inst19|Add17~62_combout\)))) # (!\inst19|Add18~5\ & ((\inst19|Add17~6_combout\ $ (\inst19|Add17~62_combout\)) # (GND)))
-- \inst19|Add18~7\ = CARRY((\inst19|Add17~6_combout\ $ (!\inst19|Add17~62_combout\)) # (!\inst19|Add18~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add17~6_combout\,
	datab => \inst19|Add17~62_combout\,
	datad => VCC,
	cin => \inst19|Add18~5\,
	combout => \inst19|Add18~6_combout\,
	cout => \inst19|Add18~7\);

-- Location: LCCOMB_X20_Y17_N8
\inst19|Add18~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add18~8_combout\ = (\inst19|Add18~7\ & ((\inst19|Add17~8_combout\ $ (\inst19|Add17~62_combout\)))) # (!\inst19|Add18~7\ & (\inst19|Add17~8_combout\ $ (\inst19|Add17~62_combout\ $ (VCC))))
-- \inst19|Add18~9\ = CARRY((!\inst19|Add18~7\ & (\inst19|Add17~8_combout\ $ (\inst19|Add17~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add17~8_combout\,
	datab => \inst19|Add17~62_combout\,
	datad => VCC,
	cin => \inst19|Add18~7\,
	combout => \inst19|Add18~8_combout\,
	cout => \inst19|Add18~9\);

-- Location: LCCOMB_X20_Y17_N10
\inst19|Add18~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add18~10_combout\ = (\inst19|Add18~9\ & (\inst19|Add17~10_combout\ $ ((!\inst19|Add17~62_combout\)))) # (!\inst19|Add18~9\ & ((\inst19|Add17~10_combout\ $ (\inst19|Add17~62_combout\)) # (GND)))
-- \inst19|Add18~11\ = CARRY((\inst19|Add17~10_combout\ $ (!\inst19|Add17~62_combout\)) # (!\inst19|Add18~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add17~10_combout\,
	datab => \inst19|Add17~62_combout\,
	datad => VCC,
	cin => \inst19|Add18~9\,
	combout => \inst19|Add18~10_combout\,
	cout => \inst19|Add18~11\);

-- Location: LCCOMB_X20_Y17_N12
\inst19|Add18~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add18~12_combout\ = (\inst19|Add18~11\ & ((\inst19|Add17~62_combout\ $ (\inst19|Add17~12_combout\)))) # (!\inst19|Add18~11\ & (\inst19|Add17~62_combout\ $ (\inst19|Add17~12_combout\ $ (VCC))))
-- \inst19|Add18~13\ = CARRY((!\inst19|Add18~11\ & (\inst19|Add17~62_combout\ $ (\inst19|Add17~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add17~62_combout\,
	datab => \inst19|Add17~12_combout\,
	datad => VCC,
	cin => \inst19|Add18~11\,
	combout => \inst19|Add18~12_combout\,
	cout => \inst19|Add18~13\);

-- Location: LCCOMB_X20_Y17_N14
\inst19|Add18~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add18~14_combout\ = (\inst19|Add18~13\ & (\inst19|Add17~14_combout\ $ ((!\inst19|Add17~62_combout\)))) # (!\inst19|Add18~13\ & ((\inst19|Add17~14_combout\ $ (\inst19|Add17~62_combout\)) # (GND)))
-- \inst19|Add18~15\ = CARRY((\inst19|Add17~14_combout\ $ (!\inst19|Add17~62_combout\)) # (!\inst19|Add18~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add17~14_combout\,
	datab => \inst19|Add17~62_combout\,
	datad => VCC,
	cin => \inst19|Add18~13\,
	combout => \inst19|Add18~14_combout\,
	cout => \inst19|Add18~15\);

-- Location: LCCOMB_X20_Y17_N16
\inst19|Add18~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add18~16_combout\ = (\inst19|Add18~15\ & ((\inst19|Add17~16_combout\ $ (\inst19|Add17~62_combout\)))) # (!\inst19|Add18~15\ & (\inst19|Add17~16_combout\ $ (\inst19|Add17~62_combout\ $ (VCC))))
-- \inst19|Add18~17\ = CARRY((!\inst19|Add18~15\ & (\inst19|Add17~16_combout\ $ (\inst19|Add17~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add17~16_combout\,
	datab => \inst19|Add17~62_combout\,
	datad => VCC,
	cin => \inst19|Add18~15\,
	combout => \inst19|Add18~16_combout\,
	cout => \inst19|Add18~17\);

-- Location: LCCOMB_X20_Y17_N18
\inst19|Add18~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add18~18_combout\ = (\inst19|Add18~17\ & (\inst19|Add17~62_combout\ $ ((!\inst19|Add17~18_combout\)))) # (!\inst19|Add18~17\ & ((\inst19|Add17~62_combout\ $ (\inst19|Add17~18_combout\)) # (GND)))
-- \inst19|Add18~19\ = CARRY((\inst19|Add17~62_combout\ $ (!\inst19|Add17~18_combout\)) # (!\inst19|Add18~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add17~62_combout\,
	datab => \inst19|Add17~18_combout\,
	datad => VCC,
	cin => \inst19|Add18~17\,
	combout => \inst19|Add18~18_combout\,
	cout => \inst19|Add18~19\);

-- Location: LCCOMB_X20_Y17_N20
\inst19|Add18~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add18~20_combout\ = (\inst19|Add18~19\ & ((\inst19|Add17~62_combout\ $ (\inst19|Add17~20_combout\)))) # (!\inst19|Add18~19\ & (\inst19|Add17~62_combout\ $ (\inst19|Add17~20_combout\ $ (VCC))))
-- \inst19|Add18~21\ = CARRY((!\inst19|Add18~19\ & (\inst19|Add17~62_combout\ $ (\inst19|Add17~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add17~62_combout\,
	datab => \inst19|Add17~20_combout\,
	datad => VCC,
	cin => \inst19|Add18~19\,
	combout => \inst19|Add18~20_combout\,
	cout => \inst19|Add18~21\);

-- Location: LCCOMB_X20_Y17_N22
\inst19|Add18~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add18~22_combout\ = (\inst19|Add18~21\ & (\inst19|Add17~62_combout\ $ ((!\inst19|Add17~22_combout\)))) # (!\inst19|Add18~21\ & ((\inst19|Add17~62_combout\ $ (\inst19|Add17~22_combout\)) # (GND)))
-- \inst19|Add18~23\ = CARRY((\inst19|Add17~62_combout\ $ (!\inst19|Add17~22_combout\)) # (!\inst19|Add18~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add17~62_combout\,
	datab => \inst19|Add17~22_combout\,
	datad => VCC,
	cin => \inst19|Add18~21\,
	combout => \inst19|Add18~22_combout\,
	cout => \inst19|Add18~23\);

-- Location: LCCOMB_X20_Y17_N24
\inst19|Add18~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add18~24_combout\ = (\inst19|Add18~23\ & ((\inst19|Add17~24_combout\ $ (\inst19|Add17~62_combout\)))) # (!\inst19|Add18~23\ & (\inst19|Add17~24_combout\ $ (\inst19|Add17~62_combout\ $ (VCC))))
-- \inst19|Add18~25\ = CARRY((!\inst19|Add18~23\ & (\inst19|Add17~24_combout\ $ (\inst19|Add17~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add17~24_combout\,
	datab => \inst19|Add17~62_combout\,
	datad => VCC,
	cin => \inst19|Add18~23\,
	combout => \inst19|Add18~24_combout\,
	cout => \inst19|Add18~25\);

-- Location: LCCOMB_X20_Y17_N26
\inst19|Add18~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add18~26_combout\ = (\inst19|Add18~25\ & (\inst19|Add17~62_combout\ $ ((!\inst19|Add17~26_combout\)))) # (!\inst19|Add18~25\ & ((\inst19|Add17~62_combout\ $ (\inst19|Add17~26_combout\)) # (GND)))
-- \inst19|Add18~27\ = CARRY((\inst19|Add17~62_combout\ $ (!\inst19|Add17~26_combout\)) # (!\inst19|Add18~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add17~62_combout\,
	datab => \inst19|Add17~26_combout\,
	datad => VCC,
	cin => \inst19|Add18~25\,
	combout => \inst19|Add18~26_combout\,
	cout => \inst19|Add18~27\);

-- Location: LCCOMB_X20_Y17_N28
\inst19|Add18~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add18~28_combout\ = (\inst19|Add18~27\ & ((\inst19|Add17~62_combout\ $ (\inst19|Add17~28_combout\)))) # (!\inst19|Add18~27\ & (\inst19|Add17~62_combout\ $ (\inst19|Add17~28_combout\ $ (VCC))))
-- \inst19|Add18~29\ = CARRY((!\inst19|Add18~27\ & (\inst19|Add17~62_combout\ $ (\inst19|Add17~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add17~62_combout\,
	datab => \inst19|Add17~28_combout\,
	datad => VCC,
	cin => \inst19|Add18~27\,
	combout => \inst19|Add18~28_combout\,
	cout => \inst19|Add18~29\);

-- Location: LCCOMB_X20_Y17_N30
\inst19|Add18~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add18~30_combout\ = (\inst19|Add18~29\ & (\inst19|Add17~30_combout\ $ ((!\inst19|Add17~62_combout\)))) # (!\inst19|Add18~29\ & ((\inst19|Add17~30_combout\ $ (\inst19|Add17~62_combout\)) # (GND)))
-- \inst19|Add18~31\ = CARRY((\inst19|Add17~30_combout\ $ (!\inst19|Add17~62_combout\)) # (!\inst19|Add18~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add17~30_combout\,
	datab => \inst19|Add17~62_combout\,
	datad => VCC,
	cin => \inst19|Add18~29\,
	combout => \inst19|Add18~30_combout\,
	cout => \inst19|Add18~31\);

-- Location: LCCOMB_X20_Y16_N0
\inst19|Add18~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add18~32_combout\ = (\inst19|Add18~31\ & ((\inst19|Add17~62_combout\ $ (\inst19|Add17~32_combout\)))) # (!\inst19|Add18~31\ & (\inst19|Add17~62_combout\ $ (\inst19|Add17~32_combout\ $ (VCC))))
-- \inst19|Add18~33\ = CARRY((!\inst19|Add18~31\ & (\inst19|Add17~62_combout\ $ (\inst19|Add17~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add17~62_combout\,
	datab => \inst19|Add17~32_combout\,
	datad => VCC,
	cin => \inst19|Add18~31\,
	combout => \inst19|Add18~32_combout\,
	cout => \inst19|Add18~33\);

-- Location: LCCOMB_X20_Y16_N2
\inst19|Add18~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add18~34_combout\ = (\inst19|Add18~33\ & (\inst19|Add17~62_combout\ $ ((!\inst19|Add17~34_combout\)))) # (!\inst19|Add18~33\ & ((\inst19|Add17~62_combout\ $ (\inst19|Add17~34_combout\)) # (GND)))
-- \inst19|Add18~35\ = CARRY((\inst19|Add17~62_combout\ $ (!\inst19|Add17~34_combout\)) # (!\inst19|Add18~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add17~62_combout\,
	datab => \inst19|Add17~34_combout\,
	datad => VCC,
	cin => \inst19|Add18~33\,
	combout => \inst19|Add18~34_combout\,
	cout => \inst19|Add18~35\);

-- Location: LCCOMB_X20_Y16_N4
\inst19|Add18~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add18~36_combout\ = (\inst19|Add18~35\ & ((\inst19|Add17~62_combout\ $ (\inst19|Add17~36_combout\)))) # (!\inst19|Add18~35\ & (\inst19|Add17~62_combout\ $ (\inst19|Add17~36_combout\ $ (VCC))))
-- \inst19|Add18~37\ = CARRY((!\inst19|Add18~35\ & (\inst19|Add17~62_combout\ $ (\inst19|Add17~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add17~62_combout\,
	datab => \inst19|Add17~36_combout\,
	datad => VCC,
	cin => \inst19|Add18~35\,
	combout => \inst19|Add18~36_combout\,
	cout => \inst19|Add18~37\);

-- Location: LCCOMB_X20_Y16_N6
\inst19|Add18~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add18~38_combout\ = (\inst19|Add18~37\ & (\inst19|Add17~62_combout\ $ ((!\inst19|Add17~38_combout\)))) # (!\inst19|Add18~37\ & ((\inst19|Add17~62_combout\ $ (\inst19|Add17~38_combout\)) # (GND)))
-- \inst19|Add18~39\ = CARRY((\inst19|Add17~62_combout\ $ (!\inst19|Add17~38_combout\)) # (!\inst19|Add18~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add17~62_combout\,
	datab => \inst19|Add17~38_combout\,
	datad => VCC,
	cin => \inst19|Add18~37\,
	combout => \inst19|Add18~38_combout\,
	cout => \inst19|Add18~39\);

-- Location: LCCOMB_X20_Y16_N8
\inst19|Add18~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add18~40_combout\ = (\inst19|Add18~39\ & ((\inst19|Add17~62_combout\ $ (\inst19|Add17~40_combout\)))) # (!\inst19|Add18~39\ & (\inst19|Add17~62_combout\ $ (\inst19|Add17~40_combout\ $ (VCC))))
-- \inst19|Add18~41\ = CARRY((!\inst19|Add18~39\ & (\inst19|Add17~62_combout\ $ (\inst19|Add17~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add17~62_combout\,
	datab => \inst19|Add17~40_combout\,
	datad => VCC,
	cin => \inst19|Add18~39\,
	combout => \inst19|Add18~40_combout\,
	cout => \inst19|Add18~41\);

-- Location: LCCOMB_X20_Y16_N10
\inst19|Add18~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add18~42_combout\ = (\inst19|Add18~41\ & (\inst19|Add17~62_combout\ $ ((!\inst19|Add17~42_combout\)))) # (!\inst19|Add18~41\ & ((\inst19|Add17~62_combout\ $ (\inst19|Add17~42_combout\)) # (GND)))
-- \inst19|Add18~43\ = CARRY((\inst19|Add17~62_combout\ $ (!\inst19|Add17~42_combout\)) # (!\inst19|Add18~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add17~62_combout\,
	datab => \inst19|Add17~42_combout\,
	datad => VCC,
	cin => \inst19|Add18~41\,
	combout => \inst19|Add18~42_combout\,
	cout => \inst19|Add18~43\);

-- Location: LCCOMB_X20_Y16_N12
\inst19|Add18~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add18~44_combout\ = (\inst19|Add18~43\ & ((\inst19|Add17~44_combout\ $ (\inst19|Add17~62_combout\)))) # (!\inst19|Add18~43\ & (\inst19|Add17~44_combout\ $ (\inst19|Add17~62_combout\ $ (VCC))))
-- \inst19|Add18~45\ = CARRY((!\inst19|Add18~43\ & (\inst19|Add17~44_combout\ $ (\inst19|Add17~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add17~44_combout\,
	datab => \inst19|Add17~62_combout\,
	datad => VCC,
	cin => \inst19|Add18~43\,
	combout => \inst19|Add18~44_combout\,
	cout => \inst19|Add18~45\);

-- Location: LCCOMB_X20_Y16_N14
\inst19|Add18~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add18~46_combout\ = (\inst19|Add18~45\ & (\inst19|Add17~46_combout\ $ ((!\inst19|Add17~62_combout\)))) # (!\inst19|Add18~45\ & ((\inst19|Add17~46_combout\ $ (\inst19|Add17~62_combout\)) # (GND)))
-- \inst19|Add18~47\ = CARRY((\inst19|Add17~46_combout\ $ (!\inst19|Add17~62_combout\)) # (!\inst19|Add18~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add17~46_combout\,
	datab => \inst19|Add17~62_combout\,
	datad => VCC,
	cin => \inst19|Add18~45\,
	combout => \inst19|Add18~46_combout\,
	cout => \inst19|Add18~47\);

-- Location: LCCOMB_X20_Y16_N16
\inst19|Add18~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add18~48_combout\ = (\inst19|Add18~47\ & ((\inst19|Add17~48_combout\ $ (\inst19|Add17~62_combout\)))) # (!\inst19|Add18~47\ & (\inst19|Add17~48_combout\ $ (\inst19|Add17~62_combout\ $ (VCC))))
-- \inst19|Add18~49\ = CARRY((!\inst19|Add18~47\ & (\inst19|Add17~48_combout\ $ (\inst19|Add17~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add17~48_combout\,
	datab => \inst19|Add17~62_combout\,
	datad => VCC,
	cin => \inst19|Add18~47\,
	combout => \inst19|Add18~48_combout\,
	cout => \inst19|Add18~49\);

-- Location: LCCOMB_X20_Y16_N18
\inst19|Add18~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add18~50_combout\ = (\inst19|Add18~49\ & (\inst19|Add17~50_combout\ $ ((!\inst19|Add17~62_combout\)))) # (!\inst19|Add18~49\ & ((\inst19|Add17~50_combout\ $ (\inst19|Add17~62_combout\)) # (GND)))
-- \inst19|Add18~51\ = CARRY((\inst19|Add17~50_combout\ $ (!\inst19|Add17~62_combout\)) # (!\inst19|Add18~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add17~50_combout\,
	datab => \inst19|Add17~62_combout\,
	datad => VCC,
	cin => \inst19|Add18~49\,
	combout => \inst19|Add18~50_combout\,
	cout => \inst19|Add18~51\);

-- Location: LCCOMB_X20_Y16_N20
\inst19|Add18~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add18~52_combout\ = (\inst19|Add18~51\ & ((\inst19|Add17~52_combout\ $ (\inst19|Add17~62_combout\)))) # (!\inst19|Add18~51\ & (\inst19|Add17~52_combout\ $ (\inst19|Add17~62_combout\ $ (VCC))))
-- \inst19|Add18~53\ = CARRY((!\inst19|Add18~51\ & (\inst19|Add17~52_combout\ $ (\inst19|Add17~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add17~52_combout\,
	datab => \inst19|Add17~62_combout\,
	datad => VCC,
	cin => \inst19|Add18~51\,
	combout => \inst19|Add18~52_combout\,
	cout => \inst19|Add18~53\);

-- Location: LCCOMB_X20_Y16_N22
\inst19|Add18~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add18~54_combout\ = (\inst19|Add18~53\ & (\inst19|Add17~54_combout\ $ ((!\inst19|Add17~62_combout\)))) # (!\inst19|Add18~53\ & ((\inst19|Add17~54_combout\ $ (\inst19|Add17~62_combout\)) # (GND)))
-- \inst19|Add18~55\ = CARRY((\inst19|Add17~54_combout\ $ (!\inst19|Add17~62_combout\)) # (!\inst19|Add18~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add17~54_combout\,
	datab => \inst19|Add17~62_combout\,
	datad => VCC,
	cin => \inst19|Add18~53\,
	combout => \inst19|Add18~54_combout\,
	cout => \inst19|Add18~55\);

-- Location: LCCOMB_X20_Y16_N24
\inst19|Add18~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add18~56_combout\ = (\inst19|Add18~55\ & ((\inst19|Add17~56_combout\ $ (\inst19|Add17~62_combout\)))) # (!\inst19|Add18~55\ & (\inst19|Add17~56_combout\ $ (\inst19|Add17~62_combout\ $ (VCC))))
-- \inst19|Add18~57\ = CARRY((!\inst19|Add18~55\ & (\inst19|Add17~56_combout\ $ (\inst19|Add17~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add17~56_combout\,
	datab => \inst19|Add17~62_combout\,
	datad => VCC,
	cin => \inst19|Add18~55\,
	combout => \inst19|Add18~56_combout\,
	cout => \inst19|Add18~57\);

-- Location: LCCOMB_X20_Y16_N26
\inst19|Add18~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add18~58_combout\ = (\inst19|Add18~57\ & (\inst19|Add17~58_combout\ $ ((!\inst19|Add17~62_combout\)))) # (!\inst19|Add18~57\ & ((\inst19|Add17~58_combout\ $ (\inst19|Add17~62_combout\)) # (GND)))
-- \inst19|Add18~59\ = CARRY((\inst19|Add17~58_combout\ $ (!\inst19|Add17~62_combout\)) # (!\inst19|Add18~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add17~58_combout\,
	datab => \inst19|Add17~62_combout\,
	datad => VCC,
	cin => \inst19|Add18~57\,
	combout => \inst19|Add18~58_combout\,
	cout => \inst19|Add18~59\);

-- Location: LCCOMB_X20_Y16_N28
\inst19|Add18~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add18~60_combout\ = (\inst19|Add18~59\ & ((\inst19|Add17~62_combout\ $ (\inst19|Add17~60_combout\)))) # (!\inst19|Add18~59\ & (\inst19|Add17~62_combout\ $ (\inst19|Add17~60_combout\ $ (VCC))))
-- \inst19|Add18~61\ = CARRY((!\inst19|Add18~59\ & (\inst19|Add17~62_combout\ $ (\inst19|Add17~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add17~62_combout\,
	datab => \inst19|Add17~60_combout\,
	datad => VCC,
	cin => \inst19|Add18~59\,
	combout => \inst19|Add18~60_combout\,
	cout => \inst19|Add18~61\);

-- Location: LCCOMB_X20_Y16_N30
\inst19|Add18~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add18~62_combout\ = \inst19|Add18~61\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst19|Add18~61\,
	combout => \inst19|Add18~62_combout\);

-- Location: LCCOMB_X17_Y18_N4
\inst19|Add13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add13~0_combout\ = \inst19|Add0~6_combout\ $ (VCC)
-- \inst19|Add13~1\ = CARRY(\inst19|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~6_combout\,
	datad => VCC,
	combout => \inst19|Add13~0_combout\,
	cout => \inst19|Add13~1\);

-- Location: LCCOMB_X17_Y18_N6
\inst19|Add13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add13~2_combout\ = (\inst19|Add0~8_combout\ & (\inst19|Add13~1\ & VCC)) # (!\inst19|Add0~8_combout\ & (!\inst19|Add13~1\))
-- \inst19|Add13~3\ = CARRY((!\inst19|Add0~8_combout\ & !\inst19|Add13~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~8_combout\,
	datad => VCC,
	cin => \inst19|Add13~1\,
	combout => \inst19|Add13~2_combout\,
	cout => \inst19|Add13~3\);

-- Location: LCCOMB_X17_Y18_N8
\inst19|Add13~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add13~4_combout\ = (\inst19|Add0~10_combout\ & (\inst19|Add13~3\ $ (GND))) # (!\inst19|Add0~10_combout\ & (!\inst19|Add13~3\ & VCC))
-- \inst19|Add13~5\ = CARRY((\inst19|Add0~10_combout\ & !\inst19|Add13~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~10_combout\,
	datad => VCC,
	cin => \inst19|Add13~3\,
	combout => \inst19|Add13~4_combout\,
	cout => \inst19|Add13~5\);

-- Location: LCCOMB_X17_Y18_N10
\inst19|Add13~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add13~6_combout\ = (\inst19|Add0~12_combout\ & (!\inst19|Add13~5\)) # (!\inst19|Add0~12_combout\ & ((\inst19|Add13~5\) # (GND)))
-- \inst19|Add13~7\ = CARRY((!\inst19|Add13~5\) # (!\inst19|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~12_combout\,
	datad => VCC,
	cin => \inst19|Add13~5\,
	combout => \inst19|Add13~6_combout\,
	cout => \inst19|Add13~7\);

-- Location: LCCOMB_X17_Y18_N12
\inst19|Add13~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add13~8_combout\ = (\inst19|Add0~14_combout\ & ((GND) # (!\inst19|Add13~7\))) # (!\inst19|Add0~14_combout\ & (\inst19|Add13~7\ $ (GND)))
-- \inst19|Add13~9\ = CARRY((\inst19|Add0~14_combout\) # (!\inst19|Add13~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~14_combout\,
	datad => VCC,
	cin => \inst19|Add13~7\,
	combout => \inst19|Add13~8_combout\,
	cout => \inst19|Add13~9\);

-- Location: LCCOMB_X17_Y18_N14
\inst19|Add13~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add13~10_combout\ = (\inst19|Add0~16_combout\ & (\inst19|Add13~9\ & VCC)) # (!\inst19|Add0~16_combout\ & (!\inst19|Add13~9\))
-- \inst19|Add13~11\ = CARRY((!\inst19|Add0~16_combout\ & !\inst19|Add13~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~16_combout\,
	datad => VCC,
	cin => \inst19|Add13~9\,
	combout => \inst19|Add13~10_combout\,
	cout => \inst19|Add13~11\);

-- Location: LCCOMB_X17_Y18_N16
\inst19|Add13~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add13~12_combout\ = (\inst19|Add0~18_combout\ & ((GND) # (!\inst19|Add13~11\))) # (!\inst19|Add0~18_combout\ & (\inst19|Add13~11\ $ (GND)))
-- \inst19|Add13~13\ = CARRY((\inst19|Add0~18_combout\) # (!\inst19|Add13~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~18_combout\,
	datad => VCC,
	cin => \inst19|Add13~11\,
	combout => \inst19|Add13~12_combout\,
	cout => \inst19|Add13~13\);

-- Location: LCCOMB_X17_Y18_N18
\inst19|Add13~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add13~14_combout\ = (\inst19|Add0~20_combout\ & (\inst19|Add13~13\ & VCC)) # (!\inst19|Add0~20_combout\ & (!\inst19|Add13~13\))
-- \inst19|Add13~15\ = CARRY((!\inst19|Add0~20_combout\ & !\inst19|Add13~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~20_combout\,
	datad => VCC,
	cin => \inst19|Add13~13\,
	combout => \inst19|Add13~14_combout\,
	cout => \inst19|Add13~15\);

-- Location: LCCOMB_X17_Y18_N20
\inst19|Add13~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add13~16_combout\ = (\inst19|Add0~22_combout\ & ((GND) # (!\inst19|Add13~15\))) # (!\inst19|Add0~22_combout\ & (\inst19|Add13~15\ $ (GND)))
-- \inst19|Add13~17\ = CARRY((\inst19|Add0~22_combout\) # (!\inst19|Add13~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~22_combout\,
	datad => VCC,
	cin => \inst19|Add13~15\,
	combout => \inst19|Add13~16_combout\,
	cout => \inst19|Add13~17\);

-- Location: LCCOMB_X17_Y18_N22
\inst19|Add13~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add13~18_combout\ = (\inst19|Add0~24_combout\ & (\inst19|Add13~17\ & VCC)) # (!\inst19|Add0~24_combout\ & (!\inst19|Add13~17\))
-- \inst19|Add13~19\ = CARRY((!\inst19|Add0~24_combout\ & !\inst19|Add13~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~24_combout\,
	datad => VCC,
	cin => \inst19|Add13~17\,
	combout => \inst19|Add13~18_combout\,
	cout => \inst19|Add13~19\);

-- Location: LCCOMB_X17_Y18_N24
\inst19|Add13~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add13~20_combout\ = (\inst19|Add0~26_combout\ & ((GND) # (!\inst19|Add13~19\))) # (!\inst19|Add0~26_combout\ & (\inst19|Add13~19\ $ (GND)))
-- \inst19|Add13~21\ = CARRY((\inst19|Add0~26_combout\) # (!\inst19|Add13~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~26_combout\,
	datad => VCC,
	cin => \inst19|Add13~19\,
	combout => \inst19|Add13~20_combout\,
	cout => \inst19|Add13~21\);

-- Location: LCCOMB_X17_Y18_N26
\inst19|Add13~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add13~22_combout\ = (\inst19|Add0~28_combout\ & (\inst19|Add13~21\ & VCC)) # (!\inst19|Add0~28_combout\ & (!\inst19|Add13~21\))
-- \inst19|Add13~23\ = CARRY((!\inst19|Add0~28_combout\ & !\inst19|Add13~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~28_combout\,
	datad => VCC,
	cin => \inst19|Add13~21\,
	combout => \inst19|Add13~22_combout\,
	cout => \inst19|Add13~23\);

-- Location: LCCOMB_X17_Y18_N28
\inst19|Add13~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add13~24_combout\ = (\inst19|Add0~30_combout\ & ((GND) # (!\inst19|Add13~23\))) # (!\inst19|Add0~30_combout\ & (\inst19|Add13~23\ $ (GND)))
-- \inst19|Add13~25\ = CARRY((\inst19|Add0~30_combout\) # (!\inst19|Add13~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~30_combout\,
	datad => VCC,
	cin => \inst19|Add13~23\,
	combout => \inst19|Add13~24_combout\,
	cout => \inst19|Add13~25\);

-- Location: LCCOMB_X17_Y18_N30
\inst19|Add13~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add13~26_combout\ = (\inst19|Add0~32_combout\ & (\inst19|Add13~25\ & VCC)) # (!\inst19|Add0~32_combout\ & (!\inst19|Add13~25\))
-- \inst19|Add13~27\ = CARRY((!\inst19|Add0~32_combout\ & !\inst19|Add13~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~32_combout\,
	datad => VCC,
	cin => \inst19|Add13~25\,
	combout => \inst19|Add13~26_combout\,
	cout => \inst19|Add13~27\);

-- Location: LCCOMB_X17_Y17_N0
\inst19|Add13~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add13~28_combout\ = (\inst19|Add0~34_combout\ & ((GND) # (!\inst19|Add13~27\))) # (!\inst19|Add0~34_combout\ & (\inst19|Add13~27\ $ (GND)))
-- \inst19|Add13~29\ = CARRY((\inst19|Add0~34_combout\) # (!\inst19|Add13~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~34_combout\,
	datad => VCC,
	cin => \inst19|Add13~27\,
	combout => \inst19|Add13~28_combout\,
	cout => \inst19|Add13~29\);

-- Location: LCCOMB_X17_Y17_N2
\inst19|Add13~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add13~30_combout\ = (\inst19|Add0~36_combout\ & (\inst19|Add13~29\ & VCC)) # (!\inst19|Add0~36_combout\ & (!\inst19|Add13~29\))
-- \inst19|Add13~31\ = CARRY((!\inst19|Add0~36_combout\ & !\inst19|Add13~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~36_combout\,
	datad => VCC,
	cin => \inst19|Add13~29\,
	combout => \inst19|Add13~30_combout\,
	cout => \inst19|Add13~31\);

-- Location: LCCOMB_X17_Y17_N4
\inst19|Add13~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add13~32_combout\ = (\inst19|Add0~38_combout\ & ((GND) # (!\inst19|Add13~31\))) # (!\inst19|Add0~38_combout\ & (\inst19|Add13~31\ $ (GND)))
-- \inst19|Add13~33\ = CARRY((\inst19|Add0~38_combout\) # (!\inst19|Add13~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~38_combout\,
	datad => VCC,
	cin => \inst19|Add13~31\,
	combout => \inst19|Add13~32_combout\,
	cout => \inst19|Add13~33\);

-- Location: LCCOMB_X17_Y17_N6
\inst19|Add13~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add13~34_combout\ = (\inst19|Add0~40_combout\ & (\inst19|Add13~33\ & VCC)) # (!\inst19|Add0~40_combout\ & (!\inst19|Add13~33\))
-- \inst19|Add13~35\ = CARRY((!\inst19|Add0~40_combout\ & !\inst19|Add13~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~40_combout\,
	datad => VCC,
	cin => \inst19|Add13~33\,
	combout => \inst19|Add13~34_combout\,
	cout => \inst19|Add13~35\);

-- Location: LCCOMB_X17_Y17_N8
\inst19|Add13~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add13~36_combout\ = (\inst19|Add0~42_combout\ & ((GND) # (!\inst19|Add13~35\))) # (!\inst19|Add0~42_combout\ & (\inst19|Add13~35\ $ (GND)))
-- \inst19|Add13~37\ = CARRY((\inst19|Add0~42_combout\) # (!\inst19|Add13~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~42_combout\,
	datad => VCC,
	cin => \inst19|Add13~35\,
	combout => \inst19|Add13~36_combout\,
	cout => \inst19|Add13~37\);

-- Location: LCCOMB_X17_Y17_N10
\inst19|Add13~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add13~38_combout\ = (\inst19|Add0~44_combout\ & (\inst19|Add13~37\ & VCC)) # (!\inst19|Add0~44_combout\ & (!\inst19|Add13~37\))
-- \inst19|Add13~39\ = CARRY((!\inst19|Add0~44_combout\ & !\inst19|Add13~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~44_combout\,
	datad => VCC,
	cin => \inst19|Add13~37\,
	combout => \inst19|Add13~38_combout\,
	cout => \inst19|Add13~39\);

-- Location: LCCOMB_X17_Y17_N12
\inst19|Add13~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add13~40_combout\ = (\inst19|Add0~46_combout\ & ((GND) # (!\inst19|Add13~39\))) # (!\inst19|Add0~46_combout\ & (\inst19|Add13~39\ $ (GND)))
-- \inst19|Add13~41\ = CARRY((\inst19|Add0~46_combout\) # (!\inst19|Add13~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~46_combout\,
	datad => VCC,
	cin => \inst19|Add13~39\,
	combout => \inst19|Add13~40_combout\,
	cout => \inst19|Add13~41\);

-- Location: LCCOMB_X17_Y17_N14
\inst19|Add13~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add13~42_combout\ = (\inst19|Add0~48_combout\ & (\inst19|Add13~41\ & VCC)) # (!\inst19|Add0~48_combout\ & (!\inst19|Add13~41\))
-- \inst19|Add13~43\ = CARRY((!\inst19|Add0~48_combout\ & !\inst19|Add13~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~48_combout\,
	datad => VCC,
	cin => \inst19|Add13~41\,
	combout => \inst19|Add13~42_combout\,
	cout => \inst19|Add13~43\);

-- Location: LCCOMB_X17_Y17_N16
\inst19|Add13~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add13~44_combout\ = (\inst19|Add0~50_combout\ & ((GND) # (!\inst19|Add13~43\))) # (!\inst19|Add0~50_combout\ & (\inst19|Add13~43\ $ (GND)))
-- \inst19|Add13~45\ = CARRY((\inst19|Add0~50_combout\) # (!\inst19|Add13~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~50_combout\,
	datad => VCC,
	cin => \inst19|Add13~43\,
	combout => \inst19|Add13~44_combout\,
	cout => \inst19|Add13~45\);

-- Location: LCCOMB_X17_Y17_N18
\inst19|Add13~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add13~46_combout\ = (\inst19|Add0~52_combout\ & (\inst19|Add13~45\ & VCC)) # (!\inst19|Add0~52_combout\ & (!\inst19|Add13~45\))
-- \inst19|Add13~47\ = CARRY((!\inst19|Add0~52_combout\ & !\inst19|Add13~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~52_combout\,
	datad => VCC,
	cin => \inst19|Add13~45\,
	combout => \inst19|Add13~46_combout\,
	cout => \inst19|Add13~47\);

-- Location: LCCOMB_X17_Y17_N20
\inst19|Add13~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add13~48_combout\ = (\inst19|Add0~54_combout\ & ((GND) # (!\inst19|Add13~47\))) # (!\inst19|Add0~54_combout\ & (\inst19|Add13~47\ $ (GND)))
-- \inst19|Add13~49\ = CARRY((\inst19|Add0~54_combout\) # (!\inst19|Add13~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~54_combout\,
	datad => VCC,
	cin => \inst19|Add13~47\,
	combout => \inst19|Add13~48_combout\,
	cout => \inst19|Add13~49\);

-- Location: LCCOMB_X17_Y17_N22
\inst19|Add13~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add13~50_combout\ = (\inst19|Add0~56_combout\ & (\inst19|Add13~49\ & VCC)) # (!\inst19|Add0~56_combout\ & (!\inst19|Add13~49\))
-- \inst19|Add13~51\ = CARRY((!\inst19|Add0~56_combout\ & !\inst19|Add13~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~56_combout\,
	datad => VCC,
	cin => \inst19|Add13~49\,
	combout => \inst19|Add13~50_combout\,
	cout => \inst19|Add13~51\);

-- Location: LCCOMB_X17_Y17_N24
\inst19|Add13~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add13~52_combout\ = (\inst19|Add0~58_combout\ & ((GND) # (!\inst19|Add13~51\))) # (!\inst19|Add0~58_combout\ & (\inst19|Add13~51\ $ (GND)))
-- \inst19|Add13~53\ = CARRY((\inst19|Add0~58_combout\) # (!\inst19|Add13~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~58_combout\,
	datad => VCC,
	cin => \inst19|Add13~51\,
	combout => \inst19|Add13~52_combout\,
	cout => \inst19|Add13~53\);

-- Location: LCCOMB_X17_Y17_N26
\inst19|Add13~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add13~54_combout\ = (\inst19|Add0~60_combout\ & (\inst19|Add13~53\ & VCC)) # (!\inst19|Add0~60_combout\ & (!\inst19|Add13~53\))
-- \inst19|Add13~55\ = CARRY((!\inst19|Add0~60_combout\ & !\inst19|Add13~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~60_combout\,
	datad => VCC,
	cin => \inst19|Add13~53\,
	combout => \inst19|Add13~54_combout\,
	cout => \inst19|Add13~55\);

-- Location: LCCOMB_X17_Y17_N28
\inst19|Add13~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add13~56_combout\ = \inst19|Add0~62_combout\ $ (\inst19|Add13~55\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~62_combout\,
	cin => \inst19|Add13~55\,
	combout => \inst19|Add13~56_combout\);

-- Location: LCCOMB_X16_Y18_N0
\inst19|Add14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add14~0_combout\ = (\inst19|Add13~56_combout\ & (\inst19|result~8_combout\ $ (VCC))) # (!\inst19|Add13~56_combout\ & (\inst19|result~8_combout\ & VCC))
-- \inst19|Add14~1\ = CARRY((\inst19|Add13~56_combout\ & \inst19|result~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add13~56_combout\,
	datab => \inst19|result~8_combout\,
	datad => VCC,
	combout => \inst19|Add14~0_combout\,
	cout => \inst19|Add14~1\);

-- Location: LCCOMB_X16_Y18_N2
\inst19|Add14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add14~2_combout\ = (\inst19|Add14~1\ & (\inst19|Add13~56_combout\ $ ((!\inst19|Add0~2_combout\)))) # (!\inst19|Add14~1\ & ((\inst19|Add13~56_combout\ $ (\inst19|Add0~2_combout\)) # (GND)))
-- \inst19|Add14~3\ = CARRY((\inst19|Add13~56_combout\ $ (!\inst19|Add0~2_combout\)) # (!\inst19|Add14~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add13~56_combout\,
	datab => \inst19|Add0~2_combout\,
	datad => VCC,
	cin => \inst19|Add14~1\,
	combout => \inst19|Add14~2_combout\,
	cout => \inst19|Add14~3\);

-- Location: LCCOMB_X16_Y18_N4
\inst19|Add14~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add14~4_combout\ = (\inst19|Add14~3\ & ((\inst19|Add13~56_combout\ $ (\inst19|Add0~4_combout\)))) # (!\inst19|Add14~3\ & (\inst19|Add13~56_combout\ $ (\inst19|Add0~4_combout\ $ (VCC))))
-- \inst19|Add14~5\ = CARRY((!\inst19|Add14~3\ & (\inst19|Add13~56_combout\ $ (\inst19|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add13~56_combout\,
	datab => \inst19|Add0~4_combout\,
	datad => VCC,
	cin => \inst19|Add14~3\,
	combout => \inst19|Add14~4_combout\,
	cout => \inst19|Add14~5\);

-- Location: LCCOMB_X16_Y18_N6
\inst19|Add14~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add14~6_combout\ = (\inst19|Add14~5\ & (\inst19|Add13~0_combout\ $ ((!\inst19|Add13~56_combout\)))) # (!\inst19|Add14~5\ & ((\inst19|Add13~0_combout\ $ (\inst19|Add13~56_combout\)) # (GND)))
-- \inst19|Add14~7\ = CARRY((\inst19|Add13~0_combout\ $ (!\inst19|Add13~56_combout\)) # (!\inst19|Add14~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add13~0_combout\,
	datab => \inst19|Add13~56_combout\,
	datad => VCC,
	cin => \inst19|Add14~5\,
	combout => \inst19|Add14~6_combout\,
	cout => \inst19|Add14~7\);

-- Location: LCCOMB_X16_Y18_N8
\inst19|Add14~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add14~8_combout\ = (\inst19|Add14~7\ & ((\inst19|Add13~2_combout\ $ (\inst19|Add13~56_combout\)))) # (!\inst19|Add14~7\ & (\inst19|Add13~2_combout\ $ (\inst19|Add13~56_combout\ $ (VCC))))
-- \inst19|Add14~9\ = CARRY((!\inst19|Add14~7\ & (\inst19|Add13~2_combout\ $ (\inst19|Add13~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add13~2_combout\,
	datab => \inst19|Add13~56_combout\,
	datad => VCC,
	cin => \inst19|Add14~7\,
	combout => \inst19|Add14~8_combout\,
	cout => \inst19|Add14~9\);

-- Location: LCCOMB_X16_Y18_N10
\inst19|Add14~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add14~10_combout\ = (\inst19|Add14~9\ & (\inst19|Add13~4_combout\ $ ((!\inst19|Add13~56_combout\)))) # (!\inst19|Add14~9\ & ((\inst19|Add13~4_combout\ $ (\inst19|Add13~56_combout\)) # (GND)))
-- \inst19|Add14~11\ = CARRY((\inst19|Add13~4_combout\ $ (!\inst19|Add13~56_combout\)) # (!\inst19|Add14~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add13~4_combout\,
	datab => \inst19|Add13~56_combout\,
	datad => VCC,
	cin => \inst19|Add14~9\,
	combout => \inst19|Add14~10_combout\,
	cout => \inst19|Add14~11\);

-- Location: LCCOMB_X16_Y18_N12
\inst19|Add14~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add14~12_combout\ = (\inst19|Add14~11\ & ((\inst19|Add13~56_combout\ $ (\inst19|Add13~6_combout\)))) # (!\inst19|Add14~11\ & (\inst19|Add13~56_combout\ $ (\inst19|Add13~6_combout\ $ (VCC))))
-- \inst19|Add14~13\ = CARRY((!\inst19|Add14~11\ & (\inst19|Add13~56_combout\ $ (\inst19|Add13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add13~56_combout\,
	datab => \inst19|Add13~6_combout\,
	datad => VCC,
	cin => \inst19|Add14~11\,
	combout => \inst19|Add14~12_combout\,
	cout => \inst19|Add14~13\);

-- Location: LCCOMB_X16_Y18_N14
\inst19|Add14~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add14~14_combout\ = (\inst19|Add14~13\ & (\inst19|Add13~56_combout\ $ ((!\inst19|Add13~8_combout\)))) # (!\inst19|Add14~13\ & ((\inst19|Add13~56_combout\ $ (\inst19|Add13~8_combout\)) # (GND)))
-- \inst19|Add14~15\ = CARRY((\inst19|Add13~56_combout\ $ (!\inst19|Add13~8_combout\)) # (!\inst19|Add14~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add13~56_combout\,
	datab => \inst19|Add13~8_combout\,
	datad => VCC,
	cin => \inst19|Add14~13\,
	combout => \inst19|Add14~14_combout\,
	cout => \inst19|Add14~15\);

-- Location: LCCOMB_X16_Y18_N16
\inst19|Add14~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add14~16_combout\ = (\inst19|Add14~15\ & ((\inst19|Add13~10_combout\ $ (\inst19|Add13~56_combout\)))) # (!\inst19|Add14~15\ & (\inst19|Add13~10_combout\ $ (\inst19|Add13~56_combout\ $ (VCC))))
-- \inst19|Add14~17\ = CARRY((!\inst19|Add14~15\ & (\inst19|Add13~10_combout\ $ (\inst19|Add13~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add13~10_combout\,
	datab => \inst19|Add13~56_combout\,
	datad => VCC,
	cin => \inst19|Add14~15\,
	combout => \inst19|Add14~16_combout\,
	cout => \inst19|Add14~17\);

-- Location: LCCOMB_X16_Y18_N18
\inst19|Add14~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add14~18_combout\ = (\inst19|Add14~17\ & (\inst19|Add13~56_combout\ $ ((!\inst19|Add13~12_combout\)))) # (!\inst19|Add14~17\ & ((\inst19|Add13~56_combout\ $ (\inst19|Add13~12_combout\)) # (GND)))
-- \inst19|Add14~19\ = CARRY((\inst19|Add13~56_combout\ $ (!\inst19|Add13~12_combout\)) # (!\inst19|Add14~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add13~56_combout\,
	datab => \inst19|Add13~12_combout\,
	datad => VCC,
	cin => \inst19|Add14~17\,
	combout => \inst19|Add14~18_combout\,
	cout => \inst19|Add14~19\);

-- Location: LCCOMB_X16_Y18_N20
\inst19|Add14~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add14~20_combout\ = (\inst19|Add14~19\ & ((\inst19|Add13~56_combout\ $ (\inst19|Add13~14_combout\)))) # (!\inst19|Add14~19\ & (\inst19|Add13~56_combout\ $ (\inst19|Add13~14_combout\ $ (VCC))))
-- \inst19|Add14~21\ = CARRY((!\inst19|Add14~19\ & (\inst19|Add13~56_combout\ $ (\inst19|Add13~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add13~56_combout\,
	datab => \inst19|Add13~14_combout\,
	datad => VCC,
	cin => \inst19|Add14~19\,
	combout => \inst19|Add14~20_combout\,
	cout => \inst19|Add14~21\);

-- Location: LCCOMB_X16_Y18_N22
\inst19|Add14~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add14~22_combout\ = (\inst19|Add14~21\ & (\inst19|Add13~16_combout\ $ ((!\inst19|Add13~56_combout\)))) # (!\inst19|Add14~21\ & ((\inst19|Add13~16_combout\ $ (\inst19|Add13~56_combout\)) # (GND)))
-- \inst19|Add14~23\ = CARRY((\inst19|Add13~16_combout\ $ (!\inst19|Add13~56_combout\)) # (!\inst19|Add14~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add13~16_combout\,
	datab => \inst19|Add13~56_combout\,
	datad => VCC,
	cin => \inst19|Add14~21\,
	combout => \inst19|Add14~22_combout\,
	cout => \inst19|Add14~23\);

-- Location: LCCOMB_X16_Y18_N24
\inst19|Add14~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add14~24_combout\ = (\inst19|Add14~23\ & ((\inst19|Add13~18_combout\ $ (\inst19|Add13~56_combout\)))) # (!\inst19|Add14~23\ & (\inst19|Add13~18_combout\ $ (\inst19|Add13~56_combout\ $ (VCC))))
-- \inst19|Add14~25\ = CARRY((!\inst19|Add14~23\ & (\inst19|Add13~18_combout\ $ (\inst19|Add13~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add13~18_combout\,
	datab => \inst19|Add13~56_combout\,
	datad => VCC,
	cin => \inst19|Add14~23\,
	combout => \inst19|Add14~24_combout\,
	cout => \inst19|Add14~25\);

-- Location: LCCOMB_X16_Y18_N26
\inst19|Add14~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add14~26_combout\ = (\inst19|Add14~25\ & (\inst19|Add13~20_combout\ $ ((!\inst19|Add13~56_combout\)))) # (!\inst19|Add14~25\ & ((\inst19|Add13~20_combout\ $ (\inst19|Add13~56_combout\)) # (GND)))
-- \inst19|Add14~27\ = CARRY((\inst19|Add13~20_combout\ $ (!\inst19|Add13~56_combout\)) # (!\inst19|Add14~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add13~20_combout\,
	datab => \inst19|Add13~56_combout\,
	datad => VCC,
	cin => \inst19|Add14~25\,
	combout => \inst19|Add14~26_combout\,
	cout => \inst19|Add14~27\);

-- Location: LCCOMB_X16_Y18_N28
\inst19|Add14~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add14~28_combout\ = (\inst19|Add14~27\ & ((\inst19|Add13~56_combout\ $ (\inst19|Add13~22_combout\)))) # (!\inst19|Add14~27\ & (\inst19|Add13~56_combout\ $ (\inst19|Add13~22_combout\ $ (VCC))))
-- \inst19|Add14~29\ = CARRY((!\inst19|Add14~27\ & (\inst19|Add13~56_combout\ $ (\inst19|Add13~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add13~56_combout\,
	datab => \inst19|Add13~22_combout\,
	datad => VCC,
	cin => \inst19|Add14~27\,
	combout => \inst19|Add14~28_combout\,
	cout => \inst19|Add14~29\);

-- Location: LCCOMB_X16_Y18_N30
\inst19|Add14~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add14~30_combout\ = (\inst19|Add14~29\ & (\inst19|Add13~24_combout\ $ ((!\inst19|Add13~56_combout\)))) # (!\inst19|Add14~29\ & ((\inst19|Add13~24_combout\ $ (\inst19|Add13~56_combout\)) # (GND)))
-- \inst19|Add14~31\ = CARRY((\inst19|Add13~24_combout\ $ (!\inst19|Add13~56_combout\)) # (!\inst19|Add14~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add13~24_combout\,
	datab => \inst19|Add13~56_combout\,
	datad => VCC,
	cin => \inst19|Add14~29\,
	combout => \inst19|Add14~30_combout\,
	cout => \inst19|Add14~31\);

-- Location: LCCOMB_X16_Y17_N0
\inst19|Add14~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add14~32_combout\ = (\inst19|Add14~31\ & ((\inst19|Add13~56_combout\ $ (\inst19|Add13~26_combout\)))) # (!\inst19|Add14~31\ & (\inst19|Add13~56_combout\ $ (\inst19|Add13~26_combout\ $ (VCC))))
-- \inst19|Add14~33\ = CARRY((!\inst19|Add14~31\ & (\inst19|Add13~56_combout\ $ (\inst19|Add13~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add13~56_combout\,
	datab => \inst19|Add13~26_combout\,
	datad => VCC,
	cin => \inst19|Add14~31\,
	combout => \inst19|Add14~32_combout\,
	cout => \inst19|Add14~33\);

-- Location: LCCOMB_X16_Y17_N2
\inst19|Add14~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add14~34_combout\ = (\inst19|Add14~33\ & (\inst19|Add13~56_combout\ $ ((!\inst19|Add13~28_combout\)))) # (!\inst19|Add14~33\ & ((\inst19|Add13~56_combout\ $ (\inst19|Add13~28_combout\)) # (GND)))
-- \inst19|Add14~35\ = CARRY((\inst19|Add13~56_combout\ $ (!\inst19|Add13~28_combout\)) # (!\inst19|Add14~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add13~56_combout\,
	datab => \inst19|Add13~28_combout\,
	datad => VCC,
	cin => \inst19|Add14~33\,
	combout => \inst19|Add14~34_combout\,
	cout => \inst19|Add14~35\);

-- Location: LCCOMB_X16_Y17_N4
\inst19|Add14~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add14~36_combout\ = (\inst19|Add14~35\ & ((\inst19|Add13~56_combout\ $ (\inst19|Add13~30_combout\)))) # (!\inst19|Add14~35\ & (\inst19|Add13~56_combout\ $ (\inst19|Add13~30_combout\ $ (VCC))))
-- \inst19|Add14~37\ = CARRY((!\inst19|Add14~35\ & (\inst19|Add13~56_combout\ $ (\inst19|Add13~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add13~56_combout\,
	datab => \inst19|Add13~30_combout\,
	datad => VCC,
	cin => \inst19|Add14~35\,
	combout => \inst19|Add14~36_combout\,
	cout => \inst19|Add14~37\);

-- Location: LCCOMB_X16_Y17_N6
\inst19|Add14~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add14~38_combout\ = (\inst19|Add14~37\ & (\inst19|Add13~56_combout\ $ ((!\inst19|Add13~32_combout\)))) # (!\inst19|Add14~37\ & ((\inst19|Add13~56_combout\ $ (\inst19|Add13~32_combout\)) # (GND)))
-- \inst19|Add14~39\ = CARRY((\inst19|Add13~56_combout\ $ (!\inst19|Add13~32_combout\)) # (!\inst19|Add14~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add13~56_combout\,
	datab => \inst19|Add13~32_combout\,
	datad => VCC,
	cin => \inst19|Add14~37\,
	combout => \inst19|Add14~38_combout\,
	cout => \inst19|Add14~39\);

-- Location: LCCOMB_X16_Y17_N8
\inst19|Add14~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add14~40_combout\ = (\inst19|Add14~39\ & ((\inst19|Add13~34_combout\ $ (\inst19|Add13~56_combout\)))) # (!\inst19|Add14~39\ & (\inst19|Add13~34_combout\ $ (\inst19|Add13~56_combout\ $ (VCC))))
-- \inst19|Add14~41\ = CARRY((!\inst19|Add14~39\ & (\inst19|Add13~34_combout\ $ (\inst19|Add13~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add13~34_combout\,
	datab => \inst19|Add13~56_combout\,
	datad => VCC,
	cin => \inst19|Add14~39\,
	combout => \inst19|Add14~40_combout\,
	cout => \inst19|Add14~41\);

-- Location: LCCOMB_X16_Y17_N10
\inst19|Add14~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add14~42_combout\ = (\inst19|Add14~41\ & (\inst19|Add13~56_combout\ $ ((!\inst19|Add13~36_combout\)))) # (!\inst19|Add14~41\ & ((\inst19|Add13~56_combout\ $ (\inst19|Add13~36_combout\)) # (GND)))
-- \inst19|Add14~43\ = CARRY((\inst19|Add13~56_combout\ $ (!\inst19|Add13~36_combout\)) # (!\inst19|Add14~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add13~56_combout\,
	datab => \inst19|Add13~36_combout\,
	datad => VCC,
	cin => \inst19|Add14~41\,
	combout => \inst19|Add14~42_combout\,
	cout => \inst19|Add14~43\);

-- Location: LCCOMB_X16_Y17_N12
\inst19|Add14~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add14~44_combout\ = (\inst19|Add14~43\ & ((\inst19|Add13~38_combout\ $ (\inst19|Add13~56_combout\)))) # (!\inst19|Add14~43\ & (\inst19|Add13~38_combout\ $ (\inst19|Add13~56_combout\ $ (VCC))))
-- \inst19|Add14~45\ = CARRY((!\inst19|Add14~43\ & (\inst19|Add13~38_combout\ $ (\inst19|Add13~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add13~38_combout\,
	datab => \inst19|Add13~56_combout\,
	datad => VCC,
	cin => \inst19|Add14~43\,
	combout => \inst19|Add14~44_combout\,
	cout => \inst19|Add14~45\);

-- Location: LCCOMB_X16_Y17_N14
\inst19|Add14~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add14~46_combout\ = (\inst19|Add14~45\ & (\inst19|Add13~40_combout\ $ ((!\inst19|Add13~56_combout\)))) # (!\inst19|Add14~45\ & ((\inst19|Add13~40_combout\ $ (\inst19|Add13~56_combout\)) # (GND)))
-- \inst19|Add14~47\ = CARRY((\inst19|Add13~40_combout\ $ (!\inst19|Add13~56_combout\)) # (!\inst19|Add14~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add13~40_combout\,
	datab => \inst19|Add13~56_combout\,
	datad => VCC,
	cin => \inst19|Add14~45\,
	combout => \inst19|Add14~46_combout\,
	cout => \inst19|Add14~47\);

-- Location: LCCOMB_X16_Y17_N16
\inst19|Add14~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add14~48_combout\ = (\inst19|Add14~47\ & ((\inst19|Add13~42_combout\ $ (\inst19|Add13~56_combout\)))) # (!\inst19|Add14~47\ & (\inst19|Add13~42_combout\ $ (\inst19|Add13~56_combout\ $ (VCC))))
-- \inst19|Add14~49\ = CARRY((!\inst19|Add14~47\ & (\inst19|Add13~42_combout\ $ (\inst19|Add13~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add13~42_combout\,
	datab => \inst19|Add13~56_combout\,
	datad => VCC,
	cin => \inst19|Add14~47\,
	combout => \inst19|Add14~48_combout\,
	cout => \inst19|Add14~49\);

-- Location: LCCOMB_X16_Y17_N18
\inst19|Add14~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add14~50_combout\ = (\inst19|Add14~49\ & (\inst19|Add13~44_combout\ $ ((!\inst19|Add13~56_combout\)))) # (!\inst19|Add14~49\ & ((\inst19|Add13~44_combout\ $ (\inst19|Add13~56_combout\)) # (GND)))
-- \inst19|Add14~51\ = CARRY((\inst19|Add13~44_combout\ $ (!\inst19|Add13~56_combout\)) # (!\inst19|Add14~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add13~44_combout\,
	datab => \inst19|Add13~56_combout\,
	datad => VCC,
	cin => \inst19|Add14~49\,
	combout => \inst19|Add14~50_combout\,
	cout => \inst19|Add14~51\);

-- Location: LCCOMB_X16_Y17_N20
\inst19|Add14~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add14~52_combout\ = (\inst19|Add14~51\ & ((\inst19|Add13~56_combout\ $ (\inst19|Add13~46_combout\)))) # (!\inst19|Add14~51\ & (\inst19|Add13~56_combout\ $ (\inst19|Add13~46_combout\ $ (VCC))))
-- \inst19|Add14~53\ = CARRY((!\inst19|Add14~51\ & (\inst19|Add13~56_combout\ $ (\inst19|Add13~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add13~56_combout\,
	datab => \inst19|Add13~46_combout\,
	datad => VCC,
	cin => \inst19|Add14~51\,
	combout => \inst19|Add14~52_combout\,
	cout => \inst19|Add14~53\);

-- Location: LCCOMB_X16_Y17_N22
\inst19|Add14~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add14~54_combout\ = (\inst19|Add14~53\ & (\inst19|Add13~48_combout\ $ ((!\inst19|Add13~56_combout\)))) # (!\inst19|Add14~53\ & ((\inst19|Add13~48_combout\ $ (\inst19|Add13~56_combout\)) # (GND)))
-- \inst19|Add14~55\ = CARRY((\inst19|Add13~48_combout\ $ (!\inst19|Add13~56_combout\)) # (!\inst19|Add14~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add13~48_combout\,
	datab => \inst19|Add13~56_combout\,
	datad => VCC,
	cin => \inst19|Add14~53\,
	combout => \inst19|Add14~54_combout\,
	cout => \inst19|Add14~55\);

-- Location: LCCOMB_X16_Y17_N24
\inst19|Add14~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add14~56_combout\ = (\inst19|Add14~55\ & ((\inst19|Add13~50_combout\ $ (\inst19|Add13~56_combout\)))) # (!\inst19|Add14~55\ & (\inst19|Add13~50_combout\ $ (\inst19|Add13~56_combout\ $ (VCC))))
-- \inst19|Add14~57\ = CARRY((!\inst19|Add14~55\ & (\inst19|Add13~50_combout\ $ (\inst19|Add13~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add13~50_combout\,
	datab => \inst19|Add13~56_combout\,
	datad => VCC,
	cin => \inst19|Add14~55\,
	combout => \inst19|Add14~56_combout\,
	cout => \inst19|Add14~57\);

-- Location: LCCOMB_X16_Y17_N26
\inst19|Add14~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add14~58_combout\ = (\inst19|Add14~57\ & (\inst19|Add13~52_combout\ $ ((!\inst19|Add13~56_combout\)))) # (!\inst19|Add14~57\ & ((\inst19|Add13~52_combout\ $ (\inst19|Add13~56_combout\)) # (GND)))
-- \inst19|Add14~59\ = CARRY((\inst19|Add13~52_combout\ $ (!\inst19|Add13~56_combout\)) # (!\inst19|Add14~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add13~52_combout\,
	datab => \inst19|Add13~56_combout\,
	datad => VCC,
	cin => \inst19|Add14~57\,
	combout => \inst19|Add14~58_combout\,
	cout => \inst19|Add14~59\);

-- Location: LCCOMB_X16_Y17_N28
\inst19|Add14~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add14~60_combout\ = (\inst19|Add14~59\ & ((\inst19|Add13~56_combout\ $ (\inst19|Add13~54_combout\)))) # (!\inst19|Add14~59\ & (\inst19|Add13~56_combout\ $ (\inst19|Add13~54_combout\ $ (VCC))))
-- \inst19|Add14~61\ = CARRY((!\inst19|Add14~59\ & (\inst19|Add13~56_combout\ $ (\inst19|Add13~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add13~56_combout\,
	datab => \inst19|Add13~54_combout\,
	datad => VCC,
	cin => \inst19|Add14~59\,
	combout => \inst19|Add14~60_combout\,
	cout => \inst19|Add14~61\);

-- Location: LCCOMB_X16_Y17_N30
\inst19|Add14~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add14~62_combout\ = \inst19|Add14~61\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst19|Add14~61\,
	combout => \inst19|Add14~62_combout\);

-- Location: LCCOMB_X19_Y20_N2
\inst19|Add11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add11~0_combout\ = \inst19|Add0~2_combout\ $ (VCC)
-- \inst19|Add11~1\ = CARRY(\inst19|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~2_combout\,
	datad => VCC,
	combout => \inst19|Add11~0_combout\,
	cout => \inst19|Add11~1\);

-- Location: LCCOMB_X19_Y20_N4
\inst19|Add11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add11~2_combout\ = (\inst19|Add0~4_combout\ & (!\inst19|Add11~1\)) # (!\inst19|Add0~4_combout\ & ((\inst19|Add11~1\) # (GND)))
-- \inst19|Add11~3\ = CARRY((!\inst19|Add11~1\) # (!\inst19|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~4_combout\,
	datad => VCC,
	cin => \inst19|Add11~1\,
	combout => \inst19|Add11~2_combout\,
	cout => \inst19|Add11~3\);

-- Location: LCCOMB_X19_Y20_N6
\inst19|Add11~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add11~4_combout\ = (\inst19|Add0~6_combout\ & (\inst19|Add11~3\ $ (GND))) # (!\inst19|Add0~6_combout\ & (!\inst19|Add11~3\ & VCC))
-- \inst19|Add11~5\ = CARRY((\inst19|Add0~6_combout\ & !\inst19|Add11~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~6_combout\,
	datad => VCC,
	cin => \inst19|Add11~3\,
	combout => \inst19|Add11~4_combout\,
	cout => \inst19|Add11~5\);

-- Location: LCCOMB_X19_Y20_N8
\inst19|Add11~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add11~6_combout\ = (\inst19|Add0~8_combout\ & (!\inst19|Add11~5\)) # (!\inst19|Add0~8_combout\ & ((\inst19|Add11~5\) # (GND)))
-- \inst19|Add11~7\ = CARRY((!\inst19|Add11~5\) # (!\inst19|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~8_combout\,
	datad => VCC,
	cin => \inst19|Add11~5\,
	combout => \inst19|Add11~6_combout\,
	cout => \inst19|Add11~7\);

-- Location: LCCOMB_X19_Y20_N10
\inst19|Add11~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add11~8_combout\ = (\inst19|Add0~10_combout\ & ((GND) # (!\inst19|Add11~7\))) # (!\inst19|Add0~10_combout\ & (\inst19|Add11~7\ $ (GND)))
-- \inst19|Add11~9\ = CARRY((\inst19|Add0~10_combout\) # (!\inst19|Add11~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~10_combout\,
	datad => VCC,
	cin => \inst19|Add11~7\,
	combout => \inst19|Add11~8_combout\,
	cout => \inst19|Add11~9\);

-- Location: LCCOMB_X19_Y20_N12
\inst19|Add11~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add11~10_combout\ = (\inst19|Add0~12_combout\ & (!\inst19|Add11~9\)) # (!\inst19|Add0~12_combout\ & ((\inst19|Add11~9\) # (GND)))
-- \inst19|Add11~11\ = CARRY((!\inst19|Add11~9\) # (!\inst19|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~12_combout\,
	datad => VCC,
	cin => \inst19|Add11~9\,
	combout => \inst19|Add11~10_combout\,
	cout => \inst19|Add11~11\);

-- Location: LCCOMB_X19_Y20_N14
\inst19|Add11~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add11~12_combout\ = (\inst19|Add0~14_combout\ & ((GND) # (!\inst19|Add11~11\))) # (!\inst19|Add0~14_combout\ & (\inst19|Add11~11\ $ (GND)))
-- \inst19|Add11~13\ = CARRY((\inst19|Add0~14_combout\) # (!\inst19|Add11~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~14_combout\,
	datad => VCC,
	cin => \inst19|Add11~11\,
	combout => \inst19|Add11~12_combout\,
	cout => \inst19|Add11~13\);

-- Location: LCCOMB_X19_Y20_N16
\inst19|Add11~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add11~14_combout\ = (\inst19|Add0~16_combout\ & (\inst19|Add11~13\ & VCC)) # (!\inst19|Add0~16_combout\ & (!\inst19|Add11~13\))
-- \inst19|Add11~15\ = CARRY((!\inst19|Add0~16_combout\ & !\inst19|Add11~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~16_combout\,
	datad => VCC,
	cin => \inst19|Add11~13\,
	combout => \inst19|Add11~14_combout\,
	cout => \inst19|Add11~15\);

-- Location: LCCOMB_X19_Y20_N18
\inst19|Add11~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add11~16_combout\ = (\inst19|Add0~18_combout\ & ((GND) # (!\inst19|Add11~15\))) # (!\inst19|Add0~18_combout\ & (\inst19|Add11~15\ $ (GND)))
-- \inst19|Add11~17\ = CARRY((\inst19|Add0~18_combout\) # (!\inst19|Add11~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~18_combout\,
	datad => VCC,
	cin => \inst19|Add11~15\,
	combout => \inst19|Add11~16_combout\,
	cout => \inst19|Add11~17\);

-- Location: LCCOMB_X19_Y20_N20
\inst19|Add11~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add11~18_combout\ = (\inst19|Add0~20_combout\ & (\inst19|Add11~17\ & VCC)) # (!\inst19|Add0~20_combout\ & (!\inst19|Add11~17\))
-- \inst19|Add11~19\ = CARRY((!\inst19|Add0~20_combout\ & !\inst19|Add11~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~20_combout\,
	datad => VCC,
	cin => \inst19|Add11~17\,
	combout => \inst19|Add11~18_combout\,
	cout => \inst19|Add11~19\);

-- Location: LCCOMB_X19_Y20_N22
\inst19|Add11~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add11~20_combout\ = (\inst19|Add0~22_combout\ & ((GND) # (!\inst19|Add11~19\))) # (!\inst19|Add0~22_combout\ & (\inst19|Add11~19\ $ (GND)))
-- \inst19|Add11~21\ = CARRY((\inst19|Add0~22_combout\) # (!\inst19|Add11~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~22_combout\,
	datad => VCC,
	cin => \inst19|Add11~19\,
	combout => \inst19|Add11~20_combout\,
	cout => \inst19|Add11~21\);

-- Location: LCCOMB_X19_Y20_N24
\inst19|Add11~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add11~22_combout\ = (\inst19|Add0~24_combout\ & (\inst19|Add11~21\ & VCC)) # (!\inst19|Add0~24_combout\ & (!\inst19|Add11~21\))
-- \inst19|Add11~23\ = CARRY((!\inst19|Add0~24_combout\ & !\inst19|Add11~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~24_combout\,
	datad => VCC,
	cin => \inst19|Add11~21\,
	combout => \inst19|Add11~22_combout\,
	cout => \inst19|Add11~23\);

-- Location: LCCOMB_X19_Y20_N26
\inst19|Add11~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add11~24_combout\ = (\inst19|Add0~26_combout\ & ((GND) # (!\inst19|Add11~23\))) # (!\inst19|Add0~26_combout\ & (\inst19|Add11~23\ $ (GND)))
-- \inst19|Add11~25\ = CARRY((\inst19|Add0~26_combout\) # (!\inst19|Add11~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~26_combout\,
	datad => VCC,
	cin => \inst19|Add11~23\,
	combout => \inst19|Add11~24_combout\,
	cout => \inst19|Add11~25\);

-- Location: LCCOMB_X19_Y20_N28
\inst19|Add11~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add11~26_combout\ = (\inst19|Add0~28_combout\ & (\inst19|Add11~25\ & VCC)) # (!\inst19|Add0~28_combout\ & (!\inst19|Add11~25\))
-- \inst19|Add11~27\ = CARRY((!\inst19|Add0~28_combout\ & !\inst19|Add11~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~28_combout\,
	datad => VCC,
	cin => \inst19|Add11~25\,
	combout => \inst19|Add11~26_combout\,
	cout => \inst19|Add11~27\);

-- Location: LCCOMB_X19_Y20_N30
\inst19|Add11~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add11~28_combout\ = (\inst19|Add0~30_combout\ & ((GND) # (!\inst19|Add11~27\))) # (!\inst19|Add0~30_combout\ & (\inst19|Add11~27\ $ (GND)))
-- \inst19|Add11~29\ = CARRY((\inst19|Add0~30_combout\) # (!\inst19|Add11~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~30_combout\,
	datad => VCC,
	cin => \inst19|Add11~27\,
	combout => \inst19|Add11~28_combout\,
	cout => \inst19|Add11~29\);

-- Location: LCCOMB_X19_Y19_N0
\inst19|Add11~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add11~30_combout\ = (\inst19|Add0~32_combout\ & (\inst19|Add11~29\ & VCC)) # (!\inst19|Add0~32_combout\ & (!\inst19|Add11~29\))
-- \inst19|Add11~31\ = CARRY((!\inst19|Add0~32_combout\ & !\inst19|Add11~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~32_combout\,
	datad => VCC,
	cin => \inst19|Add11~29\,
	combout => \inst19|Add11~30_combout\,
	cout => \inst19|Add11~31\);

-- Location: LCCOMB_X19_Y19_N2
\inst19|Add11~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add11~32_combout\ = (\inst19|Add0~34_combout\ & ((GND) # (!\inst19|Add11~31\))) # (!\inst19|Add0~34_combout\ & (\inst19|Add11~31\ $ (GND)))
-- \inst19|Add11~33\ = CARRY((\inst19|Add0~34_combout\) # (!\inst19|Add11~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~34_combout\,
	datad => VCC,
	cin => \inst19|Add11~31\,
	combout => \inst19|Add11~32_combout\,
	cout => \inst19|Add11~33\);

-- Location: LCCOMB_X19_Y19_N4
\inst19|Add11~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add11~34_combout\ = (\inst19|Add0~36_combout\ & (\inst19|Add11~33\ & VCC)) # (!\inst19|Add0~36_combout\ & (!\inst19|Add11~33\))
-- \inst19|Add11~35\ = CARRY((!\inst19|Add0~36_combout\ & !\inst19|Add11~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~36_combout\,
	datad => VCC,
	cin => \inst19|Add11~33\,
	combout => \inst19|Add11~34_combout\,
	cout => \inst19|Add11~35\);

-- Location: LCCOMB_X19_Y19_N6
\inst19|Add11~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add11~36_combout\ = (\inst19|Add0~38_combout\ & ((GND) # (!\inst19|Add11~35\))) # (!\inst19|Add0~38_combout\ & (\inst19|Add11~35\ $ (GND)))
-- \inst19|Add11~37\ = CARRY((\inst19|Add0~38_combout\) # (!\inst19|Add11~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~38_combout\,
	datad => VCC,
	cin => \inst19|Add11~35\,
	combout => \inst19|Add11~36_combout\,
	cout => \inst19|Add11~37\);

-- Location: LCCOMB_X19_Y19_N8
\inst19|Add11~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add11~38_combout\ = (\inst19|Add0~40_combout\ & (\inst19|Add11~37\ & VCC)) # (!\inst19|Add0~40_combout\ & (!\inst19|Add11~37\))
-- \inst19|Add11~39\ = CARRY((!\inst19|Add0~40_combout\ & !\inst19|Add11~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~40_combout\,
	datad => VCC,
	cin => \inst19|Add11~37\,
	combout => \inst19|Add11~38_combout\,
	cout => \inst19|Add11~39\);

-- Location: LCCOMB_X19_Y19_N10
\inst19|Add11~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add11~40_combout\ = (\inst19|Add0~42_combout\ & ((GND) # (!\inst19|Add11~39\))) # (!\inst19|Add0~42_combout\ & (\inst19|Add11~39\ $ (GND)))
-- \inst19|Add11~41\ = CARRY((\inst19|Add0~42_combout\) # (!\inst19|Add11~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~42_combout\,
	datad => VCC,
	cin => \inst19|Add11~39\,
	combout => \inst19|Add11~40_combout\,
	cout => \inst19|Add11~41\);

-- Location: LCCOMB_X19_Y19_N12
\inst19|Add11~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add11~42_combout\ = (\inst19|Add0~44_combout\ & (\inst19|Add11~41\ & VCC)) # (!\inst19|Add0~44_combout\ & (!\inst19|Add11~41\))
-- \inst19|Add11~43\ = CARRY((!\inst19|Add0~44_combout\ & !\inst19|Add11~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~44_combout\,
	datad => VCC,
	cin => \inst19|Add11~41\,
	combout => \inst19|Add11~42_combout\,
	cout => \inst19|Add11~43\);

-- Location: LCCOMB_X19_Y19_N14
\inst19|Add11~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add11~44_combout\ = (\inst19|Add0~46_combout\ & ((GND) # (!\inst19|Add11~43\))) # (!\inst19|Add0~46_combout\ & (\inst19|Add11~43\ $ (GND)))
-- \inst19|Add11~45\ = CARRY((\inst19|Add0~46_combout\) # (!\inst19|Add11~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~46_combout\,
	datad => VCC,
	cin => \inst19|Add11~43\,
	combout => \inst19|Add11~44_combout\,
	cout => \inst19|Add11~45\);

-- Location: LCCOMB_X19_Y19_N16
\inst19|Add11~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add11~46_combout\ = (\inst19|Add0~48_combout\ & (\inst19|Add11~45\ & VCC)) # (!\inst19|Add0~48_combout\ & (!\inst19|Add11~45\))
-- \inst19|Add11~47\ = CARRY((!\inst19|Add0~48_combout\ & !\inst19|Add11~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~48_combout\,
	datad => VCC,
	cin => \inst19|Add11~45\,
	combout => \inst19|Add11~46_combout\,
	cout => \inst19|Add11~47\);

-- Location: LCCOMB_X19_Y19_N18
\inst19|Add11~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add11~48_combout\ = (\inst19|Add0~50_combout\ & ((GND) # (!\inst19|Add11~47\))) # (!\inst19|Add0~50_combout\ & (\inst19|Add11~47\ $ (GND)))
-- \inst19|Add11~49\ = CARRY((\inst19|Add0~50_combout\) # (!\inst19|Add11~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~50_combout\,
	datad => VCC,
	cin => \inst19|Add11~47\,
	combout => \inst19|Add11~48_combout\,
	cout => \inst19|Add11~49\);

-- Location: LCCOMB_X19_Y19_N20
\inst19|Add11~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add11~50_combout\ = (\inst19|Add0~52_combout\ & (\inst19|Add11~49\ & VCC)) # (!\inst19|Add0~52_combout\ & (!\inst19|Add11~49\))
-- \inst19|Add11~51\ = CARRY((!\inst19|Add0~52_combout\ & !\inst19|Add11~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~52_combout\,
	datad => VCC,
	cin => \inst19|Add11~49\,
	combout => \inst19|Add11~50_combout\,
	cout => \inst19|Add11~51\);

-- Location: LCCOMB_X19_Y19_N22
\inst19|Add11~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add11~52_combout\ = (\inst19|Add0~54_combout\ & ((GND) # (!\inst19|Add11~51\))) # (!\inst19|Add0~54_combout\ & (\inst19|Add11~51\ $ (GND)))
-- \inst19|Add11~53\ = CARRY((\inst19|Add0~54_combout\) # (!\inst19|Add11~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~54_combout\,
	datad => VCC,
	cin => \inst19|Add11~51\,
	combout => \inst19|Add11~52_combout\,
	cout => \inst19|Add11~53\);

-- Location: LCCOMB_X19_Y19_N24
\inst19|Add11~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add11~54_combout\ = (\inst19|Add0~56_combout\ & (\inst19|Add11~53\ & VCC)) # (!\inst19|Add0~56_combout\ & (!\inst19|Add11~53\))
-- \inst19|Add11~55\ = CARRY((!\inst19|Add0~56_combout\ & !\inst19|Add11~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~56_combout\,
	datad => VCC,
	cin => \inst19|Add11~53\,
	combout => \inst19|Add11~54_combout\,
	cout => \inst19|Add11~55\);

-- Location: LCCOMB_X19_Y19_N26
\inst19|Add11~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add11~56_combout\ = (\inst19|Add0~58_combout\ & ((GND) # (!\inst19|Add11~55\))) # (!\inst19|Add0~58_combout\ & (\inst19|Add11~55\ $ (GND)))
-- \inst19|Add11~57\ = CARRY((\inst19|Add0~58_combout\) # (!\inst19|Add11~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~58_combout\,
	datad => VCC,
	cin => \inst19|Add11~55\,
	combout => \inst19|Add11~56_combout\,
	cout => \inst19|Add11~57\);

-- Location: LCCOMB_X19_Y19_N28
\inst19|Add11~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add11~58_combout\ = (\inst19|Add0~60_combout\ & (\inst19|Add11~57\ & VCC)) # (!\inst19|Add0~60_combout\ & (!\inst19|Add11~57\))
-- \inst19|Add11~59\ = CARRY((!\inst19|Add0~60_combout\ & !\inst19|Add11~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~60_combout\,
	datad => VCC,
	cin => \inst19|Add11~57\,
	combout => \inst19|Add11~58_combout\,
	cout => \inst19|Add11~59\);

-- Location: LCCOMB_X19_Y19_N30
\inst19|Add11~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add11~60_combout\ = \inst19|Add11~59\ $ (\inst19|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst19|Add0~62_combout\,
	cin => \inst19|Add11~59\,
	combout => \inst19|Add11~60_combout\);

-- Location: LCCOMB_X20_Y20_N0
\inst19|Add12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add12~0_combout\ = (\inst19|result~9_combout\ & (\inst19|Add11~60_combout\ $ (VCC))) # (!\inst19|result~9_combout\ & (\inst19|Add11~60_combout\ & VCC))
-- \inst19|Add12~1\ = CARRY((\inst19|result~9_combout\ & \inst19|Add11~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|result~9_combout\,
	datab => \inst19|Add11~60_combout\,
	datad => VCC,
	combout => \inst19|Add12~0_combout\,
	cout => \inst19|Add12~1\);

-- Location: LCCOMB_X20_Y20_N2
\inst19|Add12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add12~2_combout\ = (\inst19|Add12~1\ & (\inst19|Add11~60_combout\ $ ((!\inst19|Add11~0_combout\)))) # (!\inst19|Add12~1\ & ((\inst19|Add11~60_combout\ $ (\inst19|Add11~0_combout\)) # (GND)))
-- \inst19|Add12~3\ = CARRY((\inst19|Add11~60_combout\ $ (!\inst19|Add11~0_combout\)) # (!\inst19|Add12~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add11~60_combout\,
	datab => \inst19|Add11~0_combout\,
	datad => VCC,
	cin => \inst19|Add12~1\,
	combout => \inst19|Add12~2_combout\,
	cout => \inst19|Add12~3\);

-- Location: LCCOMB_X20_Y20_N4
\inst19|Add12~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add12~4_combout\ = (\inst19|Add12~3\ & ((\inst19|Add11~60_combout\ $ (\inst19|Add11~2_combout\)))) # (!\inst19|Add12~3\ & (\inst19|Add11~60_combout\ $ (\inst19|Add11~2_combout\ $ (VCC))))
-- \inst19|Add12~5\ = CARRY((!\inst19|Add12~3\ & (\inst19|Add11~60_combout\ $ (\inst19|Add11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add11~60_combout\,
	datab => \inst19|Add11~2_combout\,
	datad => VCC,
	cin => \inst19|Add12~3\,
	combout => \inst19|Add12~4_combout\,
	cout => \inst19|Add12~5\);

-- Location: LCCOMB_X20_Y20_N6
\inst19|Add12~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add12~6_combout\ = (\inst19|Add12~5\ & (\inst19|Add11~4_combout\ $ ((!\inst19|Add11~60_combout\)))) # (!\inst19|Add12~5\ & ((\inst19|Add11~4_combout\ $ (\inst19|Add11~60_combout\)) # (GND)))
-- \inst19|Add12~7\ = CARRY((\inst19|Add11~4_combout\ $ (!\inst19|Add11~60_combout\)) # (!\inst19|Add12~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add11~4_combout\,
	datab => \inst19|Add11~60_combout\,
	datad => VCC,
	cin => \inst19|Add12~5\,
	combout => \inst19|Add12~6_combout\,
	cout => \inst19|Add12~7\);

-- Location: LCCOMB_X20_Y20_N8
\inst19|Add12~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add12~8_combout\ = (\inst19|Add12~7\ & ((\inst19|Add11~6_combout\ $ (\inst19|Add11~60_combout\)))) # (!\inst19|Add12~7\ & (\inst19|Add11~6_combout\ $ (\inst19|Add11~60_combout\ $ (VCC))))
-- \inst19|Add12~9\ = CARRY((!\inst19|Add12~7\ & (\inst19|Add11~6_combout\ $ (\inst19|Add11~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add11~6_combout\,
	datab => \inst19|Add11~60_combout\,
	datad => VCC,
	cin => \inst19|Add12~7\,
	combout => \inst19|Add12~8_combout\,
	cout => \inst19|Add12~9\);

-- Location: LCCOMB_X20_Y20_N10
\inst19|Add12~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add12~10_combout\ = (\inst19|Add12~9\ & (\inst19|Add11~8_combout\ $ ((!\inst19|Add11~60_combout\)))) # (!\inst19|Add12~9\ & ((\inst19|Add11~8_combout\ $ (\inst19|Add11~60_combout\)) # (GND)))
-- \inst19|Add12~11\ = CARRY((\inst19|Add11~8_combout\ $ (!\inst19|Add11~60_combout\)) # (!\inst19|Add12~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add11~8_combout\,
	datab => \inst19|Add11~60_combout\,
	datad => VCC,
	cin => \inst19|Add12~9\,
	combout => \inst19|Add12~10_combout\,
	cout => \inst19|Add12~11\);

-- Location: LCCOMB_X20_Y20_N12
\inst19|Add12~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add12~12_combout\ = (\inst19|Add12~11\ & ((\inst19|Add11~60_combout\ $ (\inst19|Add11~10_combout\)))) # (!\inst19|Add12~11\ & (\inst19|Add11~60_combout\ $ (\inst19|Add11~10_combout\ $ (VCC))))
-- \inst19|Add12~13\ = CARRY((!\inst19|Add12~11\ & (\inst19|Add11~60_combout\ $ (\inst19|Add11~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add11~60_combout\,
	datab => \inst19|Add11~10_combout\,
	datad => VCC,
	cin => \inst19|Add12~11\,
	combout => \inst19|Add12~12_combout\,
	cout => \inst19|Add12~13\);

-- Location: LCCOMB_X20_Y20_N14
\inst19|Add12~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add12~14_combout\ = (\inst19|Add12~13\ & (\inst19|Add11~12_combout\ $ ((!\inst19|Add11~60_combout\)))) # (!\inst19|Add12~13\ & ((\inst19|Add11~12_combout\ $ (\inst19|Add11~60_combout\)) # (GND)))
-- \inst19|Add12~15\ = CARRY((\inst19|Add11~12_combout\ $ (!\inst19|Add11~60_combout\)) # (!\inst19|Add12~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add11~12_combout\,
	datab => \inst19|Add11~60_combout\,
	datad => VCC,
	cin => \inst19|Add12~13\,
	combout => \inst19|Add12~14_combout\,
	cout => \inst19|Add12~15\);

-- Location: LCCOMB_X20_Y20_N16
\inst19|Add12~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add12~16_combout\ = (\inst19|Add12~15\ & ((\inst19|Add11~14_combout\ $ (\inst19|Add11~60_combout\)))) # (!\inst19|Add12~15\ & (\inst19|Add11~14_combout\ $ (\inst19|Add11~60_combout\ $ (VCC))))
-- \inst19|Add12~17\ = CARRY((!\inst19|Add12~15\ & (\inst19|Add11~14_combout\ $ (\inst19|Add11~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add11~14_combout\,
	datab => \inst19|Add11~60_combout\,
	datad => VCC,
	cin => \inst19|Add12~15\,
	combout => \inst19|Add12~16_combout\,
	cout => \inst19|Add12~17\);

-- Location: LCCOMB_X20_Y20_N18
\inst19|Add12~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add12~18_combout\ = (\inst19|Add12~17\ & (\inst19|Add11~60_combout\ $ ((!\inst19|Add11~16_combout\)))) # (!\inst19|Add12~17\ & ((\inst19|Add11~60_combout\ $ (\inst19|Add11~16_combout\)) # (GND)))
-- \inst19|Add12~19\ = CARRY((\inst19|Add11~60_combout\ $ (!\inst19|Add11~16_combout\)) # (!\inst19|Add12~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add11~60_combout\,
	datab => \inst19|Add11~16_combout\,
	datad => VCC,
	cin => \inst19|Add12~17\,
	combout => \inst19|Add12~18_combout\,
	cout => \inst19|Add12~19\);

-- Location: LCCOMB_X20_Y20_N20
\inst19|Add12~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add12~20_combout\ = (\inst19|Add12~19\ & ((\inst19|Add11~60_combout\ $ (\inst19|Add11~18_combout\)))) # (!\inst19|Add12~19\ & (\inst19|Add11~60_combout\ $ (\inst19|Add11~18_combout\ $ (VCC))))
-- \inst19|Add12~21\ = CARRY((!\inst19|Add12~19\ & (\inst19|Add11~60_combout\ $ (\inst19|Add11~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add11~60_combout\,
	datab => \inst19|Add11~18_combout\,
	datad => VCC,
	cin => \inst19|Add12~19\,
	combout => \inst19|Add12~20_combout\,
	cout => \inst19|Add12~21\);

-- Location: LCCOMB_X20_Y20_N22
\inst19|Add12~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add12~22_combout\ = (\inst19|Add12~21\ & (\inst19|Add11~60_combout\ $ ((!\inst19|Add11~20_combout\)))) # (!\inst19|Add12~21\ & ((\inst19|Add11~60_combout\ $ (\inst19|Add11~20_combout\)) # (GND)))
-- \inst19|Add12~23\ = CARRY((\inst19|Add11~60_combout\ $ (!\inst19|Add11~20_combout\)) # (!\inst19|Add12~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add11~60_combout\,
	datab => \inst19|Add11~20_combout\,
	datad => VCC,
	cin => \inst19|Add12~21\,
	combout => \inst19|Add12~22_combout\,
	cout => \inst19|Add12~23\);

-- Location: LCCOMB_X20_Y20_N24
\inst19|Add12~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add12~24_combout\ = (\inst19|Add12~23\ & ((\inst19|Add11~22_combout\ $ (\inst19|Add11~60_combout\)))) # (!\inst19|Add12~23\ & (\inst19|Add11~22_combout\ $ (\inst19|Add11~60_combout\ $ (VCC))))
-- \inst19|Add12~25\ = CARRY((!\inst19|Add12~23\ & (\inst19|Add11~22_combout\ $ (\inst19|Add11~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add11~22_combout\,
	datab => \inst19|Add11~60_combout\,
	datad => VCC,
	cin => \inst19|Add12~23\,
	combout => \inst19|Add12~24_combout\,
	cout => \inst19|Add12~25\);

-- Location: LCCOMB_X20_Y20_N26
\inst19|Add12~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add12~26_combout\ = (\inst19|Add12~25\ & (\inst19|Add11~60_combout\ $ ((!\inst19|Add11~24_combout\)))) # (!\inst19|Add12~25\ & ((\inst19|Add11~60_combout\ $ (\inst19|Add11~24_combout\)) # (GND)))
-- \inst19|Add12~27\ = CARRY((\inst19|Add11~60_combout\ $ (!\inst19|Add11~24_combout\)) # (!\inst19|Add12~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add11~60_combout\,
	datab => \inst19|Add11~24_combout\,
	datad => VCC,
	cin => \inst19|Add12~25\,
	combout => \inst19|Add12~26_combout\,
	cout => \inst19|Add12~27\);

-- Location: LCCOMB_X20_Y20_N28
\inst19|Add12~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add12~28_combout\ = (\inst19|Add12~27\ & ((\inst19|Add11~60_combout\ $ (\inst19|Add11~26_combout\)))) # (!\inst19|Add12~27\ & (\inst19|Add11~60_combout\ $ (\inst19|Add11~26_combout\ $ (VCC))))
-- \inst19|Add12~29\ = CARRY((!\inst19|Add12~27\ & (\inst19|Add11~60_combout\ $ (\inst19|Add11~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add11~60_combout\,
	datab => \inst19|Add11~26_combout\,
	datad => VCC,
	cin => \inst19|Add12~27\,
	combout => \inst19|Add12~28_combout\,
	cout => \inst19|Add12~29\);

-- Location: LCCOMB_X20_Y20_N30
\inst19|Add12~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add12~30_combout\ = (\inst19|Add12~29\ & (\inst19|Add11~28_combout\ $ ((!\inst19|Add11~60_combout\)))) # (!\inst19|Add12~29\ & ((\inst19|Add11~28_combout\ $ (\inst19|Add11~60_combout\)) # (GND)))
-- \inst19|Add12~31\ = CARRY((\inst19|Add11~28_combout\ $ (!\inst19|Add11~60_combout\)) # (!\inst19|Add12~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add11~28_combout\,
	datab => \inst19|Add11~60_combout\,
	datad => VCC,
	cin => \inst19|Add12~29\,
	combout => \inst19|Add12~30_combout\,
	cout => \inst19|Add12~31\);

-- Location: LCCOMB_X20_Y19_N0
\inst19|Add12~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add12~32_combout\ = (\inst19|Add12~31\ & ((\inst19|Add11~60_combout\ $ (\inst19|Add11~30_combout\)))) # (!\inst19|Add12~31\ & (\inst19|Add11~60_combout\ $ (\inst19|Add11~30_combout\ $ (VCC))))
-- \inst19|Add12~33\ = CARRY((!\inst19|Add12~31\ & (\inst19|Add11~60_combout\ $ (\inst19|Add11~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add11~60_combout\,
	datab => \inst19|Add11~30_combout\,
	datad => VCC,
	cin => \inst19|Add12~31\,
	combout => \inst19|Add12~32_combout\,
	cout => \inst19|Add12~33\);

-- Location: LCCOMB_X20_Y19_N2
\inst19|Add12~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add12~34_combout\ = (\inst19|Add12~33\ & (\inst19|Add11~60_combout\ $ ((!\inst19|Add11~32_combout\)))) # (!\inst19|Add12~33\ & ((\inst19|Add11~60_combout\ $ (\inst19|Add11~32_combout\)) # (GND)))
-- \inst19|Add12~35\ = CARRY((\inst19|Add11~60_combout\ $ (!\inst19|Add11~32_combout\)) # (!\inst19|Add12~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add11~60_combout\,
	datab => \inst19|Add11~32_combout\,
	datad => VCC,
	cin => \inst19|Add12~33\,
	combout => \inst19|Add12~34_combout\,
	cout => \inst19|Add12~35\);

-- Location: LCCOMB_X20_Y19_N4
\inst19|Add12~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add12~36_combout\ = (\inst19|Add12~35\ & ((\inst19|Add11~60_combout\ $ (\inst19|Add11~34_combout\)))) # (!\inst19|Add12~35\ & (\inst19|Add11~60_combout\ $ (\inst19|Add11~34_combout\ $ (VCC))))
-- \inst19|Add12~37\ = CARRY((!\inst19|Add12~35\ & (\inst19|Add11~60_combout\ $ (\inst19|Add11~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add11~60_combout\,
	datab => \inst19|Add11~34_combout\,
	datad => VCC,
	cin => \inst19|Add12~35\,
	combout => \inst19|Add12~36_combout\,
	cout => \inst19|Add12~37\);

-- Location: LCCOMB_X20_Y19_N6
\inst19|Add12~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add12~38_combout\ = (\inst19|Add12~37\ & (\inst19|Add11~60_combout\ $ ((!\inst19|Add11~36_combout\)))) # (!\inst19|Add12~37\ & ((\inst19|Add11~60_combout\ $ (\inst19|Add11~36_combout\)) # (GND)))
-- \inst19|Add12~39\ = CARRY((\inst19|Add11~60_combout\ $ (!\inst19|Add11~36_combout\)) # (!\inst19|Add12~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add11~60_combout\,
	datab => \inst19|Add11~36_combout\,
	datad => VCC,
	cin => \inst19|Add12~37\,
	combout => \inst19|Add12~38_combout\,
	cout => \inst19|Add12~39\);

-- Location: LCCOMB_X20_Y19_N8
\inst19|Add12~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add12~40_combout\ = (\inst19|Add12~39\ & ((\inst19|Add11~38_combout\ $ (\inst19|Add11~60_combout\)))) # (!\inst19|Add12~39\ & (\inst19|Add11~38_combout\ $ (\inst19|Add11~60_combout\ $ (VCC))))
-- \inst19|Add12~41\ = CARRY((!\inst19|Add12~39\ & (\inst19|Add11~38_combout\ $ (\inst19|Add11~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add11~38_combout\,
	datab => \inst19|Add11~60_combout\,
	datad => VCC,
	cin => \inst19|Add12~39\,
	combout => \inst19|Add12~40_combout\,
	cout => \inst19|Add12~41\);

-- Location: LCCOMB_X20_Y19_N10
\inst19|Add12~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add12~42_combout\ = (\inst19|Add12~41\ & (\inst19|Add11~60_combout\ $ ((!\inst19|Add11~40_combout\)))) # (!\inst19|Add12~41\ & ((\inst19|Add11~60_combout\ $ (\inst19|Add11~40_combout\)) # (GND)))
-- \inst19|Add12~43\ = CARRY((\inst19|Add11~60_combout\ $ (!\inst19|Add11~40_combout\)) # (!\inst19|Add12~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add11~60_combout\,
	datab => \inst19|Add11~40_combout\,
	datad => VCC,
	cin => \inst19|Add12~41\,
	combout => \inst19|Add12~42_combout\,
	cout => \inst19|Add12~43\);

-- Location: LCCOMB_X20_Y19_N12
\inst19|Add12~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add12~44_combout\ = (\inst19|Add12~43\ & ((\inst19|Add11~42_combout\ $ (\inst19|Add11~60_combout\)))) # (!\inst19|Add12~43\ & (\inst19|Add11~42_combout\ $ (\inst19|Add11~60_combout\ $ (VCC))))
-- \inst19|Add12~45\ = CARRY((!\inst19|Add12~43\ & (\inst19|Add11~42_combout\ $ (\inst19|Add11~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add11~42_combout\,
	datab => \inst19|Add11~60_combout\,
	datad => VCC,
	cin => \inst19|Add12~43\,
	combout => \inst19|Add12~44_combout\,
	cout => \inst19|Add12~45\);

-- Location: LCCOMB_X20_Y19_N14
\inst19|Add12~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add12~46_combout\ = (\inst19|Add12~45\ & (\inst19|Add11~44_combout\ $ ((!\inst19|Add11~60_combout\)))) # (!\inst19|Add12~45\ & ((\inst19|Add11~44_combout\ $ (\inst19|Add11~60_combout\)) # (GND)))
-- \inst19|Add12~47\ = CARRY((\inst19|Add11~44_combout\ $ (!\inst19|Add11~60_combout\)) # (!\inst19|Add12~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add11~44_combout\,
	datab => \inst19|Add11~60_combout\,
	datad => VCC,
	cin => \inst19|Add12~45\,
	combout => \inst19|Add12~46_combout\,
	cout => \inst19|Add12~47\);

-- Location: LCCOMB_X20_Y19_N16
\inst19|Add12~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add12~48_combout\ = (\inst19|Add12~47\ & ((\inst19|Add11~46_combout\ $ (\inst19|Add11~60_combout\)))) # (!\inst19|Add12~47\ & (\inst19|Add11~46_combout\ $ (\inst19|Add11~60_combout\ $ (VCC))))
-- \inst19|Add12~49\ = CARRY((!\inst19|Add12~47\ & (\inst19|Add11~46_combout\ $ (\inst19|Add11~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add11~46_combout\,
	datab => \inst19|Add11~60_combout\,
	datad => VCC,
	cin => \inst19|Add12~47\,
	combout => \inst19|Add12~48_combout\,
	cout => \inst19|Add12~49\);

-- Location: LCCOMB_X20_Y19_N18
\inst19|Add12~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add12~50_combout\ = (\inst19|Add12~49\ & (\inst19|Add11~48_combout\ $ ((!\inst19|Add11~60_combout\)))) # (!\inst19|Add12~49\ & ((\inst19|Add11~48_combout\ $ (\inst19|Add11~60_combout\)) # (GND)))
-- \inst19|Add12~51\ = CARRY((\inst19|Add11~48_combout\ $ (!\inst19|Add11~60_combout\)) # (!\inst19|Add12~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add11~48_combout\,
	datab => \inst19|Add11~60_combout\,
	datad => VCC,
	cin => \inst19|Add12~49\,
	combout => \inst19|Add12~50_combout\,
	cout => \inst19|Add12~51\);

-- Location: LCCOMB_X20_Y19_N20
\inst19|Add12~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add12~52_combout\ = (\inst19|Add12~51\ & ((\inst19|Add11~60_combout\ $ (\inst19|Add11~50_combout\)))) # (!\inst19|Add12~51\ & (\inst19|Add11~60_combout\ $ (\inst19|Add11~50_combout\ $ (VCC))))
-- \inst19|Add12~53\ = CARRY((!\inst19|Add12~51\ & (\inst19|Add11~60_combout\ $ (\inst19|Add11~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add11~60_combout\,
	datab => \inst19|Add11~50_combout\,
	datad => VCC,
	cin => \inst19|Add12~51\,
	combout => \inst19|Add12~52_combout\,
	cout => \inst19|Add12~53\);

-- Location: LCCOMB_X20_Y19_N22
\inst19|Add12~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add12~54_combout\ = (\inst19|Add12~53\ & (\inst19|Add11~52_combout\ $ ((!\inst19|Add11~60_combout\)))) # (!\inst19|Add12~53\ & ((\inst19|Add11~52_combout\ $ (\inst19|Add11~60_combout\)) # (GND)))
-- \inst19|Add12~55\ = CARRY((\inst19|Add11~52_combout\ $ (!\inst19|Add11~60_combout\)) # (!\inst19|Add12~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add11~52_combout\,
	datab => \inst19|Add11~60_combout\,
	datad => VCC,
	cin => \inst19|Add12~53\,
	combout => \inst19|Add12~54_combout\,
	cout => \inst19|Add12~55\);

-- Location: LCCOMB_X20_Y19_N24
\inst19|Add12~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add12~56_combout\ = (\inst19|Add12~55\ & ((\inst19|Add11~54_combout\ $ (\inst19|Add11~60_combout\)))) # (!\inst19|Add12~55\ & (\inst19|Add11~54_combout\ $ (\inst19|Add11~60_combout\ $ (VCC))))
-- \inst19|Add12~57\ = CARRY((!\inst19|Add12~55\ & (\inst19|Add11~54_combout\ $ (\inst19|Add11~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add11~54_combout\,
	datab => \inst19|Add11~60_combout\,
	datad => VCC,
	cin => \inst19|Add12~55\,
	combout => \inst19|Add12~56_combout\,
	cout => \inst19|Add12~57\);

-- Location: LCCOMB_X20_Y19_N26
\inst19|Add12~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add12~58_combout\ = (\inst19|Add12~57\ & (\inst19|Add11~56_combout\ $ ((!\inst19|Add11~60_combout\)))) # (!\inst19|Add12~57\ & ((\inst19|Add11~56_combout\ $ (\inst19|Add11~60_combout\)) # (GND)))
-- \inst19|Add12~59\ = CARRY((\inst19|Add11~56_combout\ $ (!\inst19|Add11~60_combout\)) # (!\inst19|Add12~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add11~56_combout\,
	datab => \inst19|Add11~60_combout\,
	datad => VCC,
	cin => \inst19|Add12~57\,
	combout => \inst19|Add12~58_combout\,
	cout => \inst19|Add12~59\);

-- Location: LCCOMB_X20_Y19_N28
\inst19|Add12~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add12~60_combout\ = (\inst19|Add12~59\ & ((\inst19|Add11~60_combout\ $ (\inst19|Add11~58_combout\)))) # (!\inst19|Add12~59\ & (\inst19|Add11~60_combout\ $ (\inst19|Add11~58_combout\ $ (VCC))))
-- \inst19|Add12~61\ = CARRY((!\inst19|Add12~59\ & (\inst19|Add11~60_combout\ $ (\inst19|Add11~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add11~60_combout\,
	datab => \inst19|Add11~58_combout\,
	datad => VCC,
	cin => \inst19|Add12~59\,
	combout => \inst19|Add12~60_combout\,
	cout => \inst19|Add12~61\);

-- Location: LCCOMB_X20_Y19_N30
\inst19|Add12~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add12~62_combout\ = \inst19|Add12~61\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst19|Add12~61\,
	combout => \inst19|Add12~62_combout\);

-- Location: LCCOMB_X23_Y23_N0
\inst19|Add9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add9~0_combout\ = \inst19|Add0~0_combout\ $ (VCC)
-- \inst19|Add9~1\ = CARRY(\inst19|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~0_combout\,
	datad => VCC,
	combout => \inst19|Add9~0_combout\,
	cout => \inst19|Add9~1\);

-- Location: LCCOMB_X23_Y23_N2
\inst19|Add9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add9~2_combout\ = (\inst19|Add0~2_combout\ & (!\inst19|Add9~1\)) # (!\inst19|Add0~2_combout\ & ((\inst19|Add9~1\) # (GND)))
-- \inst19|Add9~3\ = CARRY((!\inst19|Add9~1\) # (!\inst19|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~2_combout\,
	datad => VCC,
	cin => \inst19|Add9~1\,
	combout => \inst19|Add9~2_combout\,
	cout => \inst19|Add9~3\);

-- Location: LCCOMB_X23_Y23_N4
\inst19|Add9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add9~4_combout\ = (\inst19|Add0~4_combout\ & ((GND) # (!\inst19|Add9~3\))) # (!\inst19|Add0~4_combout\ & (\inst19|Add9~3\ $ (GND)))
-- \inst19|Add9~5\ = CARRY((\inst19|Add0~4_combout\) # (!\inst19|Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~4_combout\,
	datad => VCC,
	cin => \inst19|Add9~3\,
	combout => \inst19|Add9~4_combout\,
	cout => \inst19|Add9~5\);

-- Location: LCCOMB_X23_Y23_N6
\inst19|Add9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add9~6_combout\ = (\inst19|Add0~6_combout\ & (\inst19|Add9~5\ & VCC)) # (!\inst19|Add0~6_combout\ & (!\inst19|Add9~5\))
-- \inst19|Add9~7\ = CARRY((!\inst19|Add0~6_combout\ & !\inst19|Add9~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~6_combout\,
	datad => VCC,
	cin => \inst19|Add9~5\,
	combout => \inst19|Add9~6_combout\,
	cout => \inst19|Add9~7\);

-- Location: LCCOMB_X23_Y23_N8
\inst19|Add9~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add9~8_combout\ = (\inst19|Add0~8_combout\ & (\inst19|Add9~7\ $ (GND))) # (!\inst19|Add0~8_combout\ & (!\inst19|Add9~7\ & VCC))
-- \inst19|Add9~9\ = CARRY((\inst19|Add0~8_combout\ & !\inst19|Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~8_combout\,
	datad => VCC,
	cin => \inst19|Add9~7\,
	combout => \inst19|Add9~8_combout\,
	cout => \inst19|Add9~9\);

-- Location: LCCOMB_X23_Y23_N10
\inst19|Add9~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add9~10_combout\ = (\inst19|Add0~10_combout\ & (\inst19|Add9~9\ & VCC)) # (!\inst19|Add0~10_combout\ & (!\inst19|Add9~9\))
-- \inst19|Add9~11\ = CARRY((!\inst19|Add0~10_combout\ & !\inst19|Add9~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~10_combout\,
	datad => VCC,
	cin => \inst19|Add9~9\,
	combout => \inst19|Add9~10_combout\,
	cout => \inst19|Add9~11\);

-- Location: LCCOMB_X23_Y23_N12
\inst19|Add9~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add9~12_combout\ = (\inst19|Add0~12_combout\ & (\inst19|Add9~11\ $ (GND))) # (!\inst19|Add0~12_combout\ & (!\inst19|Add9~11\ & VCC))
-- \inst19|Add9~13\ = CARRY((\inst19|Add0~12_combout\ & !\inst19|Add9~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~12_combout\,
	datad => VCC,
	cin => \inst19|Add9~11\,
	combout => \inst19|Add9~12_combout\,
	cout => \inst19|Add9~13\);

-- Location: LCCOMB_X23_Y23_N14
\inst19|Add9~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add9~14_combout\ = (\inst19|Add0~14_combout\ & (\inst19|Add9~13\ & VCC)) # (!\inst19|Add0~14_combout\ & (!\inst19|Add9~13\))
-- \inst19|Add9~15\ = CARRY((!\inst19|Add0~14_combout\ & !\inst19|Add9~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~14_combout\,
	datad => VCC,
	cin => \inst19|Add9~13\,
	combout => \inst19|Add9~14_combout\,
	cout => \inst19|Add9~15\);

-- Location: LCCOMB_X23_Y23_N16
\inst19|Add9~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add9~16_combout\ = (\inst19|Add0~16_combout\ & ((GND) # (!\inst19|Add9~15\))) # (!\inst19|Add0~16_combout\ & (\inst19|Add9~15\ $ (GND)))
-- \inst19|Add9~17\ = CARRY((\inst19|Add0~16_combout\) # (!\inst19|Add9~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~16_combout\,
	datad => VCC,
	cin => \inst19|Add9~15\,
	combout => \inst19|Add9~16_combout\,
	cout => \inst19|Add9~17\);

-- Location: LCCOMB_X23_Y23_N18
\inst19|Add9~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add9~18_combout\ = (\inst19|Add0~18_combout\ & (\inst19|Add9~17\ & VCC)) # (!\inst19|Add0~18_combout\ & (!\inst19|Add9~17\))
-- \inst19|Add9~19\ = CARRY((!\inst19|Add0~18_combout\ & !\inst19|Add9~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~18_combout\,
	datad => VCC,
	cin => \inst19|Add9~17\,
	combout => \inst19|Add9~18_combout\,
	cout => \inst19|Add9~19\);

-- Location: LCCOMB_X23_Y23_N20
\inst19|Add9~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add9~20_combout\ = (\inst19|Add0~20_combout\ & ((GND) # (!\inst19|Add9~19\))) # (!\inst19|Add0~20_combout\ & (\inst19|Add9~19\ $ (GND)))
-- \inst19|Add9~21\ = CARRY((\inst19|Add0~20_combout\) # (!\inst19|Add9~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~20_combout\,
	datad => VCC,
	cin => \inst19|Add9~19\,
	combout => \inst19|Add9~20_combout\,
	cout => \inst19|Add9~21\);

-- Location: LCCOMB_X23_Y23_N22
\inst19|Add9~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add9~22_combout\ = (\inst19|Add0~22_combout\ & (\inst19|Add9~21\ & VCC)) # (!\inst19|Add0~22_combout\ & (!\inst19|Add9~21\))
-- \inst19|Add9~23\ = CARRY((!\inst19|Add0~22_combout\ & !\inst19|Add9~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~22_combout\,
	datad => VCC,
	cin => \inst19|Add9~21\,
	combout => \inst19|Add9~22_combout\,
	cout => \inst19|Add9~23\);

-- Location: LCCOMB_X23_Y23_N24
\inst19|Add9~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add9~24_combout\ = (\inst19|Add0~24_combout\ & ((GND) # (!\inst19|Add9~23\))) # (!\inst19|Add0~24_combout\ & (\inst19|Add9~23\ $ (GND)))
-- \inst19|Add9~25\ = CARRY((\inst19|Add0~24_combout\) # (!\inst19|Add9~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~24_combout\,
	datad => VCC,
	cin => \inst19|Add9~23\,
	combout => \inst19|Add9~24_combout\,
	cout => \inst19|Add9~25\);

-- Location: LCCOMB_X23_Y23_N26
\inst19|Add9~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add9~26_combout\ = (\inst19|Add0~26_combout\ & (\inst19|Add9~25\ & VCC)) # (!\inst19|Add0~26_combout\ & (!\inst19|Add9~25\))
-- \inst19|Add9~27\ = CARRY((!\inst19|Add0~26_combout\ & !\inst19|Add9~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~26_combout\,
	datad => VCC,
	cin => \inst19|Add9~25\,
	combout => \inst19|Add9~26_combout\,
	cout => \inst19|Add9~27\);

-- Location: LCCOMB_X23_Y23_N28
\inst19|Add9~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add9~28_combout\ = (\inst19|Add0~28_combout\ & ((GND) # (!\inst19|Add9~27\))) # (!\inst19|Add0~28_combout\ & (\inst19|Add9~27\ $ (GND)))
-- \inst19|Add9~29\ = CARRY((\inst19|Add0~28_combout\) # (!\inst19|Add9~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~28_combout\,
	datad => VCC,
	cin => \inst19|Add9~27\,
	combout => \inst19|Add9~28_combout\,
	cout => \inst19|Add9~29\);

-- Location: LCCOMB_X23_Y23_N30
\inst19|Add9~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add9~30_combout\ = (\inst19|Add0~30_combout\ & (\inst19|Add9~29\ & VCC)) # (!\inst19|Add0~30_combout\ & (!\inst19|Add9~29\))
-- \inst19|Add9~31\ = CARRY((!\inst19|Add0~30_combout\ & !\inst19|Add9~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~30_combout\,
	datad => VCC,
	cin => \inst19|Add9~29\,
	combout => \inst19|Add9~30_combout\,
	cout => \inst19|Add9~31\);

-- Location: LCCOMB_X23_Y22_N0
\inst19|Add9~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add9~32_combout\ = (\inst19|Add0~32_combout\ & ((GND) # (!\inst19|Add9~31\))) # (!\inst19|Add0~32_combout\ & (\inst19|Add9~31\ $ (GND)))
-- \inst19|Add9~33\ = CARRY((\inst19|Add0~32_combout\) # (!\inst19|Add9~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~32_combout\,
	datad => VCC,
	cin => \inst19|Add9~31\,
	combout => \inst19|Add9~32_combout\,
	cout => \inst19|Add9~33\);

-- Location: LCCOMB_X23_Y22_N2
\inst19|Add9~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add9~34_combout\ = (\inst19|Add0~34_combout\ & (\inst19|Add9~33\ & VCC)) # (!\inst19|Add0~34_combout\ & (!\inst19|Add9~33\))
-- \inst19|Add9~35\ = CARRY((!\inst19|Add0~34_combout\ & !\inst19|Add9~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~34_combout\,
	datad => VCC,
	cin => \inst19|Add9~33\,
	combout => \inst19|Add9~34_combout\,
	cout => \inst19|Add9~35\);

-- Location: LCCOMB_X23_Y22_N4
\inst19|Add9~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add9~36_combout\ = (\inst19|Add0~36_combout\ & ((GND) # (!\inst19|Add9~35\))) # (!\inst19|Add0~36_combout\ & (\inst19|Add9~35\ $ (GND)))
-- \inst19|Add9~37\ = CARRY((\inst19|Add0~36_combout\) # (!\inst19|Add9~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~36_combout\,
	datad => VCC,
	cin => \inst19|Add9~35\,
	combout => \inst19|Add9~36_combout\,
	cout => \inst19|Add9~37\);

-- Location: LCCOMB_X23_Y22_N6
\inst19|Add9~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add9~38_combout\ = (\inst19|Add0~38_combout\ & (\inst19|Add9~37\ & VCC)) # (!\inst19|Add0~38_combout\ & (!\inst19|Add9~37\))
-- \inst19|Add9~39\ = CARRY((!\inst19|Add0~38_combout\ & !\inst19|Add9~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~38_combout\,
	datad => VCC,
	cin => \inst19|Add9~37\,
	combout => \inst19|Add9~38_combout\,
	cout => \inst19|Add9~39\);

-- Location: LCCOMB_X23_Y22_N8
\inst19|Add9~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add9~40_combout\ = (\inst19|Add0~40_combout\ & ((GND) # (!\inst19|Add9~39\))) # (!\inst19|Add0~40_combout\ & (\inst19|Add9~39\ $ (GND)))
-- \inst19|Add9~41\ = CARRY((\inst19|Add0~40_combout\) # (!\inst19|Add9~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~40_combout\,
	datad => VCC,
	cin => \inst19|Add9~39\,
	combout => \inst19|Add9~40_combout\,
	cout => \inst19|Add9~41\);

-- Location: LCCOMB_X23_Y22_N10
\inst19|Add9~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add9~42_combout\ = (\inst19|Add0~42_combout\ & (\inst19|Add9~41\ & VCC)) # (!\inst19|Add0~42_combout\ & (!\inst19|Add9~41\))
-- \inst19|Add9~43\ = CARRY((!\inst19|Add0~42_combout\ & !\inst19|Add9~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~42_combout\,
	datad => VCC,
	cin => \inst19|Add9~41\,
	combout => \inst19|Add9~42_combout\,
	cout => \inst19|Add9~43\);

-- Location: LCCOMB_X23_Y22_N12
\inst19|Add9~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add9~44_combout\ = (\inst19|Add0~44_combout\ & ((GND) # (!\inst19|Add9~43\))) # (!\inst19|Add0~44_combout\ & (\inst19|Add9~43\ $ (GND)))
-- \inst19|Add9~45\ = CARRY((\inst19|Add0~44_combout\) # (!\inst19|Add9~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~44_combout\,
	datad => VCC,
	cin => \inst19|Add9~43\,
	combout => \inst19|Add9~44_combout\,
	cout => \inst19|Add9~45\);

-- Location: LCCOMB_X23_Y22_N14
\inst19|Add9~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add9~46_combout\ = (\inst19|Add0~46_combout\ & (\inst19|Add9~45\ & VCC)) # (!\inst19|Add0~46_combout\ & (!\inst19|Add9~45\))
-- \inst19|Add9~47\ = CARRY((!\inst19|Add0~46_combout\ & !\inst19|Add9~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~46_combout\,
	datad => VCC,
	cin => \inst19|Add9~45\,
	combout => \inst19|Add9~46_combout\,
	cout => \inst19|Add9~47\);

-- Location: LCCOMB_X23_Y22_N16
\inst19|Add9~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add9~48_combout\ = (\inst19|Add0~48_combout\ & ((GND) # (!\inst19|Add9~47\))) # (!\inst19|Add0~48_combout\ & (\inst19|Add9~47\ $ (GND)))
-- \inst19|Add9~49\ = CARRY((\inst19|Add0~48_combout\) # (!\inst19|Add9~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~48_combout\,
	datad => VCC,
	cin => \inst19|Add9~47\,
	combout => \inst19|Add9~48_combout\,
	cout => \inst19|Add9~49\);

-- Location: LCCOMB_X23_Y22_N18
\inst19|Add9~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add9~50_combout\ = (\inst19|Add0~50_combout\ & (\inst19|Add9~49\ & VCC)) # (!\inst19|Add0~50_combout\ & (!\inst19|Add9~49\))
-- \inst19|Add9~51\ = CARRY((!\inst19|Add0~50_combout\ & !\inst19|Add9~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~50_combout\,
	datad => VCC,
	cin => \inst19|Add9~49\,
	combout => \inst19|Add9~50_combout\,
	cout => \inst19|Add9~51\);

-- Location: LCCOMB_X23_Y22_N20
\inst19|Add9~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add9~52_combout\ = (\inst19|Add0~52_combout\ & ((GND) # (!\inst19|Add9~51\))) # (!\inst19|Add0~52_combout\ & (\inst19|Add9~51\ $ (GND)))
-- \inst19|Add9~53\ = CARRY((\inst19|Add0~52_combout\) # (!\inst19|Add9~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~52_combout\,
	datad => VCC,
	cin => \inst19|Add9~51\,
	combout => \inst19|Add9~52_combout\,
	cout => \inst19|Add9~53\);

-- Location: LCCOMB_X23_Y22_N22
\inst19|Add9~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add9~54_combout\ = (\inst19|Add0~54_combout\ & (\inst19|Add9~53\ & VCC)) # (!\inst19|Add0~54_combout\ & (!\inst19|Add9~53\))
-- \inst19|Add9~55\ = CARRY((!\inst19|Add0~54_combout\ & !\inst19|Add9~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~54_combout\,
	datad => VCC,
	cin => \inst19|Add9~53\,
	combout => \inst19|Add9~54_combout\,
	cout => \inst19|Add9~55\);

-- Location: LCCOMB_X23_Y22_N24
\inst19|Add9~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add9~56_combout\ = (\inst19|Add0~56_combout\ & ((GND) # (!\inst19|Add9~55\))) # (!\inst19|Add0~56_combout\ & (\inst19|Add9~55\ $ (GND)))
-- \inst19|Add9~57\ = CARRY((\inst19|Add0~56_combout\) # (!\inst19|Add9~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~56_combout\,
	datad => VCC,
	cin => \inst19|Add9~55\,
	combout => \inst19|Add9~56_combout\,
	cout => \inst19|Add9~57\);

-- Location: LCCOMB_X23_Y22_N26
\inst19|Add9~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add9~58_combout\ = (\inst19|Add0~58_combout\ & (\inst19|Add9~57\ & VCC)) # (!\inst19|Add0~58_combout\ & (!\inst19|Add9~57\))
-- \inst19|Add9~59\ = CARRY((!\inst19|Add0~58_combout\ & !\inst19|Add9~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~58_combout\,
	datad => VCC,
	cin => \inst19|Add9~57\,
	combout => \inst19|Add9~58_combout\,
	cout => \inst19|Add9~59\);

-- Location: LCCOMB_X23_Y22_N28
\inst19|Add9~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add9~60_combout\ = (\inst19|Add0~60_combout\ & ((GND) # (!\inst19|Add9~59\))) # (!\inst19|Add0~60_combout\ & (\inst19|Add9~59\ $ (GND)))
-- \inst19|Add9~61\ = CARRY((\inst19|Add0~60_combout\) # (!\inst19|Add9~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~60_combout\,
	datad => VCC,
	cin => \inst19|Add9~59\,
	combout => \inst19|Add9~60_combout\,
	cout => \inst19|Add9~61\);

-- Location: LCCOMB_X23_Y22_N30
\inst19|Add9~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add9~62_combout\ = \inst19|Add0~62_combout\ $ (!\inst19|Add9~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~62_combout\,
	cin => \inst19|Add9~61\,
	combout => \inst19|Add9~62_combout\);

-- Location: LCCOMB_X22_Y23_N0
\inst19|Add10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add10~0_combout\ = (\inst19|result~10_combout\ & (\inst19|Add9~62_combout\ $ (VCC))) # (!\inst19|result~10_combout\ & (\inst19|Add9~62_combout\ & VCC))
-- \inst19|Add10~1\ = CARRY((\inst19|result~10_combout\ & \inst19|Add9~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|result~10_combout\,
	datab => \inst19|Add9~62_combout\,
	datad => VCC,
	combout => \inst19|Add10~0_combout\,
	cout => \inst19|Add10~1\);

-- Location: LCCOMB_X22_Y23_N2
\inst19|Add10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add10~2_combout\ = (\inst19|Add10~1\ & (\inst19|Add9~2_combout\ $ ((!\inst19|Add9~62_combout\)))) # (!\inst19|Add10~1\ & ((\inst19|Add9~2_combout\ $ (\inst19|Add9~62_combout\)) # (GND)))
-- \inst19|Add10~3\ = CARRY((\inst19|Add9~2_combout\ $ (!\inst19|Add9~62_combout\)) # (!\inst19|Add10~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add9~2_combout\,
	datab => \inst19|Add9~62_combout\,
	datad => VCC,
	cin => \inst19|Add10~1\,
	combout => \inst19|Add10~2_combout\,
	cout => \inst19|Add10~3\);

-- Location: LCCOMB_X22_Y23_N4
\inst19|Add10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add10~4_combout\ = (\inst19|Add10~3\ & ((\inst19|Add9~4_combout\ $ (\inst19|Add9~62_combout\)))) # (!\inst19|Add10~3\ & (\inst19|Add9~4_combout\ $ (\inst19|Add9~62_combout\ $ (VCC))))
-- \inst19|Add10~5\ = CARRY((!\inst19|Add10~3\ & (\inst19|Add9~4_combout\ $ (\inst19|Add9~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add9~4_combout\,
	datab => \inst19|Add9~62_combout\,
	datad => VCC,
	cin => \inst19|Add10~3\,
	combout => \inst19|Add10~4_combout\,
	cout => \inst19|Add10~5\);

-- Location: LCCOMB_X22_Y23_N6
\inst19|Add10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add10~6_combout\ = (\inst19|Add10~5\ & (\inst19|Add9~6_combout\ $ ((!\inst19|Add9~62_combout\)))) # (!\inst19|Add10~5\ & ((\inst19|Add9~6_combout\ $ (\inst19|Add9~62_combout\)) # (GND)))
-- \inst19|Add10~7\ = CARRY((\inst19|Add9~6_combout\ $ (!\inst19|Add9~62_combout\)) # (!\inst19|Add10~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add9~6_combout\,
	datab => \inst19|Add9~62_combout\,
	datad => VCC,
	cin => \inst19|Add10~5\,
	combout => \inst19|Add10~6_combout\,
	cout => \inst19|Add10~7\);

-- Location: LCCOMB_X22_Y23_N8
\inst19|Add10~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add10~8_combout\ = (\inst19|Add10~7\ & ((\inst19|Add9~62_combout\ $ (\inst19|Add9~8_combout\)))) # (!\inst19|Add10~7\ & (\inst19|Add9~62_combout\ $ (\inst19|Add9~8_combout\ $ (VCC))))
-- \inst19|Add10~9\ = CARRY((!\inst19|Add10~7\ & (\inst19|Add9~62_combout\ $ (\inst19|Add9~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add9~62_combout\,
	datab => \inst19|Add9~8_combout\,
	datad => VCC,
	cin => \inst19|Add10~7\,
	combout => \inst19|Add10~8_combout\,
	cout => \inst19|Add10~9\);

-- Location: LCCOMB_X22_Y23_N10
\inst19|Add10~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add10~10_combout\ = (\inst19|Add10~9\ & (\inst19|Add9~62_combout\ $ ((!\inst19|Add9~10_combout\)))) # (!\inst19|Add10~9\ & ((\inst19|Add9~62_combout\ $ (\inst19|Add9~10_combout\)) # (GND)))
-- \inst19|Add10~11\ = CARRY((\inst19|Add9~62_combout\ $ (!\inst19|Add9~10_combout\)) # (!\inst19|Add10~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add9~62_combout\,
	datab => \inst19|Add9~10_combout\,
	datad => VCC,
	cin => \inst19|Add10~9\,
	combout => \inst19|Add10~10_combout\,
	cout => \inst19|Add10~11\);

-- Location: LCCOMB_X22_Y23_N12
\inst19|Add10~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add10~12_combout\ = (\inst19|Add10~11\ & ((\inst19|Add9~12_combout\ $ (\inst19|Add9~62_combout\)))) # (!\inst19|Add10~11\ & (\inst19|Add9~12_combout\ $ (\inst19|Add9~62_combout\ $ (VCC))))
-- \inst19|Add10~13\ = CARRY((!\inst19|Add10~11\ & (\inst19|Add9~12_combout\ $ (\inst19|Add9~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add9~12_combout\,
	datab => \inst19|Add9~62_combout\,
	datad => VCC,
	cin => \inst19|Add10~11\,
	combout => \inst19|Add10~12_combout\,
	cout => \inst19|Add10~13\);

-- Location: LCCOMB_X22_Y23_N14
\inst19|Add10~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add10~14_combout\ = (\inst19|Add10~13\ & (\inst19|Add9~62_combout\ $ ((!\inst19|Add9~14_combout\)))) # (!\inst19|Add10~13\ & ((\inst19|Add9~62_combout\ $ (\inst19|Add9~14_combout\)) # (GND)))
-- \inst19|Add10~15\ = CARRY((\inst19|Add9~62_combout\ $ (!\inst19|Add9~14_combout\)) # (!\inst19|Add10~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add9~62_combout\,
	datab => \inst19|Add9~14_combout\,
	datad => VCC,
	cin => \inst19|Add10~13\,
	combout => \inst19|Add10~14_combout\,
	cout => \inst19|Add10~15\);

-- Location: LCCOMB_X22_Y23_N16
\inst19|Add10~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add10~16_combout\ = (\inst19|Add10~15\ & ((\inst19|Add9~62_combout\ $ (\inst19|Add9~16_combout\)))) # (!\inst19|Add10~15\ & (\inst19|Add9~62_combout\ $ (\inst19|Add9~16_combout\ $ (VCC))))
-- \inst19|Add10~17\ = CARRY((!\inst19|Add10~15\ & (\inst19|Add9~62_combout\ $ (\inst19|Add9~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add9~62_combout\,
	datab => \inst19|Add9~16_combout\,
	datad => VCC,
	cin => \inst19|Add10~15\,
	combout => \inst19|Add10~16_combout\,
	cout => \inst19|Add10~17\);

-- Location: LCCOMB_X22_Y23_N18
\inst19|Add10~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add10~18_combout\ = (\inst19|Add10~17\ & (\inst19|Add9~18_combout\ $ ((!\inst19|Add9~62_combout\)))) # (!\inst19|Add10~17\ & ((\inst19|Add9~18_combout\ $ (\inst19|Add9~62_combout\)) # (GND)))
-- \inst19|Add10~19\ = CARRY((\inst19|Add9~18_combout\ $ (!\inst19|Add9~62_combout\)) # (!\inst19|Add10~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add9~18_combout\,
	datab => \inst19|Add9~62_combout\,
	datad => VCC,
	cin => \inst19|Add10~17\,
	combout => \inst19|Add10~18_combout\,
	cout => \inst19|Add10~19\);

-- Location: LCCOMB_X22_Y23_N20
\inst19|Add10~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add10~20_combout\ = (\inst19|Add10~19\ & ((\inst19|Add9~20_combout\ $ (\inst19|Add9~62_combout\)))) # (!\inst19|Add10~19\ & (\inst19|Add9~20_combout\ $ (\inst19|Add9~62_combout\ $ (VCC))))
-- \inst19|Add10~21\ = CARRY((!\inst19|Add10~19\ & (\inst19|Add9~20_combout\ $ (\inst19|Add9~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add9~20_combout\,
	datab => \inst19|Add9~62_combout\,
	datad => VCC,
	cin => \inst19|Add10~19\,
	combout => \inst19|Add10~20_combout\,
	cout => \inst19|Add10~21\);

-- Location: LCCOMB_X22_Y23_N22
\inst19|Add10~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add10~22_combout\ = (\inst19|Add10~21\ & (\inst19|Add9~62_combout\ $ ((!\inst19|Add9~22_combout\)))) # (!\inst19|Add10~21\ & ((\inst19|Add9~62_combout\ $ (\inst19|Add9~22_combout\)) # (GND)))
-- \inst19|Add10~23\ = CARRY((\inst19|Add9~62_combout\ $ (!\inst19|Add9~22_combout\)) # (!\inst19|Add10~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add9~62_combout\,
	datab => \inst19|Add9~22_combout\,
	datad => VCC,
	cin => \inst19|Add10~21\,
	combout => \inst19|Add10~22_combout\,
	cout => \inst19|Add10~23\);

-- Location: LCCOMB_X22_Y23_N24
\inst19|Add10~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add10~24_combout\ = (\inst19|Add10~23\ & ((\inst19|Add9~62_combout\ $ (\inst19|Add9~24_combout\)))) # (!\inst19|Add10~23\ & (\inst19|Add9~62_combout\ $ (\inst19|Add9~24_combout\ $ (VCC))))
-- \inst19|Add10~25\ = CARRY((!\inst19|Add10~23\ & (\inst19|Add9~62_combout\ $ (\inst19|Add9~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add9~62_combout\,
	datab => \inst19|Add9~24_combout\,
	datad => VCC,
	cin => \inst19|Add10~23\,
	combout => \inst19|Add10~24_combout\,
	cout => \inst19|Add10~25\);

-- Location: LCCOMB_X22_Y23_N26
\inst19|Add10~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add10~26_combout\ = (\inst19|Add10~25\ & (\inst19|Add9~62_combout\ $ ((!\inst19|Add9~26_combout\)))) # (!\inst19|Add10~25\ & ((\inst19|Add9~62_combout\ $ (\inst19|Add9~26_combout\)) # (GND)))
-- \inst19|Add10~27\ = CARRY((\inst19|Add9~62_combout\ $ (!\inst19|Add9~26_combout\)) # (!\inst19|Add10~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add9~62_combout\,
	datab => \inst19|Add9~26_combout\,
	datad => VCC,
	cin => \inst19|Add10~25\,
	combout => \inst19|Add10~26_combout\,
	cout => \inst19|Add10~27\);

-- Location: LCCOMB_X22_Y23_N28
\inst19|Add10~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add10~28_combout\ = (\inst19|Add10~27\ & ((\inst19|Add9~62_combout\ $ (\inst19|Add9~28_combout\)))) # (!\inst19|Add10~27\ & (\inst19|Add9~62_combout\ $ (\inst19|Add9~28_combout\ $ (VCC))))
-- \inst19|Add10~29\ = CARRY((!\inst19|Add10~27\ & (\inst19|Add9~62_combout\ $ (\inst19|Add9~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add9~62_combout\,
	datab => \inst19|Add9~28_combout\,
	datad => VCC,
	cin => \inst19|Add10~27\,
	combout => \inst19|Add10~28_combout\,
	cout => \inst19|Add10~29\);

-- Location: LCCOMB_X22_Y23_N30
\inst19|Add10~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add10~30_combout\ = (\inst19|Add10~29\ & (\inst19|Add9~30_combout\ $ ((!\inst19|Add9~62_combout\)))) # (!\inst19|Add10~29\ & ((\inst19|Add9~30_combout\ $ (\inst19|Add9~62_combout\)) # (GND)))
-- \inst19|Add10~31\ = CARRY((\inst19|Add9~30_combout\ $ (!\inst19|Add9~62_combout\)) # (!\inst19|Add10~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add9~30_combout\,
	datab => \inst19|Add9~62_combout\,
	datad => VCC,
	cin => \inst19|Add10~29\,
	combout => \inst19|Add10~30_combout\,
	cout => \inst19|Add10~31\);

-- Location: LCCOMB_X22_Y22_N0
\inst19|Add10~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add10~32_combout\ = (\inst19|Add10~31\ & ((\inst19|Add9~32_combout\ $ (\inst19|Add9~62_combout\)))) # (!\inst19|Add10~31\ & (\inst19|Add9~32_combout\ $ (\inst19|Add9~62_combout\ $ (VCC))))
-- \inst19|Add10~33\ = CARRY((!\inst19|Add10~31\ & (\inst19|Add9~32_combout\ $ (\inst19|Add9~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add9~32_combout\,
	datab => \inst19|Add9~62_combout\,
	datad => VCC,
	cin => \inst19|Add10~31\,
	combout => \inst19|Add10~32_combout\,
	cout => \inst19|Add10~33\);

-- Location: LCCOMB_X22_Y22_N2
\inst19|Add10~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add10~34_combout\ = (\inst19|Add10~33\ & (\inst19|Add9~34_combout\ $ ((!\inst19|Add9~62_combout\)))) # (!\inst19|Add10~33\ & ((\inst19|Add9~34_combout\ $ (\inst19|Add9~62_combout\)) # (GND)))
-- \inst19|Add10~35\ = CARRY((\inst19|Add9~34_combout\ $ (!\inst19|Add9~62_combout\)) # (!\inst19|Add10~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add9~34_combout\,
	datab => \inst19|Add9~62_combout\,
	datad => VCC,
	cin => \inst19|Add10~33\,
	combout => \inst19|Add10~34_combout\,
	cout => \inst19|Add10~35\);

-- Location: LCCOMB_X22_Y22_N4
\inst19|Add10~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add10~36_combout\ = (\inst19|Add10~35\ & ((\inst19|Add9~36_combout\ $ (\inst19|Add9~62_combout\)))) # (!\inst19|Add10~35\ & (\inst19|Add9~36_combout\ $ (\inst19|Add9~62_combout\ $ (VCC))))
-- \inst19|Add10~37\ = CARRY((!\inst19|Add10~35\ & (\inst19|Add9~36_combout\ $ (\inst19|Add9~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add9~36_combout\,
	datab => \inst19|Add9~62_combout\,
	datad => VCC,
	cin => \inst19|Add10~35\,
	combout => \inst19|Add10~36_combout\,
	cout => \inst19|Add10~37\);

-- Location: LCCOMB_X22_Y22_N6
\inst19|Add10~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add10~38_combout\ = (\inst19|Add10~37\ & (\inst19|Add9~38_combout\ $ ((!\inst19|Add9~62_combout\)))) # (!\inst19|Add10~37\ & ((\inst19|Add9~38_combout\ $ (\inst19|Add9~62_combout\)) # (GND)))
-- \inst19|Add10~39\ = CARRY((\inst19|Add9~38_combout\ $ (!\inst19|Add9~62_combout\)) # (!\inst19|Add10~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add9~38_combout\,
	datab => \inst19|Add9~62_combout\,
	datad => VCC,
	cin => \inst19|Add10~37\,
	combout => \inst19|Add10~38_combout\,
	cout => \inst19|Add10~39\);

-- Location: LCCOMB_X22_Y22_N8
\inst19|Add10~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add10~40_combout\ = (\inst19|Add10~39\ & ((\inst19|Add9~40_combout\ $ (\inst19|Add9~62_combout\)))) # (!\inst19|Add10~39\ & (\inst19|Add9~40_combout\ $ (\inst19|Add9~62_combout\ $ (VCC))))
-- \inst19|Add10~41\ = CARRY((!\inst19|Add10~39\ & (\inst19|Add9~40_combout\ $ (\inst19|Add9~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add9~40_combout\,
	datab => \inst19|Add9~62_combout\,
	datad => VCC,
	cin => \inst19|Add10~39\,
	combout => \inst19|Add10~40_combout\,
	cout => \inst19|Add10~41\);

-- Location: LCCOMB_X22_Y22_N10
\inst19|Add10~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add10~42_combout\ = (\inst19|Add10~41\ & (\inst19|Add9~42_combout\ $ ((!\inst19|Add9~62_combout\)))) # (!\inst19|Add10~41\ & ((\inst19|Add9~42_combout\ $ (\inst19|Add9~62_combout\)) # (GND)))
-- \inst19|Add10~43\ = CARRY((\inst19|Add9~42_combout\ $ (!\inst19|Add9~62_combout\)) # (!\inst19|Add10~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add9~42_combout\,
	datab => \inst19|Add9~62_combout\,
	datad => VCC,
	cin => \inst19|Add10~41\,
	combout => \inst19|Add10~42_combout\,
	cout => \inst19|Add10~43\);

-- Location: LCCOMB_X22_Y22_N12
\inst19|Add10~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add10~44_combout\ = (\inst19|Add10~43\ & ((\inst19|Add9~62_combout\ $ (\inst19|Add9~44_combout\)))) # (!\inst19|Add10~43\ & (\inst19|Add9~62_combout\ $ (\inst19|Add9~44_combout\ $ (VCC))))
-- \inst19|Add10~45\ = CARRY((!\inst19|Add10~43\ & (\inst19|Add9~62_combout\ $ (\inst19|Add9~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add9~62_combout\,
	datab => \inst19|Add9~44_combout\,
	datad => VCC,
	cin => \inst19|Add10~43\,
	combout => \inst19|Add10~44_combout\,
	cout => \inst19|Add10~45\);

-- Location: LCCOMB_X22_Y22_N14
\inst19|Add10~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add10~46_combout\ = (\inst19|Add10~45\ & (\inst19|Add9~62_combout\ $ ((!\inst19|Add9~46_combout\)))) # (!\inst19|Add10~45\ & ((\inst19|Add9~62_combout\ $ (\inst19|Add9~46_combout\)) # (GND)))
-- \inst19|Add10~47\ = CARRY((\inst19|Add9~62_combout\ $ (!\inst19|Add9~46_combout\)) # (!\inst19|Add10~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add9~62_combout\,
	datab => \inst19|Add9~46_combout\,
	datad => VCC,
	cin => \inst19|Add10~45\,
	combout => \inst19|Add10~46_combout\,
	cout => \inst19|Add10~47\);

-- Location: LCCOMB_X22_Y22_N16
\inst19|Add10~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add10~48_combout\ = (\inst19|Add10~47\ & ((\inst19|Add9~62_combout\ $ (\inst19|Add9~48_combout\)))) # (!\inst19|Add10~47\ & (\inst19|Add9~62_combout\ $ (\inst19|Add9~48_combout\ $ (VCC))))
-- \inst19|Add10~49\ = CARRY((!\inst19|Add10~47\ & (\inst19|Add9~62_combout\ $ (\inst19|Add9~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add9~62_combout\,
	datab => \inst19|Add9~48_combout\,
	datad => VCC,
	cin => \inst19|Add10~47\,
	combout => \inst19|Add10~48_combout\,
	cout => \inst19|Add10~49\);

-- Location: LCCOMB_X22_Y22_N18
\inst19|Add10~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add10~50_combout\ = (\inst19|Add10~49\ & (\inst19|Add9~62_combout\ $ ((!\inst19|Add9~50_combout\)))) # (!\inst19|Add10~49\ & ((\inst19|Add9~62_combout\ $ (\inst19|Add9~50_combout\)) # (GND)))
-- \inst19|Add10~51\ = CARRY((\inst19|Add9~62_combout\ $ (!\inst19|Add9~50_combout\)) # (!\inst19|Add10~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add9~62_combout\,
	datab => \inst19|Add9~50_combout\,
	datad => VCC,
	cin => \inst19|Add10~49\,
	combout => \inst19|Add10~50_combout\,
	cout => \inst19|Add10~51\);

-- Location: LCCOMB_X22_Y22_N20
\inst19|Add10~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add10~52_combout\ = (\inst19|Add10~51\ & ((\inst19|Add9~62_combout\ $ (\inst19|Add9~52_combout\)))) # (!\inst19|Add10~51\ & (\inst19|Add9~62_combout\ $ (\inst19|Add9~52_combout\ $ (VCC))))
-- \inst19|Add10~53\ = CARRY((!\inst19|Add10~51\ & (\inst19|Add9~62_combout\ $ (\inst19|Add9~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add9~62_combout\,
	datab => \inst19|Add9~52_combout\,
	datad => VCC,
	cin => \inst19|Add10~51\,
	combout => \inst19|Add10~52_combout\,
	cout => \inst19|Add10~53\);

-- Location: LCCOMB_X22_Y22_N22
\inst19|Add10~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add10~54_combout\ = (\inst19|Add10~53\ & (\inst19|Add9~62_combout\ $ ((!\inst19|Add9~54_combout\)))) # (!\inst19|Add10~53\ & ((\inst19|Add9~62_combout\ $ (\inst19|Add9~54_combout\)) # (GND)))
-- \inst19|Add10~55\ = CARRY((\inst19|Add9~62_combout\ $ (!\inst19|Add9~54_combout\)) # (!\inst19|Add10~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add9~62_combout\,
	datab => \inst19|Add9~54_combout\,
	datad => VCC,
	cin => \inst19|Add10~53\,
	combout => \inst19|Add10~54_combout\,
	cout => \inst19|Add10~55\);

-- Location: LCCOMB_X22_Y22_N24
\inst19|Add10~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add10~56_combout\ = (\inst19|Add10~55\ & ((\inst19|Add9~62_combout\ $ (\inst19|Add9~56_combout\)))) # (!\inst19|Add10~55\ & (\inst19|Add9~62_combout\ $ (\inst19|Add9~56_combout\ $ (VCC))))
-- \inst19|Add10~57\ = CARRY((!\inst19|Add10~55\ & (\inst19|Add9~62_combout\ $ (\inst19|Add9~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add9~62_combout\,
	datab => \inst19|Add9~56_combout\,
	datad => VCC,
	cin => \inst19|Add10~55\,
	combout => \inst19|Add10~56_combout\,
	cout => \inst19|Add10~57\);

-- Location: LCCOMB_X22_Y22_N26
\inst19|Add10~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add10~58_combout\ = (\inst19|Add10~57\ & (\inst19|Add9~62_combout\ $ ((!\inst19|Add9~58_combout\)))) # (!\inst19|Add10~57\ & ((\inst19|Add9~62_combout\ $ (\inst19|Add9~58_combout\)) # (GND)))
-- \inst19|Add10~59\ = CARRY((\inst19|Add9~62_combout\ $ (!\inst19|Add9~58_combout\)) # (!\inst19|Add10~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add9~62_combout\,
	datab => \inst19|Add9~58_combout\,
	datad => VCC,
	cin => \inst19|Add10~57\,
	combout => \inst19|Add10~58_combout\,
	cout => \inst19|Add10~59\);

-- Location: LCCOMB_X22_Y22_N28
\inst19|Add10~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add10~60_combout\ = (\inst19|Add10~59\ & ((\inst19|Add9~60_combout\ $ (\inst19|Add9~62_combout\)))) # (!\inst19|Add10~59\ & (\inst19|Add9~60_combout\ $ (\inst19|Add9~62_combout\ $ (VCC))))
-- \inst19|Add10~61\ = CARRY((!\inst19|Add10~59\ & (\inst19|Add9~60_combout\ $ (\inst19|Add9~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add9~60_combout\,
	datab => \inst19|Add9~62_combout\,
	datad => VCC,
	cin => \inst19|Add10~59\,
	combout => \inst19|Add10~60_combout\,
	cout => \inst19|Add10~61\);

-- Location: LCCOMB_X22_Y22_N30
\inst19|Add10~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add10~62_combout\ = \inst19|Add10~61\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst19|Add10~61\,
	combout => \inst19|Add10~62_combout\);

-- Location: LCCOMB_X28_Y21_N0
\inst19|Add7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add7~0_combout\ = \inst19|Add0~0_combout\ $ (VCC)
-- \inst19|Add7~1\ = CARRY(\inst19|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~0_combout\,
	datad => VCC,
	combout => \inst19|Add7~0_combout\,
	cout => \inst19|Add7~1\);

-- Location: LCCOMB_X28_Y21_N2
\inst19|Add7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add7~2_combout\ = (\inst19|Add0~2_combout\ & (\inst19|Add7~1\ & VCC)) # (!\inst19|Add0~2_combout\ & (!\inst19|Add7~1\))
-- \inst19|Add7~3\ = CARRY((!\inst19|Add0~2_combout\ & !\inst19|Add7~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~2_combout\,
	datad => VCC,
	cin => \inst19|Add7~1\,
	combout => \inst19|Add7~2_combout\,
	cout => \inst19|Add7~3\);

-- Location: LCCOMB_X28_Y21_N4
\inst19|Add7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add7~4_combout\ = (\inst19|Add0~4_combout\ & ((GND) # (!\inst19|Add7~3\))) # (!\inst19|Add0~4_combout\ & (\inst19|Add7~3\ $ (GND)))
-- \inst19|Add7~5\ = CARRY((\inst19|Add0~4_combout\) # (!\inst19|Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~4_combout\,
	datad => VCC,
	cin => \inst19|Add7~3\,
	combout => \inst19|Add7~4_combout\,
	cout => \inst19|Add7~5\);

-- Location: LCCOMB_X28_Y21_N6
\inst19|Add7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add7~6_combout\ = (\inst19|Add0~6_combout\ & (!\inst19|Add7~5\)) # (!\inst19|Add0~6_combout\ & ((\inst19|Add7~5\) # (GND)))
-- \inst19|Add7~7\ = CARRY((!\inst19|Add7~5\) # (!\inst19|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~6_combout\,
	datad => VCC,
	cin => \inst19|Add7~5\,
	combout => \inst19|Add7~6_combout\,
	cout => \inst19|Add7~7\);

-- Location: LCCOMB_X28_Y21_N12
\inst19|Add7~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add7~12_combout\ = (\inst19|Add0~12_combout\ & (\inst19|Add7~11\ $ (GND))) # (!\inst19|Add0~12_combout\ & (!\inst19|Add7~11\ & VCC))
-- \inst19|Add7~13\ = CARRY((\inst19|Add0~12_combout\ & !\inst19|Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~12_combout\,
	datad => VCC,
	cin => \inst19|Add7~11\,
	combout => \inst19|Add7~12_combout\,
	cout => \inst19|Add7~13\);

-- Location: LCCOMB_X28_Y21_N18
\inst19|Add7~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add7~18_combout\ = (\inst19|Add0~18_combout\ & (\inst19|Add7~17\ & VCC)) # (!\inst19|Add0~18_combout\ & (!\inst19|Add7~17\))
-- \inst19|Add7~19\ = CARRY((!\inst19|Add0~18_combout\ & !\inst19|Add7~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~18_combout\,
	datad => VCC,
	cin => \inst19|Add7~17\,
	combout => \inst19|Add7~18_combout\,
	cout => \inst19|Add7~19\);

-- Location: LCCOMB_X28_Y21_N20
\inst19|Add7~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add7~20_combout\ = (\inst19|Add0~20_combout\ & ((GND) # (!\inst19|Add7~19\))) # (!\inst19|Add0~20_combout\ & (\inst19|Add7~19\ $ (GND)))
-- \inst19|Add7~21\ = CARRY((\inst19|Add0~20_combout\) # (!\inst19|Add7~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~20_combout\,
	datad => VCC,
	cin => \inst19|Add7~19\,
	combout => \inst19|Add7~20_combout\,
	cout => \inst19|Add7~21\);

-- Location: LCCOMB_X28_Y21_N26
\inst19|Add7~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add7~26_combout\ = (\inst19|Add0~26_combout\ & (\inst19|Add7~25\ & VCC)) # (!\inst19|Add0~26_combout\ & (!\inst19|Add7~25\))
-- \inst19|Add7~27\ = CARRY((!\inst19|Add0~26_combout\ & !\inst19|Add7~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~26_combout\,
	datad => VCC,
	cin => \inst19|Add7~25\,
	combout => \inst19|Add7~26_combout\,
	cout => \inst19|Add7~27\);

-- Location: LCCOMB_X28_Y20_N2
\inst19|Add7~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add7~34_combout\ = (\inst19|Add0~34_combout\ & (\inst19|Add7~33\ & VCC)) # (!\inst19|Add0~34_combout\ & (!\inst19|Add7~33\))
-- \inst19|Add7~35\ = CARRY((!\inst19|Add0~34_combout\ & !\inst19|Add7~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~34_combout\,
	datad => VCC,
	cin => \inst19|Add7~33\,
	combout => \inst19|Add7~34_combout\,
	cout => \inst19|Add7~35\);

-- Location: LCCOMB_X28_Y20_N4
\inst19|Add7~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add7~36_combout\ = (\inst19|Add0~36_combout\ & ((GND) # (!\inst19|Add7~35\))) # (!\inst19|Add0~36_combout\ & (\inst19|Add7~35\ $ (GND)))
-- \inst19|Add7~37\ = CARRY((\inst19|Add0~36_combout\) # (!\inst19|Add7~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~36_combout\,
	datad => VCC,
	cin => \inst19|Add7~35\,
	combout => \inst19|Add7~36_combout\,
	cout => \inst19|Add7~37\);

-- Location: LCCOMB_X28_Y20_N6
\inst19|Add7~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add7~38_combout\ = (\inst19|Add0~38_combout\ & (\inst19|Add7~37\ & VCC)) # (!\inst19|Add0~38_combout\ & (!\inst19|Add7~37\))
-- \inst19|Add7~39\ = CARRY((!\inst19|Add0~38_combout\ & !\inst19|Add7~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~38_combout\,
	datad => VCC,
	cin => \inst19|Add7~37\,
	combout => \inst19|Add7~38_combout\,
	cout => \inst19|Add7~39\);

-- Location: LCCOMB_X28_Y20_N8
\inst19|Add7~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add7~40_combout\ = (\inst19|Add0~40_combout\ & ((GND) # (!\inst19|Add7~39\))) # (!\inst19|Add0~40_combout\ & (\inst19|Add7~39\ $ (GND)))
-- \inst19|Add7~41\ = CARRY((\inst19|Add0~40_combout\) # (!\inst19|Add7~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~40_combout\,
	datad => VCC,
	cin => \inst19|Add7~39\,
	combout => \inst19|Add7~40_combout\,
	cout => \inst19|Add7~41\);

-- Location: LCCOMB_X28_Y20_N10
\inst19|Add7~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add7~42_combout\ = (\inst19|Add0~42_combout\ & (\inst19|Add7~41\ & VCC)) # (!\inst19|Add0~42_combout\ & (!\inst19|Add7~41\))
-- \inst19|Add7~43\ = CARRY((!\inst19|Add0~42_combout\ & !\inst19|Add7~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~42_combout\,
	datad => VCC,
	cin => \inst19|Add7~41\,
	combout => \inst19|Add7~42_combout\,
	cout => \inst19|Add7~43\);

-- Location: LCCOMB_X28_Y20_N20
\inst19|Add7~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add7~52_combout\ = (\inst19|Add0~52_combout\ & ((GND) # (!\inst19|Add7~51\))) # (!\inst19|Add0~52_combout\ & (\inst19|Add7~51\ $ (GND)))
-- \inst19|Add7~53\ = CARRY((\inst19|Add0~52_combout\) # (!\inst19|Add7~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~52_combout\,
	datad => VCC,
	cin => \inst19|Add7~51\,
	combout => \inst19|Add7~52_combout\,
	cout => \inst19|Add7~53\);

-- Location: LCCOMB_X28_Y20_N26
\inst19|Add7~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add7~58_combout\ = (\inst19|Add0~58_combout\ & (\inst19|Add7~57\ & VCC)) # (!\inst19|Add0~58_combout\ & (!\inst19|Add7~57\))
-- \inst19|Add7~59\ = CARRY((!\inst19|Add0~58_combout\ & !\inst19|Add7~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~58_combout\,
	datad => VCC,
	cin => \inst19|Add7~57\,
	combout => \inst19|Add7~58_combout\,
	cout => \inst19|Add7~59\);

-- Location: LCCOMB_X28_Y20_N28
\inst19|Add7~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add7~60_combout\ = (\inst19|Add0~60_combout\ & ((GND) # (!\inst19|Add7~59\))) # (!\inst19|Add0~60_combout\ & (\inst19|Add7~59\ $ (GND)))
-- \inst19|Add7~61\ = CARRY((\inst19|Add0~60_combout\) # (!\inst19|Add7~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~60_combout\,
	datad => VCC,
	cin => \inst19|Add7~59\,
	combout => \inst19|Add7~60_combout\,
	cout => \inst19|Add7~61\);

-- Location: LCCOMB_X27_Y21_N4
\inst19|Add8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add8~4_combout\ = (\inst19|Add8~3\ & ((\inst19|Add7~4_combout\ $ (\inst19|Add7~62_combout\)))) # (!\inst19|Add8~3\ & (\inst19|Add7~4_combout\ $ (\inst19|Add7~62_combout\ $ (VCC))))
-- \inst19|Add8~5\ = CARRY((!\inst19|Add8~3\ & (\inst19|Add7~4_combout\ $ (\inst19|Add7~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add7~4_combout\,
	datab => \inst19|Add7~62_combout\,
	datad => VCC,
	cin => \inst19|Add8~3\,
	combout => \inst19|Add8~4_combout\,
	cout => \inst19|Add8~5\);

-- Location: LCCOMB_X27_Y21_N14
\inst19|Add8~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add8~14_combout\ = (\inst19|Add8~13\ & (\inst19|Add7~62_combout\ $ ((!\inst19|Add7~14_combout\)))) # (!\inst19|Add8~13\ & ((\inst19|Add7~62_combout\ $ (\inst19|Add7~14_combout\)) # (GND)))
-- \inst19|Add8~15\ = CARRY((\inst19|Add7~62_combout\ $ (!\inst19|Add7~14_combout\)) # (!\inst19|Add8~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add7~62_combout\,
	datab => \inst19|Add7~14_combout\,
	datad => VCC,
	cin => \inst19|Add8~13\,
	combout => \inst19|Add8~14_combout\,
	cout => \inst19|Add8~15\);

-- Location: LCCOMB_X27_Y21_N16
\inst19|Add8~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add8~16_combout\ = (\inst19|Add8~15\ & ((\inst19|Add7~62_combout\ $ (\inst19|Add7~16_combout\)))) # (!\inst19|Add8~15\ & (\inst19|Add7~62_combout\ $ (\inst19|Add7~16_combout\ $ (VCC))))
-- \inst19|Add8~17\ = CARRY((!\inst19|Add8~15\ & (\inst19|Add7~62_combout\ $ (\inst19|Add7~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add7~62_combout\,
	datab => \inst19|Add7~16_combout\,
	datad => VCC,
	cin => \inst19|Add8~15\,
	combout => \inst19|Add8~16_combout\,
	cout => \inst19|Add8~17\);

-- Location: LCCOMB_X27_Y21_N18
\inst19|Add8~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add8~18_combout\ = (\inst19|Add8~17\ & (\inst19|Add7~18_combout\ $ ((!\inst19|Add7~62_combout\)))) # (!\inst19|Add8~17\ & ((\inst19|Add7~18_combout\ $ (\inst19|Add7~62_combout\)) # (GND)))
-- \inst19|Add8~19\ = CARRY((\inst19|Add7~18_combout\ $ (!\inst19|Add7~62_combout\)) # (!\inst19|Add8~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add7~18_combout\,
	datab => \inst19|Add7~62_combout\,
	datad => VCC,
	cin => \inst19|Add8~17\,
	combout => \inst19|Add8~18_combout\,
	cout => \inst19|Add8~19\);

-- Location: LCCOMB_X27_Y21_N20
\inst19|Add8~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add8~20_combout\ = (\inst19|Add8~19\ & ((\inst19|Add7~20_combout\ $ (\inst19|Add7~62_combout\)))) # (!\inst19|Add8~19\ & (\inst19|Add7~20_combout\ $ (\inst19|Add7~62_combout\ $ (VCC))))
-- \inst19|Add8~21\ = CARRY((!\inst19|Add8~19\ & (\inst19|Add7~20_combout\ $ (\inst19|Add7~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add7~20_combout\,
	datab => \inst19|Add7~62_combout\,
	datad => VCC,
	cin => \inst19|Add8~19\,
	combout => \inst19|Add8~20_combout\,
	cout => \inst19|Add8~21\);

-- Location: LCCOMB_X27_Y21_N22
\inst19|Add8~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add8~22_combout\ = (\inst19|Add8~21\ & (\inst19|Add7~62_combout\ $ ((!\inst19|Add7~22_combout\)))) # (!\inst19|Add8~21\ & ((\inst19|Add7~62_combout\ $ (\inst19|Add7~22_combout\)) # (GND)))
-- \inst19|Add8~23\ = CARRY((\inst19|Add7~62_combout\ $ (!\inst19|Add7~22_combout\)) # (!\inst19|Add8~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add7~62_combout\,
	datab => \inst19|Add7~22_combout\,
	datad => VCC,
	cin => \inst19|Add8~21\,
	combout => \inst19|Add8~22_combout\,
	cout => \inst19|Add8~23\);

-- Location: LCCOMB_X27_Y21_N26
\inst19|Add8~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add8~26_combout\ = (\inst19|Add8~25\ & (\inst19|Add7~26_combout\ $ ((!\inst19|Add7~62_combout\)))) # (!\inst19|Add8~25\ & ((\inst19|Add7~26_combout\ $ (\inst19|Add7~62_combout\)) # (GND)))
-- \inst19|Add8~27\ = CARRY((\inst19|Add7~26_combout\ $ (!\inst19|Add7~62_combout\)) # (!\inst19|Add8~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add7~26_combout\,
	datab => \inst19|Add7~62_combout\,
	datad => VCC,
	cin => \inst19|Add8~25\,
	combout => \inst19|Add8~26_combout\,
	cout => \inst19|Add8~27\);

-- Location: LCCOMB_X27_Y20_N0
\inst19|Add8~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add8~32_combout\ = (\inst19|Add8~31\ & ((\inst19|Add7~62_combout\ $ (\inst19|Add7~32_combout\)))) # (!\inst19|Add8~31\ & (\inst19|Add7~62_combout\ $ (\inst19|Add7~32_combout\ $ (VCC))))
-- \inst19|Add8~33\ = CARRY((!\inst19|Add8~31\ & (\inst19|Add7~62_combout\ $ (\inst19|Add7~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add7~62_combout\,
	datab => \inst19|Add7~32_combout\,
	datad => VCC,
	cin => \inst19|Add8~31\,
	combout => \inst19|Add8~32_combout\,
	cout => \inst19|Add8~33\);

-- Location: LCCOMB_X27_Y20_N2
\inst19|Add8~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add8~34_combout\ = (\inst19|Add8~33\ & (\inst19|Add7~34_combout\ $ ((!\inst19|Add7~62_combout\)))) # (!\inst19|Add8~33\ & ((\inst19|Add7~34_combout\ $ (\inst19|Add7~62_combout\)) # (GND)))
-- \inst19|Add8~35\ = CARRY((\inst19|Add7~34_combout\ $ (!\inst19|Add7~62_combout\)) # (!\inst19|Add8~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add7~34_combout\,
	datab => \inst19|Add7~62_combout\,
	datad => VCC,
	cin => \inst19|Add8~33\,
	combout => \inst19|Add8~34_combout\,
	cout => \inst19|Add8~35\);

-- Location: LCCOMB_X27_Y20_N4
\inst19|Add8~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add8~36_combout\ = (\inst19|Add8~35\ & ((\inst19|Add7~36_combout\ $ (\inst19|Add7~62_combout\)))) # (!\inst19|Add8~35\ & (\inst19|Add7~36_combout\ $ (\inst19|Add7~62_combout\ $ (VCC))))
-- \inst19|Add8~37\ = CARRY((!\inst19|Add8~35\ & (\inst19|Add7~36_combout\ $ (\inst19|Add7~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add7~36_combout\,
	datab => \inst19|Add7~62_combout\,
	datad => VCC,
	cin => \inst19|Add8~35\,
	combout => \inst19|Add8~36_combout\,
	cout => \inst19|Add8~37\);

-- Location: LCCOMB_X27_Y20_N6
\inst19|Add8~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add8~38_combout\ = (\inst19|Add8~37\ & (\inst19|Add7~38_combout\ $ ((!\inst19|Add7~62_combout\)))) # (!\inst19|Add8~37\ & ((\inst19|Add7~38_combout\ $ (\inst19|Add7~62_combout\)) # (GND)))
-- \inst19|Add8~39\ = CARRY((\inst19|Add7~38_combout\ $ (!\inst19|Add7~62_combout\)) # (!\inst19|Add8~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add7~38_combout\,
	datab => \inst19|Add7~62_combout\,
	datad => VCC,
	cin => \inst19|Add8~37\,
	combout => \inst19|Add8~38_combout\,
	cout => \inst19|Add8~39\);

-- Location: LCCOMB_X27_Y20_N12
\inst19|Add8~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add8~44_combout\ = (\inst19|Add8~43\ & ((\inst19|Add7~62_combout\ $ (\inst19|Add7~44_combout\)))) # (!\inst19|Add8~43\ & (\inst19|Add7~62_combout\ $ (\inst19|Add7~44_combout\ $ (VCC))))
-- \inst19|Add8~45\ = CARRY((!\inst19|Add8~43\ & (\inst19|Add7~62_combout\ $ (\inst19|Add7~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add7~62_combout\,
	datab => \inst19|Add7~44_combout\,
	datad => VCC,
	cin => \inst19|Add8~43\,
	combout => \inst19|Add8~44_combout\,
	cout => \inst19|Add8~45\);

-- Location: LCCOMB_X27_Y20_N16
\inst19|Add8~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add8~48_combout\ = (\inst19|Add8~47\ & ((\inst19|Add7~62_combout\ $ (\inst19|Add7~48_combout\)))) # (!\inst19|Add8~47\ & (\inst19|Add7~62_combout\ $ (\inst19|Add7~48_combout\ $ (VCC))))
-- \inst19|Add8~49\ = CARRY((!\inst19|Add8~47\ & (\inst19|Add7~62_combout\ $ (\inst19|Add7~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add7~62_combout\,
	datab => \inst19|Add7~48_combout\,
	datad => VCC,
	cin => \inst19|Add8~47\,
	combout => \inst19|Add8~48_combout\,
	cout => \inst19|Add8~49\);

-- Location: LCCOMB_X27_Y20_N18
\inst19|Add8~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add8~50_combout\ = (\inst19|Add8~49\ & (\inst19|Add7~62_combout\ $ ((!\inst19|Add7~50_combout\)))) # (!\inst19|Add8~49\ & ((\inst19|Add7~62_combout\ $ (\inst19|Add7~50_combout\)) # (GND)))
-- \inst19|Add8~51\ = CARRY((\inst19|Add7~62_combout\ $ (!\inst19|Add7~50_combout\)) # (!\inst19|Add8~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add7~62_combout\,
	datab => \inst19|Add7~50_combout\,
	datad => VCC,
	cin => \inst19|Add8~49\,
	combout => \inst19|Add8~50_combout\,
	cout => \inst19|Add8~51\);

-- Location: LCCOMB_X27_Y20_N20
\inst19|Add8~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add8~52_combout\ = (\inst19|Add8~51\ & ((\inst19|Add7~52_combout\ $ (\inst19|Add7~62_combout\)))) # (!\inst19|Add8~51\ & (\inst19|Add7~52_combout\ $ (\inst19|Add7~62_combout\ $ (VCC))))
-- \inst19|Add8~53\ = CARRY((!\inst19|Add8~51\ & (\inst19|Add7~52_combout\ $ (\inst19|Add7~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add7~52_combout\,
	datab => \inst19|Add7~62_combout\,
	datad => VCC,
	cin => \inst19|Add8~51\,
	combout => \inst19|Add8~52_combout\,
	cout => \inst19|Add8~53\);

-- Location: LCCOMB_X27_Y20_N22
\inst19|Add8~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add8~54_combout\ = (\inst19|Add8~53\ & (\inst19|Add7~62_combout\ $ ((!\inst19|Add7~54_combout\)))) # (!\inst19|Add8~53\ & ((\inst19|Add7~62_combout\ $ (\inst19|Add7~54_combout\)) # (GND)))
-- \inst19|Add8~55\ = CARRY((\inst19|Add7~62_combout\ $ (!\inst19|Add7~54_combout\)) # (!\inst19|Add8~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add7~62_combout\,
	datab => \inst19|Add7~54_combout\,
	datad => VCC,
	cin => \inst19|Add8~53\,
	combout => \inst19|Add8~54_combout\,
	cout => \inst19|Add8~55\);

-- Location: LCCOMB_X17_Y22_N0
\inst19|Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add5~0_combout\ = \inst19|Add0~0_combout\ $ (VCC)
-- \inst19|Add5~1\ = CARRY(\inst19|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~0_combout\,
	datad => VCC,
	combout => \inst19|Add5~0_combout\,
	cout => \inst19|Add5~1\);

-- Location: LCCOMB_X17_Y22_N2
\inst19|Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add5~2_combout\ = (\inst19|Add0~2_combout\ & (!\inst19|Add5~1\)) # (!\inst19|Add0~2_combout\ & ((\inst19|Add5~1\) # (GND)))
-- \inst19|Add5~3\ = CARRY((!\inst19|Add5~1\) # (!\inst19|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~2_combout\,
	datad => VCC,
	cin => \inst19|Add5~1\,
	combout => \inst19|Add5~2_combout\,
	cout => \inst19|Add5~3\);

-- Location: LCCOMB_X17_Y22_N4
\inst19|Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add5~4_combout\ = (\inst19|Add0~4_combout\ & (\inst19|Add5~3\ $ (GND))) # (!\inst19|Add0~4_combout\ & (!\inst19|Add5~3\ & VCC))
-- \inst19|Add5~5\ = CARRY((\inst19|Add0~4_combout\ & !\inst19|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~4_combout\,
	datad => VCC,
	cin => \inst19|Add5~3\,
	combout => \inst19|Add5~4_combout\,
	cout => \inst19|Add5~5\);

-- Location: LCCOMB_X17_Y22_N12
\inst19|Add5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add5~12_combout\ = (\inst19|Add0~12_combout\ & ((GND) # (!\inst19|Add5~11\))) # (!\inst19|Add0~12_combout\ & (\inst19|Add5~11\ $ (GND)))
-- \inst19|Add5~13\ = CARRY((\inst19|Add0~12_combout\) # (!\inst19|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~12_combout\,
	datad => VCC,
	cin => \inst19|Add5~11\,
	combout => \inst19|Add5~12_combout\,
	cout => \inst19|Add5~13\);

-- Location: LCCOMB_X17_Y22_N18
\inst19|Add5~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add5~18_combout\ = (\inst19|Add0~18_combout\ & (\inst19|Add5~17\ & VCC)) # (!\inst19|Add0~18_combout\ & (!\inst19|Add5~17\))
-- \inst19|Add5~19\ = CARRY((!\inst19|Add0~18_combout\ & !\inst19|Add5~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~18_combout\,
	datad => VCC,
	cin => \inst19|Add5~17\,
	combout => \inst19|Add5~18_combout\,
	cout => \inst19|Add5~19\);

-- Location: LCCOMB_X17_Y22_N20
\inst19|Add5~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add5~20_combout\ = (\inst19|Add0~20_combout\ & ((GND) # (!\inst19|Add5~19\))) # (!\inst19|Add0~20_combout\ & (\inst19|Add5~19\ $ (GND)))
-- \inst19|Add5~21\ = CARRY((\inst19|Add0~20_combout\) # (!\inst19|Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~20_combout\,
	datad => VCC,
	cin => \inst19|Add5~19\,
	combout => \inst19|Add5~20_combout\,
	cout => \inst19|Add5~21\);

-- Location: LCCOMB_X17_Y22_N26
\inst19|Add5~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add5~26_combout\ = (\inst19|Add0~26_combout\ & (\inst19|Add5~25\ & VCC)) # (!\inst19|Add0~26_combout\ & (!\inst19|Add5~25\))
-- \inst19|Add5~27\ = CARRY((!\inst19|Add0~26_combout\ & !\inst19|Add5~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~26_combout\,
	datad => VCC,
	cin => \inst19|Add5~25\,
	combout => \inst19|Add5~26_combout\,
	cout => \inst19|Add5~27\);

-- Location: LCCOMB_X17_Y22_N28
\inst19|Add5~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add5~28_combout\ = (\inst19|Add0~28_combout\ & ((GND) # (!\inst19|Add5~27\))) # (!\inst19|Add0~28_combout\ & (\inst19|Add5~27\ $ (GND)))
-- \inst19|Add5~29\ = CARRY((\inst19|Add0~28_combout\) # (!\inst19|Add5~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~28_combout\,
	datad => VCC,
	cin => \inst19|Add5~27\,
	combout => \inst19|Add5~28_combout\,
	cout => \inst19|Add5~29\);

-- Location: LCCOMB_X17_Y21_N0
\inst19|Add5~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add5~32_combout\ = (\inst19|Add0~32_combout\ & ((GND) # (!\inst19|Add5~31\))) # (!\inst19|Add0~32_combout\ & (\inst19|Add5~31\ $ (GND)))
-- \inst19|Add5~33\ = CARRY((\inst19|Add0~32_combout\) # (!\inst19|Add5~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~32_combout\,
	datad => VCC,
	cin => \inst19|Add5~31\,
	combout => \inst19|Add5~32_combout\,
	cout => \inst19|Add5~33\);

-- Location: LCCOMB_X17_Y21_N2
\inst19|Add5~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add5~34_combout\ = (\inst19|Add0~34_combout\ & (\inst19|Add5~33\ & VCC)) # (!\inst19|Add0~34_combout\ & (!\inst19|Add5~33\))
-- \inst19|Add5~35\ = CARRY((!\inst19|Add0~34_combout\ & !\inst19|Add5~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~34_combout\,
	datad => VCC,
	cin => \inst19|Add5~33\,
	combout => \inst19|Add5~34_combout\,
	cout => \inst19|Add5~35\);

-- Location: LCCOMB_X17_Y21_N4
\inst19|Add5~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add5~36_combout\ = (\inst19|Add0~36_combout\ & ((GND) # (!\inst19|Add5~35\))) # (!\inst19|Add0~36_combout\ & (\inst19|Add5~35\ $ (GND)))
-- \inst19|Add5~37\ = CARRY((\inst19|Add0~36_combout\) # (!\inst19|Add5~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~36_combout\,
	datad => VCC,
	cin => \inst19|Add5~35\,
	combout => \inst19|Add5~36_combout\,
	cout => \inst19|Add5~37\);

-- Location: LCCOMB_X17_Y21_N6
\inst19|Add5~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add5~38_combout\ = (\inst19|Add0~38_combout\ & (\inst19|Add5~37\ & VCC)) # (!\inst19|Add0~38_combout\ & (!\inst19|Add5~37\))
-- \inst19|Add5~39\ = CARRY((!\inst19|Add0~38_combout\ & !\inst19|Add5~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~38_combout\,
	datad => VCC,
	cin => \inst19|Add5~37\,
	combout => \inst19|Add5~38_combout\,
	cout => \inst19|Add5~39\);

-- Location: LCCOMB_X17_Y21_N8
\inst19|Add5~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add5~40_combout\ = (\inst19|Add0~40_combout\ & ((GND) # (!\inst19|Add5~39\))) # (!\inst19|Add0~40_combout\ & (\inst19|Add5~39\ $ (GND)))
-- \inst19|Add5~41\ = CARRY((\inst19|Add0~40_combout\) # (!\inst19|Add5~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~40_combout\,
	datad => VCC,
	cin => \inst19|Add5~39\,
	combout => \inst19|Add5~40_combout\,
	cout => \inst19|Add5~41\);

-- Location: LCCOMB_X17_Y21_N20
\inst19|Add5~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add5~52_combout\ = (\inst19|Add0~52_combout\ & ((GND) # (!\inst19|Add5~51\))) # (!\inst19|Add0~52_combout\ & (\inst19|Add5~51\ $ (GND)))
-- \inst19|Add5~53\ = CARRY((\inst19|Add0~52_combout\) # (!\inst19|Add5~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~52_combout\,
	datad => VCC,
	cin => \inst19|Add5~51\,
	combout => \inst19|Add5~52_combout\,
	cout => \inst19|Add5~53\);

-- Location: LCCOMB_X17_Y21_N28
\inst19|Add5~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add5~60_combout\ = (\inst19|Add0~60_combout\ & ((GND) # (!\inst19|Add5~59\))) # (!\inst19|Add0~60_combout\ & (\inst19|Add5~59\ $ (GND)))
-- \inst19|Add5~61\ = CARRY((\inst19|Add0~60_combout\) # (!\inst19|Add5~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~60_combout\,
	datad => VCC,
	cin => \inst19|Add5~59\,
	combout => \inst19|Add5~60_combout\,
	cout => \inst19|Add5~61\);

-- Location: LCCOMB_X16_Y22_N0
\inst19|Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add6~0_combout\ = (\inst19|result~12_combout\ & (\inst19|Add5~62_combout\ $ (VCC))) # (!\inst19|result~12_combout\ & (\inst19|Add5~62_combout\ & VCC))
-- \inst19|Add6~1\ = CARRY((\inst19|result~12_combout\ & \inst19|Add5~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|result~12_combout\,
	datab => \inst19|Add5~62_combout\,
	datad => VCC,
	combout => \inst19|Add6~0_combout\,
	cout => \inst19|Add6~1\);

-- Location: LCCOMB_X16_Y22_N2
\inst19|Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add6~2_combout\ = (\inst19|Add6~1\ & (\inst19|Add5~2_combout\ $ ((!\inst19|Add5~62_combout\)))) # (!\inst19|Add6~1\ & ((\inst19|Add5~2_combout\ $ (\inst19|Add5~62_combout\)) # (GND)))
-- \inst19|Add6~3\ = CARRY((\inst19|Add5~2_combout\ $ (!\inst19|Add5~62_combout\)) # (!\inst19|Add6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add5~2_combout\,
	datab => \inst19|Add5~62_combout\,
	datad => VCC,
	cin => \inst19|Add6~1\,
	combout => \inst19|Add6~2_combout\,
	cout => \inst19|Add6~3\);

-- Location: LCCOMB_X16_Y22_N4
\inst19|Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add6~4_combout\ = (\inst19|Add6~3\ & ((\inst19|Add5~4_combout\ $ (\inst19|Add5~62_combout\)))) # (!\inst19|Add6~3\ & (\inst19|Add5~4_combout\ $ (\inst19|Add5~62_combout\ $ (VCC))))
-- \inst19|Add6~5\ = CARRY((!\inst19|Add6~3\ & (\inst19|Add5~4_combout\ $ (\inst19|Add5~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add5~4_combout\,
	datab => \inst19|Add5~62_combout\,
	datad => VCC,
	cin => \inst19|Add6~3\,
	combout => \inst19|Add6~4_combout\,
	cout => \inst19|Add6~5\);

-- Location: LCCOMB_X16_Y22_N6
\inst19|Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add6~6_combout\ = (\inst19|Add6~5\ & (\inst19|Add5~62_combout\ $ ((!\inst19|Add5~6_combout\)))) # (!\inst19|Add6~5\ & ((\inst19|Add5~62_combout\ $ (\inst19|Add5~6_combout\)) # (GND)))
-- \inst19|Add6~7\ = CARRY((\inst19|Add5~62_combout\ $ (!\inst19|Add5~6_combout\)) # (!\inst19|Add6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add5~62_combout\,
	datab => \inst19|Add5~6_combout\,
	datad => VCC,
	cin => \inst19|Add6~5\,
	combout => \inst19|Add6~6_combout\,
	cout => \inst19|Add6~7\);

-- Location: LCCOMB_X16_Y22_N8
\inst19|Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add6~8_combout\ = (\inst19|Add6~7\ & ((\inst19|Add5~62_combout\ $ (\inst19|Add5~8_combout\)))) # (!\inst19|Add6~7\ & (\inst19|Add5~62_combout\ $ (\inst19|Add5~8_combout\ $ (VCC))))
-- \inst19|Add6~9\ = CARRY((!\inst19|Add6~7\ & (\inst19|Add5~62_combout\ $ (\inst19|Add5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add5~62_combout\,
	datab => \inst19|Add5~8_combout\,
	datad => VCC,
	cin => \inst19|Add6~7\,
	combout => \inst19|Add6~8_combout\,
	cout => \inst19|Add6~9\);

-- Location: LCCOMB_X16_Y22_N10
\inst19|Add6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add6~10_combout\ = (\inst19|Add6~9\ & (\inst19|Add5~62_combout\ $ ((!\inst19|Add5~10_combout\)))) # (!\inst19|Add6~9\ & ((\inst19|Add5~62_combout\ $ (\inst19|Add5~10_combout\)) # (GND)))
-- \inst19|Add6~11\ = CARRY((\inst19|Add5~62_combout\ $ (!\inst19|Add5~10_combout\)) # (!\inst19|Add6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add5~62_combout\,
	datab => \inst19|Add5~10_combout\,
	datad => VCC,
	cin => \inst19|Add6~9\,
	combout => \inst19|Add6~10_combout\,
	cout => \inst19|Add6~11\);

-- Location: LCCOMB_X16_Y22_N12
\inst19|Add6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add6~12_combout\ = (\inst19|Add6~11\ & ((\inst19|Add5~12_combout\ $ (\inst19|Add5~62_combout\)))) # (!\inst19|Add6~11\ & (\inst19|Add5~12_combout\ $ (\inst19|Add5~62_combout\ $ (VCC))))
-- \inst19|Add6~13\ = CARRY((!\inst19|Add6~11\ & (\inst19|Add5~12_combout\ $ (\inst19|Add5~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add5~12_combout\,
	datab => \inst19|Add5~62_combout\,
	datad => VCC,
	cin => \inst19|Add6~11\,
	combout => \inst19|Add6~12_combout\,
	cout => \inst19|Add6~13\);

-- Location: LCCOMB_X16_Y22_N14
\inst19|Add6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add6~14_combout\ = (\inst19|Add6~13\ & (\inst19|Add5~62_combout\ $ ((!\inst19|Add5~14_combout\)))) # (!\inst19|Add6~13\ & ((\inst19|Add5~62_combout\ $ (\inst19|Add5~14_combout\)) # (GND)))
-- \inst19|Add6~15\ = CARRY((\inst19|Add5~62_combout\ $ (!\inst19|Add5~14_combout\)) # (!\inst19|Add6~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add5~62_combout\,
	datab => \inst19|Add5~14_combout\,
	datad => VCC,
	cin => \inst19|Add6~13\,
	combout => \inst19|Add6~14_combout\,
	cout => \inst19|Add6~15\);

-- Location: LCCOMB_X16_Y22_N16
\inst19|Add6~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add6~16_combout\ = (\inst19|Add6~15\ & ((\inst19|Add5~62_combout\ $ (\inst19|Add5~16_combout\)))) # (!\inst19|Add6~15\ & (\inst19|Add5~62_combout\ $ (\inst19|Add5~16_combout\ $ (VCC))))
-- \inst19|Add6~17\ = CARRY((!\inst19|Add6~15\ & (\inst19|Add5~62_combout\ $ (\inst19|Add5~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add5~62_combout\,
	datab => \inst19|Add5~16_combout\,
	datad => VCC,
	cin => \inst19|Add6~15\,
	combout => \inst19|Add6~16_combout\,
	cout => \inst19|Add6~17\);

-- Location: LCCOMB_X16_Y22_N18
\inst19|Add6~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add6~18_combout\ = (\inst19|Add6~17\ & (\inst19|Add5~18_combout\ $ ((!\inst19|Add5~62_combout\)))) # (!\inst19|Add6~17\ & ((\inst19|Add5~18_combout\ $ (\inst19|Add5~62_combout\)) # (GND)))
-- \inst19|Add6~19\ = CARRY((\inst19|Add5~18_combout\ $ (!\inst19|Add5~62_combout\)) # (!\inst19|Add6~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add5~18_combout\,
	datab => \inst19|Add5~62_combout\,
	datad => VCC,
	cin => \inst19|Add6~17\,
	combout => \inst19|Add6~18_combout\,
	cout => \inst19|Add6~19\);

-- Location: LCCOMB_X16_Y22_N20
\inst19|Add6~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add6~20_combout\ = (\inst19|Add6~19\ & ((\inst19|Add5~20_combout\ $ (\inst19|Add5~62_combout\)))) # (!\inst19|Add6~19\ & (\inst19|Add5~20_combout\ $ (\inst19|Add5~62_combout\ $ (VCC))))
-- \inst19|Add6~21\ = CARRY((!\inst19|Add6~19\ & (\inst19|Add5~20_combout\ $ (\inst19|Add5~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add5~20_combout\,
	datab => \inst19|Add5~62_combout\,
	datad => VCC,
	cin => \inst19|Add6~19\,
	combout => \inst19|Add6~20_combout\,
	cout => \inst19|Add6~21\);

-- Location: LCCOMB_X16_Y22_N22
\inst19|Add6~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add6~22_combout\ = (\inst19|Add6~21\ & (\inst19|Add5~62_combout\ $ ((!\inst19|Add5~22_combout\)))) # (!\inst19|Add6~21\ & ((\inst19|Add5~62_combout\ $ (\inst19|Add5~22_combout\)) # (GND)))
-- \inst19|Add6~23\ = CARRY((\inst19|Add5~62_combout\ $ (!\inst19|Add5~22_combout\)) # (!\inst19|Add6~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add5~62_combout\,
	datab => \inst19|Add5~22_combout\,
	datad => VCC,
	cin => \inst19|Add6~21\,
	combout => \inst19|Add6~22_combout\,
	cout => \inst19|Add6~23\);

-- Location: LCCOMB_X16_Y22_N24
\inst19|Add6~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add6~24_combout\ = (\inst19|Add6~23\ & ((\inst19|Add5~62_combout\ $ (\inst19|Add5~24_combout\)))) # (!\inst19|Add6~23\ & (\inst19|Add5~62_combout\ $ (\inst19|Add5~24_combout\ $ (VCC))))
-- \inst19|Add6~25\ = CARRY((!\inst19|Add6~23\ & (\inst19|Add5~62_combout\ $ (\inst19|Add5~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add5~62_combout\,
	datab => \inst19|Add5~24_combout\,
	datad => VCC,
	cin => \inst19|Add6~23\,
	combout => \inst19|Add6~24_combout\,
	cout => \inst19|Add6~25\);

-- Location: LCCOMB_X16_Y22_N26
\inst19|Add6~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add6~26_combout\ = (\inst19|Add6~25\ & (\inst19|Add5~26_combout\ $ ((!\inst19|Add5~62_combout\)))) # (!\inst19|Add6~25\ & ((\inst19|Add5~26_combout\ $ (\inst19|Add5~62_combout\)) # (GND)))
-- \inst19|Add6~27\ = CARRY((\inst19|Add5~26_combout\ $ (!\inst19|Add5~62_combout\)) # (!\inst19|Add6~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add5~26_combout\,
	datab => \inst19|Add5~62_combout\,
	datad => VCC,
	cin => \inst19|Add6~25\,
	combout => \inst19|Add6~26_combout\,
	cout => \inst19|Add6~27\);

-- Location: LCCOMB_X16_Y22_N28
\inst19|Add6~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add6~28_combout\ = (\inst19|Add6~27\ & ((\inst19|Add5~28_combout\ $ (\inst19|Add5~62_combout\)))) # (!\inst19|Add6~27\ & (\inst19|Add5~28_combout\ $ (\inst19|Add5~62_combout\ $ (VCC))))
-- \inst19|Add6~29\ = CARRY((!\inst19|Add6~27\ & (\inst19|Add5~28_combout\ $ (\inst19|Add5~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add5~28_combout\,
	datab => \inst19|Add5~62_combout\,
	datad => VCC,
	cin => \inst19|Add6~27\,
	combout => \inst19|Add6~28_combout\,
	cout => \inst19|Add6~29\);

-- Location: LCCOMB_X16_Y22_N30
\inst19|Add6~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add6~30_combout\ = (\inst19|Add6~29\ & (\inst19|Add5~62_combout\ $ ((!\inst19|Add5~30_combout\)))) # (!\inst19|Add6~29\ & ((\inst19|Add5~62_combout\ $ (\inst19|Add5~30_combout\)) # (GND)))
-- \inst19|Add6~31\ = CARRY((\inst19|Add5~62_combout\ $ (!\inst19|Add5~30_combout\)) # (!\inst19|Add6~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add5~62_combout\,
	datab => \inst19|Add5~30_combout\,
	datad => VCC,
	cin => \inst19|Add6~29\,
	combout => \inst19|Add6~30_combout\,
	cout => \inst19|Add6~31\);

-- Location: LCCOMB_X16_Y21_N0
\inst19|Add6~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add6~32_combout\ = (\inst19|Add6~31\ & ((\inst19|Add5~32_combout\ $ (\inst19|Add5~62_combout\)))) # (!\inst19|Add6~31\ & (\inst19|Add5~32_combout\ $ (\inst19|Add5~62_combout\ $ (VCC))))
-- \inst19|Add6~33\ = CARRY((!\inst19|Add6~31\ & (\inst19|Add5~32_combout\ $ (\inst19|Add5~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add5~32_combout\,
	datab => \inst19|Add5~62_combout\,
	datad => VCC,
	cin => \inst19|Add6~31\,
	combout => \inst19|Add6~32_combout\,
	cout => \inst19|Add6~33\);

-- Location: LCCOMB_X16_Y21_N2
\inst19|Add6~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add6~34_combout\ = (\inst19|Add6~33\ & (\inst19|Add5~34_combout\ $ ((!\inst19|Add5~62_combout\)))) # (!\inst19|Add6~33\ & ((\inst19|Add5~34_combout\ $ (\inst19|Add5~62_combout\)) # (GND)))
-- \inst19|Add6~35\ = CARRY((\inst19|Add5~34_combout\ $ (!\inst19|Add5~62_combout\)) # (!\inst19|Add6~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add5~34_combout\,
	datab => \inst19|Add5~62_combout\,
	datad => VCC,
	cin => \inst19|Add6~33\,
	combout => \inst19|Add6~34_combout\,
	cout => \inst19|Add6~35\);

-- Location: LCCOMB_X16_Y21_N4
\inst19|Add6~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add6~36_combout\ = (\inst19|Add6~35\ & ((\inst19|Add5~36_combout\ $ (\inst19|Add5~62_combout\)))) # (!\inst19|Add6~35\ & (\inst19|Add5~36_combout\ $ (\inst19|Add5~62_combout\ $ (VCC))))
-- \inst19|Add6~37\ = CARRY((!\inst19|Add6~35\ & (\inst19|Add5~36_combout\ $ (\inst19|Add5~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add5~36_combout\,
	datab => \inst19|Add5~62_combout\,
	datad => VCC,
	cin => \inst19|Add6~35\,
	combout => \inst19|Add6~36_combout\,
	cout => \inst19|Add6~37\);

-- Location: LCCOMB_X16_Y21_N6
\inst19|Add6~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add6~38_combout\ = (\inst19|Add6~37\ & (\inst19|Add5~38_combout\ $ ((!\inst19|Add5~62_combout\)))) # (!\inst19|Add6~37\ & ((\inst19|Add5~38_combout\ $ (\inst19|Add5~62_combout\)) # (GND)))
-- \inst19|Add6~39\ = CARRY((\inst19|Add5~38_combout\ $ (!\inst19|Add5~62_combout\)) # (!\inst19|Add6~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add5~38_combout\,
	datab => \inst19|Add5~62_combout\,
	datad => VCC,
	cin => \inst19|Add6~37\,
	combout => \inst19|Add6~38_combout\,
	cout => \inst19|Add6~39\);

-- Location: LCCOMB_X16_Y21_N8
\inst19|Add6~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add6~40_combout\ = (\inst19|Add6~39\ & ((\inst19|Add5~40_combout\ $ (\inst19|Add5~62_combout\)))) # (!\inst19|Add6~39\ & (\inst19|Add5~40_combout\ $ (\inst19|Add5~62_combout\ $ (VCC))))
-- \inst19|Add6~41\ = CARRY((!\inst19|Add6~39\ & (\inst19|Add5~40_combout\ $ (\inst19|Add5~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add5~40_combout\,
	datab => \inst19|Add5~62_combout\,
	datad => VCC,
	cin => \inst19|Add6~39\,
	combout => \inst19|Add6~40_combout\,
	cout => \inst19|Add6~41\);

-- Location: LCCOMB_X16_Y21_N10
\inst19|Add6~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add6~42_combout\ = (\inst19|Add6~41\ & (\inst19|Add5~62_combout\ $ ((!\inst19|Add5~42_combout\)))) # (!\inst19|Add6~41\ & ((\inst19|Add5~62_combout\ $ (\inst19|Add5~42_combout\)) # (GND)))
-- \inst19|Add6~43\ = CARRY((\inst19|Add5~62_combout\ $ (!\inst19|Add5~42_combout\)) # (!\inst19|Add6~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add5~62_combout\,
	datab => \inst19|Add5~42_combout\,
	datad => VCC,
	cin => \inst19|Add6~41\,
	combout => \inst19|Add6~42_combout\,
	cout => \inst19|Add6~43\);

-- Location: LCCOMB_X16_Y21_N12
\inst19|Add6~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add6~44_combout\ = (\inst19|Add6~43\ & ((\inst19|Add5~62_combout\ $ (\inst19|Add5~44_combout\)))) # (!\inst19|Add6~43\ & (\inst19|Add5~62_combout\ $ (\inst19|Add5~44_combout\ $ (VCC))))
-- \inst19|Add6~45\ = CARRY((!\inst19|Add6~43\ & (\inst19|Add5~62_combout\ $ (\inst19|Add5~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add5~62_combout\,
	datab => \inst19|Add5~44_combout\,
	datad => VCC,
	cin => \inst19|Add6~43\,
	combout => \inst19|Add6~44_combout\,
	cout => \inst19|Add6~45\);

-- Location: LCCOMB_X16_Y21_N14
\inst19|Add6~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add6~46_combout\ = (\inst19|Add6~45\ & (\inst19|Add5~62_combout\ $ ((!\inst19|Add5~46_combout\)))) # (!\inst19|Add6~45\ & ((\inst19|Add5~62_combout\ $ (\inst19|Add5~46_combout\)) # (GND)))
-- \inst19|Add6~47\ = CARRY((\inst19|Add5~62_combout\ $ (!\inst19|Add5~46_combout\)) # (!\inst19|Add6~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add5~62_combout\,
	datab => \inst19|Add5~46_combout\,
	datad => VCC,
	cin => \inst19|Add6~45\,
	combout => \inst19|Add6~46_combout\,
	cout => \inst19|Add6~47\);

-- Location: LCCOMB_X16_Y21_N16
\inst19|Add6~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add6~48_combout\ = (\inst19|Add6~47\ & ((\inst19|Add5~62_combout\ $ (\inst19|Add5~48_combout\)))) # (!\inst19|Add6~47\ & (\inst19|Add5~62_combout\ $ (\inst19|Add5~48_combout\ $ (VCC))))
-- \inst19|Add6~49\ = CARRY((!\inst19|Add6~47\ & (\inst19|Add5~62_combout\ $ (\inst19|Add5~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add5~62_combout\,
	datab => \inst19|Add5~48_combout\,
	datad => VCC,
	cin => \inst19|Add6~47\,
	combout => \inst19|Add6~48_combout\,
	cout => \inst19|Add6~49\);

-- Location: LCCOMB_X16_Y21_N18
\inst19|Add6~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add6~50_combout\ = (\inst19|Add6~49\ & (\inst19|Add5~62_combout\ $ ((!\inst19|Add5~50_combout\)))) # (!\inst19|Add6~49\ & ((\inst19|Add5~62_combout\ $ (\inst19|Add5~50_combout\)) # (GND)))
-- \inst19|Add6~51\ = CARRY((\inst19|Add5~62_combout\ $ (!\inst19|Add5~50_combout\)) # (!\inst19|Add6~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add5~62_combout\,
	datab => \inst19|Add5~50_combout\,
	datad => VCC,
	cin => \inst19|Add6~49\,
	combout => \inst19|Add6~50_combout\,
	cout => \inst19|Add6~51\);

-- Location: LCCOMB_X16_Y21_N20
\inst19|Add6~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add6~52_combout\ = (\inst19|Add6~51\ & ((\inst19|Add5~52_combout\ $ (\inst19|Add5~62_combout\)))) # (!\inst19|Add6~51\ & (\inst19|Add5~52_combout\ $ (\inst19|Add5~62_combout\ $ (VCC))))
-- \inst19|Add6~53\ = CARRY((!\inst19|Add6~51\ & (\inst19|Add5~52_combout\ $ (\inst19|Add5~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add5~52_combout\,
	datab => \inst19|Add5~62_combout\,
	datad => VCC,
	cin => \inst19|Add6~51\,
	combout => \inst19|Add6~52_combout\,
	cout => \inst19|Add6~53\);

-- Location: LCCOMB_X16_Y21_N22
\inst19|Add6~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add6~54_combout\ = (\inst19|Add6~53\ & (\inst19|Add5~62_combout\ $ ((!\inst19|Add5~54_combout\)))) # (!\inst19|Add6~53\ & ((\inst19|Add5~62_combout\ $ (\inst19|Add5~54_combout\)) # (GND)))
-- \inst19|Add6~55\ = CARRY((\inst19|Add5~62_combout\ $ (!\inst19|Add5~54_combout\)) # (!\inst19|Add6~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add5~62_combout\,
	datab => \inst19|Add5~54_combout\,
	datad => VCC,
	cin => \inst19|Add6~53\,
	combout => \inst19|Add6~54_combout\,
	cout => \inst19|Add6~55\);

-- Location: LCCOMB_X16_Y21_N24
\inst19|Add6~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add6~56_combout\ = (\inst19|Add6~55\ & ((\inst19|Add5~62_combout\ $ (\inst19|Add5~56_combout\)))) # (!\inst19|Add6~55\ & (\inst19|Add5~62_combout\ $ (\inst19|Add5~56_combout\ $ (VCC))))
-- \inst19|Add6~57\ = CARRY((!\inst19|Add6~55\ & (\inst19|Add5~62_combout\ $ (\inst19|Add5~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add5~62_combout\,
	datab => \inst19|Add5~56_combout\,
	datad => VCC,
	cin => \inst19|Add6~55\,
	combout => \inst19|Add6~56_combout\,
	cout => \inst19|Add6~57\);

-- Location: LCCOMB_X16_Y21_N26
\inst19|Add6~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add6~58_combout\ = (\inst19|Add6~57\ & (\inst19|Add5~62_combout\ $ ((!\inst19|Add5~58_combout\)))) # (!\inst19|Add6~57\ & ((\inst19|Add5~62_combout\ $ (\inst19|Add5~58_combout\)) # (GND)))
-- \inst19|Add6~59\ = CARRY((\inst19|Add5~62_combout\ $ (!\inst19|Add5~58_combout\)) # (!\inst19|Add6~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add5~62_combout\,
	datab => \inst19|Add5~58_combout\,
	datad => VCC,
	cin => \inst19|Add6~57\,
	combout => \inst19|Add6~58_combout\,
	cout => \inst19|Add6~59\);

-- Location: LCCOMB_X16_Y21_N28
\inst19|Add6~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add6~60_combout\ = (\inst19|Add6~59\ & ((\inst19|Add5~60_combout\ $ (\inst19|Add5~62_combout\)))) # (!\inst19|Add6~59\ & (\inst19|Add5~60_combout\ $ (\inst19|Add5~62_combout\ $ (VCC))))
-- \inst19|Add6~61\ = CARRY((!\inst19|Add6~59\ & (\inst19|Add5~60_combout\ $ (\inst19|Add5~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add5~60_combout\,
	datab => \inst19|Add5~62_combout\,
	datad => VCC,
	cin => \inst19|Add6~59\,
	combout => \inst19|Add6~60_combout\,
	cout => \inst19|Add6~61\);

-- Location: LCCOMB_X22_Y17_N0
\inst19|t_sweep_duration[0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[0]~16_combout\ = (\inst19|t_sweep_start\(0) & (\inst19|t_0\(0) $ (VCC))) # (!\inst19|t_sweep_start\(0) & ((\inst19|t_0\(0)) # (GND)))
-- \inst19|t_sweep_duration[0]~17\ = CARRY((\inst19|t_0\(0)) # (!\inst19|t_sweep_start\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_sweep_start\(0),
	datab => \inst19|t_0\(0),
	datad => VCC,
	combout => \inst19|t_sweep_duration[0]~16_combout\,
	cout => \inst19|t_sweep_duration[0]~17\);

-- Location: LCCOMB_X22_Y17_N2
\inst19|t_sweep_duration[1]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[1]~18_combout\ = (\inst19|t_0\(1) & ((\inst19|t_sweep_start\(1) & (!\inst19|t_sweep_duration[0]~17\)) # (!\inst19|t_sweep_start\(1) & (\inst19|t_sweep_duration[0]~17\ & VCC)))) # (!\inst19|t_0\(1) & ((\inst19|t_sweep_start\(1) & 
-- ((\inst19|t_sweep_duration[0]~17\) # (GND))) # (!\inst19|t_sweep_start\(1) & (!\inst19|t_sweep_duration[0]~17\))))
-- \inst19|t_sweep_duration[1]~19\ = CARRY((\inst19|t_0\(1) & (\inst19|t_sweep_start\(1) & !\inst19|t_sweep_duration[0]~17\)) # (!\inst19|t_0\(1) & ((\inst19|t_sweep_start\(1)) # (!\inst19|t_sweep_duration[0]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(1),
	datab => \inst19|t_sweep_start\(1),
	datad => VCC,
	cin => \inst19|t_sweep_duration[0]~17\,
	combout => \inst19|t_sweep_duration[1]~18_combout\,
	cout => \inst19|t_sweep_duration[1]~19\);

-- Location: LCCOMB_X22_Y17_N4
\inst19|t_sweep_duration[2]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[2]~20_combout\ = ((\inst19|t_sweep_start\(2) $ (\inst19|t_0\(2) $ (\inst19|t_sweep_duration[1]~19\)))) # (GND)
-- \inst19|t_sweep_duration[2]~21\ = CARRY((\inst19|t_sweep_start\(2) & (\inst19|t_0\(2) & !\inst19|t_sweep_duration[1]~19\)) # (!\inst19|t_sweep_start\(2) & ((\inst19|t_0\(2)) # (!\inst19|t_sweep_duration[1]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_sweep_start\(2),
	datab => \inst19|t_0\(2),
	datad => VCC,
	cin => \inst19|t_sweep_duration[1]~19\,
	combout => \inst19|t_sweep_duration[2]~20_combout\,
	cout => \inst19|t_sweep_duration[2]~21\);

-- Location: LCCOMB_X22_Y17_N6
\inst19|t_sweep_duration[3]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[3]~22_combout\ = (\inst19|t_0\(3) & ((\inst19|t_sweep_start\(3) & (!\inst19|t_sweep_duration[2]~21\)) # (!\inst19|t_sweep_start\(3) & (\inst19|t_sweep_duration[2]~21\ & VCC)))) # (!\inst19|t_0\(3) & ((\inst19|t_sweep_start\(3) & 
-- ((\inst19|t_sweep_duration[2]~21\) # (GND))) # (!\inst19|t_sweep_start\(3) & (!\inst19|t_sweep_duration[2]~21\))))
-- \inst19|t_sweep_duration[3]~23\ = CARRY((\inst19|t_0\(3) & (\inst19|t_sweep_start\(3) & !\inst19|t_sweep_duration[2]~21\)) # (!\inst19|t_0\(3) & ((\inst19|t_sweep_start\(3)) # (!\inst19|t_sweep_duration[2]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(3),
	datab => \inst19|t_sweep_start\(3),
	datad => VCC,
	cin => \inst19|t_sweep_duration[2]~21\,
	combout => \inst19|t_sweep_duration[3]~22_combout\,
	cout => \inst19|t_sweep_duration[3]~23\);

-- Location: LCCOMB_X22_Y17_N8
\inst19|t_sweep_duration[4]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[4]~24_combout\ = ((\inst19|t_0\(4) $ (\inst19|t_sweep_start\(4) $ (\inst19|t_sweep_duration[3]~23\)))) # (GND)
-- \inst19|t_sweep_duration[4]~25\ = CARRY((\inst19|t_0\(4) & ((!\inst19|t_sweep_duration[3]~23\) # (!\inst19|t_sweep_start\(4)))) # (!\inst19|t_0\(4) & (!\inst19|t_sweep_start\(4) & !\inst19|t_sweep_duration[3]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(4),
	datab => \inst19|t_sweep_start\(4),
	datad => VCC,
	cin => \inst19|t_sweep_duration[3]~23\,
	combout => \inst19|t_sweep_duration[4]~24_combout\,
	cout => \inst19|t_sweep_duration[4]~25\);

-- Location: LCCOMB_X22_Y17_N10
\inst19|t_sweep_duration[5]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[5]~26_combout\ = (\inst19|t_sweep_start\(5) & ((\inst19|t_0\(5) & (!\inst19|t_sweep_duration[4]~25\)) # (!\inst19|t_0\(5) & ((\inst19|t_sweep_duration[4]~25\) # (GND))))) # (!\inst19|t_sweep_start\(5) & ((\inst19|t_0\(5) & 
-- (\inst19|t_sweep_duration[4]~25\ & VCC)) # (!\inst19|t_0\(5) & (!\inst19|t_sweep_duration[4]~25\))))
-- \inst19|t_sweep_duration[5]~27\ = CARRY((\inst19|t_sweep_start\(5) & ((!\inst19|t_sweep_duration[4]~25\) # (!\inst19|t_0\(5)))) # (!\inst19|t_sweep_start\(5) & (!\inst19|t_0\(5) & !\inst19|t_sweep_duration[4]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_sweep_start\(5),
	datab => \inst19|t_0\(5),
	datad => VCC,
	cin => \inst19|t_sweep_duration[4]~25\,
	combout => \inst19|t_sweep_duration[5]~26_combout\,
	cout => \inst19|t_sweep_duration[5]~27\);

-- Location: LCCOMB_X22_Y17_N12
\inst19|t_sweep_duration[6]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[6]~28_combout\ = ((\inst19|t_sweep_start\(6) $ (\inst19|t_0\(6) $ (\inst19|t_sweep_duration[5]~27\)))) # (GND)
-- \inst19|t_sweep_duration[6]~29\ = CARRY((\inst19|t_sweep_start\(6) & (\inst19|t_0\(6) & !\inst19|t_sweep_duration[5]~27\)) # (!\inst19|t_sweep_start\(6) & ((\inst19|t_0\(6)) # (!\inst19|t_sweep_duration[5]~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_sweep_start\(6),
	datab => \inst19|t_0\(6),
	datad => VCC,
	cin => \inst19|t_sweep_duration[5]~27\,
	combout => \inst19|t_sweep_duration[6]~28_combout\,
	cout => \inst19|t_sweep_duration[6]~29\);

-- Location: LCCOMB_X22_Y17_N14
\inst19|t_sweep_duration[7]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[7]~30_combout\ = (\inst19|t_sweep_start\(7) & ((\inst19|t_0\(7) & (!\inst19|t_sweep_duration[6]~29\)) # (!\inst19|t_0\(7) & ((\inst19|t_sweep_duration[6]~29\) # (GND))))) # (!\inst19|t_sweep_start\(7) & ((\inst19|t_0\(7) & 
-- (\inst19|t_sweep_duration[6]~29\ & VCC)) # (!\inst19|t_0\(7) & (!\inst19|t_sweep_duration[6]~29\))))
-- \inst19|t_sweep_duration[7]~31\ = CARRY((\inst19|t_sweep_start\(7) & ((!\inst19|t_sweep_duration[6]~29\) # (!\inst19|t_0\(7)))) # (!\inst19|t_sweep_start\(7) & (!\inst19|t_0\(7) & !\inst19|t_sweep_duration[6]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_sweep_start\(7),
	datab => \inst19|t_0\(7),
	datad => VCC,
	cin => \inst19|t_sweep_duration[6]~29\,
	combout => \inst19|t_sweep_duration[7]~30_combout\,
	cout => \inst19|t_sweep_duration[7]~31\);

-- Location: LCCOMB_X22_Y17_N16
\inst19|t_sweep_duration[8]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[8]~32_combout\ = ((\inst19|t_0\(8) $ (\inst19|t_sweep_start\(8) $ (\inst19|t_sweep_duration[7]~31\)))) # (GND)
-- \inst19|t_sweep_duration[8]~33\ = CARRY((\inst19|t_0\(8) & ((!\inst19|t_sweep_duration[7]~31\) # (!\inst19|t_sweep_start\(8)))) # (!\inst19|t_0\(8) & (!\inst19|t_sweep_start\(8) & !\inst19|t_sweep_duration[7]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(8),
	datab => \inst19|t_sweep_start\(8),
	datad => VCC,
	cin => \inst19|t_sweep_duration[7]~31\,
	combout => \inst19|t_sweep_duration[8]~32_combout\,
	cout => \inst19|t_sweep_duration[8]~33\);

-- Location: LCCOMB_X22_Y17_N18
\inst19|t_sweep_duration[9]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[9]~34_combout\ = (\inst19|t_0\(9) & ((\inst19|t_sweep_start\(9) & (!\inst19|t_sweep_duration[8]~33\)) # (!\inst19|t_sweep_start\(9) & (\inst19|t_sweep_duration[8]~33\ & VCC)))) # (!\inst19|t_0\(9) & ((\inst19|t_sweep_start\(9) & 
-- ((\inst19|t_sweep_duration[8]~33\) # (GND))) # (!\inst19|t_sweep_start\(9) & (!\inst19|t_sweep_duration[8]~33\))))
-- \inst19|t_sweep_duration[9]~35\ = CARRY((\inst19|t_0\(9) & (\inst19|t_sweep_start\(9) & !\inst19|t_sweep_duration[8]~33\)) # (!\inst19|t_0\(9) & ((\inst19|t_sweep_start\(9)) # (!\inst19|t_sweep_duration[8]~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(9),
	datab => \inst19|t_sweep_start\(9),
	datad => VCC,
	cin => \inst19|t_sweep_duration[8]~33\,
	combout => \inst19|t_sweep_duration[9]~34_combout\,
	cout => \inst19|t_sweep_duration[9]~35\);

-- Location: LCCOMB_X22_Y17_N20
\inst19|t_sweep_duration[10]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[10]~36_combout\ = ((\inst19|t_sweep_start\(10) $ (\inst19|t_0\(10) $ (\inst19|t_sweep_duration[9]~35\)))) # (GND)
-- \inst19|t_sweep_duration[10]~37\ = CARRY((\inst19|t_sweep_start\(10) & (\inst19|t_0\(10) & !\inst19|t_sweep_duration[9]~35\)) # (!\inst19|t_sweep_start\(10) & ((\inst19|t_0\(10)) # (!\inst19|t_sweep_duration[9]~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_sweep_start\(10),
	datab => \inst19|t_0\(10),
	datad => VCC,
	cin => \inst19|t_sweep_duration[9]~35\,
	combout => \inst19|t_sweep_duration[10]~36_combout\,
	cout => \inst19|t_sweep_duration[10]~37\);

-- Location: LCCOMB_X22_Y17_N22
\inst19|t_sweep_duration[11]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[11]~38_combout\ = (\inst19|t_0\(11) & ((\inst19|t_sweep_start\(11) & (!\inst19|t_sweep_duration[10]~37\)) # (!\inst19|t_sweep_start\(11) & (\inst19|t_sweep_duration[10]~37\ & VCC)))) # (!\inst19|t_0\(11) & 
-- ((\inst19|t_sweep_start\(11) & ((\inst19|t_sweep_duration[10]~37\) # (GND))) # (!\inst19|t_sweep_start\(11) & (!\inst19|t_sweep_duration[10]~37\))))
-- \inst19|t_sweep_duration[11]~39\ = CARRY((\inst19|t_0\(11) & (\inst19|t_sweep_start\(11) & !\inst19|t_sweep_duration[10]~37\)) # (!\inst19|t_0\(11) & ((\inst19|t_sweep_start\(11)) # (!\inst19|t_sweep_duration[10]~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(11),
	datab => \inst19|t_sweep_start\(11),
	datad => VCC,
	cin => \inst19|t_sweep_duration[10]~37\,
	combout => \inst19|t_sweep_duration[11]~38_combout\,
	cout => \inst19|t_sweep_duration[11]~39\);

-- Location: LCCOMB_X22_Y17_N24
\inst19|t_sweep_duration[12]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[12]~40_combout\ = ((\inst19|t_sweep_start\(12) $ (\inst19|t_0\(12) $ (\inst19|t_sweep_duration[11]~39\)))) # (GND)
-- \inst19|t_sweep_duration[12]~41\ = CARRY((\inst19|t_sweep_start\(12) & (\inst19|t_0\(12) & !\inst19|t_sweep_duration[11]~39\)) # (!\inst19|t_sweep_start\(12) & ((\inst19|t_0\(12)) # (!\inst19|t_sweep_duration[11]~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_sweep_start\(12),
	datab => \inst19|t_0\(12),
	datad => VCC,
	cin => \inst19|t_sweep_duration[11]~39\,
	combout => \inst19|t_sweep_duration[12]~40_combout\,
	cout => \inst19|t_sweep_duration[12]~41\);

-- Location: LCCOMB_X22_Y17_N26
\inst19|t_sweep_duration[13]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[13]~42_combout\ = (\inst19|t_sweep_start\(13) & ((\inst19|t_0\(13) & (!\inst19|t_sweep_duration[12]~41\)) # (!\inst19|t_0\(13) & ((\inst19|t_sweep_duration[12]~41\) # (GND))))) # (!\inst19|t_sweep_start\(13) & ((\inst19|t_0\(13) & 
-- (\inst19|t_sweep_duration[12]~41\ & VCC)) # (!\inst19|t_0\(13) & (!\inst19|t_sweep_duration[12]~41\))))
-- \inst19|t_sweep_duration[13]~43\ = CARRY((\inst19|t_sweep_start\(13) & ((!\inst19|t_sweep_duration[12]~41\) # (!\inst19|t_0\(13)))) # (!\inst19|t_sweep_start\(13) & (!\inst19|t_0\(13) & !\inst19|t_sweep_duration[12]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_sweep_start\(13),
	datab => \inst19|t_0\(13),
	datad => VCC,
	cin => \inst19|t_sweep_duration[12]~41\,
	combout => \inst19|t_sweep_duration[13]~42_combout\,
	cout => \inst19|t_sweep_duration[13]~43\);

-- Location: FF_X22_Y17_N27
\inst19|t_sweep_duration[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[13]~42_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(13));

-- Location: FF_X22_Y17_N25
\inst19|t_sweep_duration[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[12]~40_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(12));

-- Location: FF_X22_Y17_N23
\inst19|t_sweep_duration[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[11]~38_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(11));

-- Location: FF_X22_Y17_N21
\inst19|t_sweep_duration[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[10]~36_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(10));

-- Location: FF_X22_Y17_N19
\inst19|t_sweep_duration[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[9]~34_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(9));

-- Location: FF_X22_Y17_N17
\inst19|t_sweep_duration[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[8]~32_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(8));

-- Location: FF_X22_Y17_N15
\inst19|t_sweep_duration[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[7]~30_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(7));

-- Location: FF_X22_Y17_N13
\inst19|t_sweep_duration[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[6]~28_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(6));

-- Location: FF_X22_Y17_N11
\inst19|t_sweep_duration[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[5]~26_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(5));

-- Location: FF_X22_Y17_N9
\inst19|t_sweep_duration[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[4]~24_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(4));

-- Location: FF_X22_Y17_N7
\inst19|t_sweep_duration[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[3]~22_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(3));

-- Location: FF_X22_Y17_N5
\inst19|t_sweep_duration[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[2]~20_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(2));

-- Location: FF_X22_Y17_N3
\inst19|t_sweep_duration[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[1]~18_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(1));

-- Location: FF_X22_Y17_N1
\inst19|t_sweep_duration[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[0]~16_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(0));

-- Location: FF_X16_Y16_N9
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

-- Location: FF_X16_Y16_N13
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

-- Location: LCCOMB_X16_Y16_N24
\inst8|fifo_proc~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc~0_combout\ = (\inst8|fifo_proc:Tail[0]~q\ & (\inst8|fifo_proc:Head[0]~q\ & (\inst8|fifo_proc:Tail[1]~q\ $ (!\inst8|fifo_proc:Head[1]~q\)))) # (!\inst8|fifo_proc:Tail[0]~q\ & (!\inst8|fifo_proc:Head[0]~q\ & (\inst8|fifo_proc:Tail[1]~q\ $ 
-- (!\inst8|fifo_proc:Head[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Tail[0]~q\,
	datab => \inst8|fifo_proc:Tail[1]~q\,
	datac => \inst8|fifo_proc:Head[0]~q\,
	datad => \inst8|fifo_proc:Head[1]~q\,
	combout => \inst8|fifo_proc~0_combout\);

-- Location: FF_X16_Y16_N17
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

-- Location: LCCOMB_X16_Y16_N2
\inst8|fifo_proc~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc~1_combout\ = (\inst8|fifo_proc:Tail[2]~q\ & (\inst8|fifo_proc:Head[2]~q\ & (\inst8|fifo_proc:Tail[3]~q\ $ (!\inst8|fifo_proc:Head[3]~q\)))) # (!\inst8|fifo_proc:Tail[2]~q\ & (!\inst8|fifo_proc:Head[2]~q\ & (\inst8|fifo_proc:Tail[3]~q\ $ 
-- (!\inst8|fifo_proc:Head[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Tail[2]~q\,
	datab => \inst8|fifo_proc:Head[2]~q\,
	datac => \inst8|fifo_proc:Tail[3]~q\,
	datad => \inst8|fifo_proc:Head[3]~q\,
	combout => \inst8|fifo_proc~1_combout\);

-- Location: FF_X14_Y16_N13
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

-- Location: FF_X14_Y16_N23
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

-- Location: LCCOMB_X14_Y16_N2
\inst8|fifo_proc~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc~2_combout\ = (\inst8|fifo_proc:Head[5]~q\ & (\inst8|fifo_proc:Tail[5]~q\ & (\inst8|fifo_proc:Head[4]~q\ $ (!\inst8|fifo_proc:Tail[4]~q\)))) # (!\inst8|fifo_proc:Head[5]~q\ & (!\inst8|fifo_proc:Tail[5]~q\ & (\inst8|fifo_proc:Head[4]~q\ $ 
-- (!\inst8|fifo_proc:Tail[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Head[5]~q\,
	datab => \inst8|fifo_proc:Head[4]~q\,
	datac => \inst8|fifo_proc:Tail[4]~q\,
	datad => \inst8|fifo_proc:Tail[5]~q\,
	combout => \inst8|fifo_proc~2_combout\);

-- Location: LCCOMB_X15_Y16_N28
\inst8|fifo_proc~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc~3_combout\ = (\inst8|fifo_proc:Head[6]~q\ & (\inst8|fifo_proc:Tail[6]~q\ & (\inst8|fifo_proc:Head[7]~q\ $ (!\inst8|fifo_proc:Tail[7]~q\)))) # (!\inst8|fifo_proc:Head[6]~q\ & (!\inst8|fifo_proc:Tail[6]~q\ & (\inst8|fifo_proc:Head[7]~q\ $ 
-- (!\inst8|fifo_proc:Tail[7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Head[6]~q\,
	datab => \inst8|fifo_proc:Tail[6]~q\,
	datac => \inst8|fifo_proc:Head[7]~q\,
	datad => \inst8|fifo_proc:Tail[7]~q\,
	combout => \inst8|fifo_proc~3_combout\);

-- Location: LCCOMB_X15_Y16_N30
\inst8|fifo_proc~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc~4_combout\ = (\inst8|fifo_proc~2_combout\ & (\inst8|fifo_proc~3_combout\ & (\inst8|fifo_proc~0_combout\ & \inst8|fifo_proc~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc~2_combout\,
	datab => \inst8|fifo_proc~3_combout\,
	datac => \inst8|fifo_proc~0_combout\,
	datad => \inst8|fifo_proc~1_combout\,
	combout => \inst8|fifo_proc~4_combout\);

-- Location: LCCOMB_X16_Y16_N28
\inst8|fifo_proc~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc~5_combout\ = (\inst8|Add0~2_combout\ & (\inst8|fifo_proc:Head[1]~q\ & (\inst8|fifo_proc:Head[0]~q\ $ (!\inst8|Add0~0_combout\)))) # (!\inst8|Add0~2_combout\ & (!\inst8|fifo_proc:Head[1]~q\ & (\inst8|fifo_proc:Head[0]~q\ $ 
-- (!\inst8|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~2_combout\,
	datab => \inst8|fifo_proc:Head[0]~q\,
	datac => \inst8|Add0~0_combout\,
	datad => \inst8|fifo_proc:Head[1]~q\,
	combout => \inst8|fifo_proc~5_combout\);

-- Location: LCCOMB_X16_Y16_N22
\inst8|fifo_proc~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc~6_combout\ = (\inst8|fifo_proc:Head[3]~q\ & (\inst8|Add0~6_combout\ & (\inst8|Add0~4_combout\ $ (!\inst8|fifo_proc:Head[2]~q\)))) # (!\inst8|fifo_proc:Head[3]~q\ & (!\inst8|Add0~6_combout\ & (\inst8|Add0~4_combout\ $ 
-- (!\inst8|fifo_proc:Head[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Head[3]~q\,
	datab => \inst8|Add0~4_combout\,
	datac => \inst8|Add0~6_combout\,
	datad => \inst8|fifo_proc:Head[2]~q\,
	combout => \inst8|fifo_proc~6_combout\);

-- Location: LCCOMB_X14_Y16_N6
\inst8|fifo_proc~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc~7_combout\ = (\inst8|fifo_proc:Head[5]~q\ & (\inst8|Add0~10_combout\ & (\inst8|Add0~8_combout\ $ (!\inst8|fifo_proc:Head[4]~q\)))) # (!\inst8|fifo_proc:Head[5]~q\ & (!\inst8|Add0~10_combout\ & (\inst8|Add0~8_combout\ $ 
-- (!\inst8|fifo_proc:Head[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Head[5]~q\,
	datab => \inst8|Add0~8_combout\,
	datac => \inst8|Add0~10_combout\,
	datad => \inst8|fifo_proc:Head[4]~q\,
	combout => \inst8|fifo_proc~7_combout\);

-- Location: LCCOMB_X17_Y16_N20
\inst8|fifo_proc~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc~8_combout\ = (\inst8|Add0~14_combout\ & (\inst8|fifo_proc:Head[7]~q\ & (\inst8|Add0~12_combout\ $ (!\inst8|fifo_proc:Head[6]~q\)))) # (!\inst8|Add0~14_combout\ & (!\inst8|fifo_proc:Head[7]~q\ & (\inst8|Add0~12_combout\ $ 
-- (!\inst8|fifo_proc:Head[6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~14_combout\,
	datab => \inst8|Add0~12_combout\,
	datac => \inst8|fifo_proc:Head[7]~q\,
	datad => \inst8|fifo_proc:Head[6]~q\,
	combout => \inst8|fifo_proc~8_combout\);

-- Location: LCCOMB_X16_Y16_N0
\inst8|fifo_proc~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|fifo_proc~9_combout\ = (\inst8|fifo_proc~6_combout\ & (\inst8|fifo_proc~7_combout\ & (\inst8|fifo_proc~8_combout\ & \inst8|fifo_proc~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc~6_combout\,
	datab => \inst8|fifo_proc~7_combout\,
	datac => \inst8|fifo_proc~8_combout\,
	datad => \inst8|fifo_proc~5_combout\,
	combout => \inst8|fifo_proc~9_combout\);

-- Location: LCCOMB_X17_Y16_N30
\inst8|Head~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Head~0_combout\ = ((\inst8|fifo_proc~9_combout\ & \inst8|Looped~2_combout\)) # (!\inst19|result~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc~9_combout\,
	datac => \inst8|Looped~2_combout\,
	datad => \inst19|result~q\,
	combout => \inst8|Head~0_combout\);

-- Location: LCCOMB_X16_Y16_N10
\inst8|Full~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Full~0_combout\ = (\inst8|Add0~2_combout\ & (\inst8|Add1~2_combout\ & (\inst8|Add1~0_combout\ $ (!\inst8|Add0~0_combout\)))) # (!\inst8|Add0~2_combout\ & (!\inst8|Add1~2_combout\ & (\inst8|Add1~0_combout\ $ (!\inst8|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~2_combout\,
	datab => \inst8|Add1~0_combout\,
	datac => \inst8|Add0~0_combout\,
	datad => \inst8|Add1~2_combout\,
	combout => \inst8|Full~0_combout\);

-- Location: LCCOMB_X16_Y16_N4
\inst8|Full~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Full~1_combout\ = (\inst8|Add0~4_combout\ & (\inst8|Add1~4_combout\ & (\inst8|Add0~6_combout\ $ (!\inst8|Add1~6_combout\)))) # (!\inst8|Add0~4_combout\ & (!\inst8|Add1~4_combout\ & (\inst8|Add0~6_combout\ $ (!\inst8|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~4_combout\,
	datab => \inst8|Add0~6_combout\,
	datac => \inst8|Add1~6_combout\,
	datad => \inst8|Add1~4_combout\,
	combout => \inst8|Full~1_combout\);

-- Location: LCCOMB_X14_Y16_N0
\inst8|Full~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Full~2_combout\ = (\inst8|Add1~8_combout\ & (\inst8|Add0~8_combout\ & (\inst8|Add0~10_combout\ $ (!\inst8|Add1~10_combout\)))) # (!\inst8|Add1~8_combout\ & (!\inst8|Add0~8_combout\ & (\inst8|Add0~10_combout\ $ (!\inst8|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add1~8_combout\,
	datab => \inst8|Add0~8_combout\,
	datac => \inst8|Add0~10_combout\,
	datad => \inst8|Add1~10_combout\,
	combout => \inst8|Full~2_combout\);

-- Location: LCCOMB_X17_Y16_N24
\inst8|Full~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Full~3_combout\ = (\inst8|Add0~14_combout\ & (\inst8|Add1~14_combout\ & (\inst8|Add0~12_combout\ $ (!\inst8|Add1~12_combout\)))) # (!\inst8|Add0~14_combout\ & (!\inst8|Add1~14_combout\ & (\inst8|Add0~12_combout\ $ (!\inst8|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~14_combout\,
	datab => \inst8|Add1~14_combout\,
	datac => \inst8|Add0~12_combout\,
	datad => \inst8|Add1~12_combout\,
	combout => \inst8|Full~3_combout\);

-- Location: LCCOMB_X14_Y16_N10
\inst8|Full~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Full~4_combout\ = (\inst8|Full~0_combout\ & (\inst8|Full~2_combout\ & (\inst8|Full~1_combout\ & \inst8|Full~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Full~0_combout\,
	datab => \inst8|Full~2_combout\,
	datac => \inst8|Full~1_combout\,
	datad => \inst8|Full~3_combout\,
	combout => \inst8|Full~4_combout\);

-- Location: LCCOMB_X17_Y16_N26
\inst8|Full~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Full~5_combout\ = (\inst8|fifo_proc:Head[1]~q\ & (\inst8|fifo_proc:Head[0]~q\ & (\inst8|fifo_proc:Head[2]~q\ & \inst19|result~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Head[1]~q\,
	datab => \inst8|fifo_proc:Head[0]~q\,
	datac => \inst8|fifo_proc:Head[2]~q\,
	datad => \inst19|result~q\,
	combout => \inst8|Full~5_combout\);

-- Location: LCCOMB_X26_Y18_N6
\inst19|LessThan2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan2~4_combout\ = (!\inst19|Add0~36_combout\ & (!\inst19|Add0~38_combout\ & (!\inst19|Add0~34_combout\ & !\inst19|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~36_combout\,
	datab => \inst19|Add0~38_combout\,
	datac => \inst19|Add0~34_combout\,
	datad => \inst19|Add0~32_combout\,
	combout => \inst19|LessThan2~4_combout\);

-- Location: LCCOMB_X22_Y18_N2
\inst19|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Equal0~0_combout\ = (!\inst19|start_valid_sync\(30) & (!\inst19|start_valid_sync\(29) & (!\inst19|start_valid_sync\(28) & !\inst19|start_valid_sync\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|start_valid_sync\(30),
	datab => \inst19|start_valid_sync\(29),
	datac => \inst19|start_valid_sync\(28),
	datad => \inst19|start_valid_sync\(27),
	combout => \inst19|Equal0~0_combout\);

-- Location: FF_X21_Y17_N7
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
	ena => \inst19|start_valid_sync[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(19));

-- Location: FF_X22_Y19_N13
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
	ena => \inst19|start_valid_sync[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(12));

-- Location: FF_X21_Y17_N15
\inst19|start_valid_sync[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_0\(9),
	sload => VCC,
	ena => \inst19|start_valid_sync[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(9));

-- Location: FF_X23_Y17_N5
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
	ena => \inst19|start_valid_sync[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(4));

-- Location: LCCOMB_X23_Y17_N16
\inst19|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Equal0~7_combout\ = (!\inst19|start_valid_sync\(6) & (!\inst19|start_valid_sync\(5) & (!\inst19|start_valid_sync\(4) & !\inst19|start_valid_sync\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|start_valid_sync\(6),
	datab => \inst19|start_valid_sync\(5),
	datac => \inst19|start_valid_sync\(4),
	datad => \inst19|start_valid_sync\(3),
	combout => \inst19|Equal0~7_combout\);

-- Location: FF_X23_Y17_N27
\inst19|start_valid_sync[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|start_valid_sync[2]~feeder_combout\,
	ena => \inst19|start_valid_sync[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(2));

-- Location: FF_X23_Y17_N15
\inst19|start_valid_sync[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|start_valid_sync[0]~feeder_combout\,
	ena => \inst19|start_valid_sync[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(0));

-- Location: LCCOMB_X23_Y17_N24
\inst19|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Equal0~8_combout\ = (!\inst19|start_valid_sync\(1) & (\inst19|Equal0~7_combout\ & (!\inst19|start_valid_sync\(2) & !\inst19|start_valid_sync\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|start_valid_sync\(1),
	datab => \inst19|Equal0~7_combout\,
	datac => \inst19|start_valid_sync\(2),
	datad => \inst19|start_valid_sync\(0),
	combout => \inst19|Equal0~8_combout\);

-- Location: LCCOMB_X20_Y21_N6
\inst19|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan0~4_combout\ = (!\inst19|Add0~6_combout\ & !\inst19|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~6_combout\,
	datad => \inst19|Add0~4_combout\,
	combout => \inst19|LessThan0~4_combout\);

-- Location: LCCOMB_X20_Y21_N12
\inst19|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan1~0_combout\ = (\inst19|Add0~6_combout\ & ((\inst19|Add0~4_combout\) # ((\inst19|Add0~2_combout\ & \inst19|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~6_combout\,
	datab => \inst19|Add0~4_combout\,
	datac => \inst19|Add0~2_combout\,
	datad => \inst19|Add0~0_combout\,
	combout => \inst19|LessThan1~0_combout\);

-- Location: LCCOMB_X21_Y18_N26
\inst19|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan1~2_combout\ = (!\inst19|LessThan1~1_combout\ & (!\inst19|Add0~54_combout\ & \inst19|LessThan2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan1~1_combout\,
	datab => \inst19|Add0~54_combout\,
	datac => \inst19|LessThan2~6_combout\,
	combout => \inst19|LessThan1~2_combout\);

-- Location: LCCOMB_X24_Y17_N26
\inst19|stop_valid_sync~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~20_combout\ = (!\inst19|stop_valid_sync\(2) & (!\inst19|stop_valid_sync\(3) & (!\inst19|stop_valid_sync\(6) & !\inst19|stop_valid_sync\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(2),
	datab => \inst19|stop_valid_sync\(3),
	datac => \inst19|stop_valid_sync\(6),
	datad => \inst19|stop_valid_sync\(0),
	combout => \inst19|stop_valid_sync~20_combout\);

-- Location: LCCOMB_X24_Y17_N30
\inst19|stop_valid_sync~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~28_combout\ = (!\inst19|stop_valid_sync\(0) & (\inst19|t_0\(6) & !\inst19|stop_valid_sync\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|stop_valid_sync\(0),
	datac => \inst19|t_0\(6),
	datad => \inst19|stop_valid_sync\(2),
	combout => \inst19|stop_valid_sync~28_combout\);

-- Location: LCCOMB_X24_Y16_N22
\inst19|LessThan6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan6~1_combout\ = (\inst19|stop_valid_sync~36_combout\) # ((\inst19|stop_valid_sync~29_combout\) # ((\inst19|stop_valid_sync~35_combout\) # (\inst19|stop_valid_sync~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~36_combout\,
	datab => \inst19|stop_valid_sync~29_combout\,
	datac => \inst19|stop_valid_sync~35_combout\,
	datad => \inst19|stop_valid_sync~31_combout\,
	combout => \inst19|LessThan6~1_combout\);

-- Location: LCCOMB_X22_Y19_N2
\inst19|stop_valid_sync~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~42_combout\ = (\inst19|t_0\(12) & (!\inst19|stop_valid_sync\(13) & !\inst19|stop_valid_sync\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(12),
	datab => \inst19|stop_valid_sync\(13),
	datac => \inst19|stop_valid_sync\(11),
	combout => \inst19|stop_valid_sync~42_combout\);

-- Location: LCCOMB_X24_Y15_N4
\inst19|stop_valid_sync~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~54_combout\ = (!\inst19|stop_valid_sync\(1) & (\inst19|stop_valid_sync~14_combout\ & (\inst19|stop_valid_sync~20_combout\ & !\inst19|stop_valid_sync\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(1),
	datab => \inst19|stop_valid_sync~14_combout\,
	datac => \inst19|stop_valid_sync~20_combout\,
	datad => \inst19|stop_valid_sync\(30),
	combout => \inst19|stop_valid_sync~54_combout\);

-- Location: LCCOMB_X23_Y16_N30
\inst19|stop_valid_sync~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~57_combout\ = (\inst19|stop_valid_sync~11_combout\ & (!\inst19|stop_valid_sync\(10) & \inst19|stop_valid_sync~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|stop_valid_sync~11_combout\,
	datac => \inst19|stop_valid_sync\(10),
	datad => \inst19|stop_valid_sync~56_combout\,
	combout => \inst19|stop_valid_sync~57_combout\);

-- Location: LCCOMB_X23_Y15_N16
\inst19|LessThan6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan6~5_combout\ = (\inst19|stop_valid_sync~61_combout\) # ((\inst19|stop_valid_sync~59_combout\) # ((\inst19|stop_valid_sync~58_combout\) # (\inst19|stop_valid_sync~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~61_combout\,
	datab => \inst19|stop_valid_sync~59_combout\,
	datac => \inst19|stop_valid_sync~58_combout\,
	datad => \inst19|stop_valid_sync~55_combout\,
	combout => \inst19|LessThan6~5_combout\);

-- Location: LCCOMB_X23_Y15_N2
\inst19|stop_valid_sync~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~62_combout\ = (\inst19|stop_valid_sync~56_combout\ & (\inst19|stop_valid_sync~41_combout\ & (!\inst19|stop_valid_sync\(29) & !\inst19|stop_valid_sync\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~56_combout\,
	datab => \inst19|stop_valid_sync~41_combout\,
	datac => \inst19|stop_valid_sync\(29),
	datad => \inst19|stop_valid_sync\(12),
	combout => \inst19|stop_valid_sync~62_combout\);

-- Location: LCCOMB_X22_Y18_N10
\inst19|LessThan6~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan6~7_combout\ = (\inst19|stop_valid_sync~71_combout\) # ((\inst19|stop_valid_sync~73_combout\) # ((\inst19|stop_valid_sync~68_combout\) # (\inst19|stop_valid_sync~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~71_combout\,
	datab => \inst19|stop_valid_sync~73_combout\,
	datac => \inst19|stop_valid_sync~68_combout\,
	datad => \inst19|stop_valid_sync~70_combout\,
	combout => \inst19|LessThan6~7_combout\);

-- Location: LCCOMB_X24_Y16_N26
\inst19|stop_valid_sync~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~80_combout\ = (!\inst19|stop_valid_sync\(7) & \inst19|t_0\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|stop_valid_sync\(7),
	datad => \inst19|t_0\(31),
	combout => \inst19|stop_valid_sync~80_combout\);

-- Location: LCCOMB_X26_Y19_N16
\inst19|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan7~0_combout\ = (\inst19|Add4~6_combout\) # ((\inst19|Add4~4_combout\ & ((\inst19|Add4~2_combout\) # (\inst19|Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add4~6_combout\,
	datab => \inst19|Add4~2_combout\,
	datac => \inst19|Add4~0_combout\,
	datad => \inst19|Add4~4_combout\,
	combout => \inst19|LessThan7~0_combout\);

-- Location: LCCOMB_X26_Y19_N2
\inst19|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan7~1_combout\ = (\inst19|Add4~12_combout\ & (\inst19|Add4~10_combout\ & ((\inst19|Add4~8_combout\) # (\inst19|LessThan7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add4~8_combout\,
	datab => \inst19|Add4~12_combout\,
	datac => \inst19|Add4~10_combout\,
	datad => \inst19|LessThan7~0_combout\,
	combout => \inst19|LessThan7~1_combout\);

-- Location: LCCOMB_X26_Y19_N12
\inst19|LessThan7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan7~2_combout\ = (\inst19|Add4~20_combout\) # ((\inst19|Add4~18_combout\) # ((\inst19|Add4~14_combout\) # (\inst19|Add4~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add4~20_combout\,
	datab => \inst19|Add4~18_combout\,
	datac => \inst19|Add4~14_combout\,
	datad => \inst19|Add4~16_combout\,
	combout => \inst19|LessThan7~2_combout\);

-- Location: LCCOMB_X26_Y19_N22
\inst19|LessThan7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan7~3_combout\ = (\inst19|Add4~58_combout\) # ((\inst19|Add4~60_combout\) # ((\inst19|Add4~56_combout\) # (\inst19|Add4~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add4~58_combout\,
	datab => \inst19|Add4~60_combout\,
	datac => \inst19|Add4~56_combout\,
	datad => \inst19|Add4~54_combout\,
	combout => \inst19|LessThan7~3_combout\);

-- Location: LCCOMB_X26_Y19_N0
\inst19|LessThan7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan7~4_combout\ = (\inst19|Add4~28_combout\) # ((\inst19|Add4~22_combout\) # ((\inst19|Add4~24_combout\) # (\inst19|Add4~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add4~28_combout\,
	datab => \inst19|Add4~22_combout\,
	datac => \inst19|Add4~24_combout\,
	datad => \inst19|Add4~26_combout\,
	combout => \inst19|LessThan7~4_combout\);

-- Location: LCCOMB_X26_Y19_N26
\inst19|LessThan7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan7~5_combout\ = (\inst19|Add4~32_combout\) # ((\inst19|Add4~36_combout\) # ((\inst19|Add4~30_combout\) # (\inst19|Add4~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add4~32_combout\,
	datab => \inst19|Add4~36_combout\,
	datac => \inst19|Add4~30_combout\,
	datad => \inst19|Add4~34_combout\,
	combout => \inst19|LessThan7~5_combout\);

-- Location: LCCOMB_X26_Y19_N20
\inst19|LessThan7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan7~6_combout\ = (\inst19|Add4~44_combout\) # ((\inst19|Add4~40_combout\) # ((\inst19|Add4~38_combout\) # (\inst19|Add4~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add4~44_combout\,
	datab => \inst19|Add4~40_combout\,
	datac => \inst19|Add4~38_combout\,
	datad => \inst19|Add4~42_combout\,
	combout => \inst19|LessThan7~6_combout\);

-- Location: LCCOMB_X26_Y19_N6
\inst19|LessThan7~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan7~7_combout\ = (\inst19|Add4~50_combout\) # ((\inst19|Add4~48_combout\) # ((\inst19|Add4~52_combout\) # (\inst19|Add4~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add4~50_combout\,
	datab => \inst19|Add4~48_combout\,
	datac => \inst19|Add4~52_combout\,
	datad => \inst19|Add4~46_combout\,
	combout => \inst19|LessThan7~7_combout\);

-- Location: LCCOMB_X26_Y19_N24
\inst19|LessThan7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan7~8_combout\ = (\inst19|LessThan7~7_combout\) # ((\inst19|LessThan7~6_combout\) # ((\inst19|LessThan7~5_combout\) # (\inst19|LessThan7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan7~7_combout\,
	datab => \inst19|LessThan7~6_combout\,
	datac => \inst19|LessThan7~5_combout\,
	datad => \inst19|LessThan7~4_combout\,
	combout => \inst19|LessThan7~8_combout\);

-- Location: LCCOMB_X26_Y19_N10
\inst19|LessThan7~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan7~9_combout\ = (\inst19|LessThan7~2_combout\) # ((\inst19|LessThan7~8_combout\) # ((\inst19|LessThan7~3_combout\) # (\inst19|LessThan7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan7~2_combout\,
	datab => \inst19|LessThan7~8_combout\,
	datac => \inst19|LessThan7~3_combout\,
	datad => \inst19|LessThan7~1_combout\,
	combout => \inst19|LessThan7~9_combout\);

-- Location: LCCOMB_X20_Y21_N10
\inst19|LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan3~0_combout\ = (\inst19|Add0~12_combout\ & (\inst19|Add0~10_combout\ & ((\inst19|Add0~8_combout\) # (!\inst19|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan0~4_combout\,
	datab => \inst19|Add0~12_combout\,
	datac => \inst19|Add0~10_combout\,
	datad => \inst19|Add0~8_combout\,
	combout => \inst19|LessThan3~0_combout\);

-- Location: LCCOMB_X29_Y14_N8
\inst19|result~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|result~5_combout\ = \inst19|Add15~62_combout\ $ (\inst19|Add15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|Add15~62_combout\,
	datad => \inst19|Add15~0_combout\,
	combout => \inst19|result~5_combout\);

-- Location: LCCOMB_X28_Y15_N16
\inst19|LessThan13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan13~0_combout\ = (!\inst19|Add16~6_combout\ & (((!\inst19|Add16~0_combout\ & !\inst19|Add16~2_combout\)) # (!\inst19|Add16~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add16~0_combout\,
	datab => \inst19|Add16~2_combout\,
	datac => \inst19|Add16~6_combout\,
	datad => \inst19|Add16~4_combout\,
	combout => \inst19|LessThan13~0_combout\);

-- Location: LCCOMB_X28_Y15_N10
\inst19|LessThan13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan13~1_combout\ = (!\inst19|Add16~10_combout\ & (!\inst19|Add16~12_combout\ & (!\inst19|Add16~14_combout\ & !\inst19|Add16~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add16~10_combout\,
	datab => \inst19|Add16~12_combout\,
	datac => \inst19|Add16~14_combout\,
	datad => \inst19|Add16~8_combout\,
	combout => \inst19|LessThan13~1_combout\);

-- Location: LCCOMB_X28_Y15_N20
\inst19|LessThan13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan13~2_combout\ = (!\inst19|Add16~16_combout\ & (!\inst19|Add16~22_combout\ & (!\inst19|Add16~18_combout\ & !\inst19|Add16~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add16~16_combout\,
	datab => \inst19|Add16~22_combout\,
	datac => \inst19|Add16~18_combout\,
	datad => \inst19|Add16~20_combout\,
	combout => \inst19|LessThan13~2_combout\);

-- Location: LCCOMB_X28_Y14_N16
\inst19|LessThan13~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan13~3_combout\ = (!\inst19|Add16~26_combout\ & (!\inst19|Add16~28_combout\ & (!\inst19|Add16~30_combout\ & !\inst19|Add16~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add16~26_combout\,
	datab => \inst19|Add16~28_combout\,
	datac => \inst19|Add16~30_combout\,
	datad => \inst19|Add16~24_combout\,
	combout => \inst19|LessThan13~3_combout\);

-- Location: LCCOMB_X28_Y15_N22
\inst19|LessThan13~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan13~4_combout\ = (\inst19|LessThan13~1_combout\ & (\inst19|LessThan13~0_combout\ & (\inst19|LessThan13~3_combout\ & \inst19|LessThan13~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan13~1_combout\,
	datab => \inst19|LessThan13~0_combout\,
	datac => \inst19|LessThan13~3_combout\,
	datad => \inst19|LessThan13~2_combout\,
	combout => \inst19|LessThan13~4_combout\);

-- Location: LCCOMB_X28_Y15_N0
\inst19|LessThan13~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan13~5_combout\ = (!\inst19|Add16~34_combout\ & (!\inst19|Add16~38_combout\ & (!\inst19|Add16~32_combout\ & !\inst19|Add16~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add16~34_combout\,
	datab => \inst19|Add16~38_combout\,
	datac => \inst19|Add16~32_combout\,
	datad => \inst19|Add16~36_combout\,
	combout => \inst19|LessThan13~5_combout\);

-- Location: LCCOMB_X28_Y15_N26
\inst19|LessThan13~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan13~6_combout\ = (!\inst19|Add16~46_combout\ & (!\inst19|Add16~44_combout\ & (!\inst19|Add16~42_combout\ & !\inst19|Add16~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add16~46_combout\,
	datab => \inst19|Add16~44_combout\,
	datac => \inst19|Add16~42_combout\,
	datad => \inst19|Add16~40_combout\,
	combout => \inst19|LessThan13~6_combout\);

-- Location: LCCOMB_X29_Y15_N24
\inst19|LessThan13~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan13~7_combout\ = (!\inst19|Add16~52_combout\ & (!\inst19|Add16~54_combout\ & (!\inst19|Add16~48_combout\ & !\inst19|Add16~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add16~52_combout\,
	datab => \inst19|Add16~54_combout\,
	datac => \inst19|Add16~48_combout\,
	datad => \inst19|Add16~50_combout\,
	combout => \inst19|LessThan13~7_combout\);

-- Location: LCCOMB_X29_Y15_N26
\inst19|LessThan13~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan13~8_combout\ = (!\inst19|Add16~58_combout\ & (!\inst19|Add16~56_combout\ & (!\inst19|Add16~60_combout\ & \inst19|LessThan13~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add16~58_combout\,
	datab => \inst19|Add16~56_combout\,
	datac => \inst19|Add16~60_combout\,
	datad => \inst19|LessThan13~7_combout\,
	combout => \inst19|LessThan13~8_combout\);

-- Location: LCCOMB_X28_Y15_N12
\inst19|LessThan13~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan13~9_combout\ = (\inst19|LessThan13~6_combout\ & (\inst19|LessThan13~5_combout\ & (\inst19|LessThan13~4_combout\ & \inst19|LessThan13~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan13~6_combout\,
	datab => \inst19|LessThan13~5_combout\,
	datac => \inst19|LessThan13~4_combout\,
	datad => \inst19|LessThan13~8_combout\,
	combout => \inst19|LessThan13~9_combout\);

-- Location: LCCOMB_X30_Y15_N24
\inst19|result~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|result~6_combout\ = \inst19|Add19~0_combout\ $ (\inst19|Add19~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|Add19~0_combout\,
	datad => \inst19|Add19~62_combout\,
	combout => \inst19|result~6_combout\);

-- Location: LCCOMB_X32_Y16_N0
\inst19|rotor~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|rotor~0_combout\ = (!\inst19|Add20~6_combout\ & (((!\inst19|Add20~0_combout\ & !\inst19|Add20~2_combout\)) # (!\inst19|Add20~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add20~0_combout\,
	datab => \inst19|Add20~6_combout\,
	datac => \inst19|Add20~2_combout\,
	datad => \inst19|Add20~4_combout\,
	combout => \inst19|rotor~0_combout\);

-- Location: LCCOMB_X31_Y15_N8
\inst19|rotor~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|rotor~1_combout\ = (!\inst19|Add20~12_combout\ & (!\inst19|Add20~14_combout\ & (!\inst19|Add20~8_combout\ & !\inst19|Add20~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add20~12_combout\,
	datab => \inst19|Add20~14_combout\,
	datac => \inst19|Add20~8_combout\,
	datad => \inst19|Add20~10_combout\,
	combout => \inst19|rotor~1_combout\);

-- Location: LCCOMB_X32_Y15_N22
\inst19|rotor~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|rotor~2_combout\ = (!\inst19|Add20~22_combout\ & (!\inst19|Add20~20_combout\ & (!\inst19|Add20~16_combout\ & !\inst19|Add20~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add20~22_combout\,
	datab => \inst19|Add20~20_combout\,
	datac => \inst19|Add20~16_combout\,
	datad => \inst19|Add20~18_combout\,
	combout => \inst19|rotor~2_combout\);

-- Location: LCCOMB_X32_Y17_N16
\inst19|rotor~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|rotor~3_combout\ = (!\inst19|Add20~24_combout\ & (!\inst19|Add20~30_combout\ & (!\inst19|Add20~26_combout\ & !\inst19|Add20~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add20~24_combout\,
	datab => \inst19|Add20~30_combout\,
	datac => \inst19|Add20~26_combout\,
	datad => \inst19|Add20~28_combout\,
	combout => \inst19|rotor~3_combout\);

-- Location: LCCOMB_X32_Y15_N30
\inst19|rotor~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|rotor~4_combout\ = (\inst19|rotor~1_combout\ & (\inst19|rotor~0_combout\ & (\inst19|rotor~2_combout\ & \inst19|rotor~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|rotor~1_combout\,
	datab => \inst19|rotor~0_combout\,
	datac => \inst19|rotor~2_combout\,
	datad => \inst19|rotor~3_combout\,
	combout => \inst19|rotor~4_combout\);

-- Location: LCCOMB_X32_Y15_N24
\inst19|rotor~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|rotor~5_combout\ = (!\inst19|Add20~38_combout\ & (!\inst19|Add20~32_combout\ & (!\inst19|Add20~36_combout\ & !\inst19|Add20~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add20~38_combout\,
	datab => \inst19|Add20~32_combout\,
	datac => \inst19|Add20~36_combout\,
	datad => \inst19|Add20~34_combout\,
	combout => \inst19|rotor~5_combout\);

-- Location: LCCOMB_X32_Y15_N26
\inst19|rotor~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|rotor~6_combout\ = (!\inst19|Add20~42_combout\ & (!\inst19|Add20~40_combout\ & (!\inst19|Add20~44_combout\ & !\inst19|Add20~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add20~42_combout\,
	datab => \inst19|Add20~40_combout\,
	datac => \inst19|Add20~44_combout\,
	datad => \inst19|Add20~46_combout\,
	combout => \inst19|rotor~6_combout\);

-- Location: LCCOMB_X32_Y15_N0
\inst19|rotor~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|rotor~7_combout\ = (!\inst19|Add20~50_combout\ & (!\inst19|Add20~54_combout\ & (!\inst19|Add20~48_combout\ & !\inst19|Add20~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add20~50_combout\,
	datab => \inst19|Add20~54_combout\,
	datac => \inst19|Add20~48_combout\,
	datad => \inst19|Add20~52_combout\,
	combout => \inst19|rotor~7_combout\);

-- Location: LCCOMB_X32_Y15_N16
\inst19|rotor~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|rotor~8_combout\ = (!\inst19|Add20~60_combout\ & (!\inst19|Add20~56_combout\ & (!\inst19|Add20~58_combout\ & \inst19|rotor~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add20~60_combout\,
	datab => \inst19|Add20~56_combout\,
	datac => \inst19|Add20~58_combout\,
	datad => \inst19|rotor~7_combout\,
	combout => \inst19|rotor~8_combout\);

-- Location: LCCOMB_X32_Y15_N6
\inst19|rotor~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|rotor~9_combout\ = (\inst19|rotor~4_combout\ & (\inst19|rotor~8_combout\ & (\inst19|rotor~6_combout\ & \inst19|rotor~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|rotor~4_combout\,
	datab => \inst19|rotor~8_combout\,
	datac => \inst19|rotor~6_combout\,
	datad => \inst19|rotor~5_combout\,
	combout => \inst19|rotor~9_combout\);

-- Location: LCCOMB_X20_Y18_N0
\inst19|result~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|result~7_combout\ = \inst19|Add17~0_combout\ $ (\inst19|Add17~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|Add17~0_combout\,
	datad => \inst19|Add17~62_combout\,
	combout => \inst19|result~7_combout\);

-- Location: LCCOMB_X32_Y15_N14
\inst19|rotor~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|rotor~10_combout\ = (!\inst19|Add18~62_combout\ & ((\inst19|rotor~q\) # ((\inst19|Add20~62_combout\) # (\inst19|rotor~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|rotor~q\,
	datab => \inst19|Add18~62_combout\,
	datac => \inst19|Add20~62_combout\,
	datad => \inst19|rotor~9_combout\,
	combout => \inst19|rotor~10_combout\);

-- Location: LCCOMB_X20_Y15_N24
\inst19|LessThan14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan14~0_combout\ = (!\inst19|Add18~6_combout\ & (((!\inst19|Add18~2_combout\ & !\inst19|Add18~0_combout\)) # (!\inst19|Add18~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add18~2_combout\,
	datab => \inst19|Add18~6_combout\,
	datac => \inst19|Add18~4_combout\,
	datad => \inst19|Add18~0_combout\,
	combout => \inst19|LessThan14~0_combout\);

-- Location: LCCOMB_X20_Y15_N2
\inst19|LessThan14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan14~1_combout\ = (!\inst19|Add18~14_combout\ & (!\inst19|Add18~12_combout\ & (!\inst19|Add18~8_combout\ & !\inst19|Add18~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add18~14_combout\,
	datab => \inst19|Add18~12_combout\,
	datac => \inst19|Add18~8_combout\,
	datad => \inst19|Add18~10_combout\,
	combout => \inst19|LessThan14~1_combout\);

-- Location: LCCOMB_X20_Y15_N4
\inst19|LessThan14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan14~2_combout\ = (!\inst19|Add18~16_combout\ & (!\inst19|Add18~22_combout\ & (!\inst19|Add18~20_combout\ & !\inst19|Add18~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add18~16_combout\,
	datab => \inst19|Add18~22_combout\,
	datac => \inst19|Add18~20_combout\,
	datad => \inst19|Add18~18_combout\,
	combout => \inst19|LessThan14~2_combout\);

-- Location: LCCOMB_X20_Y15_N6
\inst19|LessThan14~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan14~3_combout\ = (!\inst19|Add18~24_combout\ & (!\inst19|Add18~26_combout\ & (!\inst19|Add18~28_combout\ & !\inst19|Add18~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add18~24_combout\,
	datab => \inst19|Add18~26_combout\,
	datac => \inst19|Add18~28_combout\,
	datad => \inst19|Add18~30_combout\,
	combout => \inst19|LessThan14~3_combout\);

-- Location: LCCOMB_X20_Y15_N8
\inst19|LessThan14~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan14~4_combout\ = (\inst19|LessThan14~3_combout\ & (\inst19|LessThan14~1_combout\ & (\inst19|LessThan14~2_combout\ & \inst19|LessThan14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan14~3_combout\,
	datab => \inst19|LessThan14~1_combout\,
	datac => \inst19|LessThan14~2_combout\,
	datad => \inst19|LessThan14~0_combout\,
	combout => \inst19|LessThan14~4_combout\);

-- Location: LCCOMB_X21_Y16_N16
\inst19|LessThan14~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan14~5_combout\ = (!\inst19|Add18~32_combout\ & (!\inst19|Add18~36_combout\ & (!\inst19|Add18~38_combout\ & !\inst19|Add18~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add18~32_combout\,
	datab => \inst19|Add18~36_combout\,
	datac => \inst19|Add18~38_combout\,
	datad => \inst19|Add18~34_combout\,
	combout => \inst19|LessThan14~5_combout\);

-- Location: LCCOMB_X28_Y15_N6
\inst19|LessThan14~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan14~6_combout\ = (!\inst19|Add18~42_combout\ & (!\inst19|Add18~40_combout\ & (!\inst19|Add18~46_combout\ & !\inst19|Add18~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add18~42_combout\,
	datab => \inst19|Add18~40_combout\,
	datac => \inst19|Add18~46_combout\,
	datad => \inst19|Add18~44_combout\,
	combout => \inst19|LessThan14~6_combout\);

-- Location: LCCOMB_X19_Y15_N0
\inst19|LessThan14~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan14~7_combout\ = (!\inst19|Add18~48_combout\ & (!\inst19|Add18~52_combout\ & (!\inst19|Add18~54_combout\ & !\inst19|Add18~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add18~48_combout\,
	datab => \inst19|Add18~52_combout\,
	datac => \inst19|Add18~54_combout\,
	datad => \inst19|Add18~50_combout\,
	combout => \inst19|LessThan14~7_combout\);

-- Location: LCCOMB_X19_Y15_N10
\inst19|LessThan14~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan14~8_combout\ = (!\inst19|Add18~56_combout\ & (\inst19|LessThan14~7_combout\ & (!\inst19|Add18~58_combout\ & !\inst19|Add18~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add18~56_combout\,
	datab => \inst19|LessThan14~7_combout\,
	datac => \inst19|Add18~58_combout\,
	datad => \inst19|Add18~60_combout\,
	combout => \inst19|LessThan14~8_combout\);

-- Location: LCCOMB_X28_Y15_N24
\inst19|LessThan14~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan14~9_combout\ = (\inst19|LessThan14~4_combout\ & (\inst19|LessThan14~8_combout\ & (\inst19|LessThan14~5_combout\ & \inst19|LessThan14~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan14~4_combout\,
	datab => \inst19|LessThan14~8_combout\,
	datac => \inst19|LessThan14~5_combout\,
	datad => \inst19|LessThan14~6_combout\,
	combout => \inst19|LessThan14~9_combout\);

-- Location: LCCOMB_X28_Y15_N18
\inst19|rotor~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|rotor~11_combout\ = (\inst19|LessThan13~9_combout\) # ((\inst19|Add16~62_combout\) # ((!\inst19|LessThan14~9_combout\ & \inst19|rotor~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan13~9_combout\,
	datab => \inst19|LessThan14~9_combout\,
	datac => \inst19|Add16~62_combout\,
	datad => \inst19|rotor~10_combout\,
	combout => \inst19|rotor~11_combout\);

-- Location: LCCOMB_X20_Y21_N22
\inst19|result~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|result~8_combout\ = \inst19|Add13~56_combout\ $ (\inst19|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|Add13~56_combout\,
	datad => \inst19|Add0~0_combout\,
	combout => \inst19|result~8_combout\);

-- Location: LCCOMB_X15_Y17_N16
\inst19|LessThan12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan12~0_combout\ = (!\inst19|Add14~6_combout\ & (((!\inst19|Add14~0_combout\ & !\inst19|Add14~2_combout\)) # (!\inst19|Add14~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add14~0_combout\,
	datab => \inst19|Add14~4_combout\,
	datac => \inst19|Add14~2_combout\,
	datad => \inst19|Add14~6_combout\,
	combout => \inst19|LessThan12~0_combout\);

-- Location: LCCOMB_X15_Y17_N2
\inst19|LessThan12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan12~1_combout\ = (!\inst19|Add14~10_combout\ & (!\inst19|Add14~12_combout\ & (!\inst19|Add14~14_combout\ & !\inst19|Add14~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add14~10_combout\,
	datab => \inst19|Add14~12_combout\,
	datac => \inst19|Add14~14_combout\,
	datad => \inst19|Add14~8_combout\,
	combout => \inst19|LessThan12~1_combout\);

-- Location: LCCOMB_X15_Y17_N12
\inst19|LessThan12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan12~2_combout\ = (!\inst19|Add14~16_combout\ & (!\inst19|Add14~20_combout\ & (!\inst19|Add14~18_combout\ & !\inst19|Add14~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add14~16_combout\,
	datab => \inst19|Add14~20_combout\,
	datac => \inst19|Add14~18_combout\,
	datad => \inst19|Add14~22_combout\,
	combout => \inst19|LessThan12~2_combout\);

-- Location: LCCOMB_X15_Y17_N22
\inst19|LessThan12~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan12~3_combout\ = (!\inst19|Add14~24_combout\ & (!\inst19|Add14~26_combout\ & (!\inst19|Add14~30_combout\ & !\inst19|Add14~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add14~24_combout\,
	datab => \inst19|Add14~26_combout\,
	datac => \inst19|Add14~30_combout\,
	datad => \inst19|Add14~28_combout\,
	combout => \inst19|LessThan12~3_combout\);

-- Location: LCCOMB_X15_Y17_N8
\inst19|LessThan12~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan12~4_combout\ = (\inst19|LessThan12~2_combout\ & (\inst19|LessThan12~0_combout\ & (\inst19|LessThan12~3_combout\ & \inst19|LessThan12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan12~2_combout\,
	datab => \inst19|LessThan12~0_combout\,
	datac => \inst19|LessThan12~3_combout\,
	datad => \inst19|LessThan12~1_combout\,
	combout => \inst19|LessThan12~4_combout\);

-- Location: LCCOMB_X15_Y17_N10
\inst19|LessThan12~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan12~5_combout\ = (!\inst19|Add14~34_combout\ & (!\inst19|Add14~36_combout\ & (!\inst19|Add14~32_combout\ & !\inst19|Add14~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add14~34_combout\,
	datab => \inst19|Add14~36_combout\,
	datac => \inst19|Add14~32_combout\,
	datad => \inst19|Add14~38_combout\,
	combout => \inst19|LessThan12~5_combout\);

-- Location: LCCOMB_X15_Y17_N20
\inst19|LessThan12~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan12~6_combout\ = (!\inst19|Add14~44_combout\ & (!\inst19|Add14~40_combout\ & (!\inst19|Add14~46_combout\ & !\inst19|Add14~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add14~44_combout\,
	datab => \inst19|Add14~40_combout\,
	datac => \inst19|Add14~46_combout\,
	datad => \inst19|Add14~42_combout\,
	combout => \inst19|LessThan12~6_combout\);

-- Location: LCCOMB_X15_Y17_N6
\inst19|LessThan12~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan12~7_combout\ = (!\inst19|Add14~52_combout\ & (!\inst19|Add14~48_combout\ & (!\inst19|Add14~54_combout\ & !\inst19|Add14~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add14~52_combout\,
	datab => \inst19|Add14~48_combout\,
	datac => \inst19|Add14~54_combout\,
	datad => \inst19|Add14~50_combout\,
	combout => \inst19|LessThan12~7_combout\);

-- Location: LCCOMB_X15_Y17_N0
\inst19|LessThan12~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan12~8_combout\ = (\inst19|LessThan12~7_combout\ & (!\inst19|Add14~60_combout\ & (!\inst19|Add14~56_combout\ & !\inst19|Add14~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan12~7_combout\,
	datab => \inst19|Add14~60_combout\,
	datac => \inst19|Add14~56_combout\,
	datad => \inst19|Add14~58_combout\,
	combout => \inst19|LessThan12~8_combout\);

-- Location: LCCOMB_X15_Y17_N26
\inst19|LessThan12~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan12~9_combout\ = (\inst19|LessThan12~5_combout\ & (\inst19|LessThan12~6_combout\ & (\inst19|LessThan12~4_combout\ & \inst19|LessThan12~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan12~5_combout\,
	datab => \inst19|LessThan12~6_combout\,
	datac => \inst19|LessThan12~4_combout\,
	datad => \inst19|LessThan12~8_combout\,
	combout => \inst19|LessThan12~9_combout\);

-- Location: LCCOMB_X21_Y19_N0
\inst19|rotor~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|rotor~12_combout\ = (\inst19|rotor~11_combout\ & (!\inst19|Add14~62_combout\ & !\inst19|LessThan12~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|rotor~11_combout\,
	datab => \inst19|Add14~62_combout\,
	datac => \inst19|LessThan12~9_combout\,
	combout => \inst19|rotor~12_combout\);

-- Location: LCCOMB_X20_Y21_N16
\inst19|result~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|result~9_combout\ = \inst19|Add11~60_combout\ $ (\inst19|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add11~60_combout\,
	datad => \inst19|Add0~0_combout\,
	combout => \inst19|result~9_combout\);

-- Location: LCCOMB_X17_Y20_N8
\inst19|rotor~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|rotor~13_combout\ = (!\inst19|Add12~6_combout\ & (((!\inst19|Add12~2_combout\ & !\inst19|Add12~0_combout\)) # (!\inst19|Add12~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add12~2_combout\,
	datab => \inst19|Add12~0_combout\,
	datac => \inst19|Add12~4_combout\,
	datad => \inst19|Add12~6_combout\,
	combout => \inst19|rotor~13_combout\);

-- Location: LCCOMB_X22_Y20_N24
\inst19|rotor~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|rotor~14_combout\ = (!\inst19|Add12~12_combout\ & (!\inst19|Add12~14_combout\ & (!\inst19|Add12~10_combout\ & !\inst19|Add12~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add12~12_combout\,
	datab => \inst19|Add12~14_combout\,
	datac => \inst19|Add12~10_combout\,
	datad => \inst19|Add12~8_combout\,
	combout => \inst19|rotor~14_combout\);

-- Location: LCCOMB_X21_Y20_N0
\inst19|rotor~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|rotor~15_combout\ = (!\inst19|Add12~22_combout\ & (!\inst19|Add12~20_combout\ & (!\inst19|Add12~16_combout\ & !\inst19|Add12~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add12~22_combout\,
	datab => \inst19|Add12~20_combout\,
	datac => \inst19|Add12~16_combout\,
	datad => \inst19|Add12~18_combout\,
	combout => \inst19|rotor~15_combout\);

-- Location: LCCOMB_X21_Y19_N10
\inst19|rotor~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|rotor~16_combout\ = (!\inst19|Add12~26_combout\ & (!\inst19|Add12~24_combout\ & (!\inst19|Add12~28_combout\ & !\inst19|Add12~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add12~26_combout\,
	datab => \inst19|Add12~24_combout\,
	datac => \inst19|Add12~28_combout\,
	datad => \inst19|Add12~30_combout\,
	combout => \inst19|rotor~16_combout\);

-- Location: LCCOMB_X21_Y19_N20
\inst19|rotor~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|rotor~17_combout\ = (\inst19|rotor~16_combout\ & (\inst19|rotor~13_combout\ & (\inst19|rotor~15_combout\ & \inst19|rotor~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|rotor~16_combout\,
	datab => \inst19|rotor~13_combout\,
	datac => \inst19|rotor~15_combout\,
	datad => \inst19|rotor~14_combout\,
	combout => \inst19|rotor~17_combout\);

-- Location: LCCOMB_X16_Y19_N8
\inst19|rotor~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|rotor~18_combout\ = (!\inst19|Add12~38_combout\ & (!\inst19|Add12~36_combout\ & (!\inst19|Add12~34_combout\ & !\inst19|Add12~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add12~38_combout\,
	datab => \inst19|Add12~36_combout\,
	datac => \inst19|Add12~34_combout\,
	datad => \inst19|Add12~32_combout\,
	combout => \inst19|rotor~18_combout\);

-- Location: LCCOMB_X21_Y19_N6
\inst19|rotor~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|rotor~19_combout\ = (!\inst19|Add12~40_combout\ & !\inst19|Add12~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add12~40_combout\,
	datad => \inst19|Add12~42_combout\,
	combout => \inst19|rotor~19_combout\);

-- Location: LCCOMB_X21_Y19_N8
\inst19|rotor~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|rotor~20_combout\ = (!\inst19|Add12~46_combout\ & (\inst19|rotor~18_combout\ & (!\inst19|Add12~44_combout\ & \inst19|rotor~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add12~46_combout\,
	datab => \inst19|rotor~18_combout\,
	datac => \inst19|Add12~44_combout\,
	datad => \inst19|rotor~19_combout\,
	combout => \inst19|rotor~20_combout\);

-- Location: LCCOMB_X21_Y19_N26
\inst19|rotor~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|rotor~21_combout\ = (!\inst19|Add12~50_combout\ & (!\inst19|Add12~54_combout\ & (!\inst19|Add12~48_combout\ & !\inst19|Add12~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add12~50_combout\,
	datab => \inst19|Add12~54_combout\,
	datac => \inst19|Add12~48_combout\,
	datad => \inst19|Add12~52_combout\,
	combout => \inst19|rotor~21_combout\);

-- Location: LCCOMB_X21_Y19_N12
\inst19|rotor~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|rotor~22_combout\ = (\inst19|rotor~21_combout\ & (!\inst19|Add12~56_combout\ & (!\inst19|Add12~58_combout\ & !\inst19|Add12~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|rotor~21_combout\,
	datab => \inst19|Add12~56_combout\,
	datac => \inst19|Add12~58_combout\,
	datad => \inst19|Add12~60_combout\,
	combout => \inst19|rotor~22_combout\);

-- Location: LCCOMB_X21_Y19_N22
\inst19|rotor~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|rotor~23_combout\ = (\inst19|Add12~62_combout\) # ((\inst19|rotor~22_combout\ & (\inst19|rotor~17_combout\ & \inst19|rotor~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|rotor~22_combout\,
	datab => \inst19|rotor~17_combout\,
	datac => \inst19|rotor~20_combout\,
	datad => \inst19|Add12~62_combout\,
	combout => \inst19|rotor~23_combout\);

-- Location: LCCOMB_X24_Y23_N24
\inst19|result~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|result~10_combout\ = \inst19|Add9~0_combout\ $ (\inst19|Add9~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|Add9~0_combout\,
	datad => \inst19|Add9~62_combout\,
	combout => \inst19|result~10_combout\);

-- Location: LCCOMB_X21_Y23_N0
\inst19|LessThan10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan10~0_combout\ = (!\inst19|Add10~6_combout\ & (((!\inst19|Add10~0_combout\ & !\inst19|Add10~2_combout\)) # (!\inst19|Add10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add10~6_combout\,
	datab => \inst19|Add10~4_combout\,
	datac => \inst19|Add10~0_combout\,
	datad => \inst19|Add10~2_combout\,
	combout => \inst19|LessThan10~0_combout\);

-- Location: LCCOMB_X21_Y23_N2
\inst19|LessThan10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan10~1_combout\ = (!\inst19|Add10~10_combout\ & (!\inst19|Add10~14_combout\ & (!\inst19|Add10~8_combout\ & !\inst19|Add10~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add10~10_combout\,
	datab => \inst19|Add10~14_combout\,
	datac => \inst19|Add10~8_combout\,
	datad => \inst19|Add10~12_combout\,
	combout => \inst19|LessThan10~1_combout\);

-- Location: LCCOMB_X21_Y23_N12
\inst19|LessThan10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan10~2_combout\ = (!\inst19|Add10~22_combout\ & (!\inst19|Add10~18_combout\ & (!\inst19|Add10~20_combout\ & !\inst19|Add10~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add10~22_combout\,
	datab => \inst19|Add10~18_combout\,
	datac => \inst19|Add10~20_combout\,
	datad => \inst19|Add10~16_combout\,
	combout => \inst19|LessThan10~2_combout\);

-- Location: LCCOMB_X21_Y23_N6
\inst19|LessThan10~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan10~3_combout\ = (!\inst19|Add10~24_combout\ & (!\inst19|Add10~26_combout\ & (!\inst19|Add10~30_combout\ & !\inst19|Add10~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add10~24_combout\,
	datab => \inst19|Add10~26_combout\,
	datac => \inst19|Add10~30_combout\,
	datad => \inst19|Add10~28_combout\,
	combout => \inst19|LessThan10~3_combout\);

-- Location: LCCOMB_X21_Y23_N16
\inst19|LessThan10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan10~4_combout\ = (\inst19|LessThan10~2_combout\ & (\inst19|LessThan10~1_combout\ & (\inst19|LessThan10~3_combout\ & \inst19|LessThan10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan10~2_combout\,
	datab => \inst19|LessThan10~1_combout\,
	datac => \inst19|LessThan10~3_combout\,
	datad => \inst19|LessThan10~0_combout\,
	combout => \inst19|LessThan10~4_combout\);

-- Location: LCCOMB_X21_Y19_N24
\inst19|LessThan10~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan10~5_combout\ = (!\inst19|Add10~38_combout\ & (!\inst19|Add10~36_combout\ & (!\inst19|Add10~32_combout\ & !\inst19|Add10~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add10~38_combout\,
	datab => \inst19|Add10~36_combout\,
	datac => \inst19|Add10~32_combout\,
	datad => \inst19|Add10~34_combout\,
	combout => \inst19|LessThan10~5_combout\);

-- Location: LCCOMB_X21_Y22_N8
\inst19|LessThan10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan10~6_combout\ = (!\inst19|Add10~40_combout\ & (!\inst19|Add10~44_combout\ & (!\inst19|Add10~42_combout\ & !\inst19|Add10~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add10~40_combout\,
	datab => \inst19|Add10~44_combout\,
	datac => \inst19|Add10~42_combout\,
	datad => \inst19|Add10~46_combout\,
	combout => \inst19|LessThan10~6_combout\);

-- Location: LCCOMB_X22_Y21_N0
\inst19|LessThan10~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan10~7_combout\ = (!\inst19|Add10~48_combout\ & (!\inst19|Add10~54_combout\ & (!\inst19|Add10~52_combout\ & !\inst19|Add10~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add10~48_combout\,
	datab => \inst19|Add10~54_combout\,
	datac => \inst19|Add10~52_combout\,
	datad => \inst19|Add10~50_combout\,
	combout => \inst19|LessThan10~7_combout\);

-- Location: LCCOMB_X22_Y21_N2
\inst19|LessThan10~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan10~8_combout\ = (!\inst19|Add10~60_combout\ & (\inst19|LessThan10~7_combout\ & (!\inst19|Add10~56_combout\ & !\inst19|Add10~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add10~60_combout\,
	datab => \inst19|LessThan10~7_combout\,
	datac => \inst19|Add10~56_combout\,
	datad => \inst19|Add10~58_combout\,
	combout => \inst19|LessThan10~8_combout\);

-- Location: LCCOMB_X21_Y19_N18
\inst19|LessThan10~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan10~9_combout\ = (\inst19|LessThan10~4_combout\ & (\inst19|LessThan10~5_combout\ & (\inst19|LessThan10~6_combout\ & \inst19|LessThan10~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan10~4_combout\,
	datab => \inst19|LessThan10~5_combout\,
	datac => \inst19|LessThan10~6_combout\,
	datad => \inst19|LessThan10~8_combout\,
	combout => \inst19|LessThan10~9_combout\);

-- Location: LCCOMB_X21_Y19_N4
\inst19|rotor~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|rotor~24_combout\ = (!\inst19|Add10~62_combout\ & (!\inst19|LessThan10~9_combout\ & ((\inst19|rotor~12_combout\) # (\inst19|rotor~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add10~62_combout\,
	datab => \inst19|rotor~12_combout\,
	datac => \inst19|rotor~23_combout\,
	datad => \inst19|LessThan10~9_combout\,
	combout => \inst19|rotor~24_combout\);

-- Location: LCCOMB_X29_Y21_N24
\inst19|result~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|result~11_combout\ = \inst19|Add7~0_combout\ $ (\inst19|Add7~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|Add7~0_combout\,
	datad => \inst19|Add7~62_combout\,
	combout => \inst19|result~11_combout\);

-- Location: LCCOMB_X26_Y21_N12
\inst19|LessThan9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan9~2_combout\ = (!\inst19|Add8~16_combout\ & (!\inst19|Add8~18_combout\ & (!\inst19|Add8~20_combout\ & !\inst19|Add8~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add8~16_combout\,
	datab => \inst19|Add8~18_combout\,
	datac => \inst19|Add8~20_combout\,
	datad => \inst19|Add8~22_combout\,
	combout => \inst19|LessThan9~2_combout\);

-- Location: LCCOMB_X26_Y21_N2
\inst19|LessThan9~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan9~5_combout\ = (!\inst19|Add8~38_combout\ & (!\inst19|Add8~34_combout\ & (!\inst19|Add8~36_combout\ & !\inst19|Add8~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add8~38_combout\,
	datab => \inst19|Add8~34_combout\,
	datac => \inst19|Add8~36_combout\,
	datad => \inst19|Add8~32_combout\,
	combout => \inst19|LessThan9~5_combout\);

-- Location: LCCOMB_X26_Y21_N6
\inst19|LessThan9~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan9~7_combout\ = (!\inst19|Add8~52_combout\ & (!\inst19|Add8~54_combout\ & (!\inst19|Add8~50_combout\ & !\inst19|Add8~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add8~52_combout\,
	datab => \inst19|Add8~54_combout\,
	datac => \inst19|Add8~50_combout\,
	datad => \inst19|Add8~48_combout\,
	combout => \inst19|LessThan9~7_combout\);

-- Location: LCCOMB_X17_Y19_N0
\inst19|result~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|result~12_combout\ = \inst19|Add5~62_combout\ $ (\inst19|Add5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add5~62_combout\,
	datac => \inst19|Add5~0_combout\,
	combout => \inst19|result~12_combout\);

-- Location: LCCOMB_X19_Y22_N8
\inst19|LessThan8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan8~0_combout\ = (!\inst19|Add6~6_combout\ & (((!\inst19|Add6~2_combout\ & !\inst19|Add6~0_combout\)) # (!\inst19|Add6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add6~2_combout\,
	datab => \inst19|Add6~6_combout\,
	datac => \inst19|Add6~4_combout\,
	datad => \inst19|Add6~0_combout\,
	combout => \inst19|LessThan8~0_combout\);

-- Location: LCCOMB_X19_Y21_N12
\inst19|LessThan8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan8~1_combout\ = (!\inst19|Add6~14_combout\ & (!\inst19|Add6~8_combout\ & (!\inst19|Add6~12_combout\ & !\inst19|Add6~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add6~14_combout\,
	datab => \inst19|Add6~8_combout\,
	datac => \inst19|Add6~12_combout\,
	datad => \inst19|Add6~10_combout\,
	combout => \inst19|LessThan8~1_combout\);

-- Location: LCCOMB_X19_Y21_N6
\inst19|LessThan8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan8~2_combout\ = (!\inst19|Add6~18_combout\ & (!\inst19|Add6~16_combout\ & (!\inst19|Add6~22_combout\ & !\inst19|Add6~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add6~18_combout\,
	datab => \inst19|Add6~16_combout\,
	datac => \inst19|Add6~22_combout\,
	datad => \inst19|Add6~20_combout\,
	combout => \inst19|LessThan8~2_combout\);

-- Location: LCCOMB_X15_Y22_N16
\inst19|LessThan8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan8~3_combout\ = (!\inst19|Add6~26_combout\ & (!\inst19|Add6~24_combout\ & (!\inst19|Add6~30_combout\ & !\inst19|Add6~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add6~26_combout\,
	datab => \inst19|Add6~24_combout\,
	datac => \inst19|Add6~30_combout\,
	datad => \inst19|Add6~28_combout\,
	combout => \inst19|LessThan8~3_combout\);

-- Location: LCCOMB_X19_Y21_N24
\inst19|LessThan8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan8~4_combout\ = (\inst19|LessThan8~1_combout\ & (\inst19|LessThan8~0_combout\ & (\inst19|LessThan8~3_combout\ & \inst19|LessThan8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan8~1_combout\,
	datab => \inst19|LessThan8~0_combout\,
	datac => \inst19|LessThan8~3_combout\,
	datad => \inst19|LessThan8~2_combout\,
	combout => \inst19|LessThan8~4_combout\);

-- Location: LCCOMB_X19_Y21_N26
\inst19|LessThan8~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan8~5_combout\ = (!\inst19|Add6~32_combout\ & (!\inst19|Add6~38_combout\ & (!\inst19|Add6~36_combout\ & !\inst19|Add6~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add6~32_combout\,
	datab => \inst19|Add6~38_combout\,
	datac => \inst19|Add6~36_combout\,
	datad => \inst19|Add6~34_combout\,
	combout => \inst19|LessThan8~5_combout\);

-- Location: LCCOMB_X19_Y21_N20
\inst19|LessThan8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan8~6_combout\ = (!\inst19|Add6~46_combout\ & (!\inst19|Add6~42_combout\ & (!\inst19|Add6~40_combout\ & !\inst19|Add6~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add6~46_combout\,
	datab => \inst19|Add6~42_combout\,
	datac => \inst19|Add6~40_combout\,
	datad => \inst19|Add6~44_combout\,
	combout => \inst19|LessThan8~6_combout\);

-- Location: LCCOMB_X19_Y21_N22
\inst19|LessThan8~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan8~7_combout\ = (!\inst19|Add6~54_combout\ & (!\inst19|Add6~50_combout\ & (!\inst19|Add6~48_combout\ & !\inst19|Add6~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add6~54_combout\,
	datab => \inst19|Add6~50_combout\,
	datac => \inst19|Add6~48_combout\,
	datad => \inst19|Add6~52_combout\,
	combout => \inst19|LessThan8~7_combout\);

-- Location: LCCOMB_X19_Y21_N0
\inst19|LessThan8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan8~8_combout\ = (!\inst19|Add6~56_combout\ & (!\inst19|Add6~58_combout\ & (\inst19|LessThan8~7_combout\ & !\inst19|Add6~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add6~56_combout\,
	datab => \inst19|Add6~58_combout\,
	datac => \inst19|LessThan8~7_combout\,
	datad => \inst19|Add6~60_combout\,
	combout => \inst19|LessThan8~8_combout\);

-- Location: LCCOMB_X19_Y21_N10
\inst19|LessThan8~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan8~9_combout\ = (\inst19|LessThan8~4_combout\ & (\inst19|LessThan8~6_combout\ & (\inst19|LessThan8~5_combout\ & \inst19|LessThan8~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan8~4_combout\,
	datab => \inst19|LessThan8~6_combout\,
	datac => \inst19|LessThan8~5_combout\,
	datad => \inst19|LessThan8~8_combout\,
	combout => \inst19|LessThan8~9_combout\);

-- Location: LCCOMB_X16_Y16_N8
\inst8|Tail~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Tail~1_combout\ = (\inst8|Add0~0_combout\ & !\button1_reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|Add0~0_combout\,
	datad => \button1_reset~input_o\,
	combout => \inst8|Tail~1_combout\);

-- Location: LCCOMB_X16_Y16_N12
\inst8|Head~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Head~1_combout\ = (!\button1_reset~input_o\ & \inst8|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button1_reset~input_o\,
	datad => \inst8|Add1~2_combout\,
	combout => \inst8|Head~1_combout\);

-- Location: LCCOMB_X16_Y16_N16
\inst8|Head~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Head~4_combout\ = (\inst8|Add1~4_combout\ & !\button1_reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add1~4_combout\,
	datad => \button1_reset~input_o\,
	combout => \inst8|Head~4_combout\);

-- Location: LCCOMB_X14_Y16_N12
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

-- Location: LCCOMB_X14_Y16_N22
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

-- Location: LCCOMB_X20_Y3_N8
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

-- Location: FF_X27_Y15_N13
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

-- Location: LCCOMB_X27_Y15_N12
\inst13|spi_slave_0|tx_buf[14]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[14]~7_combout\ = \inst13|spi_slave_0|tx_buf[14]~5_combout\ $ (\inst13|spi_slave_0|tx_buf[13]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[14]~5_combout\,
	datac => \inst13|spi_slave_0|tx_buf[13]~10_combout\,
	combout => \inst13|spi_slave_0|tx_buf[14]~7_combout\);

-- Location: FF_X22_Y19_N11
\inst19|t_sweep_start[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_start[14]~feeder_combout\,
	ena => \inst19|t_sweep_start[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(14));

-- Location: FF_X22_Y19_N21
\inst19|t_sweep_start[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_start[13]~feeder_combout\,
	ena => \inst19|t_sweep_start[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(13));

-- Location: FF_X22_Y19_N7
\inst19|t_sweep_start[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_0\(12),
	sload => VCC,
	ena => \inst19|t_sweep_start[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(12));

-- Location: FF_X21_Y17_N1
\inst19|t_sweep_start[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_start[10]~feeder_combout\,
	ena => \inst19|t_sweep_start[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(10));

-- Location: FF_X21_Y17_N13
\inst19|t_sweep_start[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_start[7]~feeder_combout\,
	ena => \inst19|t_sweep_start[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(7));

-- Location: FF_X23_Y17_N3
\inst19|t_sweep_start[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_start[6]~feeder_combout\,
	ena => \inst19|t_sweep_start[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(6));

-- Location: FF_X23_Y17_N21
\inst19|t_sweep_start[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_start[5]~feeder_combout\,
	ena => \inst19|t_sweep_start[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(5));

-- Location: FF_X23_Y17_N11
\inst19|t_sweep_start[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_start[2]~feeder_combout\,
	ena => \inst19|t_sweep_start[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(2));

-- Location: FF_X23_Y17_N31
\inst19|t_sweep_start[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_start[0]~feeder_combout\,
	ena => \inst19|t_sweep_start[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(0));

-- Location: FF_X27_Y15_N9
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

-- Location: FF_X27_Y15_N11
\inst13|spi_tx_data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst19|sweep_duration\(13),
	sload => VCC,
	ena => \inst13|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(13));

-- Location: LCCOMB_X27_Y15_N10
\inst13|spi_slave_0|tx_buf[13]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[13]~10_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(13))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[13]~_emulated_q\ $ 
-- (((\inst13|spi_slave_0|tx_buf[13]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|process_1~2_combout\,
	datab => \inst13|spi_slave_0|tx_buf[13]~_emulated_q\,
	datac => \inst13|spi_tx_data\(13),
	datad => \inst13|spi_slave_0|tx_buf[13]~9_combout\,
	combout => \inst13|spi_slave_0|tx_buf[13]~10_combout\);

-- Location: LCCOMB_X27_Y15_N8
\inst13|spi_slave_0|tx_buf[13]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[13]~11_combout\ = \inst13|spi_slave_0|tx_buf[12]~14_combout\ $ (\inst13|spi_slave_0|tx_buf[13]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|spi_slave_0|tx_buf[12]~14_combout\,
	datad => \inst13|spi_slave_0|tx_buf[13]~9_combout\,
	combout => \inst13|spi_slave_0|tx_buf[13]~11_combout\);

-- Location: FF_X22_Y18_N7
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

-- Location: FF_X27_Y15_N21
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

-- Location: FF_X27_Y15_N23
\inst13|spi_tx_data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst19|sweep_duration\(12),
	sload => VCC,
	ena => \inst13|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(12));

-- Location: LCCOMB_X27_Y15_N22
\inst13|spi_slave_0|tx_buf[12]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[12]~14_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(12))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[12]~13_combout\ $ 
-- (((\inst13|spi_slave_0|tx_buf[12]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[12]~13_combout\,
	datab => \inst13|spi_slave_0|process_1~2_combout\,
	datac => \inst13|spi_tx_data\(12),
	datad => \inst13|spi_slave_0|tx_buf[12]~_emulated_q\,
	combout => \inst13|spi_slave_0|tx_buf[12]~14_combout\);

-- Location: LCCOMB_X27_Y15_N20
\inst13|spi_slave_0|tx_buf[12]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[12]~15_combout\ = \inst13|spi_slave_0|tx_buf[12]~13_combout\ $ (\inst13|spi_slave_0|tx_buf[11]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[12]~13_combout\,
	datad => \inst13|spi_slave_0|tx_buf[11]~18_combout\,
	combout => \inst13|spi_slave_0|tx_buf[12]~15_combout\);

-- Location: FF_X21_Y18_N7
\inst19|sweep_duration[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_sweep_duration\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|sweep_duration\(12));

-- Location: FF_X27_Y15_N25
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

-- Location: FF_X27_Y15_N27
\inst13|spi_tx_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst19|sweep_duration\(11),
	sload => VCC,
	ena => \inst13|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(11));

-- Location: LCCOMB_X27_Y15_N26
\inst13|spi_slave_0|tx_buf[11]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[11]~18_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(11))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[11]~17_combout\ $ 
-- (((\inst13|spi_slave_0|tx_buf[11]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[11]~17_combout\,
	datab => \inst13|spi_slave_0|process_1~2_combout\,
	datac => \inst13|spi_tx_data\(11),
	datad => \inst13|spi_slave_0|tx_buf[11]~_emulated_q\,
	combout => \inst13|spi_slave_0|tx_buf[11]~18_combout\);

-- Location: LCCOMB_X27_Y15_N24
\inst13|spi_slave_0|tx_buf[11]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[11]~19_combout\ = \inst13|spi_slave_0|tx_buf[10]~22_combout\ $ (\inst13|spi_slave_0|tx_buf[11]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[10]~22_combout\,
	datad => \inst13|spi_slave_0|tx_buf[11]~17_combout\,
	combout => \inst13|spi_slave_0|tx_buf[11]~19_combout\);

-- Location: FF_X22_Y15_N17
\inst19|sweep_duration[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_sweep_duration\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|sweep_duration\(11));

-- Location: FF_X26_Y15_N9
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

-- Location: FF_X27_Y15_N5
\inst13|spi_tx_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst19|sweep_duration\(10),
	sload => VCC,
	ena => \inst13|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(10));

-- Location: LCCOMB_X27_Y15_N4
\inst13|spi_slave_0|tx_buf[10]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[10]~22_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(10))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[10]~21_combout\ $ 
-- (((\inst13|spi_slave_0|tx_buf[10]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[10]~21_combout\,
	datab => \inst13|spi_slave_0|process_1~2_combout\,
	datac => \inst13|spi_tx_data\(10),
	datad => \inst13|spi_slave_0|tx_buf[10]~_emulated_q\,
	combout => \inst13|spi_slave_0|tx_buf[10]~22_combout\);

-- Location: LCCOMB_X26_Y15_N8
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

-- Location: FF_X19_Y21_N5
\inst19|sweep_duration[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|sweep_duration[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|sweep_duration\(10));

-- Location: FF_X26_Y15_N3
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

-- Location: FF_X26_Y15_N29
\inst13|spi_tx_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst19|sweep_duration\(9),
	sload => VCC,
	ena => \inst13|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(9));

-- Location: LCCOMB_X26_Y15_N28
\inst13|spi_slave_0|tx_buf[9]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[9]~26_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(9))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[9]~25_combout\ $ 
-- ((\inst13|spi_slave_0|tx_buf[9]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[9]~25_combout\,
	datab => \inst13|spi_slave_0|tx_buf[9]~_emulated_q\,
	datac => \inst13|spi_tx_data\(9),
	datad => \inst13|spi_slave_0|process_1~2_combout\,
	combout => \inst13|spi_slave_0|tx_buf[9]~26_combout\);

-- Location: LCCOMB_X26_Y15_N2
\inst13|spi_slave_0|tx_buf[9]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[9]~27_combout\ = \inst13|spi_slave_0|tx_buf[9]~25_combout\ $ (\inst13|spi_slave_0|tx_buf[8]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|spi_slave_0|tx_buf[9]~25_combout\,
	datad => \inst13|spi_slave_0|tx_buf[8]~30_combout\,
	combout => \inst13|spi_slave_0|tx_buf[9]~27_combout\);

-- Location: FF_X22_Y15_N11
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

-- Location: FF_X26_Y15_N7
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

-- Location: FF_X26_Y15_N1
\inst13|spi_tx_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst19|sweep_duration\(8),
	sload => VCC,
	ena => \inst13|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(8));

-- Location: LCCOMB_X26_Y15_N0
\inst13|spi_slave_0|tx_buf[8]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[8]~30_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(8))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[8]~29_combout\ $ 
-- (((\inst13|spi_slave_0|tx_buf[8]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|process_1~2_combout\,
	datab => \inst13|spi_slave_0|tx_buf[8]~29_combout\,
	datac => \inst13|spi_tx_data\(8),
	datad => \inst13|spi_slave_0|tx_buf[8]~_emulated_q\,
	combout => \inst13|spi_slave_0|tx_buf[8]~30_combout\);

-- Location: LCCOMB_X26_Y15_N6
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

-- Location: FF_X22_Y15_N5
\inst19|sweep_duration[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_sweep_duration\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|sweep_duration\(8));

-- Location: FF_X26_Y15_N11
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

-- Location: FF_X26_Y15_N5
\inst13|spi_tx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst19|sweep_duration\(7),
	sload => VCC,
	ena => \inst13|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(7));

-- Location: LCCOMB_X26_Y15_N4
\inst13|spi_slave_0|tx_buf[7]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[7]~34_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(7))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[7]~33_combout\ $ 
-- (((\inst13|spi_slave_0|tx_buf[7]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|process_1~2_combout\,
	datab => \inst13|spi_slave_0|tx_buf[7]~33_combout\,
	datac => \inst13|spi_tx_data\(7),
	datad => \inst13|spi_slave_0|tx_buf[7]~_emulated_q\,
	combout => \inst13|spi_slave_0|tx_buf[7]~34_combout\);

-- Location: LCCOMB_X26_Y15_N10
\inst13|spi_slave_0|tx_buf[7]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[7]~35_combout\ = \inst13|spi_slave_0|tx_buf[7]~33_combout\ $ (\inst13|spi_slave_0|tx_buf[6]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[7]~33_combout\,
	datad => \inst13|spi_slave_0|tx_buf[6]~38_combout\,
	combout => \inst13|spi_slave_0|tx_buf[7]~35_combout\);

-- Location: FF_X22_Y15_N23
\inst19|sweep_duration[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_sweep_duration\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|sweep_duration\(7));

-- Location: FF_X26_Y15_N23
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

-- Location: FF_X26_Y15_N17
\inst13|spi_tx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst19|sweep_duration\(6),
	sload => VCC,
	ena => \inst13|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(6));

-- Location: LCCOMB_X26_Y15_N16
\inst13|spi_slave_0|tx_buf[6]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[6]~38_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(6))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[6]~_emulated_q\ $ 
-- ((\inst13|spi_slave_0|tx_buf[6]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[6]~_emulated_q\,
	datab => \inst13|spi_slave_0|tx_buf[6]~37_combout\,
	datac => \inst13|spi_tx_data\(6),
	datad => \inst13|spi_slave_0|process_1~2_combout\,
	combout => \inst13|spi_slave_0|tx_buf[6]~38_combout\);

-- Location: LCCOMB_X26_Y15_N22
\inst13|spi_slave_0|tx_buf[6]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[6]~39_combout\ = \inst13|spi_slave_0|tx_buf[6]~37_combout\ $ (\inst13|spi_slave_0|tx_buf[5]~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[6]~37_combout\,
	datad => \inst13|spi_slave_0|tx_buf[5]~42_combout\,
	combout => \inst13|spi_slave_0|tx_buf[6]~39_combout\);

-- Location: FF_X22_Y15_N25
\inst19|sweep_duration[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|sweep_duration[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|sweep_duration\(6));

-- Location: FF_X26_Y15_N27
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

-- Location: FF_X26_Y15_N21
\inst13|spi_tx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst19|sweep_duration\(5),
	sload => VCC,
	ena => \inst13|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(5));

-- Location: LCCOMB_X26_Y15_N20
\inst13|spi_slave_0|tx_buf[5]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[5]~42_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(5))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[5]~_emulated_q\ $ 
-- ((\inst13|spi_slave_0|tx_buf[5]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[5]~_emulated_q\,
	datab => \inst13|spi_slave_0|tx_buf[5]~41_combout\,
	datac => \inst13|spi_tx_data\(5),
	datad => \inst13|spi_slave_0|process_1~2_combout\,
	combout => \inst13|spi_slave_0|tx_buf[5]~42_combout\);

-- Location: LCCOMB_X26_Y15_N26
\inst13|spi_slave_0|tx_buf[5]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[5]~43_combout\ = \inst13|spi_slave_0|tx_buf[5]~41_combout\ $ (\inst13|spi_slave_0|tx_buf[4]~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|spi_slave_0|tx_buf[5]~41_combout\,
	datad => \inst13|spi_slave_0|tx_buf[4]~46_combout\,
	combout => \inst13|spi_slave_0|tx_buf[5]~43_combout\);

-- Location: FF_X22_Y15_N19
\inst19|sweep_duration[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_sweep_duration\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|sweep_duration\(5));

-- Location: FF_X21_Y15_N1
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

-- Location: FF_X21_Y15_N19
\inst13|spi_tx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst19|sweep_duration\(4),
	sload => VCC,
	ena => \inst13|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(4));

-- Location: LCCOMB_X21_Y15_N18
\inst13|spi_slave_0|tx_buf[4]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[4]~46_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(4))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[4]~45_combout\ $ 
-- (((\inst13|spi_slave_0|tx_buf[4]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[4]~45_combout\,
	datab => \inst13|spi_slave_0|process_1~2_combout\,
	datac => \inst13|spi_tx_data\(4),
	datad => \inst13|spi_slave_0|tx_buf[4]~_emulated_q\,
	combout => \inst13|spi_slave_0|tx_buf[4]~46_combout\);

-- Location: LCCOMB_X21_Y15_N0
\inst13|spi_slave_0|tx_buf[4]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[4]~47_combout\ = \inst13|spi_slave_0|tx_buf[4]~45_combout\ $ (\inst13|spi_slave_0|tx_buf[3]~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|spi_slave_0|tx_buf[4]~45_combout\,
	datad => \inst13|spi_slave_0|tx_buf[3]~50_combout\,
	combout => \inst13|spi_slave_0|tx_buf[4]~47_combout\);

-- Location: FF_X22_Y15_N13
\inst19|sweep_duration[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_sweep_duration\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|sweep_duration\(4));

-- Location: FF_X21_Y15_N5
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

-- Location: FF_X21_Y15_N15
\inst13|spi_tx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst19|sweep_duration\(3),
	sload => VCC,
	ena => \inst13|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(3));

-- Location: LCCOMB_X21_Y15_N14
\inst13|spi_slave_0|tx_buf[3]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[3]~50_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(3))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[3]~_emulated_q\ $ 
-- (((\inst13|spi_slave_0|tx_buf[3]~49_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|process_1~2_combout\,
	datab => \inst13|spi_slave_0|tx_buf[3]~_emulated_q\,
	datac => \inst13|spi_tx_data\(3),
	datad => \inst13|spi_slave_0|tx_buf[3]~49_combout\,
	combout => \inst13|spi_slave_0|tx_buf[3]~50_combout\);

-- Location: LCCOMB_X21_Y15_N4
\inst13|spi_slave_0|tx_buf[3]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[3]~51_combout\ = \inst13|spi_slave_0|tx_buf[3]~49_combout\ $ (\inst13|spi_slave_0|tx_buf[2]~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[3]~49_combout\,
	datad => \inst13|spi_slave_0|tx_buf[2]~54_combout\,
	combout => \inst13|spi_slave_0|tx_buf[3]~51_combout\);

-- Location: FF_X22_Y15_N31
\inst19|sweep_duration[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|sweep_duration[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|sweep_duration\(3));

-- Location: FF_X21_Y15_N25
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

-- Location: FF_X21_Y15_N3
\inst13|spi_tx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst19|sweep_duration\(2),
	sload => VCC,
	ena => \inst13|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(2));

-- Location: LCCOMB_X21_Y15_N2
\inst13|spi_slave_0|tx_buf[2]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[2]~54_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(2))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[2]~53_combout\ $ 
-- (((\inst13|spi_slave_0|tx_buf[2]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[2]~53_combout\,
	datab => \inst13|spi_slave_0|process_1~2_combout\,
	datac => \inst13|spi_tx_data\(2),
	datad => \inst13|spi_slave_0|tx_buf[2]~_emulated_q\,
	combout => \inst13|spi_slave_0|tx_buf[2]~54_combout\);

-- Location: LCCOMB_X21_Y15_N24
\inst13|spi_slave_0|tx_buf[2]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[2]~55_combout\ = \inst13|spi_slave_0|tx_buf[2]~53_combout\ $ (\inst13|spi_slave_0|tx_buf[1]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[2]~53_combout\,
	datac => \inst13|spi_slave_0|tx_buf[1]~58_combout\,
	combout => \inst13|spi_slave_0|tx_buf[2]~55_combout\);

-- Location: FF_X22_Y15_N1
\inst19|sweep_duration[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|sweep_duration[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|sweep_duration\(2));

-- Location: FF_X21_Y15_N13
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

-- Location: FF_X21_Y15_N23
\inst13|spi_tx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst19|sweep_duration\(1),
	sload => VCC,
	ena => \inst13|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(1));

-- Location: LCCOMB_X21_Y15_N22
\inst13|spi_slave_0|tx_buf[1]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[1]~58_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(1))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[1]~_emulated_q\ $ 
-- ((\inst13|spi_slave_0|tx_buf[1]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[1]~_emulated_q\,
	datab => \inst13|spi_slave_0|tx_buf[1]~57_combout\,
	datac => \inst13|spi_tx_data\(1),
	datad => \inst13|spi_slave_0|process_1~2_combout\,
	combout => \inst13|spi_slave_0|tx_buf[1]~58_combout\);

-- Location: LCCOMB_X21_Y15_N12
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

-- Location: FF_X22_Y15_N27
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

-- Location: FF_X21_Y15_N9
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

-- Location: FF_X21_Y15_N11
\inst13|spi_tx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst19|sweep_duration\(0),
	sload => VCC,
	ena => \inst13|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(0));

-- Location: LCCOMB_X21_Y15_N10
\inst13|spi_slave_0|tx_buf[0]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[0]~62_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(0))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[0]~61_combout\ $ 
-- ((\inst13|spi_slave_0|tx_buf[0]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[0]~61_combout\,
	datab => \inst13|spi_slave_0|tx_buf[0]~_emulated_q\,
	datac => \inst13|spi_tx_data\(0),
	datad => \inst13|spi_slave_0|process_1~2_combout\,
	combout => \inst13|spi_slave_0|tx_buf[0]~62_combout\);

-- Location: LCCOMB_X21_Y15_N8
\inst13|spi_slave_0|tx_buf[0]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[0]~63_combout\ = \inst13|spi_slave_0|tx_buf[0]~61_combout\ $ (\inst13|spi_slave_0|tx_buf[15]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[0]~61_combout\,
	datad => \inst13|spi_slave_0|tx_buf[15]~2_combout\,
	combout => \inst13|spi_slave_0|tx_buf[0]~63_combout\);

-- Location: FF_X22_Y15_N21
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

-- Location: LCCOMB_X27_Y15_N2
\inst13|spi_slave_0|tx_buf[13]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[13]~9_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_tx_data\(13))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_slave_0|tx_buf[13]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_tx_data\(13),
	datab => \inst13|spi_slave_0|tx_buf[13]~9_combout\,
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[13]~9_combout\);

-- Location: LCCOMB_X27_Y15_N28
\inst13|spi_slave_0|tx_buf[12]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[12]~13_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_tx_data\(12))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_slave_0|tx_buf[12]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_tx_data\(12),
	datac => \inst13|spi_slave_0|tx_buf[12]~13_combout\,
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[12]~13_combout\);

-- Location: LCCOMB_X27_Y15_N6
\inst13|spi_slave_0|tx_buf[11]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[11]~17_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_tx_data\(11))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_slave_0|tx_buf[11]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_tx_data\(11),
	datac => \inst13|spi_slave_0|tx_buf[11]~17_combout\,
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[11]~17_combout\);

-- Location: LCCOMB_X21_Y15_N20
\inst13|spi_slave_0|tx_buf[10]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[10]~21_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_tx_data\(10))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_slave_0|tx_buf[10]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_tx_data\(10),
	datab => \inst13|spi_slave_0|tx_buf[10]~21_combout\,
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[10]~21_combout\);

-- Location: LCCOMB_X26_Y15_N30
\inst13|spi_slave_0|tx_buf[9]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[9]~25_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_tx_data\(9))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_slave_0|tx_buf[9]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_tx_data\(9),
	datac => \inst13|spi_slave_0|tx_buf[9]~25_combout\,
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[9]~25_combout\);

-- Location: LCCOMB_X26_Y15_N24
\inst13|spi_slave_0|tx_buf[8]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[8]~29_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_tx_data\(8)))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_slave_0|tx_buf[8]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[8]~29_combout\,
	datac => \inst13|spi_tx_data\(8),
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[8]~29_combout\);

-- Location: LCCOMB_X26_Y15_N18
\inst13|spi_slave_0|tx_buf[7]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[7]~33_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_tx_data\(7))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_slave_0|tx_buf[7]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_tx_data\(7),
	datab => \inst13|spi_slave_0|tx_buf[7]~33_combout\,
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[7]~33_combout\);

-- Location: LCCOMB_X26_Y15_N12
\inst13|spi_slave_0|tx_buf[6]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[6]~37_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_tx_data\(6)))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_slave_0|tx_buf[6]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[6]~37_combout\,
	datab => \inst13|spi_tx_data\(6),
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[6]~37_combout\);

-- Location: LCCOMB_X26_Y15_N14
\inst13|spi_slave_0|tx_buf[5]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[5]~41_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_tx_data\(5))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_slave_0|tx_buf[5]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_tx_data\(5),
	datac => \inst13|spi_slave_0|tx_buf[5]~41_combout\,
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[5]~41_combout\);

-- Location: LCCOMB_X21_Y15_N30
\inst13|spi_slave_0|tx_buf[4]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[4]~45_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_tx_data\(4))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_slave_0|tx_buf[4]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_tx_data\(4),
	datac => \inst13|spi_slave_0|tx_buf[4]~45_combout\,
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[4]~45_combout\);

-- Location: LCCOMB_X21_Y15_N16
\inst13|spi_slave_0|tx_buf[3]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[3]~49_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_tx_data\(3)))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_slave_0|tx_buf[3]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|tx_buf[3]~49_combout\,
	datac => \inst13|spi_tx_data\(3),
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[3]~49_combout\);

-- Location: LCCOMB_X21_Y15_N26
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

-- Location: LCCOMB_X21_Y15_N28
\inst13|spi_slave_0|tx_buf[1]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[1]~57_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_tx_data\(1))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_slave_0|tx_buf[1]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_tx_data\(1),
	datac => \inst13|spi_slave_0|tx_buf[1]~57_combout\,
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[1]~57_combout\);

-- Location: LCCOMB_X21_Y15_N6
\inst13|spi_slave_0|tx_buf[0]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[0]~61_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_tx_data\(0))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_slave_0|tx_buf[0]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_tx_data\(0),
	datac => \inst13|spi_slave_0|tx_buf[0]~61_combout\,
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[0]~61_combout\);

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

-- Location: LCCOMB_X22_Y18_N6
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

-- Location: LCCOMB_X19_Y21_N4
\inst19|sweep_duration[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|sweep_duration[10]~feeder_combout\ = \inst19|t_sweep_duration\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_sweep_duration\(10),
	combout => \inst19|sweep_duration[10]~feeder_combout\);

-- Location: LCCOMB_X22_Y15_N24
\inst19|sweep_duration[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|sweep_duration[6]~feeder_combout\ = \inst19|t_sweep_duration\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_sweep_duration\(6),
	combout => \inst19|sweep_duration[6]~feeder_combout\);

-- Location: LCCOMB_X22_Y15_N30
\inst19|sweep_duration[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|sweep_duration[3]~feeder_combout\ = \inst19|t_sweep_duration\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_sweep_duration\(3),
	combout => \inst19|sweep_duration[3]~feeder_combout\);

-- Location: LCCOMB_X22_Y15_N0
\inst19|sweep_duration[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|sweep_duration[2]~feeder_combout\ = \inst19|t_sweep_duration\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_sweep_duration\(2),
	combout => \inst19|sweep_duration[2]~feeder_combout\);

-- Location: LCCOMB_X22_Y15_N26
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

-- Location: LCCOMB_X23_Y17_N14
\inst19|start_valid_sync[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|start_valid_sync[0]~feeder_combout\ = \inst19|t_0\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(0),
	combout => \inst19|start_valid_sync[0]~feeder_combout\);

-- Location: LCCOMB_X23_Y17_N30
\inst19|t_sweep_start[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_start[0]~feeder_combout\ = \inst19|t_0\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(0),
	combout => \inst19|t_sweep_start[0]~feeder_combout\);

-- Location: LCCOMB_X22_Y19_N10
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

-- Location: LCCOMB_X22_Y19_N20
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

-- Location: LCCOMB_X21_Y17_N0
\inst19|t_sweep_start[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_start[10]~feeder_combout\ = \inst19|t_0\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(10),
	combout => \inst19|t_sweep_start[10]~feeder_combout\);

-- Location: LCCOMB_X21_Y17_N12
\inst19|t_sweep_start[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_start[7]~feeder_combout\ = \inst19|t_0\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(7),
	combout => \inst19|t_sweep_start[7]~feeder_combout\);

-- Location: LCCOMB_X23_Y17_N2
\inst19|t_sweep_start[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_start[6]~feeder_combout\ = \inst19|t_0\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(6),
	combout => \inst19|t_sweep_start[6]~feeder_combout\);

-- Location: LCCOMB_X23_Y17_N20
\inst19|t_sweep_start[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_start[5]~feeder_combout\ = \inst19|t_0\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(5),
	combout => \inst19|t_sweep_start[5]~feeder_combout\);

-- Location: LCCOMB_X23_Y17_N26
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

-- Location: LCCOMB_X23_Y17_N10
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

-- Location: LCCOMB_X20_Y3_N2
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

-- Location: FF_X20_Y3_N3
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

-- Location: LCCOMB_X20_Y3_N10
\inst13|spi_slave_0|bit_cnt[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|bit_cnt[2]~0_combout\ = !\inst13|spi_slave_0|bit_cnt\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|spi_slave_0|bit_cnt\(1),
	combout => \inst13|spi_slave_0|bit_cnt[2]~0_combout\);

-- Location: FF_X20_Y3_N11
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

-- Location: LCCOMB_X20_Y3_N4
\inst13|spi_slave_0|bit_cnt[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|bit_cnt[3]~feeder_combout\ = \inst13|spi_slave_0|bit_cnt\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|spi_slave_0|bit_cnt\(2),
	combout => \inst13|spi_slave_0|bit_cnt[3]~feeder_combout\);

-- Location: FF_X20_Y3_N5
\inst13|spi_slave_0|bit_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|bit_cnt[3]~feeder_combout\,
	clrn => \ALT_INV_spi_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(3));

-- Location: FF_X20_Y3_N19
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

-- Location: LCCOMB_X20_Y3_N20
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

-- Location: FF_X20_Y3_N21
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

-- Location: LCCOMB_X20_Y3_N14
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

-- Location: FF_X20_Y3_N15
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

-- Location: FF_X20_Y3_N29
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

-- Location: FF_X20_Y3_N9
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

-- Location: FF_X20_Y3_N7
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

-- Location: LCCOMB_X19_Y3_N0
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

-- Location: FF_X19_Y3_N1
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

-- Location: FF_X20_Y3_N17
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

-- Location: FF_X19_Y3_N25
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

-- Location: LCCOMB_X19_Y3_N24
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

-- Location: LCCOMB_X19_Y3_N22
\inst13|spi_slave_0|rrdy~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|rrdy~0_combout\ = (\inst13|spi_slave_0|bit_cnt\(10) & (\spi_mosi~input_o\ & (\inst13|spi_slave_0|wr_add~q\))) # (!\inst13|spi_slave_0|bit_cnt\(10) & (((\inst13|spi_slave_0|rrdy~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_mosi~input_o\,
	datab => \inst13|spi_slave_0|wr_add~q\,
	datac => \inst13|spi_slave_0|bit_cnt\(10),
	datad => \inst13|spi_slave_0|rrdy~q\,
	combout => \inst13|spi_slave_0|rrdy~0_combout\);

-- Location: LCCOMB_X19_Y3_N2
\inst13|spi_slave_0|rrdy~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|rrdy~1_combout\ = (\inst13|spi_slave_0|rrdy~0_combout\) # ((!\inst13|spi_slave_0|wr_add~q\ & ((\inst13|spi_slave_0|bit_cnt\(24)) # (\inst13|spi_slave_0|rrdy~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|bit_cnt\(24),
	datab => \inst13|spi_slave_0|wr_add~q\,
	datac => \inst13|spi_slave_0|rrdy~q\,
	datad => \inst13|spi_slave_0|rrdy~0_combout\,
	combout => \inst13|spi_slave_0|rrdy~1_combout\);

-- Location: FF_X19_Y3_N3
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

-- Location: LCCOMB_X19_Y3_N20
\inst13|spi_slave_0|roe~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|roe~1_combout\ = (\inst13|spi_slave_0|roe~0_combout\) # ((\inst13|spi_slave_0|bit_cnt\(24) & (!\inst13|spi_slave_0|wr_add~q\ & \inst13|spi_slave_0|rrdy~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|bit_cnt\(24),
	datab => \inst13|spi_slave_0|wr_add~q\,
	datac => \inst13|spi_slave_0|roe~0_combout\,
	datad => \inst13|spi_slave_0|rrdy~q\,
	combout => \inst13|spi_slave_0|roe~1_combout\);

-- Location: FF_X19_Y3_N21
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

-- Location: LCCOMB_X20_Y3_N6
\inst13|spi_slave_0|miso~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|miso~1_combout\ = (!\inst13|spi_slave_0|bit_cnt\(8) & ((\inst13|spi_slave_0|bit_cnt\(9) & (\inst13|spi_slave_0|rrdy~q\)) # (!\inst13|spi_slave_0|bit_cnt\(9) & ((\inst13|spi_slave_0|roe~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|rrdy~q\,
	datab => \inst13|spi_slave_0|bit_cnt\(8),
	datac => \inst13|spi_slave_0|bit_cnt\(9),
	datad => \inst13|spi_slave_0|roe~q\,
	combout => \inst13|spi_slave_0|miso~1_combout\);

-- Location: LCCOMB_X27_Y17_N0
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

-- Location: FF_X27_Y17_N1
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

-- Location: LCCOMB_X27_Y17_N2
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

-- Location: LCCOMB_X27_Y17_N4
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

-- Location: FF_X27_Y17_N5
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

-- Location: LCCOMB_X27_Y17_N6
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

-- Location: FF_X27_Y17_N7
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

-- Location: FF_X27_Y17_N3
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

-- Location: LCCOMB_X26_Y17_N0
\inst19|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~0_combout\ = (\inst19|t_0\(0) & (\inst1|temp\(31) $ (VCC))) # (!\inst19|t_0\(0) & ((\inst1|temp\(31)) # (GND)))
-- \inst19|Add0~1\ = CARRY((\inst1|temp\(31)) # (!\inst19|t_0\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(0),
	datab => \inst1|temp\(31),
	datad => VCC,
	combout => \inst19|Add0~0_combout\,
	cout => \inst19|Add0~1\);

-- Location: LCCOMB_X26_Y17_N2
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

-- Location: LCCOMB_X26_Y17_N4
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

-- Location: LCCOMB_X26_Y17_N6
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

-- Location: LCCOMB_X27_Y17_N8
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

-- Location: FF_X27_Y17_N9
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

-- Location: LCCOMB_X27_Y17_N10
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

-- Location: FF_X27_Y17_N11
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

-- Location: LCCOMB_X26_Y17_N8
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

-- Location: LCCOMB_X26_Y17_N10
\inst19|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~10_combout\ = (\inst19|t_0\(5) & ((\inst1|temp\(26) & (!\inst19|Add0~9\)) # (!\inst1|temp\(26) & ((\inst19|Add0~9\) # (GND))))) # (!\inst19|t_0\(5) & ((\inst1|temp\(26) & (\inst19|Add0~9\ & VCC)) # (!\inst1|temp\(26) & (!\inst19|Add0~9\))))
-- \inst19|Add0~11\ = CARRY((\inst19|t_0\(5) & ((!\inst19|Add0~9\) # (!\inst1|temp\(26)))) # (!\inst19|t_0\(5) & (!\inst1|temp\(26) & !\inst19|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(5),
	datab => \inst1|temp\(26),
	datad => VCC,
	cin => \inst19|Add0~9\,
	combout => \inst19|Add0~10_combout\,
	cout => \inst19|Add0~11\);

-- Location: LCCOMB_X20_Y21_N24
\inst19|LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan4~0_combout\ = (!\inst19|Add0~8_combout\ & (!\inst19|Add0~10_combout\ & ((!\inst19|Add0~4_combout\) # (!\inst19|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~8_combout\,
	datab => \inst19|Add0~6_combout\,
	datac => \inst19|Add0~10_combout\,
	datad => \inst19|Add0~4_combout\,
	combout => \inst19|LessThan4~0_combout\);

-- Location: LCCOMB_X27_Y17_N12
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

-- Location: FF_X27_Y17_N13
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

-- Location: LCCOMB_X26_Y17_N12
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

-- Location: LCCOMB_X27_Y17_N14
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

-- Location: FF_X27_Y17_N15
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

-- Location: LCCOMB_X26_Y17_N14
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

-- Location: LCCOMB_X20_Y21_N20
\inst19|result~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|result~1_combout\ = (\inst19|Add0~14_combout\ & (((\inst19|Add0~12_combout\) # (!\inst19|LessThan4~0_combout\)))) # (!\inst19|Add0~14_combout\ & (!\inst19|LessThan3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan3~0_combout\,
	datab => \inst19|LessThan4~0_combout\,
	datac => \inst19|Add0~12_combout\,
	datad => \inst19|Add0~14_combout\,
	combout => \inst19|result~1_combout\);

-- Location: LCCOMB_X27_Y17_N16
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

-- Location: FF_X27_Y17_N17
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

-- Location: LCCOMB_X27_Y17_N18
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

-- Location: FF_X27_Y17_N19
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

-- Location: LCCOMB_X27_Y17_N20
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

-- Location: FF_X27_Y17_N21
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

-- Location: LCCOMB_X27_Y17_N22
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

-- Location: LCCOMB_X27_Y17_N24
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

-- Location: FF_X27_Y17_N25
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

-- Location: LCCOMB_X27_Y17_N26
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

-- Location: LCCOMB_X27_Y17_N28
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

-- Location: FF_X27_Y17_N29
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

-- Location: LCCOMB_X27_Y17_N30
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

-- Location: LCCOMB_X27_Y16_N0
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

-- Location: FF_X27_Y16_N1
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

-- Location: LCCOMB_X27_Y16_N2
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

-- Location: FF_X27_Y16_N3
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

-- Location: LCCOMB_X27_Y16_N4
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

-- Location: FF_X27_Y16_N5
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

-- Location: LCCOMB_X27_Y16_N6
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

-- Location: LCCOMB_X27_Y16_N8
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

-- Location: FF_X27_Y16_N9
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

-- Location: FF_X27_Y16_N7
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

-- Location: FF_X26_Y16_N3
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

-- Location: FF_X27_Y17_N31
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

-- Location: FF_X26_Y17_N31
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

-- Location: FF_X26_Y17_N29
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

-- Location: FF_X27_Y17_N27
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

-- Location: FF_X26_Y17_N27
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

-- Location: FF_X26_Y17_N25
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

-- Location: FF_X27_Y17_N23
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

-- Location: FF_X26_Y17_N21
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

-- Location: FF_X26_Y17_N19
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

-- Location: FF_X26_Y17_N17
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

-- Location: LCCOMB_X26_Y17_N16
\inst19|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~16_combout\ = ((\inst1|temp\(23) $ (\inst19|t_0\(8) $ (\inst19|Add0~15\)))) # (GND)
-- \inst19|Add0~17\ = CARRY((\inst1|temp\(23) & ((!\inst19|Add0~15\) # (!\inst19|t_0\(8)))) # (!\inst1|temp\(23) & (!\inst19|t_0\(8) & !\inst19|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(23),
	datab => \inst19|t_0\(8),
	datad => VCC,
	cin => \inst19|Add0~15\,
	combout => \inst19|Add0~16_combout\,
	cout => \inst19|Add0~17\);

-- Location: LCCOMB_X26_Y17_N18
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

-- Location: LCCOMB_X26_Y17_N20
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

-- Location: LCCOMB_X26_Y17_N22
\inst19|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~22_combout\ = (\inst19|t_0\(11) & ((\inst1|temp\(20) & (!\inst19|Add0~21\)) # (!\inst1|temp\(20) & ((\inst19|Add0~21\) # (GND))))) # (!\inst19|t_0\(11) & ((\inst1|temp\(20) & (\inst19|Add0~21\ & VCC)) # (!\inst1|temp\(20) & 
-- (!\inst19|Add0~21\))))
-- \inst19|Add0~23\ = CARRY((\inst19|t_0\(11) & ((!\inst19|Add0~21\) # (!\inst1|temp\(20)))) # (!\inst19|t_0\(11) & (!\inst1|temp\(20) & !\inst19|Add0~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(11),
	datab => \inst1|temp\(20),
	datad => VCC,
	cin => \inst19|Add0~21\,
	combout => \inst19|Add0~22_combout\,
	cout => \inst19|Add0~23\);

-- Location: LCCOMB_X26_Y17_N24
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

-- Location: LCCOMB_X26_Y17_N26
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

-- Location: LCCOMB_X26_Y17_N28
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

-- Location: LCCOMB_X26_Y17_N30
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

-- Location: LCCOMB_X26_Y16_N2
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

-- Location: LCCOMB_X26_Y16_N4
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

-- Location: LCCOMB_X26_Y16_N8
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

-- Location: LCCOMB_X27_Y16_N10
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

-- Location: LCCOMB_X27_Y16_N12
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

-- Location: LCCOMB_X27_Y16_N14
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

-- Location: FF_X27_Y16_N15
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

-- Location: FF_X27_Y16_N13
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

-- Location: FF_X27_Y16_N11
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

-- Location: LCCOMB_X26_Y16_N10
\inst19|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~42_combout\ = (\inst19|t_0\(21) & ((\inst1|temp\(10) & (!\inst19|Add0~41\)) # (!\inst1|temp\(10) & ((\inst19|Add0~41\) # (GND))))) # (!\inst19|t_0\(21) & ((\inst1|temp\(10) & (\inst19|Add0~41\ & VCC)) # (!\inst1|temp\(10) & 
-- (!\inst19|Add0~41\))))
-- \inst19|Add0~43\ = CARRY((\inst19|t_0\(21) & ((!\inst19|Add0~41\) # (!\inst1|temp\(10)))) # (!\inst19|t_0\(21) & (!\inst1|temp\(10) & !\inst19|Add0~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(21),
	datab => \inst1|temp\(10),
	datad => VCC,
	cin => \inst19|Add0~41\,
	combout => \inst19|Add0~42_combout\,
	cout => \inst19|Add0~43\);

-- Location: LCCOMB_X26_Y16_N12
\inst19|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~44_combout\ = ((\inst19|t_0\(22) $ (\inst1|temp\(9) $ (\inst19|Add0~43\)))) # (GND)
-- \inst19|Add0~45\ = CARRY((\inst19|t_0\(22) & (\inst1|temp\(9) & !\inst19|Add0~43\)) # (!\inst19|t_0\(22) & ((\inst1|temp\(9)) # (!\inst19|Add0~43\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(22),
	datab => \inst1|temp\(9),
	datad => VCC,
	cin => \inst19|Add0~43\,
	combout => \inst19|Add0~44_combout\,
	cout => \inst19|Add0~45\);

-- Location: LCCOMB_X26_Y16_N14
\inst19|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~46_combout\ = (\inst19|t_0\(23) & ((\inst1|temp\(8) & (!\inst19|Add0~45\)) # (!\inst1|temp\(8) & ((\inst19|Add0~45\) # (GND))))) # (!\inst19|t_0\(23) & ((\inst1|temp\(8) & (\inst19|Add0~45\ & VCC)) # (!\inst1|temp\(8) & (!\inst19|Add0~45\))))
-- \inst19|Add0~47\ = CARRY((\inst19|t_0\(23) & ((!\inst19|Add0~45\) # (!\inst1|temp\(8)))) # (!\inst19|t_0\(23) & (!\inst1|temp\(8) & !\inst19|Add0~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(23),
	datab => \inst1|temp\(8),
	datad => VCC,
	cin => \inst19|Add0~45\,
	combout => \inst19|Add0~46_combout\,
	cout => \inst19|Add0~47\);

-- Location: LCCOMB_X26_Y18_N24
\inst19|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan2~5_combout\ = (!\inst19|Add0~44_combout\ & (!\inst19|Add0~40_combout\ & (!\inst19|Add0~46_combout\ & !\inst19|Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~44_combout\,
	datab => \inst19|Add0~40_combout\,
	datac => \inst19|Add0~46_combout\,
	datad => \inst19|Add0~42_combout\,
	combout => \inst19|LessThan2~5_combout\);

-- Location: LCCOMB_X27_Y16_N16
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

-- Location: FF_X27_Y16_N17
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

-- Location: LCCOMB_X27_Y16_N18
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

-- Location: FF_X27_Y16_N19
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

-- Location: LCCOMB_X27_Y16_N20
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

-- Location: FF_X27_Y16_N21
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

-- Location: FF_X26_Y16_N21
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

-- Location: FF_X26_Y16_N19
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

-- Location: FF_X26_Y16_N17
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

-- Location: LCCOMB_X26_Y16_N18
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

-- Location: LCCOMB_X26_Y16_N20
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

-- Location: LCCOMB_X17_Y17_N30
\inst19|LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan2~0_combout\ = (!\inst19|Add0~48_combout\ & (!\inst19|Add0~52_combout\ & !\inst19|Add0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~48_combout\,
	datab => \inst19|Add0~52_combout\,
	datac => \inst19|Add0~50_combout\,
	combout => \inst19|LessThan2~0_combout\);

-- Location: LCCOMB_X26_Y18_N26
\inst19|LessThan2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan2~2_combout\ = (!\inst19|Add0~24_combout\ & (!\inst19|Add0~30_combout\ & (!\inst19|Add0~26_combout\ & !\inst19|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~24_combout\,
	datab => \inst19|Add0~30_combout\,
	datac => \inst19|Add0~26_combout\,
	datad => \inst19|Add0~28_combout\,
	combout => \inst19|LessThan2~2_combout\);

-- Location: LCCOMB_X26_Y18_N0
\inst19|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan2~1_combout\ = (!\inst19|Add0~20_combout\ & (!\inst19|Add0~18_combout\ & (!\inst19|Add0~22_combout\ & !\inst19|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~20_combout\,
	datab => \inst19|Add0~18_combout\,
	datac => \inst19|Add0~22_combout\,
	datad => \inst19|Add0~16_combout\,
	combout => \inst19|LessThan2~1_combout\);

-- Location: LCCOMB_X26_Y18_N12
\inst19|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan2~3_combout\ = (\inst19|LessThan2~2_combout\ & \inst19|LessThan2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|LessThan2~2_combout\,
	datad => \inst19|LessThan2~1_combout\,
	combout => \inst19|LessThan2~3_combout\);

-- Location: LCCOMB_X26_Y18_N10
\inst19|LessThan2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan2~6_combout\ = (\inst19|LessThan2~4_combout\ & (\inst19|LessThan2~5_combout\ & (\inst19|LessThan2~0_combout\ & \inst19|LessThan2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan2~4_combout\,
	datab => \inst19|LessThan2~5_combout\,
	datac => \inst19|LessThan2~0_combout\,
	datad => \inst19|LessThan2~3_combout\,
	combout => \inst19|LessThan2~6_combout\);

-- Location: LCCOMB_X27_Y16_N22
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

-- Location: FF_X27_Y16_N23
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

-- Location: FF_X26_Y16_N23
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

-- Location: LCCOMB_X26_Y16_N22
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

-- Location: LCCOMB_X27_Y16_N24
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

-- Location: FF_X27_Y16_N25
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

-- Location: FF_X26_Y16_N25
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

-- Location: LCCOMB_X26_Y16_N24
\inst19|Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~56_combout\ = ((\inst1|temp\(3) $ (\inst19|t_0\(28) $ (\inst19|Add0~55\)))) # (GND)
-- \inst19|Add0~57\ = CARRY((\inst1|temp\(3) & ((!\inst19|Add0~55\) # (!\inst19|t_0\(28)))) # (!\inst1|temp\(3) & (!\inst19|t_0\(28) & !\inst19|Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(3),
	datab => \inst19|t_0\(28),
	datad => VCC,
	cin => \inst19|Add0~55\,
	combout => \inst19|Add0~56_combout\,
	cout => \inst19|Add0~57\);

-- Location: LCCOMB_X21_Y18_N18
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

-- Location: LCCOMB_X21_Y18_N14
\inst19|result~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|result~2_combout\ = (\inst19|Add0~60_combout\) # ((\inst19|result~1_combout\) # ((!\inst19|LessThan0~0_combout\) # (!\inst19|LessThan2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~60_combout\,
	datab => \inst19|result~1_combout\,
	datac => \inst19|LessThan2~6_combout\,
	datad => \inst19|LessThan0~0_combout\,
	combout => \inst19|result~2_combout\);

-- Location: LCCOMB_X26_Y18_N20
\inst19|LessThan2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan2~8_combout\ = (\inst19|LessThan2~4_combout\ & (\inst19|LessThan2~5_combout\ & (\inst19|LessThan2~2_combout\ & \inst19|LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan2~4_combout\,
	datab => \inst19|LessThan2~5_combout\,
	datac => \inst19|LessThan2~2_combout\,
	datad => \inst19|LessThan2~1_combout\,
	combout => \inst19|LessThan2~8_combout\);

-- Location: LCCOMB_X20_Y21_N0
\inst19|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan0~1_combout\ = (!\inst19|Add0~14_combout\ & !\inst19|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~14_combout\,
	datac => \inst19|Add0~12_combout\,
	combout => \inst19|LessThan0~1_combout\);

-- Location: LCCOMB_X20_Y21_N14
\inst19|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan1~1_combout\ = ((\inst19|LessThan1~0_combout\ & (\inst19|Add0~10_combout\ & \inst19|Add0~8_combout\))) # (!\inst19|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan1~0_combout\,
	datab => \inst19|LessThan0~1_combout\,
	datac => \inst19|Add0~10_combout\,
	datad => \inst19|Add0~8_combout\,
	combout => \inst19|LessThan1~1_combout\);

-- Location: LCCOMB_X21_Y18_N8
\inst19|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan1~3_combout\ = ((\inst19|LessThan1~1_combout\) # (!\inst19|LessThan2~8_combout\)) # (!\inst19|LessThan2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan2~0_combout\,
	datab => \inst19|LessThan2~8_combout\,
	datad => \inst19|LessThan1~1_combout\,
	combout => \inst19|LessThan1~3_combout\);

-- Location: LCCOMB_X20_Y21_N8
\inst19|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan2~7_combout\ = (\inst19|LessThan0~4_combout\ & (!\inst19|Add0~8_combout\ & ((!\inst19|Add0~0_combout\) # (!\inst19|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan0~4_combout\,
	datab => \inst19|Add0~8_combout\,
	datac => \inst19|Add0~2_combout\,
	datad => \inst19|Add0~0_combout\,
	combout => \inst19|LessThan2~7_combout\);

-- Location: LCCOMB_X20_Y21_N26
\inst19|t_sweep_start[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_start[0]~1_combout\ = (!\inst19|Add0~14_combout\ & (((\inst19|LessThan2~7_combout\) # (!\inst19|Add0~10_combout\)) # (!\inst19|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~14_combout\,
	datab => \inst19|Add0~12_combout\,
	datac => \inst19|Add0~10_combout\,
	datad => \inst19|LessThan2~7_combout\,
	combout => \inst19|t_sweep_start[0]~1_combout\);

-- Location: LCCOMB_X21_Y18_N0
\inst19|t_sweep_start[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_start[0]~2_combout\ = (!\inst19|Add0~60_combout\ & (\inst19|t_sweep_start[0]~1_combout\ & (\inst19|LessThan2~6_combout\ & \inst19|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~60_combout\,
	datab => \inst19|t_sweep_start[0]~1_combout\,
	datac => \inst19|LessThan2~6_combout\,
	datad => \inst19|LessThan0~0_combout\,
	combout => \inst19|t_sweep_start[0]~2_combout\);

-- Location: LCCOMB_X21_Y18_N10
\inst19|result~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|result~3_combout\ = (\inst19|t_sweep_start[0]~2_combout\ & ((\inst19|LessThan1~3_combout\) # (\inst19|Add0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|LessThan1~3_combout\,
	datac => \inst19|Add0~54_combout\,
	datad => \inst19|t_sweep_start[0]~2_combout\,
	combout => \inst19|result~3_combout\);

-- Location: LCCOMB_X21_Y18_N16
\inst19|result~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|result~4_combout\ = (\inst19|LessThan0~6_combout\) # ((\inst19|result~2_combout\ & (\inst19|result~q\ & !\inst19|result~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan0~6_combout\,
	datab => \inst19|result~2_combout\,
	datac => \inst19|result~q\,
	datad => \inst19|result~3_combout\,
	combout => \inst19|result~4_combout\);

-- Location: FF_X21_Y18_N17
\inst19|result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|result~q\);

-- Location: LCCOMB_X27_Y16_N26
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

-- Location: LCCOMB_X27_Y16_N28
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

-- Location: FF_X27_Y16_N29
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

-- Location: LCCOMB_X27_Y16_N30
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

-- Location: FF_X27_Y16_N31
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

-- Location: FF_X26_Y16_N31
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

-- Location: FF_X26_Y16_N29
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

-- Location: FF_X27_Y16_N27
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

-- Location: LCCOMB_X26_Y16_N26
\inst19|Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~58_combout\ = (\inst19|t_0\(29) & ((\inst1|temp\(2) & (!\inst19|Add0~57\)) # (!\inst1|temp\(2) & ((\inst19|Add0~57\) # (GND))))) # (!\inst19|t_0\(29) & ((\inst1|temp\(2) & (\inst19|Add0~57\ & VCC)) # (!\inst1|temp\(2) & (!\inst19|Add0~57\))))
-- \inst19|Add0~59\ = CARRY((\inst19|t_0\(29) & ((!\inst19|Add0~57\) # (!\inst1|temp\(2)))) # (!\inst19|t_0\(29) & (!\inst1|temp\(2) & !\inst19|Add0~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(29),
	datab => \inst1|temp\(2),
	datad => VCC,
	cin => \inst19|Add0~57\,
	combout => \inst19|Add0~58_combout\,
	cout => \inst19|Add0~59\);

-- Location: LCCOMB_X26_Y16_N28
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

-- Location: LCCOMB_X26_Y16_N30
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

-- Location: LCCOMB_X17_Y22_N6
\inst19|Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add5~6_combout\ = (\inst19|Add0~6_combout\ & (!\inst19|Add5~5\)) # (!\inst19|Add0~6_combout\ & ((\inst19|Add5~5\) # (GND)))
-- \inst19|Add5~7\ = CARRY((!\inst19|Add5~5\) # (!\inst19|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~6_combout\,
	datad => VCC,
	cin => \inst19|Add5~5\,
	combout => \inst19|Add5~6_combout\,
	cout => \inst19|Add5~7\);

-- Location: LCCOMB_X17_Y22_N8
\inst19|Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add5~8_combout\ = (\inst19|Add0~8_combout\ & (\inst19|Add5~7\ $ (GND))) # (!\inst19|Add0~8_combout\ & (!\inst19|Add5~7\ & VCC))
-- \inst19|Add5~9\ = CARRY((\inst19|Add0~8_combout\ & !\inst19|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~8_combout\,
	datad => VCC,
	cin => \inst19|Add5~7\,
	combout => \inst19|Add5~8_combout\,
	cout => \inst19|Add5~9\);

-- Location: LCCOMB_X17_Y22_N10
\inst19|Add5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add5~10_combout\ = (\inst19|Add0~10_combout\ & (!\inst19|Add5~9\)) # (!\inst19|Add0~10_combout\ & ((\inst19|Add5~9\) # (GND)))
-- \inst19|Add5~11\ = CARRY((!\inst19|Add5~9\) # (!\inst19|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~10_combout\,
	datad => VCC,
	cin => \inst19|Add5~9\,
	combout => \inst19|Add5~10_combout\,
	cout => \inst19|Add5~11\);

-- Location: LCCOMB_X17_Y22_N14
\inst19|Add5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add5~14_combout\ = (\inst19|Add0~14_combout\ & (\inst19|Add5~13\ & VCC)) # (!\inst19|Add0~14_combout\ & (!\inst19|Add5~13\))
-- \inst19|Add5~15\ = CARRY((!\inst19|Add0~14_combout\ & !\inst19|Add5~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~14_combout\,
	datad => VCC,
	cin => \inst19|Add5~13\,
	combout => \inst19|Add5~14_combout\,
	cout => \inst19|Add5~15\);

-- Location: LCCOMB_X17_Y22_N16
\inst19|Add5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add5~16_combout\ = (\inst19|Add0~16_combout\ & ((GND) # (!\inst19|Add5~15\))) # (!\inst19|Add0~16_combout\ & (\inst19|Add5~15\ $ (GND)))
-- \inst19|Add5~17\ = CARRY((\inst19|Add0~16_combout\) # (!\inst19|Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~16_combout\,
	datad => VCC,
	cin => \inst19|Add5~15\,
	combout => \inst19|Add5~16_combout\,
	cout => \inst19|Add5~17\);

-- Location: LCCOMB_X17_Y22_N22
\inst19|Add5~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add5~22_combout\ = (\inst19|Add0~22_combout\ & (\inst19|Add5~21\ & VCC)) # (!\inst19|Add0~22_combout\ & (!\inst19|Add5~21\))
-- \inst19|Add5~23\ = CARRY((!\inst19|Add0~22_combout\ & !\inst19|Add5~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~22_combout\,
	datad => VCC,
	cin => \inst19|Add5~21\,
	combout => \inst19|Add5~22_combout\,
	cout => \inst19|Add5~23\);

-- Location: LCCOMB_X17_Y22_N24
\inst19|Add5~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add5~24_combout\ = (\inst19|Add0~24_combout\ & ((GND) # (!\inst19|Add5~23\))) # (!\inst19|Add0~24_combout\ & (\inst19|Add5~23\ $ (GND)))
-- \inst19|Add5~25\ = CARRY((\inst19|Add0~24_combout\) # (!\inst19|Add5~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~24_combout\,
	datad => VCC,
	cin => \inst19|Add5~23\,
	combout => \inst19|Add5~24_combout\,
	cout => \inst19|Add5~25\);

-- Location: LCCOMB_X17_Y22_N30
\inst19|Add5~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add5~30_combout\ = (\inst19|Add0~30_combout\ & (\inst19|Add5~29\ & VCC)) # (!\inst19|Add0~30_combout\ & (!\inst19|Add5~29\))
-- \inst19|Add5~31\ = CARRY((!\inst19|Add0~30_combout\ & !\inst19|Add5~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~30_combout\,
	datad => VCC,
	cin => \inst19|Add5~29\,
	combout => \inst19|Add5~30_combout\,
	cout => \inst19|Add5~31\);

-- Location: LCCOMB_X17_Y21_N10
\inst19|Add5~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add5~42_combout\ = (\inst19|Add0~42_combout\ & (\inst19|Add5~41\ & VCC)) # (!\inst19|Add0~42_combout\ & (!\inst19|Add5~41\))
-- \inst19|Add5~43\ = CARRY((!\inst19|Add0~42_combout\ & !\inst19|Add5~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~42_combout\,
	datad => VCC,
	cin => \inst19|Add5~41\,
	combout => \inst19|Add5~42_combout\,
	cout => \inst19|Add5~43\);

-- Location: LCCOMB_X17_Y21_N12
\inst19|Add5~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add5~44_combout\ = (\inst19|Add0~44_combout\ & ((GND) # (!\inst19|Add5~43\))) # (!\inst19|Add0~44_combout\ & (\inst19|Add5~43\ $ (GND)))
-- \inst19|Add5~45\ = CARRY((\inst19|Add0~44_combout\) # (!\inst19|Add5~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~44_combout\,
	datad => VCC,
	cin => \inst19|Add5~43\,
	combout => \inst19|Add5~44_combout\,
	cout => \inst19|Add5~45\);

-- Location: LCCOMB_X17_Y21_N14
\inst19|Add5~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add5~46_combout\ = (\inst19|Add0~46_combout\ & (\inst19|Add5~45\ & VCC)) # (!\inst19|Add0~46_combout\ & (!\inst19|Add5~45\))
-- \inst19|Add5~47\ = CARRY((!\inst19|Add0~46_combout\ & !\inst19|Add5~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~46_combout\,
	datad => VCC,
	cin => \inst19|Add5~45\,
	combout => \inst19|Add5~46_combout\,
	cout => \inst19|Add5~47\);

-- Location: LCCOMB_X17_Y21_N16
\inst19|Add5~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add5~48_combout\ = (\inst19|Add0~48_combout\ & ((GND) # (!\inst19|Add5~47\))) # (!\inst19|Add0~48_combout\ & (\inst19|Add5~47\ $ (GND)))
-- \inst19|Add5~49\ = CARRY((\inst19|Add0~48_combout\) # (!\inst19|Add5~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~48_combout\,
	datad => VCC,
	cin => \inst19|Add5~47\,
	combout => \inst19|Add5~48_combout\,
	cout => \inst19|Add5~49\);

-- Location: LCCOMB_X17_Y21_N18
\inst19|Add5~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add5~50_combout\ = (\inst19|Add0~50_combout\ & (\inst19|Add5~49\ & VCC)) # (!\inst19|Add0~50_combout\ & (!\inst19|Add5~49\))
-- \inst19|Add5~51\ = CARRY((!\inst19|Add0~50_combout\ & !\inst19|Add5~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~50_combout\,
	datad => VCC,
	cin => \inst19|Add5~49\,
	combout => \inst19|Add5~50_combout\,
	cout => \inst19|Add5~51\);

-- Location: LCCOMB_X17_Y21_N22
\inst19|Add5~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add5~54_combout\ = (\inst19|Add0~54_combout\ & (\inst19|Add5~53\ & VCC)) # (!\inst19|Add0~54_combout\ & (!\inst19|Add5~53\))
-- \inst19|Add5~55\ = CARRY((!\inst19|Add0~54_combout\ & !\inst19|Add5~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~54_combout\,
	datad => VCC,
	cin => \inst19|Add5~53\,
	combout => \inst19|Add5~54_combout\,
	cout => \inst19|Add5~55\);

-- Location: LCCOMB_X17_Y21_N24
\inst19|Add5~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add5~56_combout\ = (\inst19|Add0~56_combout\ & ((GND) # (!\inst19|Add5~55\))) # (!\inst19|Add0~56_combout\ & (\inst19|Add5~55\ $ (GND)))
-- \inst19|Add5~57\ = CARRY((\inst19|Add0~56_combout\) # (!\inst19|Add5~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~56_combout\,
	datad => VCC,
	cin => \inst19|Add5~55\,
	combout => \inst19|Add5~56_combout\,
	cout => \inst19|Add5~57\);

-- Location: LCCOMB_X17_Y21_N26
\inst19|Add5~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add5~58_combout\ = (\inst19|Add0~58_combout\ & (\inst19|Add5~57\ & VCC)) # (!\inst19|Add0~58_combout\ & (!\inst19|Add5~57\))
-- \inst19|Add5~59\ = CARRY((!\inst19|Add0~58_combout\ & !\inst19|Add5~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~58_combout\,
	datad => VCC,
	cin => \inst19|Add5~57\,
	combout => \inst19|Add5~58_combout\,
	cout => \inst19|Add5~59\);

-- Location: LCCOMB_X17_Y21_N30
\inst19|Add5~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add5~62_combout\ = \inst19|Add5~61\ $ (!\inst19|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst19|Add0~62_combout\,
	cin => \inst19|Add5~61\,
	combout => \inst19|Add5~62_combout\);

-- Location: LCCOMB_X16_Y21_N30
\inst19|Add6~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add6~62_combout\ = \inst19|Add6~61\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst19|Add6~61\,
	combout => \inst19|Add6~62_combout\);

-- Location: LCCOMB_X28_Y21_N8
\inst19|Add7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add7~8_combout\ = (\inst19|Add0~8_combout\ & ((GND) # (!\inst19|Add7~7\))) # (!\inst19|Add0~8_combout\ & (\inst19|Add7~7\ $ (GND)))
-- \inst19|Add7~9\ = CARRY((\inst19|Add0~8_combout\) # (!\inst19|Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~8_combout\,
	datad => VCC,
	cin => \inst19|Add7~7\,
	combout => \inst19|Add7~8_combout\,
	cout => \inst19|Add7~9\);

-- Location: LCCOMB_X28_Y21_N10
\inst19|Add7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add7~10_combout\ = (\inst19|Add0~10_combout\ & (\inst19|Add7~9\ & VCC)) # (!\inst19|Add0~10_combout\ & (!\inst19|Add7~9\))
-- \inst19|Add7~11\ = CARRY((!\inst19|Add0~10_combout\ & !\inst19|Add7~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~10_combout\,
	datad => VCC,
	cin => \inst19|Add7~9\,
	combout => \inst19|Add7~10_combout\,
	cout => \inst19|Add7~11\);

-- Location: LCCOMB_X28_Y21_N14
\inst19|Add7~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add7~14_combout\ = (\inst19|Add0~14_combout\ & (\inst19|Add7~13\ & VCC)) # (!\inst19|Add0~14_combout\ & (!\inst19|Add7~13\))
-- \inst19|Add7~15\ = CARRY((!\inst19|Add0~14_combout\ & !\inst19|Add7~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~14_combout\,
	datad => VCC,
	cin => \inst19|Add7~13\,
	combout => \inst19|Add7~14_combout\,
	cout => \inst19|Add7~15\);

-- Location: LCCOMB_X28_Y21_N16
\inst19|Add7~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add7~16_combout\ = (\inst19|Add0~16_combout\ & ((GND) # (!\inst19|Add7~15\))) # (!\inst19|Add0~16_combout\ & (\inst19|Add7~15\ $ (GND)))
-- \inst19|Add7~17\ = CARRY((\inst19|Add0~16_combout\) # (!\inst19|Add7~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~16_combout\,
	datad => VCC,
	cin => \inst19|Add7~15\,
	combout => \inst19|Add7~16_combout\,
	cout => \inst19|Add7~17\);

-- Location: LCCOMB_X28_Y21_N22
\inst19|Add7~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add7~22_combout\ = (\inst19|Add0~22_combout\ & (\inst19|Add7~21\ & VCC)) # (!\inst19|Add0~22_combout\ & (!\inst19|Add7~21\))
-- \inst19|Add7~23\ = CARRY((!\inst19|Add0~22_combout\ & !\inst19|Add7~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~22_combout\,
	datad => VCC,
	cin => \inst19|Add7~21\,
	combout => \inst19|Add7~22_combout\,
	cout => \inst19|Add7~23\);

-- Location: LCCOMB_X28_Y21_N24
\inst19|Add7~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add7~24_combout\ = (\inst19|Add0~24_combout\ & ((GND) # (!\inst19|Add7~23\))) # (!\inst19|Add0~24_combout\ & (\inst19|Add7~23\ $ (GND)))
-- \inst19|Add7~25\ = CARRY((\inst19|Add0~24_combout\) # (!\inst19|Add7~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~24_combout\,
	datad => VCC,
	cin => \inst19|Add7~23\,
	combout => \inst19|Add7~24_combout\,
	cout => \inst19|Add7~25\);

-- Location: LCCOMB_X28_Y21_N28
\inst19|Add7~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add7~28_combout\ = (\inst19|Add0~28_combout\ & ((GND) # (!\inst19|Add7~27\))) # (!\inst19|Add0~28_combout\ & (\inst19|Add7~27\ $ (GND)))
-- \inst19|Add7~29\ = CARRY((\inst19|Add0~28_combout\) # (!\inst19|Add7~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~28_combout\,
	datad => VCC,
	cin => \inst19|Add7~27\,
	combout => \inst19|Add7~28_combout\,
	cout => \inst19|Add7~29\);

-- Location: LCCOMB_X28_Y21_N30
\inst19|Add7~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add7~30_combout\ = (\inst19|Add0~30_combout\ & (\inst19|Add7~29\ & VCC)) # (!\inst19|Add0~30_combout\ & (!\inst19|Add7~29\))
-- \inst19|Add7~31\ = CARRY((!\inst19|Add0~30_combout\ & !\inst19|Add7~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~30_combout\,
	datad => VCC,
	cin => \inst19|Add7~29\,
	combout => \inst19|Add7~30_combout\,
	cout => \inst19|Add7~31\);

-- Location: LCCOMB_X28_Y20_N0
\inst19|Add7~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add7~32_combout\ = (\inst19|Add0~32_combout\ & ((GND) # (!\inst19|Add7~31\))) # (!\inst19|Add0~32_combout\ & (\inst19|Add7~31\ $ (GND)))
-- \inst19|Add7~33\ = CARRY((\inst19|Add0~32_combout\) # (!\inst19|Add7~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~32_combout\,
	datad => VCC,
	cin => \inst19|Add7~31\,
	combout => \inst19|Add7~32_combout\,
	cout => \inst19|Add7~33\);

-- Location: LCCOMB_X28_Y20_N12
\inst19|Add7~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add7~44_combout\ = (\inst19|Add0~44_combout\ & ((GND) # (!\inst19|Add7~43\))) # (!\inst19|Add0~44_combout\ & (\inst19|Add7~43\ $ (GND)))
-- \inst19|Add7~45\ = CARRY((\inst19|Add0~44_combout\) # (!\inst19|Add7~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~44_combout\,
	datad => VCC,
	cin => \inst19|Add7~43\,
	combout => \inst19|Add7~44_combout\,
	cout => \inst19|Add7~45\);

-- Location: LCCOMB_X28_Y20_N14
\inst19|Add7~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add7~46_combout\ = (\inst19|Add0~46_combout\ & (\inst19|Add7~45\ & VCC)) # (!\inst19|Add0~46_combout\ & (!\inst19|Add7~45\))
-- \inst19|Add7~47\ = CARRY((!\inst19|Add0~46_combout\ & !\inst19|Add7~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~46_combout\,
	datad => VCC,
	cin => \inst19|Add7~45\,
	combout => \inst19|Add7~46_combout\,
	cout => \inst19|Add7~47\);

-- Location: LCCOMB_X28_Y20_N16
\inst19|Add7~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add7~48_combout\ = (\inst19|Add0~48_combout\ & ((GND) # (!\inst19|Add7~47\))) # (!\inst19|Add0~48_combout\ & (\inst19|Add7~47\ $ (GND)))
-- \inst19|Add7~49\ = CARRY((\inst19|Add0~48_combout\) # (!\inst19|Add7~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~48_combout\,
	datad => VCC,
	cin => \inst19|Add7~47\,
	combout => \inst19|Add7~48_combout\,
	cout => \inst19|Add7~49\);

-- Location: LCCOMB_X28_Y20_N18
\inst19|Add7~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add7~50_combout\ = (\inst19|Add0~50_combout\ & (\inst19|Add7~49\ & VCC)) # (!\inst19|Add0~50_combout\ & (!\inst19|Add7~49\))
-- \inst19|Add7~51\ = CARRY((!\inst19|Add0~50_combout\ & !\inst19|Add7~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~50_combout\,
	datad => VCC,
	cin => \inst19|Add7~49\,
	combout => \inst19|Add7~50_combout\,
	cout => \inst19|Add7~51\);

-- Location: LCCOMB_X28_Y20_N22
\inst19|Add7~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add7~54_combout\ = (\inst19|Add0~54_combout\ & (\inst19|Add7~53\ & VCC)) # (!\inst19|Add0~54_combout\ & (!\inst19|Add7~53\))
-- \inst19|Add7~55\ = CARRY((!\inst19|Add0~54_combout\ & !\inst19|Add7~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~54_combout\,
	datad => VCC,
	cin => \inst19|Add7~53\,
	combout => \inst19|Add7~54_combout\,
	cout => \inst19|Add7~55\);

-- Location: LCCOMB_X28_Y20_N24
\inst19|Add7~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add7~56_combout\ = (\inst19|Add0~56_combout\ & ((GND) # (!\inst19|Add7~55\))) # (!\inst19|Add0~56_combout\ & (\inst19|Add7~55\ $ (GND)))
-- \inst19|Add7~57\ = CARRY((\inst19|Add0~56_combout\) # (!\inst19|Add7~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~56_combout\,
	datad => VCC,
	cin => \inst19|Add7~55\,
	combout => \inst19|Add7~56_combout\,
	cout => \inst19|Add7~57\);

-- Location: LCCOMB_X28_Y20_N30
\inst19|Add7~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add7~62_combout\ = \inst19|Add7~61\ $ (!\inst19|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst19|Add0~62_combout\,
	cin => \inst19|Add7~61\,
	combout => \inst19|Add7~62_combout\);

-- Location: LCCOMB_X27_Y21_N0
\inst19|Add8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add8~0_combout\ = (\inst19|result~11_combout\ & (\inst19|Add7~62_combout\ $ (VCC))) # (!\inst19|result~11_combout\ & (\inst19|Add7~62_combout\ & VCC))
-- \inst19|Add8~1\ = CARRY((\inst19|result~11_combout\ & \inst19|Add7~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|result~11_combout\,
	datab => \inst19|Add7~62_combout\,
	datad => VCC,
	combout => \inst19|Add8~0_combout\,
	cout => \inst19|Add8~1\);

-- Location: LCCOMB_X27_Y21_N2
\inst19|Add8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add8~2_combout\ = (\inst19|Add8~1\ & (\inst19|Add7~2_combout\ $ ((!\inst19|Add7~62_combout\)))) # (!\inst19|Add8~1\ & ((\inst19|Add7~2_combout\ $ (\inst19|Add7~62_combout\)) # (GND)))
-- \inst19|Add8~3\ = CARRY((\inst19|Add7~2_combout\ $ (!\inst19|Add7~62_combout\)) # (!\inst19|Add8~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add7~2_combout\,
	datab => \inst19|Add7~62_combout\,
	datad => VCC,
	cin => \inst19|Add8~1\,
	combout => \inst19|Add8~2_combout\,
	cout => \inst19|Add8~3\);

-- Location: LCCOMB_X27_Y21_N6
\inst19|Add8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add8~6_combout\ = (\inst19|Add8~5\ & (\inst19|Add7~6_combout\ $ ((!\inst19|Add7~62_combout\)))) # (!\inst19|Add8~5\ & ((\inst19|Add7~6_combout\ $ (\inst19|Add7~62_combout\)) # (GND)))
-- \inst19|Add8~7\ = CARRY((\inst19|Add7~6_combout\ $ (!\inst19|Add7~62_combout\)) # (!\inst19|Add8~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add7~6_combout\,
	datab => \inst19|Add7~62_combout\,
	datad => VCC,
	cin => \inst19|Add8~5\,
	combout => \inst19|Add8~6_combout\,
	cout => \inst19|Add8~7\);

-- Location: LCCOMB_X27_Y21_N8
\inst19|Add8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add8~8_combout\ = (\inst19|Add8~7\ & ((\inst19|Add7~62_combout\ $ (\inst19|Add7~8_combout\)))) # (!\inst19|Add8~7\ & (\inst19|Add7~62_combout\ $ (\inst19|Add7~8_combout\ $ (VCC))))
-- \inst19|Add8~9\ = CARRY((!\inst19|Add8~7\ & (\inst19|Add7~62_combout\ $ (\inst19|Add7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add7~62_combout\,
	datab => \inst19|Add7~8_combout\,
	datad => VCC,
	cin => \inst19|Add8~7\,
	combout => \inst19|Add8~8_combout\,
	cout => \inst19|Add8~9\);

-- Location: LCCOMB_X27_Y21_N10
\inst19|Add8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add8~10_combout\ = (\inst19|Add8~9\ & (\inst19|Add7~62_combout\ $ ((!\inst19|Add7~10_combout\)))) # (!\inst19|Add8~9\ & ((\inst19|Add7~62_combout\ $ (\inst19|Add7~10_combout\)) # (GND)))
-- \inst19|Add8~11\ = CARRY((\inst19|Add7~62_combout\ $ (!\inst19|Add7~10_combout\)) # (!\inst19|Add8~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add7~62_combout\,
	datab => \inst19|Add7~10_combout\,
	datad => VCC,
	cin => \inst19|Add8~9\,
	combout => \inst19|Add8~10_combout\,
	cout => \inst19|Add8~11\);

-- Location: LCCOMB_X27_Y21_N12
\inst19|Add8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add8~12_combout\ = (\inst19|Add8~11\ & ((\inst19|Add7~12_combout\ $ (\inst19|Add7~62_combout\)))) # (!\inst19|Add8~11\ & (\inst19|Add7~12_combout\ $ (\inst19|Add7~62_combout\ $ (VCC))))
-- \inst19|Add8~13\ = CARRY((!\inst19|Add8~11\ & (\inst19|Add7~12_combout\ $ (\inst19|Add7~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add7~12_combout\,
	datab => \inst19|Add7~62_combout\,
	datad => VCC,
	cin => \inst19|Add8~11\,
	combout => \inst19|Add8~12_combout\,
	cout => \inst19|Add8~13\);

-- Location: LCCOMB_X27_Y21_N24
\inst19|Add8~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add8~24_combout\ = (\inst19|Add8~23\ & ((\inst19|Add7~62_combout\ $ (\inst19|Add7~24_combout\)))) # (!\inst19|Add8~23\ & (\inst19|Add7~62_combout\ $ (\inst19|Add7~24_combout\ $ (VCC))))
-- \inst19|Add8~25\ = CARRY((!\inst19|Add8~23\ & (\inst19|Add7~62_combout\ $ (\inst19|Add7~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add7~62_combout\,
	datab => \inst19|Add7~24_combout\,
	datad => VCC,
	cin => \inst19|Add8~23\,
	combout => \inst19|Add8~24_combout\,
	cout => \inst19|Add8~25\);

-- Location: LCCOMB_X27_Y21_N28
\inst19|Add8~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add8~28_combout\ = (\inst19|Add8~27\ & ((\inst19|Add7~62_combout\ $ (\inst19|Add7~28_combout\)))) # (!\inst19|Add8~27\ & (\inst19|Add7~62_combout\ $ (\inst19|Add7~28_combout\ $ (VCC))))
-- \inst19|Add8~29\ = CARRY((!\inst19|Add8~27\ & (\inst19|Add7~62_combout\ $ (\inst19|Add7~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add7~62_combout\,
	datab => \inst19|Add7~28_combout\,
	datad => VCC,
	cin => \inst19|Add8~27\,
	combout => \inst19|Add8~28_combout\,
	cout => \inst19|Add8~29\);

-- Location: LCCOMB_X27_Y21_N30
\inst19|Add8~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add8~30_combout\ = (\inst19|Add8~29\ & (\inst19|Add7~62_combout\ $ ((!\inst19|Add7~30_combout\)))) # (!\inst19|Add8~29\ & ((\inst19|Add7~62_combout\ $ (\inst19|Add7~30_combout\)) # (GND)))
-- \inst19|Add8~31\ = CARRY((\inst19|Add7~62_combout\ $ (!\inst19|Add7~30_combout\)) # (!\inst19|Add8~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add7~62_combout\,
	datab => \inst19|Add7~30_combout\,
	datad => VCC,
	cin => \inst19|Add8~29\,
	combout => \inst19|Add8~30_combout\,
	cout => \inst19|Add8~31\);

-- Location: LCCOMB_X27_Y20_N8
\inst19|Add8~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add8~40_combout\ = (\inst19|Add8~39\ & ((\inst19|Add7~40_combout\ $ (\inst19|Add7~62_combout\)))) # (!\inst19|Add8~39\ & (\inst19|Add7~40_combout\ $ (\inst19|Add7~62_combout\ $ (VCC))))
-- \inst19|Add8~41\ = CARRY((!\inst19|Add8~39\ & (\inst19|Add7~40_combout\ $ (\inst19|Add7~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add7~40_combout\,
	datab => \inst19|Add7~62_combout\,
	datad => VCC,
	cin => \inst19|Add8~39\,
	combout => \inst19|Add8~40_combout\,
	cout => \inst19|Add8~41\);

-- Location: LCCOMB_X27_Y20_N10
\inst19|Add8~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add8~42_combout\ = (\inst19|Add8~41\ & (\inst19|Add7~42_combout\ $ ((!\inst19|Add7~62_combout\)))) # (!\inst19|Add8~41\ & ((\inst19|Add7~42_combout\ $ (\inst19|Add7~62_combout\)) # (GND)))
-- \inst19|Add8~43\ = CARRY((\inst19|Add7~42_combout\ $ (!\inst19|Add7~62_combout\)) # (!\inst19|Add8~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add7~42_combout\,
	datab => \inst19|Add7~62_combout\,
	datad => VCC,
	cin => \inst19|Add8~41\,
	combout => \inst19|Add8~42_combout\,
	cout => \inst19|Add8~43\);

-- Location: LCCOMB_X27_Y20_N14
\inst19|Add8~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add8~46_combout\ = (\inst19|Add8~45\ & (\inst19|Add7~62_combout\ $ ((!\inst19|Add7~46_combout\)))) # (!\inst19|Add8~45\ & ((\inst19|Add7~62_combout\ $ (\inst19|Add7~46_combout\)) # (GND)))
-- \inst19|Add8~47\ = CARRY((\inst19|Add7~62_combout\ $ (!\inst19|Add7~46_combout\)) # (!\inst19|Add8~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add7~62_combout\,
	datab => \inst19|Add7~46_combout\,
	datad => VCC,
	cin => \inst19|Add8~45\,
	combout => \inst19|Add8~46_combout\,
	cout => \inst19|Add8~47\);

-- Location: LCCOMB_X27_Y20_N24
\inst19|Add8~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add8~56_combout\ = (\inst19|Add8~55\ & ((\inst19|Add7~62_combout\ $ (\inst19|Add7~56_combout\)))) # (!\inst19|Add8~55\ & (\inst19|Add7~62_combout\ $ (\inst19|Add7~56_combout\ $ (VCC))))
-- \inst19|Add8~57\ = CARRY((!\inst19|Add8~55\ & (\inst19|Add7~62_combout\ $ (\inst19|Add7~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add7~62_combout\,
	datab => \inst19|Add7~56_combout\,
	datad => VCC,
	cin => \inst19|Add8~55\,
	combout => \inst19|Add8~56_combout\,
	cout => \inst19|Add8~57\);

-- Location: LCCOMB_X27_Y20_N26
\inst19|Add8~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add8~58_combout\ = (\inst19|Add8~57\ & (\inst19|Add7~58_combout\ $ ((!\inst19|Add7~62_combout\)))) # (!\inst19|Add8~57\ & ((\inst19|Add7~58_combout\ $ (\inst19|Add7~62_combout\)) # (GND)))
-- \inst19|Add8~59\ = CARRY((\inst19|Add7~58_combout\ $ (!\inst19|Add7~62_combout\)) # (!\inst19|Add8~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add7~58_combout\,
	datab => \inst19|Add7~62_combout\,
	datad => VCC,
	cin => \inst19|Add8~57\,
	combout => \inst19|Add8~58_combout\,
	cout => \inst19|Add8~59\);

-- Location: LCCOMB_X27_Y20_N28
\inst19|Add8~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add8~60_combout\ = (\inst19|Add8~59\ & ((\inst19|Add7~60_combout\ $ (\inst19|Add7~62_combout\)))) # (!\inst19|Add8~59\ & (\inst19|Add7~60_combout\ $ (\inst19|Add7~62_combout\ $ (VCC))))
-- \inst19|Add8~61\ = CARRY((!\inst19|Add8~59\ & (\inst19|Add7~60_combout\ $ (\inst19|Add7~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add7~60_combout\,
	datab => \inst19|Add7~62_combout\,
	datad => VCC,
	cin => \inst19|Add8~59\,
	combout => \inst19|Add8~60_combout\,
	cout => \inst19|Add8~61\);

-- Location: LCCOMB_X27_Y20_N30
\inst19|Add8~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add8~62_combout\ = \inst19|Add8~61\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst19|Add8~61\,
	combout => \inst19|Add8~62_combout\);

-- Location: LCCOMB_X26_Y21_N24
\inst19|LessThan9~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan9~8_combout\ = (\inst19|LessThan9~7_combout\ & (!\inst19|Add8~56_combout\ & (!\inst19|Add8~60_combout\ & !\inst19|Add8~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan9~7_combout\,
	datab => \inst19|Add8~56_combout\,
	datac => \inst19|Add8~60_combout\,
	datad => \inst19|Add8~58_combout\,
	combout => \inst19|LessThan9~8_combout\);

-- Location: LCCOMB_X26_Y21_N18
\inst19|LessThan9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan9~1_combout\ = (!\inst19|Add8~14_combout\ & (!\inst19|Add8~12_combout\ & (!\inst19|Add8~10_combout\ & !\inst19|Add8~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add8~14_combout\,
	datab => \inst19|Add8~12_combout\,
	datac => \inst19|Add8~10_combout\,
	datad => \inst19|Add8~8_combout\,
	combout => \inst19|LessThan9~1_combout\);

-- Location: LCCOMB_X26_Y21_N22
\inst19|LessThan9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan9~3_combout\ = (!\inst19|Add8~26_combout\ & (!\inst19|Add8~28_combout\ & (!\inst19|Add8~30_combout\ & !\inst19|Add8~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add8~26_combout\,
	datab => \inst19|Add8~28_combout\,
	datac => \inst19|Add8~30_combout\,
	datad => \inst19|Add8~24_combout\,
	combout => \inst19|LessThan9~3_combout\);

-- Location: LCCOMB_X26_Y21_N0
\inst19|LessThan9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan9~0_combout\ = (!\inst19|Add8~6_combout\ & (((!\inst19|Add8~2_combout\ & !\inst19|Add8~0_combout\)) # (!\inst19|Add8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add8~4_combout\,
	datab => \inst19|Add8~2_combout\,
	datac => \inst19|Add8~0_combout\,
	datad => \inst19|Add8~6_combout\,
	combout => \inst19|LessThan9~0_combout\);

-- Location: LCCOMB_X26_Y21_N8
\inst19|LessThan9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan9~4_combout\ = (\inst19|LessThan9~2_combout\ & (\inst19|LessThan9~1_combout\ & (\inst19|LessThan9~3_combout\ & \inst19|LessThan9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan9~2_combout\,
	datab => \inst19|LessThan9~1_combout\,
	datac => \inst19|LessThan9~3_combout\,
	datad => \inst19|LessThan9~0_combout\,
	combout => \inst19|LessThan9~4_combout\);

-- Location: LCCOMB_X26_Y21_N20
\inst19|LessThan9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan9~6_combout\ = (!\inst19|Add8~44_combout\ & (!\inst19|Add8~46_combout\ & (!\inst19|Add8~40_combout\ & !\inst19|Add8~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add8~44_combout\,
	datab => \inst19|Add8~46_combout\,
	datac => \inst19|Add8~40_combout\,
	datad => \inst19|Add8~42_combout\,
	combout => \inst19|LessThan9~6_combout\);

-- Location: LCCOMB_X26_Y21_N26
\inst19|LessThan9~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan9~9_combout\ = (\inst19|LessThan9~5_combout\ & (\inst19|LessThan9~8_combout\ & (\inst19|LessThan9~4_combout\ & \inst19|LessThan9~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan9~5_combout\,
	datab => \inst19|LessThan9~8_combout\,
	datac => \inst19|LessThan9~4_combout\,
	datad => \inst19|LessThan9~6_combout\,
	combout => \inst19|LessThan9~9_combout\);

-- Location: LCCOMB_X19_Y21_N2
\inst19|rotor~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|rotor~25_combout\ = (\inst19|rotor~24_combout\) # ((\inst19|Add8~62_combout\) # (\inst19|LessThan9~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|rotor~24_combout\,
	datac => \inst19|Add8~62_combout\,
	datad => \inst19|LessThan9~9_combout\,
	combout => \inst19|rotor~25_combout\);

-- Location: LCCOMB_X19_Y21_N8
\inst19|rotor~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|rotor~26_combout\ = (!\inst19|LessThan8~9_combout\ & (!\inst19|Add6~62_combout\ & \inst19|rotor~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan8~9_combout\,
	datac => \inst19|Add6~62_combout\,
	datad => \inst19|rotor~25_combout\,
	combout => \inst19|rotor~26_combout\);

-- Location: FF_X19_Y21_N9
\inst19|rotor\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|rotor~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|rotor~q\);

-- Location: LCCOMB_X24_Y17_N18
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

-- Location: LCCOMB_X21_Y18_N20
\inst19|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan0~5_combout\ = (\inst19|LessThan2~0_combout\ & (\inst19|LessThan0~0_combout\ & \inst19|LessThan2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan2~0_combout\,
	datab => \inst19|LessThan0~0_combout\,
	datad => \inst19|LessThan2~8_combout\,
	combout => \inst19|LessThan0~5_combout\);

-- Location: LCCOMB_X21_Y18_N24
\inst19|t_sweep_start[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_start[0]~3_combout\ = (!\inst19|Add0~60_combout\ & (\inst19|t_sweep_start[0]~1_combout\ & (\inst19|LessThan1~3_combout\ & \inst19|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~60_combout\,
	datab => \inst19|t_sweep_start[0]~1_combout\,
	datac => \inst19|LessThan1~3_combout\,
	datad => \inst19|LessThan0~5_combout\,
	combout => \inst19|t_sweep_start[0]~3_combout\);

-- Location: LCCOMB_X21_Y17_N24
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

-- Location: FF_X21_Y17_N25
\inst19|start_valid_sync[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|start_valid_sync[8]~feeder_combout\,
	ena => \inst19|start_valid_sync[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(8));

-- Location: LCCOMB_X21_Y17_N4
\inst19|start_valid_sync[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|start_valid_sync[10]~feeder_combout\ = \inst19|t_0\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(10),
	combout => \inst19|start_valid_sync[10]~feeder_combout\);

-- Location: FF_X21_Y17_N5
\inst19|start_valid_sync[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|start_valid_sync[10]~feeder_combout\,
	ena => \inst19|start_valid_sync[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(10));

-- Location: FF_X26_Y17_N15
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

-- Location: LCCOMB_X21_Y17_N2
\inst19|start_valid_sync[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|start_valid_sync[7]~feeder_combout\ = \inst19|t_0\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(7),
	combout => \inst19|start_valid_sync[7]~feeder_combout\);

-- Location: FF_X21_Y17_N3
\inst19|start_valid_sync[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|start_valid_sync[7]~feeder_combout\,
	ena => \inst19|start_valid_sync[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(7));

-- Location: LCCOMB_X21_Y17_N28
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

-- Location: FF_X22_Y16_N21
\inst19|start_valid_sync[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_0\(25),
	sload => VCC,
	ena => \inst19|start_valid_sync[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(25));

-- Location: FF_X26_Y16_N15
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

-- Location: LCCOMB_X22_Y16_N6
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

-- Location: FF_X22_Y16_N7
\inst19|start_valid_sync[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|start_valid_sync[23]~feeder_combout\,
	ena => \inst19|start_valid_sync[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(23));

-- Location: FF_X21_Y17_N17
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
	ena => \inst19|start_valid_sync[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(24));

-- Location: LCCOMB_X22_Y16_N24
\inst19|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Equal0~1_combout\ = (!\inst19|start_valid_sync\(26) & (!\inst19|start_valid_sync\(25) & (!\inst19|start_valid_sync\(23) & !\inst19|start_valid_sync\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|start_valid_sync\(26),
	datab => \inst19|start_valid_sync\(25),
	datac => \inst19|start_valid_sync\(23),
	datad => \inst19|start_valid_sync\(24),
	combout => \inst19|Equal0~1_combout\);

-- Location: FF_X23_Y20_N1
\inst19|start_valid_sync[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_0\(15),
	sload => VCC,
	ena => \inst19|start_valid_sync[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(15));

-- Location: FF_X24_Y20_N13
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
	ena => \inst19|start_valid_sync[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(17));

-- Location: FF_X26_Y16_N1
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

-- Location: FF_X23_Y20_N23
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
	ena => \inst19|start_valid_sync[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(16));

-- Location: LCCOMB_X23_Y20_N2
\inst19|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Equal0~3_combout\ = (!\inst19|start_valid_sync\(18) & (!\inst19|start_valid_sync\(15) & (!\inst19|start_valid_sync\(17) & !\inst19|start_valid_sync\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|start_valid_sync\(18),
	datab => \inst19|start_valid_sync\(15),
	datac => \inst19|start_valid_sync\(17),
	datad => \inst19|start_valid_sync\(16),
	combout => \inst19|Equal0~3_combout\);

-- Location: FF_X26_Y16_N13
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

-- Location: FF_X21_Y17_N19
\inst19|start_valid_sync[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_0\(22),
	sload => VCC,
	ena => \inst19|start_valid_sync[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(22));

-- Location: FF_X26_Y16_N9
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

-- Location: FF_X21_Y17_N21
\inst19|start_valid_sync[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_0\(20),
	sload => VCC,
	ena => \inst19|start_valid_sync[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(20));

-- Location: FF_X26_Y16_N11
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

-- Location: LCCOMB_X23_Y20_N28
\inst19|start_valid_sync[21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|start_valid_sync[21]~feeder_combout\ = \inst19|t_0\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(21),
	combout => \inst19|start_valid_sync[21]~feeder_combout\);

-- Location: FF_X23_Y20_N29
\inst19|start_valid_sync[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|start_valid_sync[21]~feeder_combout\,
	ena => \inst19|start_valid_sync[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(21));

-- Location: LCCOMB_X21_Y17_N8
\inst19|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Equal0~2_combout\ = (!\inst19|start_valid_sync\(19) & (!\inst19|start_valid_sync\(22) & (!\inst19|start_valid_sync\(20) & !\inst19|start_valid_sync\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|start_valid_sync\(19),
	datab => \inst19|start_valid_sync\(22),
	datac => \inst19|start_valid_sync\(20),
	datad => \inst19|start_valid_sync\(21),
	combout => \inst19|Equal0~2_combout\);

-- Location: LCCOMB_X21_Y17_N26
\inst19|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Equal0~4_combout\ = (\inst19|Equal0~0_combout\ & (\inst19|Equal0~1_combout\ & (\inst19|Equal0~3_combout\ & \inst19|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal0~0_combout\,
	datab => \inst19|Equal0~1_combout\,
	datac => \inst19|Equal0~3_combout\,
	datad => \inst19|Equal0~2_combout\,
	combout => \inst19|Equal0~4_combout\);

-- Location: LCCOMB_X22_Y19_N24
\inst19|start_valid_sync[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|start_valid_sync[14]~feeder_combout\ = \inst19|t_0\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(14),
	combout => \inst19|start_valid_sync[14]~feeder_combout\);

-- Location: FF_X22_Y19_N25
\inst19|start_valid_sync[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|start_valid_sync[14]~feeder_combout\,
	ena => \inst19|start_valid_sync[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(14));

-- Location: FF_X26_Y17_N23
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

-- Location: LCCOMB_X22_Y19_N22
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

-- Location: FF_X22_Y19_N23
\inst19|start_valid_sync[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|start_valid_sync[11]~feeder_combout\,
	ena => \inst19|start_valid_sync[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(11));

-- Location: LCCOMB_X22_Y19_N18
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

-- Location: FF_X22_Y19_N19
\inst19|start_valid_sync[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|start_valid_sync[13]~feeder_combout\,
	ena => \inst19|start_valid_sync[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(13));

-- Location: LCCOMB_X22_Y19_N8
\inst19|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Equal0~5_combout\ = (!\inst19|start_valid_sync\(12) & (!\inst19|start_valid_sync\(14) & (!\inst19|start_valid_sync\(11) & !\inst19|start_valid_sync\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|start_valid_sync\(12),
	datab => \inst19|start_valid_sync\(14),
	datac => \inst19|start_valid_sync\(11),
	datad => \inst19|start_valid_sync\(13),
	combout => \inst19|Equal0~5_combout\);

-- Location: LCCOMB_X21_Y17_N30
\inst19|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Equal0~9_combout\ = (\inst19|Equal0~8_combout\ & (\inst19|Equal0~6_combout\ & (\inst19|Equal0~4_combout\ & \inst19|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal0~8_combout\,
	datab => \inst19|Equal0~6_combout\,
	datac => \inst19|Equal0~4_combout\,
	datad => \inst19|Equal0~5_combout\,
	combout => \inst19|Equal0~9_combout\);

-- Location: LCCOMB_X21_Y18_N22
\inst19|Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Equal0~10_combout\ = (\inst19|start_valid_sync\(31)) # (!\inst19|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|start_valid_sync\(31),
	datac => \inst19|Equal0~9_combout\,
	combout => \inst19|Equal0~10_combout\);

-- Location: LCCOMB_X20_Y21_N2
\inst19|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan0~2_combout\ = (!\inst19|Add0~6_combout\ & (!\inst19|Add0~2_combout\ & !\inst19|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add0~6_combout\,
	datac => \inst19|Add0~2_combout\,
	datad => \inst19|Add0~4_combout\,
	combout => \inst19|LessThan0~2_combout\);

-- Location: LCCOMB_X20_Y21_N4
\inst19|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan0~3_combout\ = (\inst19|LessThan0~1_combout\ & (((\inst19|LessThan0~2_combout\) # (!\inst19|Add0~10_combout\)) # (!\inst19|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~8_combout\,
	datab => \inst19|LessThan0~2_combout\,
	datac => \inst19|Add0~10_combout\,
	datad => \inst19|LessThan0~1_combout\,
	combout => \inst19|LessThan0~3_combout\);

-- Location: LCCOMB_X21_Y18_N28
\inst19|t_sweep_start[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_start[0]~0_combout\ = (!\inst19|Add0~62_combout\ & (((!\inst19|LessThan0~0_combout\) # (!\inst19|LessThan0~3_combout\)) # (!\inst19|LessThan2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan2~6_combout\,
	datab => \inst19|Add0~62_combout\,
	datac => \inst19|LessThan0~3_combout\,
	datad => \inst19|LessThan0~0_combout\,
	combout => \inst19|t_sweep_start[0]~0_combout\);

-- Location: LCCOMB_X21_Y18_N12
\inst19|stop_valid_sync~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~9_combout\ = (!\inst19|LessThan1~2_combout\ & (\inst19|t_sweep_start[0]~0_combout\ & (\inst19|Equal0~10_combout\ & \inst19|t_sweep_start[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan1~2_combout\,
	datab => \inst19|t_sweep_start[0]~0_combout\,
	datac => \inst19|Equal0~10_combout\,
	datad => \inst19|t_sweep_start[0]~2_combout\,
	combout => \inst19|stop_valid_sync~9_combout\);

-- Location: FF_X26_Y17_N3
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

-- Location: LCCOMB_X24_Y15_N2
\inst19|stop_valid_sync~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~38_combout\ = (\inst19|stop_valid_sync\(1)) # ((!\inst19|stop_valid_sync\(30) & (\inst19|t_0\(1) & \inst19|stop_valid_sync~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(1),
	datab => \inst19|stop_valid_sync\(30),
	datac => \inst19|t_0\(1),
	datad => \inst19|stop_valid_sync~37_combout\,
	combout => \inst19|stop_valid_sync~38_combout\);

-- Location: LCCOMB_X24_Y15_N10
\inst19|stop_valid_sync~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~84_combout\ = (\inst19|stop_valid_sync~38_combout\ & !\inst19|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|stop_valid_sync~38_combout\,
	datac => \inst19|process_0~0_combout\,
	combout => \inst19|stop_valid_sync~84_combout\);

-- Location: FF_X24_Y15_N11
\inst19|stop_valid_sync[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|stop_valid_sync~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|stop_valid_sync\(1));

-- Location: LCCOMB_X24_Y15_N20
\inst19|stop_valid_sync~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~2_combout\ = (!\inst19|stop_valid_sync\(30) & !\inst19|stop_valid_sync\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|stop_valid_sync\(30),
	datad => \inst19|stop_valid_sync\(1),
	combout => \inst19|stop_valid_sync~2_combout\);

-- Location: LCCOMB_X23_Y16_N0
\inst19|stop_valid_sync~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~97_combout\ = (\inst19|stop_valid_sync~66_combout\ & !\inst19|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~66_combout\,
	datad => \inst19|process_0~0_combout\,
	combout => \inst19|stop_valid_sync~97_combout\);

-- Location: FF_X23_Y16_N1
\inst19|stop_valid_sync[26]\ : dffeas
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
	q => \inst19|stop_valid_sync\(26));

-- Location: LCCOMB_X22_Y16_N10
\inst19|stop_valid_sync~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~33_combout\ = (!\inst19|stop_valid_sync\(24) & (!\inst19|stop_valid_sync\(28) & (!\inst19|stop_valid_sync\(26) & \inst19|stop_valid_sync~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(24),
	datab => \inst19|stop_valid_sync\(28),
	datac => \inst19|stop_valid_sync\(26),
	datad => \inst19|stop_valid_sync~32_combout\,
	combout => \inst19|stop_valid_sync~33_combout\);

-- Location: LCCOMB_X22_Y16_N28
\inst19|stop_valid_sync~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~71_combout\ = (\inst19|stop_valid_sync\(23)) # ((\inst19|stop_valid_sync~3_combout\ & (\inst19|stop_valid_sync~33_combout\ & \inst19|t_0\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~3_combout\,
	datab => \inst19|stop_valid_sync~33_combout\,
	datac => \inst19|stop_valid_sync\(23),
	datad => \inst19|t_0\(23),
	combout => \inst19|stop_valid_sync~71_combout\);

-- Location: LCCOMB_X22_Y16_N30
\inst19|stop_valid_sync~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~87_combout\ = (\inst19|stop_valid_sync~71_combout\ & !\inst19|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|stop_valid_sync~71_combout\,
	datad => \inst19|process_0~0_combout\,
	combout => \inst19|stop_valid_sync~87_combout\);

-- Location: FF_X22_Y16_N31
\inst19|stop_valid_sync[23]\ : dffeas
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
	q => \inst19|stop_valid_sync\(23));

-- Location: LCCOMB_X22_Y16_N4
\inst19|stop_valid_sync~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~34_combout\ = (!\inst19|stop_valid_sync\(23) & \inst19|stop_valid_sync~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|stop_valid_sync\(23),
	datad => \inst19|stop_valid_sync~33_combout\,
	combout => \inst19|stop_valid_sync~34_combout\);

-- Location: LCCOMB_X22_Y16_N0
\inst19|stop_valid_sync~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~85_combout\ = (\inst19|stop_valid_sync~36_combout\ & !\inst19|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~36_combout\,
	datad => \inst19|process_0~0_combout\,
	combout => \inst19|stop_valid_sync~85_combout\);

-- Location: FF_X22_Y16_N1
\inst19|stop_valid_sync[25]\ : dffeas
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
	q => \inst19|stop_valid_sync\(25));

-- Location: LCCOMB_X22_Y16_N14
\inst19|stop_valid_sync~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~35_combout\ = (\inst19|stop_valid_sync\(22)) # ((\inst19|t_0\(22) & (\inst19|stop_valid_sync~34_combout\ & !\inst19|stop_valid_sync\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(22),
	datab => \inst19|stop_valid_sync~34_combout\,
	datac => \inst19|stop_valid_sync\(22),
	datad => \inst19|stop_valid_sync\(25),
	combout => \inst19|stop_valid_sync~35_combout\);

-- Location: LCCOMB_X22_Y16_N26
\inst19|stop_valid_sync~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~86_combout\ = (\inst19|stop_valid_sync~35_combout\ & !\inst19|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|stop_valid_sync~35_combout\,
	datad => \inst19|process_0~0_combout\,
	combout => \inst19|stop_valid_sync~86_combout\);

-- Location: FF_X22_Y16_N27
\inst19|stop_valid_sync[22]\ : dffeas
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
	q => \inst19|stop_valid_sync\(22));

-- Location: LCCOMB_X22_Y16_N12
\inst19|stop_valid_sync~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~3_combout\ = (!\inst19|stop_valid_sync\(22) & !\inst19|stop_valid_sync\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|stop_valid_sync\(22),
	datad => \inst19|stop_valid_sync\(25),
	combout => \inst19|stop_valid_sync~3_combout\);

-- Location: LCCOMB_X22_Y16_N22
\inst19|stop_valid_sync~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~74_combout\ = (!\inst19|stop_valid_sync\(23) & (\inst19|stop_valid_sync~32_combout\ & (!\inst19|stop_valid_sync\(26) & \inst19|stop_valid_sync~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(23),
	datab => \inst19|stop_valid_sync~32_combout\,
	datac => \inst19|stop_valid_sync\(26),
	datad => \inst19|stop_valid_sync~3_combout\,
	combout => \inst19|stop_valid_sync~74_combout\);

-- Location: LCCOMB_X22_Y18_N12
\inst19|stop_valid_sync~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~75_combout\ = (\inst19|stop_valid_sync\(28)) # ((!\inst19|stop_valid_sync\(24) & (\inst19|t_0\(28) & \inst19|stop_valid_sync~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(24),
	datab => \inst19|t_0\(28),
	datac => \inst19|stop_valid_sync\(28),
	datad => \inst19|stop_valid_sync~74_combout\,
	combout => \inst19|stop_valid_sync~75_combout\);

-- Location: LCCOMB_X22_Y18_N8
\inst19|stop_valid_sync~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~88_combout\ = (\inst19|stop_valid_sync~75_combout\ & !\inst19|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|stop_valid_sync~75_combout\,
	datad => \inst19|process_0~0_combout\,
	combout => \inst19|stop_valid_sync~88_combout\);

-- Location: FF_X22_Y18_N9
\inst19|stop_valid_sync[28]\ : dffeas
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
	q => \inst19|stop_valid_sync\(28));

-- Location: LCCOMB_X22_Y16_N16
\inst19|stop_valid_sync~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~4_combout\ = (!\inst19|stop_valid_sync\(24) & (!\inst19|stop_valid_sync\(28) & (!\inst19|stop_valid_sync\(23) & \inst19|stop_valid_sync~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(24),
	datab => \inst19|stop_valid_sync\(28),
	datac => \inst19|stop_valid_sync\(23),
	datad => \inst19|stop_valid_sync~3_combout\,
	combout => \inst19|stop_valid_sync~4_combout\);

-- Location: LCCOMB_X23_Y16_N18
\inst19|stop_valid_sync~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~8_combout\ = (\inst19|stop_valid_sync~7_combout\ & (!\inst19|stop_valid_sync\(26) & \inst19|stop_valid_sync~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~7_combout\,
	datab => \inst19|stop_valid_sync\(26),
	datac => \inst19|stop_valid_sync~4_combout\,
	combout => \inst19|stop_valid_sync~8_combout\);

-- Location: LCCOMB_X24_Y15_N22
\inst19|stop_valid_sync~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~50_combout\ = (\inst19|stop_valid_sync~12_combout\ & (\inst19|stop_valid_sync~2_combout\ & (\inst19|stop_valid_sync~9_combout\ & \inst19|stop_valid_sync~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~12_combout\,
	datab => \inst19|stop_valid_sync~2_combout\,
	datac => \inst19|stop_valid_sync~9_combout\,
	datad => \inst19|stop_valid_sync~8_combout\,
	combout => \inst19|stop_valid_sync~50_combout\);

-- Location: FF_X26_Y17_N1
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

-- Location: LCCOMB_X23_Y15_N20
\inst19|stop_valid_sync~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~108_combout\ = (\inst19|stop_valid_sync~55_combout\ & !\inst19|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~55_combout\,
	datac => \inst19|process_0~0_combout\,
	combout => \inst19|stop_valid_sync~108_combout\);

-- Location: FF_X23_Y15_N21
\inst19|stop_valid_sync[4]\ : dffeas
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
	q => \inst19|stop_valid_sync\(4));

-- Location: LCCOMB_X24_Y15_N18
\inst19|stop_valid_sync~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~15_combout\ = (!\inst19|stop_valid_sync\(5) & (\inst19|stop_valid_sync~2_combout\ & (\inst19|stop_valid_sync~14_combout\ & !\inst19|stop_valid_sync\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(5),
	datab => \inst19|stop_valid_sync~2_combout\,
	datac => \inst19|stop_valid_sync~14_combout\,
	datad => \inst19|stop_valid_sync\(4),
	combout => \inst19|stop_valid_sync~15_combout\);

-- Location: FF_X26_Y17_N7
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

-- Location: LCCOMB_X24_Y17_N4
\inst19|stop_valid_sync~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~49_combout\ = (\inst19|stop_valid_sync\(3)) # ((\inst19|stop_valid_sync~48_combout\ & (\inst19|stop_valid_sync~15_combout\ & \inst19|t_0\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~48_combout\,
	datab => \inst19|stop_valid_sync~15_combout\,
	datac => \inst19|t_0\(3),
	datad => \inst19|stop_valid_sync\(3),
	combout => \inst19|stop_valid_sync~49_combout\);

-- Location: LCCOMB_X24_Y17_N16
\inst19|stop_valid_sync~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~110_combout\ = (\inst19|stop_valid_sync~49_combout\ & !\inst19|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|stop_valid_sync~49_combout\,
	datad => \inst19|process_0~0_combout\,
	combout => \inst19|stop_valid_sync~110_combout\);

-- Location: FF_X24_Y17_N17
\inst19|stop_valid_sync[3]\ : dffeas
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
	q => \inst19|stop_valid_sync\(3));

-- Location: LCCOMB_X24_Y17_N10
\inst19|stop_valid_sync~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~16_combout\ = (!\inst19|stop_valid_sync\(6) & (\inst19|stop_valid_sync~15_combout\ & !\inst19|stop_valid_sync\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(6),
	datac => \inst19|stop_valid_sync~15_combout\,
	datad => \inst19|stop_valid_sync\(3),
	combout => \inst19|stop_valid_sync~16_combout\);

-- Location: FF_X26_Y17_N5
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

-- Location: LCCOMB_X24_Y17_N0
\inst19|stop_valid_sync~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~18_combout\ = (\inst19|stop_valid_sync\(2)) # ((!\inst19|stop_valid_sync\(0) & (\inst19|stop_valid_sync~16_combout\ & \inst19|t_0\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(2),
	datab => \inst19|stop_valid_sync\(0),
	datac => \inst19|stop_valid_sync~16_combout\,
	datad => \inst19|t_0\(2),
	combout => \inst19|stop_valid_sync~18_combout\);

-- Location: LCCOMB_X24_Y17_N12
\inst19|stop_valid_sync~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~111_combout\ = (!\inst19|process_0~0_combout\ & \inst19|stop_valid_sync~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|process_0~0_combout\,
	datad => \inst19|stop_valid_sync~18_combout\,
	combout => \inst19|stop_valid_sync~111_combout\);

-- Location: FF_X24_Y17_N13
\inst19|stop_valid_sync[2]\ : dffeas
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
	q => \inst19|stop_valid_sync\(2));

-- Location: LCCOMB_X24_Y17_N14
\inst19|stop_valid_sync~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~17_combout\ = (\inst19|stop_valid_sync\(0)) # ((\inst19|stop_valid_sync~16_combout\ & (\inst19|t_0\(0) & !\inst19|stop_valid_sync\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~16_combout\,
	datab => \inst19|stop_valid_sync\(0),
	datac => \inst19|t_0\(0),
	datad => \inst19|stop_valid_sync\(2),
	combout => \inst19|stop_valid_sync~17_combout\);

-- Location: LCCOMB_X24_Y17_N20
\inst19|stop_valid_sync~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~82_combout\ = (!\inst19|process_0~0_combout\ & \inst19|stop_valid_sync~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|process_0~0_combout\,
	datad => \inst19|stop_valid_sync~17_combout\,
	combout => \inst19|stop_valid_sync~82_combout\);

-- Location: FF_X24_Y17_N21
\inst19|stop_valid_sync[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|stop_valid_sync~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|stop_valid_sync\(0));

-- Location: LCCOMB_X24_Y17_N8
\inst19|stop_valid_sync~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~29_combout\ = (\inst19|stop_valid_sync\(6)) # ((\inst19|stop_valid_sync~28_combout\ & (\inst19|stop_valid_sync~15_combout\ & !\inst19|stop_valid_sync\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~28_combout\,
	datab => \inst19|stop_valid_sync~15_combout\,
	datac => \inst19|stop_valid_sync\(6),
	datad => \inst19|stop_valid_sync\(3),
	combout => \inst19|stop_valid_sync~29_combout\);

-- Location: LCCOMB_X24_Y17_N22
\inst19|stop_valid_sync~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~109_combout\ = (\inst19|stop_valid_sync~29_combout\ & !\inst19|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|stop_valid_sync~29_combout\,
	datad => \inst19|process_0~0_combout\,
	combout => \inst19|stop_valid_sync~109_combout\);

-- Location: FF_X24_Y17_N23
\inst19|stop_valid_sync[6]\ : dffeas
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
	q => \inst19|stop_valid_sync\(6));

-- Location: LCCOMB_X24_Y17_N2
\inst19|stop_valid_sync~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~48_combout\ = (!\inst19|stop_valid_sync\(0) & (!\inst19|stop_valid_sync\(6) & !\inst19|stop_valid_sync\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|stop_valid_sync\(0),
	datac => \inst19|stop_valid_sync\(6),
	datad => \inst19|stop_valid_sync\(2),
	combout => \inst19|stop_valid_sync~48_combout\);

-- Location: LCCOMB_X24_Y16_N24
\inst19|stop_valid_sync~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~79_combout\ = (!\inst19|stop_valid_sync\(5) & (\inst19|stop_valid_sync~48_combout\ & (!\inst19|stop_valid_sync\(4) & !\inst19|stop_valid_sync\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(5),
	datab => \inst19|stop_valid_sync~48_combout\,
	datac => \inst19|stop_valid_sync\(4),
	datad => \inst19|stop_valid_sync\(3),
	combout => \inst19|stop_valid_sync~79_combout\);

-- Location: LCCOMB_X24_Y16_N10
\inst19|stop_valid_sync~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~81_combout\ = (\inst19|stop_valid_sync\(31)) # ((\inst19|stop_valid_sync~80_combout\ & (\inst19|stop_valid_sync~50_combout\ & \inst19|stop_valid_sync~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~80_combout\,
	datab => \inst19|stop_valid_sync~50_combout\,
	datac => \inst19|stop_valid_sync\(31),
	datad => \inst19|stop_valid_sync~79_combout\,
	combout => \inst19|stop_valid_sync~81_combout\);

-- Location: FF_X24_Y16_N11
\inst19|stop_valid_sync[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|stop_valid_sync~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|stop_valid_sync\(31));

-- Location: LCCOMB_X24_Y15_N0
\inst19|stop_valid_sync~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~51_combout\ = (\inst19|stop_valid_sync\(7)) # ((\inst19|stop_valid_sync~21_combout\ & (\inst19|stop_valid_sync~50_combout\ & \inst19|t_0\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~21_combout\,
	datab => \inst19|stop_valid_sync\(7),
	datac => \inst19|stop_valid_sync~50_combout\,
	datad => \inst19|t_0\(7),
	combout => \inst19|stop_valid_sync~51_combout\);

-- Location: LCCOMB_X24_Y16_N28
\inst19|stop_valid_sync~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~106_combout\ = (\inst19|stop_valid_sync~51_combout\ & !\inst19|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|stop_valid_sync~51_combout\,
	datad => \inst19|process_0~0_combout\,
	combout => \inst19|stop_valid_sync~106_combout\);

-- Location: FF_X24_Y16_N29
\inst19|stop_valid_sync[7]\ : dffeas
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
	q => \inst19|stop_valid_sync\(7));

-- Location: LCCOMB_X24_Y15_N30
\inst19|stop_valid_sync~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~13_combout\ = (!\inst19|stop_valid_sync\(31) & !\inst19|stop_valid_sync\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|stop_valid_sync\(31),
	datad => \inst19|stop_valid_sync\(7),
	combout => \inst19|stop_valid_sync~13_combout\);

-- Location: LCCOMB_X24_Y15_N8
\inst19|stop_valid_sync~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~14_combout\ = (\inst19|stop_valid_sync~12_combout\ & (\inst19|stop_valid_sync~9_combout\ & (\inst19|stop_valid_sync~13_combout\ & \inst19|stop_valid_sync~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~12_combout\,
	datab => \inst19|stop_valid_sync~9_combout\,
	datac => \inst19|stop_valid_sync~13_combout\,
	datad => \inst19|stop_valid_sync~8_combout\,
	combout => \inst19|stop_valid_sync~14_combout\);

-- Location: FF_X26_Y17_N11
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

-- Location: LCCOMB_X23_Y15_N18
\inst19|stop_valid_sync~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~59_combout\ = (\inst19|stop_valid_sync\(5)) # ((\inst19|stop_valid_sync~54_combout\ & (!\inst19|stop_valid_sync\(4) & \inst19|t_0\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~54_combout\,
	datab => \inst19|stop_valid_sync\(4),
	datac => \inst19|stop_valid_sync\(5),
	datad => \inst19|t_0\(5),
	combout => \inst19|stop_valid_sync~59_combout\);

-- Location: LCCOMB_X23_Y15_N26
\inst19|stop_valid_sync~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~107_combout\ = (\inst19|stop_valid_sync~59_combout\ & !\inst19|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|stop_valid_sync~59_combout\,
	datac => \inst19|process_0~0_combout\,
	combout => \inst19|stop_valid_sync~107_combout\);

-- Location: FF_X23_Y15_N27
\inst19|stop_valid_sync[5]\ : dffeas
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
	q => \inst19|stop_valid_sync\(5));

-- Location: LCCOMB_X24_Y15_N24
\inst19|stop_valid_sync~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~37_combout\ = (\inst19|stop_valid_sync~20_combout\ & (\inst19|stop_valid_sync~14_combout\ & (!\inst19|stop_valid_sync\(5) & !\inst19|stop_valid_sync\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~20_combout\,
	datab => \inst19|stop_valid_sync~14_combout\,
	datac => \inst19|stop_valid_sync\(5),
	datad => \inst19|stop_valid_sync\(4),
	combout => \inst19|stop_valid_sync~37_combout\);

-- Location: LCCOMB_X24_Y15_N26
\inst19|stop_valid_sync~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~53_combout\ = (\inst19|stop_valid_sync\(30)) # ((!\inst19|stop_valid_sync\(1) & (\inst19|t_0\(30) & \inst19|stop_valid_sync~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(1),
	datab => \inst19|stop_valid_sync\(30),
	datac => \inst19|t_0\(30),
	datad => \inst19|stop_valid_sync~37_combout\,
	combout => \inst19|stop_valid_sync~53_combout\);

-- Location: LCCOMB_X24_Y15_N16
\inst19|stop_valid_sync~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~83_combout\ = (!\inst19|process_0~0_combout\ & \inst19|stop_valid_sync~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|process_0~0_combout\,
	datac => \inst19|stop_valid_sync~53_combout\,
	combout => \inst19|stop_valid_sync~83_combout\);

-- Location: FF_X24_Y15_N17
\inst19|stop_valid_sync[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|stop_valid_sync~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|stop_valid_sync\(30));

-- Location: LCCOMB_X24_Y15_N12
\inst19|stop_valid_sync~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~21_combout\ = (\inst19|stop_valid_sync~20_combout\ & (!\inst19|stop_valid_sync\(31) & (!\inst19|stop_valid_sync\(5) & !\inst19|stop_valid_sync\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~20_combout\,
	datab => \inst19|stop_valid_sync\(31),
	datac => \inst19|stop_valid_sync\(5),
	datad => \inst19|stop_valid_sync\(4),
	combout => \inst19|stop_valid_sync~21_combout\);

-- Location: LCCOMB_X24_Y15_N6
\inst19|stop_valid_sync~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~22_combout\ = (!\inst19|stop_valid_sync\(1) & (!\inst19|stop_valid_sync\(30) & (\inst19|stop_valid_sync~21_combout\ & !\inst19|stop_valid_sync\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(1),
	datab => \inst19|stop_valid_sync\(30),
	datac => \inst19|stop_valid_sync~21_combout\,
	datad => \inst19|stop_valid_sync\(7),
	combout => \inst19|stop_valid_sync~22_combout\);

-- Location: FF_X26_Y16_N5
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

-- Location: LCCOMB_X24_Y15_N28
\inst19|stop_valid_sync~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~39_combout\ = (\inst19|stop_valid_sync~21_combout\ & (\inst19|stop_valid_sync~2_combout\ & (\inst19|stop_valid_sync~8_combout\ & !\inst19|stop_valid_sync\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~21_combout\,
	datab => \inst19|stop_valid_sync~2_combout\,
	datac => \inst19|stop_valid_sync~8_combout\,
	datad => \inst19|stop_valid_sync\(7),
	combout => \inst19|stop_valid_sync~39_combout\);

-- Location: LCCOMB_X23_Y15_N10
\inst19|stop_valid_sync~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~102_combout\ = (\inst19|stop_valid_sync~65_combout\ & !\inst19|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~65_combout\,
	datac => \inst19|process_0~0_combout\,
	combout => \inst19|stop_valid_sync~102_combout\);

-- Location: FF_X23_Y15_N11
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

-- Location: LCCOMB_X23_Y16_N16
\inst19|stop_valid_sync~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~58_combout\ = (\inst19|stop_valid_sync\(8)) # ((\inst19|stop_valid_sync~57_combout\ & (\inst19|t_0\(8) & !\inst19|stop_valid_sync\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~57_combout\,
	datab => \inst19|stop_valid_sync\(8),
	datac => \inst19|t_0\(8),
	datad => \inst19|stop_valid_sync\(14),
	combout => \inst19|stop_valid_sync~58_combout\);

-- Location: LCCOMB_X23_Y16_N14
\inst19|stop_valid_sync~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~99_combout\ = (\inst19|stop_valid_sync~58_combout\ & !\inst19|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|stop_valid_sync~58_combout\,
	datad => \inst19|process_0~0_combout\,
	combout => \inst19|stop_valid_sync~99_combout\);

-- Location: FF_X23_Y16_N15
\inst19|stop_valid_sync[8]\ : dffeas
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
	q => \inst19|stop_valid_sync\(8));

-- Location: LCCOMB_X23_Y16_N2
\inst19|stop_valid_sync~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~64_combout\ = (\inst19|stop_valid_sync\(14)) # ((\inst19|stop_valid_sync~57_combout\ & (!\inst19|stop_valid_sync\(8) & \inst19|t_0\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~57_combout\,
	datab => \inst19|stop_valid_sync\(8),
	datac => \inst19|t_0\(14),
	datad => \inst19|stop_valid_sync\(14),
	combout => \inst19|stop_valid_sync~64_combout\);

-- Location: LCCOMB_X23_Y16_N28
\inst19|stop_valid_sync~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~98_combout\ = (\inst19|stop_valid_sync~64_combout\ & !\inst19|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|stop_valid_sync~64_combout\,
	datad => \inst19|process_0~0_combout\,
	combout => \inst19|stop_valid_sync~98_combout\);

-- Location: FF_X23_Y16_N29
\inst19|stop_valid_sync[14]\ : dffeas
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
	q => \inst19|stop_valid_sync\(14));

-- Location: LCCOMB_X23_Y16_N8
\inst19|stop_valid_sync~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~10_combout\ = (!\inst19|stop_valid_sync\(14) & !\inst19|stop_valid_sync\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|stop_valid_sync\(14),
	datac => \inst19|stop_valid_sync\(8),
	combout => \inst19|stop_valid_sync~10_combout\);

-- Location: LCCOMB_X23_Y16_N10
\inst19|stop_valid_sync~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~41_combout\ = (!\inst19|stop_valid_sync\(10) & (!\inst19|stop_valid_sync\(14) & !\inst19|stop_valid_sync\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(10),
	datab => \inst19|stop_valid_sync\(14),
	datac => \inst19|stop_valid_sync\(8),
	combout => \inst19|stop_valid_sync~41_combout\);

-- Location: LCCOMB_X22_Y18_N16
\inst19|stop_valid_sync~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~40_combout\ = (\inst19|stop_valid_sync~9_combout\ & (!\inst19|stop_valid_sync\(29) & (!\inst19|stop_valid_sync\(9) & \inst19|stop_valid_sync~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~9_combout\,
	datab => \inst19|stop_valid_sync\(29),
	datac => \inst19|stop_valid_sync\(9),
	datad => \inst19|stop_valid_sync~39_combout\,
	combout => \inst19|stop_valid_sync~40_combout\);

-- Location: LCCOMB_X23_Y15_N6
\inst19|stop_valid_sync~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~43_combout\ = (\inst19|stop_valid_sync\(12)) # ((\inst19|stop_valid_sync~42_combout\ & (\inst19|stop_valid_sync~41_combout\ & \inst19|stop_valid_sync~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~42_combout\,
	datab => \inst19|stop_valid_sync~41_combout\,
	datac => \inst19|stop_valid_sync~40_combout\,
	datad => \inst19|stop_valid_sync\(12),
	combout => \inst19|stop_valid_sync~43_combout\);

-- Location: LCCOMB_X24_Y16_N0
\inst19|stop_valid_sync~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~101_combout\ = (\inst19|stop_valid_sync~43_combout\ & !\inst19|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|stop_valid_sync~43_combout\,
	datad => \inst19|process_0~0_combout\,
	combout => \inst19|stop_valid_sync~101_combout\);

-- Location: FF_X24_Y16_N1
\inst19|stop_valid_sync[12]\ : dffeas
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
	q => \inst19|stop_valid_sync\(12));

-- Location: LCCOMB_X23_Y15_N4
\inst19|stop_valid_sync~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~60_combout\ = (!\inst19|stop_valid_sync\(11) & (\inst19|stop_valid_sync~10_combout\ & (!\inst19|stop_valid_sync\(13) & !\inst19|stop_valid_sync\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(11),
	datab => \inst19|stop_valid_sync~10_combout\,
	datac => \inst19|stop_valid_sync\(13),
	datad => \inst19|stop_valid_sync\(12),
	combout => \inst19|stop_valid_sync~60_combout\);

-- Location: LCCOMB_X23_Y16_N20
\inst19|stop_valid_sync~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~56_combout\ = (\inst19|stop_valid_sync~9_combout\ & (!\inst19|stop_valid_sync\(9) & (\inst19|stop_valid_sync~22_combout\ & \inst19|stop_valid_sync~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~9_combout\,
	datab => \inst19|stop_valid_sync\(9),
	datac => \inst19|stop_valid_sync~22_combout\,
	datad => \inst19|stop_valid_sync~8_combout\,
	combout => \inst19|stop_valid_sync~56_combout\);

-- Location: LCCOMB_X23_Y15_N22
\inst19|stop_valid_sync~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~61_combout\ = (\inst19|stop_valid_sync\(10)) # ((\inst19|stop_valid_sync~40_combout\ & (\inst19|stop_valid_sync~60_combout\ & \inst19|t_0\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~40_combout\,
	datab => \inst19|stop_valid_sync~60_combout\,
	datac => \inst19|t_0\(10),
	datad => \inst19|stop_valid_sync\(10),
	combout => \inst19|stop_valid_sync~61_combout\);

-- Location: LCCOMB_X23_Y15_N0
\inst19|stop_valid_sync~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~105_combout\ = (!\inst19|process_0~0_combout\ & \inst19|stop_valid_sync~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|process_0~0_combout\,
	datac => \inst19|stop_valid_sync~61_combout\,
	combout => \inst19|stop_valid_sync~105_combout\);

-- Location: FF_X23_Y15_N1
\inst19|stop_valid_sync[10]\ : dffeas
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
	q => \inst19|stop_valid_sync\(10));

-- Location: FF_X26_Y16_N27
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

-- Location: LCCOMB_X23_Y15_N28
\inst19|stop_valid_sync~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~72_combout\ = (!\inst19|stop_valid_sync\(10) & \inst19|t_0\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|stop_valid_sync\(10),
	datac => \inst19|t_0\(29),
	combout => \inst19|stop_valid_sync~72_combout\);

-- Location: LCCOMB_X23_Y15_N30
\inst19|stop_valid_sync~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~73_combout\ = (\inst19|stop_valid_sync\(29)) # ((\inst19|stop_valid_sync~60_combout\ & (\inst19|stop_valid_sync~56_combout\ & \inst19|stop_valid_sync~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(29),
	datab => \inst19|stop_valid_sync~60_combout\,
	datac => \inst19|stop_valid_sync~56_combout\,
	datad => \inst19|stop_valid_sync~72_combout\,
	combout => \inst19|stop_valid_sync~73_combout\);

-- Location: LCCOMB_X23_Y15_N24
\inst19|stop_valid_sync~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~100_combout\ = (!\inst19|process_0~0_combout\ & \inst19|stop_valid_sync~73_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|process_0~0_combout\,
	datac => \inst19|stop_valid_sync~73_combout\,
	combout => \inst19|stop_valid_sync~100_combout\);

-- Location: FF_X23_Y15_N25
\inst19|stop_valid_sync[29]\ : dffeas
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
	q => \inst19|stop_valid_sync\(29));

-- Location: LCCOMB_X23_Y15_N14
\inst19|stop_valid_sync~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~11_combout\ = (!\inst19|stop_valid_sync\(11) & (!\inst19|stop_valid_sync\(13) & (!\inst19|stop_valid_sync\(29) & !\inst19|stop_valid_sync\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(11),
	datab => \inst19|stop_valid_sync\(13),
	datac => \inst19|stop_valid_sync\(29),
	datad => \inst19|stop_valid_sync\(12),
	combout => \inst19|stop_valid_sync~11_combout\);

-- Location: LCCOMB_X23_Y16_N4
\inst19|stop_valid_sync~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~76_combout\ = (\inst19|stop_valid_sync~10_combout\ & (\inst19|stop_valid_sync~11_combout\ & (!\inst19|stop_valid_sync\(10) & \inst19|t_0\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~10_combout\,
	datab => \inst19|stop_valid_sync~11_combout\,
	datac => \inst19|stop_valid_sync\(10),
	datad => \inst19|t_0\(9),
	combout => \inst19|stop_valid_sync~76_combout\);

-- Location: LCCOMB_X22_Y18_N14
\inst19|stop_valid_sync~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~77_combout\ = (\inst19|stop_valid_sync\(9)) # ((\inst19|stop_valid_sync~9_combout\ & (\inst19|stop_valid_sync~39_combout\ & \inst19|stop_valid_sync~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~9_combout\,
	datab => \inst19|stop_valid_sync~39_combout\,
	datac => \inst19|stop_valid_sync\(9),
	datad => \inst19|stop_valid_sync~76_combout\,
	combout => \inst19|stop_valid_sync~77_combout\);

-- Location: LCCOMB_X22_Y18_N30
\inst19|stop_valid_sync~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~104_combout\ = (\inst19|stop_valid_sync~77_combout\ & !\inst19|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|stop_valid_sync~77_combout\,
	datad => \inst19|process_0~0_combout\,
	combout => \inst19|stop_valid_sync~104_combout\);

-- Location: FF_X22_Y18_N31
\inst19|stop_valid_sync[9]\ : dffeas
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
	q => \inst19|stop_valid_sync\(9));

-- Location: LCCOMB_X23_Y16_N26
\inst19|stop_valid_sync~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~12_combout\ = (!\inst19|stop_valid_sync\(10) & (!\inst19|stop_valid_sync\(9) & (\inst19|stop_valid_sync~11_combout\ & \inst19|stop_valid_sync~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(10),
	datab => \inst19|stop_valid_sync\(9),
	datac => \inst19|stop_valid_sync~11_combout\,
	datad => \inst19|stop_valid_sync~10_combout\,
	combout => \inst19|stop_valid_sync~12_combout\);

-- Location: LCCOMB_X23_Y16_N12
\inst19|stop_valid_sync~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~19_combout\ = (\inst19|stop_valid_sync~4_combout\ & !\inst19|stop_valid_sync\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|stop_valid_sync~4_combout\,
	datad => \inst19|stop_valid_sync\(26),
	combout => \inst19|stop_valid_sync~19_combout\);

-- Location: LCCOMB_X23_Y16_N22
\inst19|stop_valid_sync~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~23_combout\ = (\inst19|stop_valid_sync~9_combout\ & (\inst19|stop_valid_sync~22_combout\ & (\inst19|stop_valid_sync~12_combout\ & \inst19|stop_valid_sync~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~9_combout\,
	datab => \inst19|stop_valid_sync~22_combout\,
	datac => \inst19|stop_valid_sync~12_combout\,
	datad => \inst19|stop_valid_sync~19_combout\,
	combout => \inst19|stop_valid_sync~23_combout\);

-- Location: LCCOMB_X23_Y20_N8
\inst19|stop_valid_sync~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~69_combout\ = (!\inst19|stop_valid_sync\(16) & (\inst19|stop_valid_sync~6_combout\ & \inst19|t_0\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(16),
	datab => \inst19|stop_valid_sync~6_combout\,
	datad => \inst19|t_0\(27),
	combout => \inst19|stop_valid_sync~69_combout\);

-- Location: LCCOMB_X23_Y20_N18
\inst19|stop_valid_sync~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~70_combout\ = (\inst19|stop_valid_sync\(27)) # ((\inst19|stop_valid_sync~23_combout\ & (\inst19|stop_valid_sync~69_combout\ & \inst19|stop_valid_sync~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(27),
	datab => \inst19|stop_valid_sync~23_combout\,
	datac => \inst19|stop_valid_sync~69_combout\,
	datad => \inst19|stop_valid_sync~5_combout\,
	combout => \inst19|stop_valid_sync~70_combout\);

-- Location: LCCOMB_X22_Y18_N4
\inst19|stop_valid_sync~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~95_combout\ = (\inst19|stop_valid_sync~70_combout\ & !\inst19|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|stop_valid_sync~70_combout\,
	datad => \inst19|process_0~0_combout\,
	combout => \inst19|stop_valid_sync~95_combout\);

-- Location: FF_X22_Y18_N5
\inst19|stop_valid_sync[27]\ : dffeas
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
	q => \inst19|stop_valid_sync\(27));

-- Location: LCCOMB_X23_Y20_N14
\inst19|stop_valid_sync~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~44_combout\ = (!\inst19|stop_valid_sync\(16) & (\inst19|stop_valid_sync~6_combout\ & (\inst19|stop_valid_sync~23_combout\ & !\inst19|stop_valid_sync\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(16),
	datab => \inst19|stop_valid_sync~6_combout\,
	datac => \inst19|stop_valid_sync~23_combout\,
	datad => \inst19|stop_valid_sync\(27),
	combout => \inst19|stop_valid_sync~44_combout\);

-- Location: LCCOMB_X23_Y20_N6
\inst19|stop_valid_sync~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~52_combout\ = (\inst19|stop_valid_sync\(21)) # ((\inst19|stop_valid_sync~44_combout\ & (!\inst19|stop_valid_sync\(15) & \inst19|t_0\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(21),
	datab => \inst19|stop_valid_sync~44_combout\,
	datac => \inst19|stop_valid_sync\(15),
	datad => \inst19|t_0\(21),
	combout => \inst19|stop_valid_sync~52_combout\);

-- Location: LCCOMB_X24_Y16_N16
\inst19|stop_valid_sync~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~90_combout\ = (\inst19|stop_valid_sync~52_combout\ & !\inst19|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|stop_valid_sync~52_combout\,
	datad => \inst19|process_0~0_combout\,
	combout => \inst19|stop_valid_sync~90_combout\);

-- Location: FF_X24_Y16_N17
\inst19|stop_valid_sync[21]\ : dffeas
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
	q => \inst19|stop_valid_sync\(21));

-- Location: LCCOMB_X23_Y20_N16
\inst19|stop_valid_sync~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~45_combout\ = (\inst19|stop_valid_sync\(15)) # ((\inst19|t_0\(15) & (\inst19|stop_valid_sync~44_combout\ & !\inst19|stop_valid_sync\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(15),
	datab => \inst19|stop_valid_sync\(15),
	datac => \inst19|stop_valid_sync~44_combout\,
	datad => \inst19|stop_valid_sync\(21),
	combout => \inst19|stop_valid_sync~45_combout\);

-- Location: LCCOMB_X24_Y16_N2
\inst19|stop_valid_sync~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~91_combout\ = (\inst19|stop_valid_sync~45_combout\ & !\inst19|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|stop_valid_sync~45_combout\,
	datad => \inst19|process_0~0_combout\,
	combout => \inst19|stop_valid_sync~91_combout\);

-- Location: FF_X24_Y16_N3
\inst19|stop_valid_sync[15]\ : dffeas
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
	q => \inst19|stop_valid_sync\(15));

-- Location: LCCOMB_X23_Y20_N24
\inst19|stop_valid_sync~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~5_combout\ = (!\inst19|stop_valid_sync\(15) & !\inst19|stop_valid_sync\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|stop_valid_sync\(15),
	datad => \inst19|stop_valid_sync\(21),
	combout => \inst19|stop_valid_sync~5_combout\);

-- Location: LCCOMB_X23_Y20_N10
\inst19|stop_valid_sync~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~46_combout\ = (\inst19|t_0\(16) & (!\inst19|stop_valid_sync\(21) & (!\inst19|stop_valid_sync\(15) & \inst19|stop_valid_sync~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_0\(16),
	datab => \inst19|stop_valid_sync\(21),
	datac => \inst19|stop_valid_sync\(15),
	datad => \inst19|stop_valid_sync~6_combout\,
	combout => \inst19|stop_valid_sync~46_combout\);

-- Location: LCCOMB_X23_Y20_N4
\inst19|stop_valid_sync~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~47_combout\ = (\inst19|stop_valid_sync\(16)) # ((!\inst19|stop_valid_sync\(27) & (\inst19|stop_valid_sync~23_combout\ & \inst19|stop_valid_sync~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(27),
	datab => \inst19|stop_valid_sync~23_combout\,
	datac => \inst19|stop_valid_sync~46_combout\,
	datad => \inst19|stop_valid_sync\(16),
	combout => \inst19|stop_valid_sync~47_combout\);

-- Location: LCCOMB_X24_Y16_N4
\inst19|stop_valid_sync~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~96_combout\ = (\inst19|stop_valid_sync~47_combout\ & !\inst19|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|stop_valid_sync~47_combout\,
	datad => \inst19|process_0~0_combout\,
	combout => \inst19|stop_valid_sync~96_combout\);

-- Location: FF_X24_Y16_N5
\inst19|stop_valid_sync[16]\ : dffeas
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
	q => \inst19|stop_valid_sync\(16));

-- Location: LCCOMB_X23_Y20_N20
\inst19|stop_valid_sync~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~24_combout\ = (!\inst19|stop_valid_sync\(27) & (\inst19|stop_valid_sync~5_combout\ & (\inst19|stop_valid_sync~23_combout\ & !\inst19|stop_valid_sync\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(27),
	datab => \inst19|stop_valid_sync~5_combout\,
	datac => \inst19|stop_valid_sync~23_combout\,
	datad => \inst19|stop_valid_sync\(16),
	combout => \inst19|stop_valid_sync~24_combout\);

-- Location: LCCOMB_X24_Y20_N14
\inst19|stop_valid_sync~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~25_combout\ = (!\inst19|stop_valid_sync\(20) & (\inst19|stop_valid_sync~24_combout\ & !\inst19|stop_valid_sync\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(20),
	datab => \inst19|stop_valid_sync~24_combout\,
	datad => \inst19|stop_valid_sync\(19),
	combout => \inst19|stop_valid_sync~25_combout\);

-- Location: LCCOMB_X24_Y20_N26
\inst19|stop_valid_sync~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~27_combout\ = (\inst19|stop_valid_sync\(18)) # ((!\inst19|stop_valid_sync\(17) & (\inst19|t_0\(18) & \inst19|stop_valid_sync~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(17),
	datab => \inst19|stop_valid_sync\(18),
	datac => \inst19|t_0\(18),
	datad => \inst19|stop_valid_sync~25_combout\,
	combout => \inst19|stop_valid_sync~27_combout\);

-- Location: LCCOMB_X24_Y20_N4
\inst19|stop_valid_sync~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~93_combout\ = (!\inst19|process_0~0_combout\ & \inst19|stop_valid_sync~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|process_0~0_combout\,
	datac => \inst19|stop_valid_sync~27_combout\,
	combout => \inst19|stop_valid_sync~93_combout\);

-- Location: FF_X24_Y20_N5
\inst19|stop_valid_sync[18]\ : dffeas
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
	q => \inst19|stop_valid_sync\(18));

-- Location: LCCOMB_X24_Y20_N0
\inst19|stop_valid_sync~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~26_combout\ = (\inst19|stop_valid_sync\(17)) # ((!\inst19|stop_valid_sync\(18) & (\inst19|t_0\(17) & \inst19|stop_valid_sync~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(17),
	datab => \inst19|stop_valid_sync\(18),
	datac => \inst19|t_0\(17),
	datad => \inst19|stop_valid_sync~25_combout\,
	combout => \inst19|stop_valid_sync~26_combout\);

-- Location: LCCOMB_X24_Y20_N22
\inst19|stop_valid_sync~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~94_combout\ = (!\inst19|process_0~0_combout\ & \inst19|stop_valid_sync~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|process_0~0_combout\,
	datad => \inst19|stop_valid_sync~26_combout\,
	combout => \inst19|stop_valid_sync~94_combout\);

-- Location: FF_X24_Y20_N23
\inst19|stop_valid_sync[17]\ : dffeas
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
	q => \inst19|stop_valid_sync\(17));

-- Location: FF_X26_Y16_N7
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

-- Location: LCCOMB_X24_Y20_N8
\inst19|stop_valid_sync~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~67_combout\ = (!\inst19|stop_valid_sync\(20) & (!\inst19|stop_valid_sync\(18) & (!\inst19|stop_valid_sync\(17) & \inst19|t_0\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(20),
	datab => \inst19|stop_valid_sync\(18),
	datac => \inst19|stop_valid_sync\(17),
	datad => \inst19|t_0\(19),
	combout => \inst19|stop_valid_sync~67_combout\);

-- Location: LCCOMB_X24_Y20_N16
\inst19|stop_valid_sync~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~112_combout\ = (!\inst19|process_0~0_combout\ & ((\inst19|stop_valid_sync\(19)) # ((\inst19|stop_valid_sync~67_combout\ & \inst19|stop_valid_sync~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|process_0~0_combout\,
	datab => \inst19|stop_valid_sync~67_combout\,
	datac => \inst19|stop_valid_sync\(19),
	datad => \inst19|stop_valid_sync~24_combout\,
	combout => \inst19|stop_valid_sync~112_combout\);

-- Location: FF_X24_Y20_N17
\inst19|stop_valid_sync[19]\ : dffeas
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
	q => \inst19|stop_valid_sync\(19));

-- Location: LCCOMB_X24_Y20_N20
\inst19|stop_valid_sync~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~30_combout\ = (!\inst19|stop_valid_sync\(18) & (!\inst19|stop_valid_sync\(17) & \inst19|t_0\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|stop_valid_sync\(18),
	datac => \inst19|stop_valid_sync\(17),
	datad => \inst19|t_0\(20),
	combout => \inst19|stop_valid_sync~30_combout\);

-- Location: LCCOMB_X24_Y20_N6
\inst19|stop_valid_sync~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~31_combout\ = (\inst19|stop_valid_sync\(20)) # ((\inst19|stop_valid_sync~30_combout\ & (!\inst19|stop_valid_sync\(19) & \inst19|stop_valid_sync~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(20),
	datab => \inst19|stop_valid_sync~30_combout\,
	datac => \inst19|stop_valid_sync\(19),
	datad => \inst19|stop_valid_sync~24_combout\,
	combout => \inst19|stop_valid_sync~31_combout\);

-- Location: LCCOMB_X24_Y20_N10
\inst19|stop_valid_sync~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~92_combout\ = (!\inst19|process_0~0_combout\ & \inst19|stop_valid_sync~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|process_0~0_combout\,
	datad => \inst19|stop_valid_sync~31_combout\,
	combout => \inst19|stop_valid_sync~92_combout\);

-- Location: FF_X24_Y20_N11
\inst19|stop_valid_sync[20]\ : dffeas
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
	q => \inst19|stop_valid_sync\(20));

-- Location: LCCOMB_X24_Y20_N24
\inst19|stop_valid_sync~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~6_combout\ = (!\inst19|stop_valid_sync\(17) & (!\inst19|stop_valid_sync\(19) & (!\inst19|stop_valid_sync\(18) & !\inst19|stop_valid_sync\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(17),
	datab => \inst19|stop_valid_sync\(19),
	datac => \inst19|stop_valid_sync\(18),
	datad => \inst19|stop_valid_sync\(20),
	combout => \inst19|stop_valid_sync~6_combout\);

-- Location: LCCOMB_X23_Y20_N26
\inst19|stop_valid_sync~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~7_combout\ = (!\inst19|stop_valid_sync\(16) & (\inst19|stop_valid_sync~6_combout\ & (!\inst19|stop_valid_sync\(27) & \inst19|stop_valid_sync~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(16),
	datab => \inst19|stop_valid_sync~6_combout\,
	datac => \inst19|stop_valid_sync\(27),
	datad => \inst19|stop_valid_sync~5_combout\,
	combout => \inst19|stop_valid_sync~7_combout\);

-- Location: LCCOMB_X23_Y16_N24
\inst19|stop_valid_sync~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~32_combout\ = (\inst19|stop_valid_sync~9_combout\ & (\inst19|stop_valid_sync~22_combout\ & (\inst19|stop_valid_sync~7_combout\ & \inst19|stop_valid_sync~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~9_combout\,
	datab => \inst19|stop_valid_sync~22_combout\,
	datac => \inst19|stop_valid_sync~7_combout\,
	datad => \inst19|stop_valid_sync~12_combout\,
	combout => \inst19|stop_valid_sync~32_combout\);

-- Location: LCCOMB_X22_Y16_N2
\inst19|stop_valid_sync~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~66_combout\ = (\inst19|stop_valid_sync\(26)) # ((\inst19|stop_valid_sync~4_combout\ & (\inst19|stop_valid_sync~32_combout\ & \inst19|t_0\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~4_combout\,
	datab => \inst19|stop_valid_sync~32_combout\,
	datac => \inst19|stop_valid_sync\(26),
	datad => \inst19|t_0\(26),
	combout => \inst19|stop_valid_sync~66_combout\);

-- Location: LCCOMB_X22_Y19_N28
\inst19|stop_valid_sync~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~63_combout\ = (\inst19|stop_valid_sync\(11)) # ((\inst19|stop_valid_sync~62_combout\ & (!\inst19|stop_valid_sync\(13) & \inst19|t_0\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~62_combout\,
	datab => \inst19|stop_valid_sync\(13),
	datac => \inst19|stop_valid_sync\(11),
	datad => \inst19|t_0\(11),
	combout => \inst19|stop_valid_sync~63_combout\);

-- Location: LCCOMB_X23_Y15_N12
\inst19|stop_valid_sync~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~103_combout\ = (!\inst19|process_0~0_combout\ & \inst19|stop_valid_sync~63_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|process_0~0_combout\,
	datac => \inst19|stop_valid_sync~63_combout\,
	combout => \inst19|stop_valid_sync~103_combout\);

-- Location: FF_X23_Y15_N13
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

-- Location: LCCOMB_X22_Y19_N14
\inst19|stop_valid_sync~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~65_combout\ = (\inst19|stop_valid_sync\(13)) # ((\inst19|stop_valid_sync~62_combout\ & (!\inst19|stop_valid_sync\(11) & \inst19|t_0\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~62_combout\,
	datab => \inst19|stop_valid_sync\(13),
	datac => \inst19|stop_valid_sync\(11),
	datad => \inst19|t_0\(13),
	combout => \inst19|stop_valid_sync~65_combout\);

-- Location: LCCOMB_X22_Y19_N16
\inst19|LessThan6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan6~6_combout\ = (\inst19|stop_valid_sync~64_combout\) # ((\inst19|stop_valid_sync~66_combout\) # ((\inst19|stop_valid_sync~65_combout\) # (\inst19|stop_valid_sync~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~64_combout\,
	datab => \inst19|stop_valid_sync~66_combout\,
	datac => \inst19|stop_valid_sync~65_combout\,
	datad => \inst19|stop_valid_sync~63_combout\,
	combout => \inst19|LessThan6~6_combout\);

-- Location: LCCOMB_X22_Y18_N18
\inst19|stop_valid_sync~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~89_combout\ = (\inst19|stop_valid_sync~78_combout\ & !\inst19|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|stop_valid_sync~78_combout\,
	datad => \inst19|process_0~0_combout\,
	combout => \inst19|stop_valid_sync~89_combout\);

-- Location: FF_X22_Y18_N19
\inst19|stop_valid_sync[24]\ : dffeas
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
	q => \inst19|stop_valid_sync\(24));

-- Location: LCCOMB_X22_Y18_N0
\inst19|stop_valid_sync~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~78_combout\ = (\inst19|stop_valid_sync\(24)) # ((\inst19|stop_valid_sync~74_combout\ & (!\inst19|stop_valid_sync\(28) & \inst19|t_0\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~74_combout\,
	datab => \inst19|stop_valid_sync\(24),
	datac => \inst19|stop_valid_sync\(28),
	datad => \inst19|t_0\(24),
	combout => \inst19|stop_valid_sync~78_combout\);

-- Location: LCCOMB_X22_Y18_N26
\inst19|LessThan6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan6~8_combout\ = (\inst19|LessThan6~7_combout\) # ((\inst19|stop_valid_sync~78_combout\) # ((\inst19|stop_valid_sync~77_combout\) # (\inst19|stop_valid_sync~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan6~7_combout\,
	datab => \inst19|stop_valid_sync~78_combout\,
	datac => \inst19|stop_valid_sync~77_combout\,
	datad => \inst19|stop_valid_sync~75_combout\,
	combout => \inst19|LessThan6~8_combout\);

-- Location: LCCOMB_X24_Y16_N18
\inst19|LessThan6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan6~3_combout\ = (\inst19|stop_valid_sync~53_combout\) # ((\inst19|stop_valid_sync~51_combout\) # ((\inst19|stop_valid_sync~52_combout\) # (\inst19|stop_valid_sync~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~53_combout\,
	datab => \inst19|stop_valid_sync~51_combout\,
	datac => \inst19|stop_valid_sync~52_combout\,
	datad => \inst19|stop_valid_sync~49_combout\,
	combout => \inst19|LessThan6~3_combout\);

-- Location: LCCOMB_X24_Y16_N8
\inst19|LessThan6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan6~2_combout\ = (\inst19|stop_valid_sync~45_combout\) # ((\inst19|stop_valid_sync~43_combout\) # ((\inst19|stop_valid_sync~47_combout\) # (\inst19|stop_valid_sync~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~45_combout\,
	datab => \inst19|stop_valid_sync~43_combout\,
	datac => \inst19|stop_valid_sync~47_combout\,
	datad => \inst19|stop_valid_sync~38_combout\,
	combout => \inst19|LessThan6~2_combout\);

-- Location: LCCOMB_X24_Y17_N28
\inst19|LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan6~0_combout\ = (\inst19|stop_valid_sync~17_combout\) # ((\inst19|stop_valid_sync~18_combout\) # ((\inst19|stop_valid_sync~27_combout\) # (\inst19|stop_valid_sync~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~17_combout\,
	datab => \inst19|stop_valid_sync~18_combout\,
	datac => \inst19|stop_valid_sync~27_combout\,
	datad => \inst19|stop_valid_sync~26_combout\,
	combout => \inst19|LessThan6~0_combout\);

-- Location: LCCOMB_X24_Y16_N12
\inst19|LessThan6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan6~4_combout\ = (\inst19|LessThan6~1_combout\) # ((\inst19|LessThan6~3_combout\) # ((\inst19|LessThan6~2_combout\) # (\inst19|LessThan6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan6~1_combout\,
	datab => \inst19|LessThan6~3_combout\,
	datac => \inst19|LessThan6~2_combout\,
	datad => \inst19|LessThan6~0_combout\,
	combout => \inst19|LessThan6~4_combout\);

-- Location: LCCOMB_X24_Y16_N14
\inst19|LessThan6~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan6~9_combout\ = (\inst19|LessThan6~5_combout\) # ((\inst19|LessThan6~6_combout\) # ((\inst19|LessThan6~8_combout\) # (\inst19|LessThan6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan6~5_combout\,
	datab => \inst19|LessThan6~6_combout\,
	datac => \inst19|LessThan6~8_combout\,
	datad => \inst19|LessThan6~4_combout\,
	combout => \inst19|LessThan6~9_combout\);

-- Location: LCCOMB_X24_Y16_N20
\inst19|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|process_0~0_combout\ = (!\inst19|start_valid_sync\(31) & (\inst19|LessThan6~9_combout\ & (!\inst19|Equal0~9_combout\ & !\inst19|stop_valid_sync~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|start_valid_sync\(31),
	datab => \inst19|LessThan6~9_combout\,
	datac => \inst19|Equal0~9_combout\,
	datad => \inst19|stop_valid_sync~81_combout\,
	combout => \inst19|process_0~0_combout\);

-- Location: LCCOMB_X21_Y18_N2
\inst19|start_valid_sync[16]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|start_valid_sync[16]~0_combout\ = (\inst19|process_0~0_combout\) # ((!\inst19|LessThan0~6_combout\ & (\inst19|t_sweep_start[0]~3_combout\ & !\inst19|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan0~6_combout\,
	datab => \inst19|t_sweep_start[0]~3_combout\,
	datac => \inst19|Equal0~10_combout\,
	datad => \inst19|process_0~0_combout\,
	combout => \inst19|start_valid_sync[16]~0_combout\);

-- Location: FF_X22_Y18_N3
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
	ena => \inst19|start_valid_sync[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(28));

-- Location: FF_X22_Y18_N21
\inst19|start_valid_sync[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_0\(27),
	sload => VCC,
	ena => \inst19|start_valid_sync[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(27));

-- Location: LCCOMB_X22_Y16_N18
\inst19|start_valid_sync[26]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|start_valid_sync[26]~feeder_combout\ = \inst19|t_0\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(26),
	combout => \inst19|start_valid_sync[26]~feeder_combout\);

-- Location: FF_X22_Y16_N19
\inst19|start_valid_sync[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|start_valid_sync[26]~feeder_combout\,
	ena => \inst19|start_valid_sync[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(26));

-- Location: LCCOMB_X22_Y16_N8
\inst19|stop_valid_sync~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~36_combout\ = (\inst19|stop_valid_sync\(25)) # ((!\inst19|stop_valid_sync\(22) & (\inst19|stop_valid_sync~34_combout\ & \inst19|t_0\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync\(22),
	datab => \inst19|stop_valid_sync~34_combout\,
	datac => \inst19|t_0\(25),
	datad => \inst19|stop_valid_sync\(25),
	combout => \inst19|stop_valid_sync~36_combout\);

-- Location: LCCOMB_X24_Y20_N2
\inst19|stop_valid_sync~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~68_combout\ = (\inst19|stop_valid_sync\(19)) # ((\inst19|stop_valid_sync~24_combout\ & \inst19|stop_valid_sync~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|stop_valid_sync~24_combout\,
	datac => \inst19|stop_valid_sync~67_combout\,
	datad => \inst19|stop_valid_sync\(19),
	combout => \inst19|stop_valid_sync~68_combout\);

-- Location: FF_X24_Y20_N19
\inst19|start_valid_sync[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_0\(18),
	sload => VCC,
	ena => \inst19|start_valid_sync[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(18));

-- Location: FF_X26_Y17_N13
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

-- Location: LCCOMB_X23_Y17_N8
\inst19|start_valid_sync[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|start_valid_sync[6]~feeder_combout\ = \inst19|t_0\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(6),
	combout => \inst19|start_valid_sync[6]~feeder_combout\);

-- Location: FF_X23_Y17_N9
\inst19|start_valid_sync[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|start_valid_sync[6]~feeder_combout\,
	ena => \inst19|start_valid_sync[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(6));

-- Location: LCCOMB_X23_Y17_N18
\inst19|start_valid_sync[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|start_valid_sync[5]~feeder_combout\ = \inst19|t_0\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(5),
	combout => \inst19|start_valid_sync[5]~feeder_combout\);

-- Location: FF_X23_Y17_N19
\inst19|start_valid_sync[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|start_valid_sync[5]~feeder_combout\,
	ena => \inst19|start_valid_sync[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(5));

-- Location: FF_X26_Y17_N9
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

-- Location: LCCOMB_X23_Y15_N8
\inst19|stop_valid_sync~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|stop_valid_sync~55_combout\ = (\inst19|stop_valid_sync\(4)) # ((\inst19|stop_valid_sync~54_combout\ & (!\inst19|stop_valid_sync\(5) & \inst19|t_0\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~54_combout\,
	datab => \inst19|stop_valid_sync\(4),
	datac => \inst19|stop_valid_sync\(5),
	datad => \inst19|t_0\(4),
	combout => \inst19|stop_valid_sync~55_combout\);

-- Location: LCCOMB_X23_Y17_N6
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

-- Location: FF_X23_Y17_N7
\inst19|start_valid_sync[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|start_valid_sync[3]~feeder_combout\,
	ena => \inst19|start_valid_sync[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(3));

-- Location: FF_X23_Y17_N13
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
	ena => \inst19|start_valid_sync[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(1));

-- Location: LCCOMB_X23_Y19_N0
\inst19|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~0_combout\ = (\inst19|start_valid_sync\(0) & (\inst19|stop_valid_sync~17_combout\ & VCC)) # (!\inst19|start_valid_sync\(0) & (\inst19|stop_valid_sync~17_combout\ $ (VCC)))
-- \inst19|Add2~1\ = CARRY((!\inst19|start_valid_sync\(0) & \inst19|stop_valid_sync~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|start_valid_sync\(0),
	datab => \inst19|stop_valid_sync~17_combout\,
	datad => VCC,
	combout => \inst19|Add2~0_combout\,
	cout => \inst19|Add2~1\);

-- Location: LCCOMB_X23_Y19_N4
\inst19|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~4_combout\ = ((\inst19|start_valid_sync\(2) $ (\inst19|stop_valid_sync~18_combout\ $ (\inst19|Add2~3\)))) # (GND)
-- \inst19|Add2~5\ = CARRY((\inst19|start_valid_sync\(2) & (\inst19|stop_valid_sync~18_combout\ & !\inst19|Add2~3\)) # (!\inst19|start_valid_sync\(2) & ((\inst19|stop_valid_sync~18_combout\) # (!\inst19|Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|start_valid_sync\(2),
	datab => \inst19|stop_valid_sync~18_combout\,
	datad => VCC,
	cin => \inst19|Add2~3\,
	combout => \inst19|Add2~4_combout\,
	cout => \inst19|Add2~5\);

-- Location: LCCOMB_X23_Y19_N6
\inst19|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~6_combout\ = (\inst19|stop_valid_sync~49_combout\ & ((\inst19|start_valid_sync\(3) & (!\inst19|Add2~5\)) # (!\inst19|start_valid_sync\(3) & (\inst19|Add2~5\ & VCC)))) # (!\inst19|stop_valid_sync~49_combout\ & ((\inst19|start_valid_sync\(3) & 
-- ((\inst19|Add2~5\) # (GND))) # (!\inst19|start_valid_sync\(3) & (!\inst19|Add2~5\))))
-- \inst19|Add2~7\ = CARRY((\inst19|stop_valid_sync~49_combout\ & (\inst19|start_valid_sync\(3) & !\inst19|Add2~5\)) # (!\inst19|stop_valid_sync~49_combout\ & ((\inst19|start_valid_sync\(3)) # (!\inst19|Add2~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~49_combout\,
	datab => \inst19|start_valid_sync\(3),
	datad => VCC,
	cin => \inst19|Add2~5\,
	combout => \inst19|Add2~6_combout\,
	cout => \inst19|Add2~7\);

-- Location: LCCOMB_X23_Y19_N18
\inst19|Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~18_combout\ = (\inst19|start_valid_sync\(9) & ((\inst19|stop_valid_sync~77_combout\ & (!\inst19|Add2~17\)) # (!\inst19|stop_valid_sync~77_combout\ & ((\inst19|Add2~17\) # (GND))))) # (!\inst19|start_valid_sync\(9) & 
-- ((\inst19|stop_valid_sync~77_combout\ & (\inst19|Add2~17\ & VCC)) # (!\inst19|stop_valid_sync~77_combout\ & (!\inst19|Add2~17\))))
-- \inst19|Add2~19\ = CARRY((\inst19|start_valid_sync\(9) & ((!\inst19|Add2~17\) # (!\inst19|stop_valid_sync~77_combout\))) # (!\inst19|start_valid_sync\(9) & (!\inst19|stop_valid_sync~77_combout\ & !\inst19|Add2~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|start_valid_sync\(9),
	datab => \inst19|stop_valid_sync~77_combout\,
	datad => VCC,
	cin => \inst19|Add2~17\,
	combout => \inst19|Add2~18_combout\,
	cout => \inst19|Add2~19\);

-- Location: LCCOMB_X23_Y19_N20
\inst19|Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~20_combout\ = ((\inst19|start_valid_sync\(10) $ (\inst19|stop_valid_sync~61_combout\ $ (\inst19|Add2~19\)))) # (GND)
-- \inst19|Add2~21\ = CARRY((\inst19|start_valid_sync\(10) & (\inst19|stop_valid_sync~61_combout\ & !\inst19|Add2~19\)) # (!\inst19|start_valid_sync\(10) & ((\inst19|stop_valid_sync~61_combout\) # (!\inst19|Add2~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|start_valid_sync\(10),
	datab => \inst19|stop_valid_sync~61_combout\,
	datad => VCC,
	cin => \inst19|Add2~19\,
	combout => \inst19|Add2~20_combout\,
	cout => \inst19|Add2~21\);

-- Location: LCCOMB_X23_Y19_N22
\inst19|Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~22_combout\ = (\inst19|stop_valid_sync~63_combout\ & ((\inst19|start_valid_sync\(11) & (!\inst19|Add2~21\)) # (!\inst19|start_valid_sync\(11) & (\inst19|Add2~21\ & VCC)))) # (!\inst19|stop_valid_sync~63_combout\ & 
-- ((\inst19|start_valid_sync\(11) & ((\inst19|Add2~21\) # (GND))) # (!\inst19|start_valid_sync\(11) & (!\inst19|Add2~21\))))
-- \inst19|Add2~23\ = CARRY((\inst19|stop_valid_sync~63_combout\ & (\inst19|start_valid_sync\(11) & !\inst19|Add2~21\)) # (!\inst19|stop_valid_sync~63_combout\ & ((\inst19|start_valid_sync\(11)) # (!\inst19|Add2~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~63_combout\,
	datab => \inst19|start_valid_sync\(11),
	datad => VCC,
	cin => \inst19|Add2~21\,
	combout => \inst19|Add2~22_combout\,
	cout => \inst19|Add2~23\);

-- Location: LCCOMB_X23_Y19_N24
\inst19|Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~24_combout\ = ((\inst19|start_valid_sync\(12) $ (\inst19|stop_valid_sync~43_combout\ $ (\inst19|Add2~23\)))) # (GND)
-- \inst19|Add2~25\ = CARRY((\inst19|start_valid_sync\(12) & (\inst19|stop_valid_sync~43_combout\ & !\inst19|Add2~23\)) # (!\inst19|start_valid_sync\(12) & ((\inst19|stop_valid_sync~43_combout\) # (!\inst19|Add2~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|start_valid_sync\(12),
	datab => \inst19|stop_valid_sync~43_combout\,
	datad => VCC,
	cin => \inst19|Add2~23\,
	combout => \inst19|Add2~24_combout\,
	cout => \inst19|Add2~25\);

-- Location: LCCOMB_X23_Y19_N28
\inst19|Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~28_combout\ = ((\inst19|stop_valid_sync~64_combout\ $ (\inst19|start_valid_sync\(14) $ (\inst19|Add2~27\)))) # (GND)
-- \inst19|Add2~29\ = CARRY((\inst19|stop_valid_sync~64_combout\ & ((!\inst19|Add2~27\) # (!\inst19|start_valid_sync\(14)))) # (!\inst19|stop_valid_sync~64_combout\ & (!\inst19|start_valid_sync\(14) & !\inst19|Add2~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~64_combout\,
	datab => \inst19|start_valid_sync\(14),
	datad => VCC,
	cin => \inst19|Add2~27\,
	combout => \inst19|Add2~28_combout\,
	cout => \inst19|Add2~29\);

-- Location: LCCOMB_X23_Y19_N30
\inst19|Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~30_combout\ = (\inst19|start_valid_sync\(15) & ((\inst19|stop_valid_sync~45_combout\ & (!\inst19|Add2~29\)) # (!\inst19|stop_valid_sync~45_combout\ & ((\inst19|Add2~29\) # (GND))))) # (!\inst19|start_valid_sync\(15) & 
-- ((\inst19|stop_valid_sync~45_combout\ & (\inst19|Add2~29\ & VCC)) # (!\inst19|stop_valid_sync~45_combout\ & (!\inst19|Add2~29\))))
-- \inst19|Add2~31\ = CARRY((\inst19|start_valid_sync\(15) & ((!\inst19|Add2~29\) # (!\inst19|stop_valid_sync~45_combout\))) # (!\inst19|start_valid_sync\(15) & (!\inst19|stop_valid_sync~45_combout\ & !\inst19|Add2~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|start_valid_sync\(15),
	datab => \inst19|stop_valid_sync~45_combout\,
	datad => VCC,
	cin => \inst19|Add2~29\,
	combout => \inst19|Add2~30_combout\,
	cout => \inst19|Add2~31\);

-- Location: LCCOMB_X23_Y18_N4
\inst19|Add2~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~36_combout\ = ((\inst19|stop_valid_sync~27_combout\ $ (\inst19|start_valid_sync\(18) $ (\inst19|Add2~35\)))) # (GND)
-- \inst19|Add2~37\ = CARRY((\inst19|stop_valid_sync~27_combout\ & ((!\inst19|Add2~35\) # (!\inst19|start_valid_sync\(18)))) # (!\inst19|stop_valid_sync~27_combout\ & (!\inst19|start_valid_sync\(18) & !\inst19|Add2~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~27_combout\,
	datab => \inst19|start_valid_sync\(18),
	datad => VCC,
	cin => \inst19|Add2~35\,
	combout => \inst19|Add2~36_combout\,
	cout => \inst19|Add2~37\);

-- Location: LCCOMB_X23_Y18_N6
\inst19|Add2~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~38_combout\ = (\inst19|start_valid_sync\(19) & ((\inst19|stop_valid_sync~68_combout\ & (!\inst19|Add2~37\)) # (!\inst19|stop_valid_sync~68_combout\ & ((\inst19|Add2~37\) # (GND))))) # (!\inst19|start_valid_sync\(19) & 
-- ((\inst19|stop_valid_sync~68_combout\ & (\inst19|Add2~37\ & VCC)) # (!\inst19|stop_valid_sync~68_combout\ & (!\inst19|Add2~37\))))
-- \inst19|Add2~39\ = CARRY((\inst19|start_valid_sync\(19) & ((!\inst19|Add2~37\) # (!\inst19|stop_valid_sync~68_combout\))) # (!\inst19|start_valid_sync\(19) & (!\inst19|stop_valid_sync~68_combout\ & !\inst19|Add2~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|start_valid_sync\(19),
	datab => \inst19|stop_valid_sync~68_combout\,
	datad => VCC,
	cin => \inst19|Add2~37\,
	combout => \inst19|Add2~38_combout\,
	cout => \inst19|Add2~39\);

-- Location: LCCOMB_X23_Y18_N18
\inst19|Add2~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~50_combout\ = (\inst19|start_valid_sync\(25) & ((\inst19|stop_valid_sync~36_combout\ & (!\inst19|Add2~49\)) # (!\inst19|stop_valid_sync~36_combout\ & ((\inst19|Add2~49\) # (GND))))) # (!\inst19|start_valid_sync\(25) & 
-- ((\inst19|stop_valid_sync~36_combout\ & (\inst19|Add2~49\ & VCC)) # (!\inst19|stop_valid_sync~36_combout\ & (!\inst19|Add2~49\))))
-- \inst19|Add2~51\ = CARRY((\inst19|start_valid_sync\(25) & ((!\inst19|Add2~49\) # (!\inst19|stop_valid_sync~36_combout\))) # (!\inst19|start_valid_sync\(25) & (!\inst19|stop_valid_sync~36_combout\ & !\inst19|Add2~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|start_valid_sync\(25),
	datab => \inst19|stop_valid_sync~36_combout\,
	datad => VCC,
	cin => \inst19|Add2~49\,
	combout => \inst19|Add2~50_combout\,
	cout => \inst19|Add2~51\);

-- Location: LCCOMB_X23_Y18_N20
\inst19|Add2~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~52_combout\ = ((\inst19|stop_valid_sync~66_combout\ $ (\inst19|start_valid_sync\(26) $ (\inst19|Add2~51\)))) # (GND)
-- \inst19|Add2~53\ = CARRY((\inst19|stop_valid_sync~66_combout\ & ((!\inst19|Add2~51\) # (!\inst19|start_valid_sync\(26)))) # (!\inst19|stop_valid_sync~66_combout\ & (!\inst19|start_valid_sync\(26) & !\inst19|Add2~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~66_combout\,
	datab => \inst19|start_valid_sync\(26),
	datad => VCC,
	cin => \inst19|Add2~51\,
	combout => \inst19|Add2~52_combout\,
	cout => \inst19|Add2~53\);

-- Location: LCCOMB_X23_Y18_N22
\inst19|Add2~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~54_combout\ = (\inst19|stop_valid_sync~70_combout\ & ((\inst19|start_valid_sync\(27) & (!\inst19|Add2~53\)) # (!\inst19|start_valid_sync\(27) & (\inst19|Add2~53\ & VCC)))) # (!\inst19|stop_valid_sync~70_combout\ & 
-- ((\inst19|start_valid_sync\(27) & ((\inst19|Add2~53\) # (GND))) # (!\inst19|start_valid_sync\(27) & (!\inst19|Add2~53\))))
-- \inst19|Add2~55\ = CARRY((\inst19|stop_valid_sync~70_combout\ & (\inst19|start_valid_sync\(27) & !\inst19|Add2~53\)) # (!\inst19|stop_valid_sync~70_combout\ & ((\inst19|start_valid_sync\(27)) # (!\inst19|Add2~53\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~70_combout\,
	datab => \inst19|start_valid_sync\(27),
	datad => VCC,
	cin => \inst19|Add2~53\,
	combout => \inst19|Add2~54_combout\,
	cout => \inst19|Add2~55\);

-- Location: LCCOMB_X23_Y18_N24
\inst19|Add2~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~56_combout\ = ((\inst19|stop_valid_sync~75_combout\ $ (\inst19|start_valid_sync\(28) $ (\inst19|Add2~55\)))) # (GND)
-- \inst19|Add2~57\ = CARRY((\inst19|stop_valid_sync~75_combout\ & ((!\inst19|Add2~55\) # (!\inst19|start_valid_sync\(28)))) # (!\inst19|stop_valid_sync~75_combout\ & (!\inst19|start_valid_sync\(28) & !\inst19|Add2~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|stop_valid_sync~75_combout\,
	datab => \inst19|start_valid_sync\(28),
	datad => VCC,
	cin => \inst19|Add2~55\,
	combout => \inst19|Add2~56_combout\,
	cout => \inst19|Add2~57\);

-- Location: LCCOMB_X24_Y19_N2
\inst19|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~0_combout\ = \inst19|Add2~4_combout\ $ (VCC)
-- \inst19|Add3~1\ = CARRY(\inst19|Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add2~4_combout\,
	datad => VCC,
	combout => \inst19|Add3~0_combout\,
	cout => \inst19|Add3~1\);

-- Location: LCCOMB_X24_Y19_N6
\inst19|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~4_combout\ = (\inst19|Add2~8_combout\ & ((GND) # (!\inst19|Add3~3\))) # (!\inst19|Add2~8_combout\ & (\inst19|Add3~3\ $ (GND)))
-- \inst19|Add3~5\ = CARRY((\inst19|Add2~8_combout\) # (!\inst19|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add2~8_combout\,
	datad => VCC,
	cin => \inst19|Add3~3\,
	combout => \inst19|Add3~4_combout\,
	cout => \inst19|Add3~5\);

-- Location: LCCOMB_X24_Y19_N10
\inst19|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~8_combout\ = (\inst19|Add2~12_combout\ & ((GND) # (!\inst19|Add3~7\))) # (!\inst19|Add2~12_combout\ & (\inst19|Add3~7\ $ (GND)))
-- \inst19|Add3~9\ = CARRY((\inst19|Add2~12_combout\) # (!\inst19|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add2~12_combout\,
	datad => VCC,
	cin => \inst19|Add3~7\,
	combout => \inst19|Add3~8_combout\,
	cout => \inst19|Add3~9\);

-- Location: LCCOMB_X24_Y19_N14
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

-- Location: LCCOMB_X24_Y19_N16
\inst19|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~14_combout\ = (\inst19|Add2~18_combout\ & (\inst19|Add3~13\ & VCC)) # (!\inst19|Add2~18_combout\ & (!\inst19|Add3~13\))
-- \inst19|Add3~15\ = CARRY((!\inst19|Add2~18_combout\ & !\inst19|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add2~18_combout\,
	datad => VCC,
	cin => \inst19|Add3~13\,
	combout => \inst19|Add3~14_combout\,
	cout => \inst19|Add3~15\);

-- Location: LCCOMB_X24_Y19_N18
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

-- Location: LCCOMB_X24_Y19_N22
\inst19|Add3~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~20_combout\ = (\inst19|Add2~24_combout\ & ((GND) # (!\inst19|Add3~19\))) # (!\inst19|Add2~24_combout\ & (\inst19|Add3~19\ $ (GND)))
-- \inst19|Add3~21\ = CARRY((\inst19|Add2~24_combout\) # (!\inst19|Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add2~24_combout\,
	datad => VCC,
	cin => \inst19|Add3~19\,
	combout => \inst19|Add3~20_combout\,
	cout => \inst19|Add3~21\);

-- Location: LCCOMB_X24_Y19_N30
\inst19|Add3~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~28_combout\ = (\inst19|Add2~32_combout\ & ((GND) # (!\inst19|Add3~27\))) # (!\inst19|Add2~32_combout\ & (\inst19|Add3~27\ $ (GND)))
-- \inst19|Add3~29\ = CARRY((\inst19|Add2~32_combout\) # (!\inst19|Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add2~32_combout\,
	datad => VCC,
	cin => \inst19|Add3~27\,
	combout => \inst19|Add3~28_combout\,
	cout => \inst19|Add3~29\);

-- Location: LCCOMB_X24_Y18_N0
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

-- Location: LCCOMB_X24_Y18_N2
\inst19|Add3~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~32_combout\ = (\inst19|Add2~36_combout\ & ((GND) # (!\inst19|Add3~31\))) # (!\inst19|Add2~36_combout\ & (\inst19|Add3~31\ $ (GND)))
-- \inst19|Add3~33\ = CARRY((\inst19|Add2~36_combout\) # (!\inst19|Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add2~36_combout\,
	datad => VCC,
	cin => \inst19|Add3~31\,
	combout => \inst19|Add3~32_combout\,
	cout => \inst19|Add3~33\);

-- Location: LCCOMB_X24_Y18_N6
\inst19|Add3~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~36_combout\ = (\inst19|Add2~40_combout\ & ((GND) # (!\inst19|Add3~35\))) # (!\inst19|Add2~40_combout\ & (\inst19|Add3~35\ $ (GND)))
-- \inst19|Add3~37\ = CARRY((\inst19|Add2~40_combout\) # (!\inst19|Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add2~40_combout\,
	datad => VCC,
	cin => \inst19|Add3~35\,
	combout => \inst19|Add3~36_combout\,
	cout => \inst19|Add3~37\);

-- Location: LCCOMB_X24_Y18_N8
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

-- Location: LCCOMB_X24_Y18_N24
\inst19|Add3~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~54_combout\ = (\inst19|Add2~58_combout\ & (\inst19|Add3~53\ & VCC)) # (!\inst19|Add2~58_combout\ & (!\inst19|Add3~53\))
-- \inst19|Add3~55\ = CARRY((!\inst19|Add2~58_combout\ & !\inst19|Add3~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add2~58_combout\,
	datad => VCC,
	cin => \inst19|Add3~53\,
	combout => \inst19|Add3~54_combout\,
	cout => \inst19|Add3~55\);

-- Location: LCCOMB_X24_Y18_N26
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

-- Location: LCCOMB_X24_Y16_N30
\inst19|start_valid_sync[31]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|start_valid_sync[31]~feeder_combout\ = \inst19|t_0\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(31),
	combout => \inst19|start_valid_sync[31]~feeder_combout\);

-- Location: FF_X24_Y16_N31
\inst19|start_valid_sync[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|start_valid_sync[31]~feeder_combout\,
	ena => \inst19|start_valid_sync[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(31));

-- Location: LCCOMB_X22_Y18_N22
\inst19|start_valid_sync[30]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|start_valid_sync[30]~feeder_combout\ = \inst19|t_0\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|t_0\(30),
	combout => \inst19|start_valid_sync[30]~feeder_combout\);

-- Location: FF_X22_Y18_N23
\inst19|start_valid_sync[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|start_valid_sync[30]~feeder_combout\,
	ena => \inst19|start_valid_sync[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(30));

-- Location: FF_X22_Y18_N25
\inst19|start_valid_sync[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_0\(29),
	sload => VCC,
	ena => \inst19|start_valid_sync[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|start_valid_sync\(29));

-- Location: LCCOMB_X23_Y18_N30
\inst19|Add2~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~62_combout\ = \inst19|start_valid_sync\(31) $ (\inst19|Add2~61\ $ (!\inst19|stop_valid_sync~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|start_valid_sync\(31),
	datad => \inst19|stop_valid_sync~81_combout\,
	cin => \inst19|Add2~61\,
	combout => \inst19|Add2~62_combout\);

-- Location: LCCOMB_X24_Y18_N28
\inst19|Add3~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~58_combout\ = \inst19|Add3~57\ $ (!\inst19|Add2~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst19|Add2~62_combout\,
	cin => \inst19|Add3~57\,
	combout => \inst19|Add3~58_combout\);

-- Location: LCCOMB_X24_Y18_N30
\inst19|result~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|result~0_combout\ = \inst19|Add2~0_combout\ $ (\inst19|Add3~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add2~0_combout\,
	datad => \inst19|Add3~58_combout\,
	combout => \inst19|result~0_combout\);

-- Location: LCCOMB_X27_Y18_N30
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

-- Location: LCCOMB_X24_Y17_N6
\inst19|lighthouse_A~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|lighthouse_A~0_combout\ = (\inst19|LessThan7~9_combout\ & (!\inst19|Add4~62_combout\ & \inst19|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan7~9_combout\,
	datab => \inst19|Add4~62_combout\,
	datad => \inst19|process_0~0_combout\,
	combout => \inst19|lighthouse_A~0_combout\);

-- Location: FF_X24_Y17_N19
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

-- Location: LCCOMB_X24_Y17_N24
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

-- Location: FF_X24_Y17_N25
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

-- Location: LCCOMB_X32_Y15_N18
\inst13|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|process_0~0_combout\ = (\SW0~input_o\ & (\inst19|result~q\ & (\inst19|rotor~q\ & \inst19|lighthouse_A~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~input_o\,
	datab => \inst19|result~q\,
	datac => \inst19|rotor~q\,
	datad => \inst19|lighthouse_A~q\,
	combout => \inst13|process_0~0_combout\);

-- Location: FF_X32_Y15_N19
\inst13|prev_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inst13|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|prev_data~q\);

-- Location: LCCOMB_X32_Y15_N28
\inst13|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|process_0~1_combout\ = (\inst13|process_0~0_combout\ & !\inst13|prev_data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|process_0~0_combout\,
	datad => \inst13|prev_data~q\,
	combout => \inst13|process_0~1_combout\);

-- Location: FF_X32_Y15_N29
\inst13|spi_tx_ena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \inst13|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_ena~q\);

-- Location: LCCOMB_X32_Y15_N20
\inst13|spi_slave_0|process_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|process_1~2_combout\ = (\spi_ss_n~input_o\ & \inst13|spi_tx_ena~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_ss_n~input_o\,
	datad => \inst13|spi_tx_ena~q\,
	combout => \inst13|spi_slave_0|process_1~2_combout\);

-- Location: LCCOMB_X21_Y18_N4
\inst19|t_sweep_start[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_start[0]~4_combout\ = (\inst19|t_sweep_start[0]~2_combout\ & (\inst19|LessThan1~3_combout\ & \inst19|t_sweep_start[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|t_sweep_start[0]~2_combout\,
	datac => \inst19|LessThan1~3_combout\,
	datad => \inst19|t_sweep_start[0]~0_combout\,
	combout => \inst19|t_sweep_start[0]~4_combout\);

-- Location: FF_X23_Y20_N13
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
	ena => \inst19|t_sweep_start[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(15));

-- Location: LCCOMB_X22_Y19_N0
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

-- Location: FF_X22_Y19_N1
\inst19|t_sweep_start[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_start[11]~feeder_combout\,
	ena => \inst19|t_sweep_start[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(11));

-- Location: LCCOMB_X23_Y16_N6
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

-- Location: FF_X23_Y16_N7
\inst19|t_sweep_start[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_start[9]~feeder_combout\,
	ena => \inst19|t_sweep_start[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(9));

-- Location: LCCOMB_X21_Y17_N10
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

-- Location: FF_X21_Y17_N11
\inst19|t_sweep_start[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_start[8]~feeder_combout\,
	ena => \inst19|t_sweep_start[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(8));

-- Location: FF_X23_Y17_N23
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
	ena => \inst19|t_sweep_start[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(4));

-- Location: LCCOMB_X23_Y17_N0
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

-- Location: FF_X23_Y17_N1
\inst19|t_sweep_start[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_start[3]~feeder_combout\,
	ena => \inst19|t_sweep_start[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(3));

-- Location: FF_X23_Y17_N29
\inst19|t_sweep_start[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_0\(1),
	sload => VCC,
	ena => \inst19|t_sweep_start[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_start\(1));

-- Location: LCCOMB_X22_Y17_N28
\inst19|t_sweep_duration[14]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[14]~44_combout\ = ((\inst19|t_sweep_start\(14) $ (\inst19|t_0\(14) $ (\inst19|t_sweep_duration[13]~43\)))) # (GND)
-- \inst19|t_sweep_duration[14]~45\ = CARRY((\inst19|t_sweep_start\(14) & (\inst19|t_0\(14) & !\inst19|t_sweep_duration[13]~43\)) # (!\inst19|t_sweep_start\(14) & ((\inst19|t_0\(14)) # (!\inst19|t_sweep_duration[13]~43\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|t_sweep_start\(14),
	datab => \inst19|t_0\(14),
	datad => VCC,
	cin => \inst19|t_sweep_duration[13]~43\,
	combout => \inst19|t_sweep_duration[14]~44_combout\,
	cout => \inst19|t_sweep_duration[14]~45\);

-- Location: LCCOMB_X22_Y17_N30
\inst19|t_sweep_duration[15]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|t_sweep_duration[15]~46_combout\ = \inst19|t_sweep_start\(15) $ (\inst19|t_sweep_duration[14]~45\ $ (!\inst19|t_0\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|t_sweep_start\(15),
	datad => \inst19|t_0\(15),
	cin => \inst19|t_sweep_duration[14]~45\,
	combout => \inst19|t_sweep_duration[15]~46_combout\);

-- Location: LCCOMB_X21_Y18_N30
\inst19|LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan0~6_combout\ = (\inst19|Add0~62_combout\) # ((!\inst19|Add0~60_combout\ & (\inst19|LessThan0~3_combout\ & \inst19|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~60_combout\,
	datab => \inst19|LessThan0~3_combout\,
	datac => \inst19|Add0~62_combout\,
	datad => \inst19|LessThan0~5_combout\,
	combout => \inst19|LessThan0~6_combout\);

-- Location: FF_X22_Y17_N31
\inst19|t_sweep_duration[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[15]~46_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(15));

-- Location: FF_X22_Y18_N29
\inst19|sweep_duration[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	asdata => \inst19|t_sweep_duration\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|sweep_duration\(15));

-- Location: FF_X27_Y15_N19
\inst13|spi_tx_data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst19|sweep_duration\(15),
	sload => VCC,
	ena => \inst13|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(15));

-- Location: CLKCTRL_G5
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

-- Location: LCCOMB_X27_Y15_N30
\inst13|spi_slave_0|tx_buf[15]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[15]~1_combout\ = (GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & (\inst13|spi_tx_data\(15))) # (!GLOBAL(\inst13|spi_slave_0|process_1~2clkctrl_outclk\) & ((\inst13|spi_slave_0|tx_buf[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_tx_data\(15),
	datac => \inst13|spi_slave_0|tx_buf[15]~1_combout\,
	datad => \inst13|spi_slave_0|process_1~2clkctrl_outclk\,
	combout => \inst13|spi_slave_0|tx_buf[15]~1_combout\);

-- Location: FF_X22_Y17_N29
\inst19|t_sweep_duration[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sensor0~input_o\,
	d => \inst19|t_sweep_duration[14]~44_combout\,
	ena => \inst19|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|t_sweep_duration\(14));

-- Location: FF_X24_Y20_N29
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

-- Location: FF_X27_Y15_N15
\inst13|spi_tx_data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \inst19|sweep_duration\(14),
	sload => VCC,
	ena => \inst13|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_tx_data\(14));

-- Location: LCCOMB_X27_Y15_N16
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

-- Location: LCCOMB_X27_Y15_N14
\inst13|spi_slave_0|tx_buf[14]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[14]~6_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(14))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[14]~_emulated_q\ $ 
-- (((\inst13|spi_slave_0|tx_buf[14]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[14]~_emulated_q\,
	datab => \inst13|spi_slave_0|process_1~2_combout\,
	datac => \inst13|spi_tx_data\(14),
	datad => \inst13|spi_slave_0|tx_buf[14]~5_combout\,
	combout => \inst13|spi_slave_0|tx_buf[14]~6_combout\);

-- Location: LCCOMB_X27_Y15_N0
\inst13|spi_slave_0|tx_buf[15]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[15]~3_combout\ = \inst13|spi_slave_0|tx_buf[15]~1_combout\ $ (\inst13|spi_slave_0|tx_buf[14]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|spi_slave_0|tx_buf[15]~1_combout\,
	datad => \inst13|spi_slave_0|tx_buf[14]~6_combout\,
	combout => \inst13|spi_slave_0|tx_buf[15]~3_combout\);

-- Location: LCCOMB_X20_Y3_N28
\inst13|spi_slave_0|process_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|process_1~0_combout\ = (!\inst13|spi_slave_0|bit_cnt\(24) & (!\inst13|spi_slave_0|bit_cnt\(6) & (!\inst13|spi_slave_0|bit_cnt\(7) & !\inst13|spi_slave_0|bit_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|bit_cnt\(24),
	datab => \inst13|spi_slave_0|bit_cnt\(6),
	datac => \inst13|spi_slave_0|bit_cnt\(7),
	datad => \inst13|spi_slave_0|bit_cnt\(5),
	combout => \inst13|spi_slave_0|process_1~0_combout\);

-- Location: LCCOMB_X20_Y3_N18
\inst13|spi_slave_0|process_1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|process_1~1_combout\ = (\inst13|spi_slave_0|bit_cnt\(1) & (!\inst13|spi_slave_0|bit_cnt\(3) & (!\inst13|spi_slave_0|bit_cnt\(4) & !\inst13|spi_slave_0|bit_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|bit_cnt\(1),
	datab => \inst13|spi_slave_0|bit_cnt\(3),
	datac => \inst13|spi_slave_0|bit_cnt\(4),
	datad => \inst13|spi_slave_0|bit_cnt\(2),
	combout => \inst13|spi_slave_0|process_1~1_combout\);

-- Location: LCCOMB_X21_Y3_N18
\inst13|spi_slave_0|rd_add~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|rd_add~0_combout\ = (\inst13|spi_slave_0|bit_cnt\(2) & (\spi_mosi~input_o\)) # (!\inst13|spi_slave_0|bit_cnt\(2) & ((\inst13|spi_slave_0|rd_add~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_mosi~input_o\,
	datac => \inst13|spi_slave_0|rd_add~q\,
	datad => \inst13|spi_slave_0|bit_cnt\(2),
	combout => \inst13|spi_slave_0|rd_add~0_combout\);

-- Location: FF_X21_Y3_N19
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

-- Location: LCCOMB_X20_Y3_N0
\inst13|spi_slave_0|process_1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|process_1~3_combout\ = (\inst13|spi_slave_0|process_1~0_combout\ & (\inst13|spi_slave_0|process_1~1_combout\ & !\inst13|spi_slave_0|rd_add~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|process_1~0_combout\,
	datac => \inst13|spi_slave_0|process_1~1_combout\,
	datad => \inst13|spi_slave_0|rd_add~q\,
	combout => \inst13|spi_slave_0|process_1~3_combout\);

-- Location: FF_X27_Y15_N1
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

-- Location: LCCOMB_X27_Y15_N18
\inst13|spi_slave_0|tx_buf[15]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|tx_buf[15]~2_combout\ = (\inst13|spi_slave_0|process_1~2_combout\ & (((\inst13|spi_tx_data\(15))))) # (!\inst13|spi_slave_0|process_1~2_combout\ & (\inst13|spi_slave_0|tx_buf[15]~1_combout\ $ 
-- (((\inst13|spi_slave_0|tx_buf[15]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|tx_buf[15]~1_combout\,
	datab => \inst13|spi_slave_0|process_1~2_combout\,
	datac => \inst13|spi_tx_data\(15),
	datad => \inst13|spi_slave_0|tx_buf[15]~_emulated_q\,
	combout => \inst13|spi_slave_0|tx_buf[15]~2_combout\);

-- Location: LCCOMB_X20_Y3_N30
\inst13|spi_slave_0|miso~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|miso~2_combout\ = (\inst13|spi_slave_0|rd_add~q\ & ((\inst13|spi_slave_0|miso~0_combout\) # ((\inst13|spi_slave_0|miso~1_combout\)))) # (!\inst13|spi_slave_0|rd_add~q\ & (((\inst13|spi_slave_0|tx_buf[15]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|miso~0_combout\,
	datab => \inst13|spi_slave_0|miso~1_combout\,
	datac => \inst13|spi_slave_0|tx_buf[15]~2_combout\,
	datad => \inst13|spi_slave_0|rd_add~q\,
	combout => \inst13|spi_slave_0|miso~2_combout\);

-- Location: LCCOMB_X20_Y3_N16
\inst13|spi_slave_0|miso~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|miso~3_combout\ = (\inst13|spi_slave_0|rd_add~q\ & ((\inst13|spi_slave_0|bit_cnt\(9) & (!\inst13|spi_slave_0|bit_cnt\(8) & !\inst13|spi_slave_0|bit_cnt\(10))) # (!\inst13|spi_slave_0|bit_cnt\(9) & (\inst13|spi_slave_0|bit_cnt\(8) $ 
-- (\inst13|spi_slave_0|bit_cnt\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|bit_cnt\(9),
	datab => \inst13|spi_slave_0|bit_cnt\(8),
	datac => \inst13|spi_slave_0|bit_cnt\(10),
	datad => \inst13|spi_slave_0|rd_add~q\,
	combout => \inst13|spi_slave_0|miso~3_combout\);

-- Location: LCCOMB_X20_Y3_N24
\inst13|spi_slave_0|miso~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|miso~4_combout\ = (\inst13|spi_slave_0|miso~3_combout\) # ((\inst13|spi_slave_0|process_1~1_combout\ & (!\inst13|spi_slave_0|rd_add~q\ & \inst13|spi_slave_0|process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|spi_slave_0|process_1~1_combout\,
	datab => \inst13|spi_slave_0|miso~3_combout\,
	datac => \inst13|spi_slave_0|rd_add~q\,
	datad => \inst13|spi_slave_0|process_1~0_combout\,
	combout => \inst13|spi_slave_0|miso~4_combout\);

-- Location: FF_X20_Y3_N31
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

-- Location: LCCOMB_X20_Y3_N12
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

-- Location: FF_X20_Y3_N13
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

-- Location: LCCOMB_X17_Y16_N4
\inst8|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Add1~0_combout\ = (\inst8|Head~0_combout\ & (\inst8|fifo_proc:Head[0]~q\ & VCC)) # (!\inst8|Head~0_combout\ & (\inst8|fifo_proc:Head[0]~q\ $ (VCC)))
-- \inst8|Add1~1\ = CARRY((!\inst8|Head~0_combout\ & \inst8|fifo_proc:Head[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Head~0_combout\,
	datab => \inst8|fifo_proc:Head[0]~q\,
	datad => VCC,
	combout => \inst8|Add1~0_combout\,
	cout => \inst8|Add1~1\);

-- Location: LCCOMB_X16_Y16_N30
\inst8|Head~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Head~2_combout\ = (!\button1_reset~input_o\ & \inst8|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button1_reset~input_o\,
	datac => \inst8|Add1~0_combout\,
	combout => \inst8|Head~2_combout\);

-- Location: FF_X16_Y16_N31
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

-- Location: LCCOMB_X17_Y16_N10
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

-- Location: LCCOMB_X16_Y16_N6
\inst8|Head~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Head~3_combout\ = (\inst8|Add1~6_combout\ & !\button1_reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|Add1~6_combout\,
	datad => \button1_reset~input_o\,
	combout => \inst8|Head~3_combout\);

-- Location: FF_X16_Y16_N7
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

-- Location: LCCOMB_X17_Y16_N12
\inst8|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Add1~8_combout\ = (\inst8|fifo_proc:Head[4]~q\ & (\inst8|Add1~7\ $ (GND))) # (!\inst8|fifo_proc:Head[4]~q\ & (!\inst8|Add1~7\ & VCC))
-- \inst8|Add1~9\ = CARRY((\inst8|fifo_proc:Head[4]~q\ & !\inst8|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Head[4]~q\,
	datad => VCC,
	cin => \inst8|Add1~7\,
	combout => \inst8|Add1~8_combout\,
	cout => \inst8|Add1~9\);

-- Location: LCCOMB_X14_Y16_N24
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

-- Location: FF_X14_Y16_N25
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

-- Location: LCCOMB_X17_Y16_N16
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

-- Location: LCCOMB_X17_Y16_N0
\inst8|Head~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Head~7_combout\ = (!\button1_reset~input_o\ & \inst8|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button1_reset~input_o\,
	datad => \inst8|Add1~12_combout\,
	combout => \inst8|Head~7_combout\);

-- Location: FF_X17_Y16_N1
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

-- Location: LCCOMB_X17_Y16_N28
\inst8|Full~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Full~6_combout\ = (\inst8|fifo_proc:Head[5]~q\ & (\inst8|fifo_proc:Head[3]~q\ & (\inst8|fifo_proc:Head[4]~q\ & \inst8|fifo_proc:Head[6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Head[5]~q\,
	datab => \inst8|fifo_proc:Head[3]~q\,
	datac => \inst8|fifo_proc:Head[4]~q\,
	datad => \inst8|fifo_proc:Head[6]~q\,
	combout => \inst8|Full~6_combout\);

-- Location: LCCOMB_X14_Y16_N28
\inst8|Looped~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Looped~3_combout\ = (!\button1_reset~input_o\ & \inst8|Full~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button1_reset~input_o\,
	datad => \inst8|Full~7_combout\,
	combout => \inst8|Looped~3_combout\);

-- Location: FF_X14_Y16_N29
\inst8|fifo_proc:Looped\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|Looped~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|fifo_proc:Looped~q\);

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

-- Location: LCCOMB_X15_Y16_N16
\inst8|Tail~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Tail~0_combout\ = ((\inst8|fifo_proc~4_combout\ & !\inst8|fifo_proc:Looped~q\)) # (!\button0_read~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc~4_combout\,
	datab => \inst8|fifo_proc:Looped~q\,
	datac => \button0_read~input_o\,
	combout => \inst8|Tail~0_combout\);

-- Location: LCCOMB_X15_Y16_N2
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

-- Location: LCCOMB_X16_Y16_N18
\inst8|Tail~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Tail~2_combout\ = (!\button1_reset~input_o\ & \inst8|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button1_reset~input_o\,
	datad => \inst8|Add0~2_combout\,
	combout => \inst8|Tail~2_combout\);

-- Location: FF_X16_Y16_N19
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

-- Location: LCCOMB_X15_Y16_N4
\inst8|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Add0~4_combout\ = (\inst8|fifo_proc:Tail[2]~q\ & (\inst8|Add0~3\ $ (GND))) # (!\inst8|fifo_proc:Tail[2]~q\ & (!\inst8|Add0~3\ & VCC))
-- \inst8|Add0~5\ = CARRY((\inst8|fifo_proc:Tail[2]~q\ & !\inst8|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|fifo_proc:Tail[2]~q\,
	datad => VCC,
	cin => \inst8|Add0~3\,
	combout => \inst8|Add0~4_combout\,
	cout => \inst8|Add0~5\);

-- Location: LCCOMB_X16_Y16_N26
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

-- Location: FF_X16_Y16_N27
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

-- Location: LCCOMB_X15_Y16_N6
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

-- Location: LCCOMB_X15_Y16_N8
\inst8|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Add0~8_combout\ = (\inst8|fifo_proc:Tail[4]~q\ & (\inst8|Add0~7\ $ (GND))) # (!\inst8|fifo_proc:Tail[4]~q\ & (!\inst8|Add0~7\ & VCC))
-- \inst8|Add0~9\ = CARRY((\inst8|fifo_proc:Tail[4]~q\ & !\inst8|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|fifo_proc:Tail[4]~q\,
	datad => VCC,
	cin => \inst8|Add0~7\,
	combout => \inst8|Add0~8_combout\,
	cout => \inst8|Add0~9\);

-- Location: LCCOMB_X14_Y16_N18
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

-- Location: FF_X14_Y16_N19
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

-- Location: LCCOMB_X15_Y16_N12
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

-- Location: LCCOMB_X15_Y16_N18
\inst8|Tail~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Tail~8_combout\ = (!\button1_reset~input_o\ & \inst8|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button1_reset~input_o\,
	datad => \inst8|Add0~12_combout\,
	combout => \inst8|Tail~8_combout\);

-- Location: FF_X15_Y16_N19
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

-- Location: LCCOMB_X15_Y16_N14
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

-- Location: LCCOMB_X15_Y16_N24
\inst8|Tail~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Tail~7_combout\ = (!\button1_reset~input_o\ & \inst8|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button1_reset~input_o\,
	datac => \inst8|Add0~14_combout\,
	combout => \inst8|Tail~7_combout\);

-- Location: FF_X15_Y16_N25
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

-- Location: LCCOMB_X15_Y16_N26
\inst8|Looped~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Looped~0_combout\ = (((!\inst8|fifo_proc:Tail[2]~q\) # (!\button0_read~input_o\)) # (!\inst8|fifo_proc:Tail[1]~q\)) # (!\inst8|fifo_proc:Tail[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Tail[0]~q\,
	datab => \inst8|fifo_proc:Tail[1]~q\,
	datac => \button0_read~input_o\,
	datad => \inst8|fifo_proc:Tail[2]~q\,
	combout => \inst8|Looped~0_combout\);

-- Location: LCCOMB_X16_Y16_N20
\inst8|Tail~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Tail~4_combout\ = (\inst8|Add0~6_combout\ & !\button1_reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|Add0~6_combout\,
	datad => \button1_reset~input_o\,
	combout => \inst8|Tail~4_combout\);

-- Location: FF_X16_Y16_N21
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

-- Location: LCCOMB_X15_Y16_N20
\inst8|Looped~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Looped~1_combout\ = (((!\inst8|fifo_proc:Tail[6]~q\) # (!\inst8|fifo_proc:Tail[3]~q\)) # (!\inst8|fifo_proc:Tail[4]~q\)) # (!\inst8|fifo_proc:Tail[5]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Tail[5]~q\,
	datab => \inst8|fifo_proc:Tail[4]~q\,
	datac => \inst8|fifo_proc:Tail[3]~q\,
	datad => \inst8|fifo_proc:Tail[6]~q\,
	combout => \inst8|Looped~1_combout\);

-- Location: LCCOMB_X15_Y16_N22
\inst8|Looped~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Looped~2_combout\ = (\inst8|fifo_proc:Looped~q\ & (((\inst8|Looped~0_combout\) # (\inst8|Looped~1_combout\)) # (!\inst8|fifo_proc:Tail[7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|fifo_proc:Looped~q\,
	datab => \inst8|fifo_proc:Tail[7]~q\,
	datac => \inst8|Looped~0_combout\,
	datad => \inst8|Looped~1_combout\,
	combout => \inst8|Looped~2_combout\);

-- Location: LCCOMB_X17_Y16_N18
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

-- Location: LCCOMB_X17_Y16_N2
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

-- Location: FF_X17_Y16_N3
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

-- Location: LCCOMB_X17_Y16_N22
\inst8|Full~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Full~7_combout\ = (\inst8|Looped~2_combout\) # ((\inst8|Full~5_combout\ & (\inst8|Full~6_combout\ & \inst8|fifo_proc:Head[7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Full~5_combout\,
	datab => \inst8|Full~6_combout\,
	datac => \inst8|Looped~2_combout\,
	datad => \inst8|fifo_proc:Head[7]~q\,
	combout => \inst8|Full~7_combout\);

-- Location: LCCOMB_X14_Y16_N8
\inst8|Full~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Full~8_combout\ = (\inst8|Full~4_combout\ & ((\inst8|Full~q\) # (\inst8|Full~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Full~4_combout\,
	datac => \inst8|Full~q\,
	datad => \inst8|Full~7_combout\,
	combout => \inst8|Full~8_combout\);

-- Location: FF_X14_Y16_N9
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

-- Location: LCCOMB_X19_Y3_N14
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

-- Location: FF_X19_Y3_N15
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

-- Location: FF_X19_Y3_N13
\inst13|spi_slave_0|bit_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	asdata => \inst13|spi_slave_0|bit_cnt\(12),
	clrn => \ALT_INV_spi_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(13));

-- Location: LCCOMB_X19_Y3_N18
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

-- Location: FF_X19_Y3_N19
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

-- Location: LCCOMB_X19_Y3_N8
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

-- Location: FF_X19_Y3_N9
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

-- Location: FF_X19_Y3_N7
\inst13|spi_slave_0|bit_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	asdata => \inst13|spi_slave_0|bit_cnt\(15),
	clrn => \ALT_INV_spi_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(16));

-- Location: LCCOMB_X19_Y3_N4
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

-- Location: FF_X19_Y3_N5
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

-- Location: FF_X19_Y3_N11
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

-- Location: LCCOMB_X19_Y3_N16
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

-- Location: FF_X19_Y3_N17
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

-- Location: LCCOMB_X19_Y3_N30
\inst13|spi_slave_0|bit_cnt[20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|bit_cnt[20]~feeder_combout\ = \inst13|spi_slave_0|bit_cnt\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|spi_slave_0|bit_cnt\(19),
	combout => \inst13|spi_slave_0|bit_cnt[20]~feeder_combout\);

-- Location: FF_X19_Y3_N31
\inst13|spi_slave_0|bit_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_sclk~input_o\,
	d => \inst13|spi_slave_0|bit_cnt[20]~feeder_combout\,
	clrn => \ALT_INV_spi_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|spi_slave_0|bit_cnt\(20));

-- Location: FF_X19_Y3_N29
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

-- Location: LCCOMB_X19_Y3_N26
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

-- Location: FF_X19_Y3_N27
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

-- Location: LCCOMB_X20_Y3_N26
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

-- Location: FF_X20_Y3_N27
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

-- Location: FF_X20_Y3_N23
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

-- Location: LCCOMB_X20_Y3_N22
\inst13|spi_slave_0|trdy~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|trdy~0_combout\ = (\inst13|spi_slave_0|trdy~q\) # ((\inst13|spi_slave_0|bit_cnt\(24) & !\inst13|spi_slave_0|rd_add~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|spi_slave_0|trdy~q\,
	datac => \inst13|spi_slave_0|bit_cnt\(24),
	datad => \inst13|spi_slave_0|rd_add~q\,
	combout => \inst13|spi_slave_0|trdy~0_combout\);

-- Location: LCCOMB_X21_Y3_N24
\inst13|spi_slave_0|trdy~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|spi_slave_0|trdy~1_combout\ = (\inst13|spi_slave_0|bit_cnt\(9) & ((\inst13|spi_slave_0|wr_add~q\ & (!\spi_mosi~input_o\)) # (!\inst13|spi_slave_0|wr_add~q\ & ((\inst13|spi_slave_0|trdy~0_combout\))))) # (!\inst13|spi_slave_0|bit_cnt\(9) & 
-- (((\inst13|spi_slave_0|trdy~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_mosi~input_o\,
	datab => \inst13|spi_slave_0|trdy~0_combout\,
	datac => \inst13|spi_slave_0|bit_cnt\(9),
	datad => \inst13|spi_slave_0|wr_add~q\,
	combout => \inst13|spi_slave_0|trdy~1_combout\);

-- Location: FF_X21_Y3_N25
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


