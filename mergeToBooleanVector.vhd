library IEEE;
use ieee.std_logic_1164.all;        
use IEEE.std_logic_signed.all;
use ieee.numeric_std.all;

entity mergeToBooleanVector is
	Generic (
		constant number_entries  : natural := 8
	);
   port( 
		v0: in std_logic;
		v1: in std_logic;
		v2: in std_logic;
		v3: in std_logic;
		v4: in std_logic;
		v5: in std_logic;
		v6: in std_logic;
		v7: in std_logic;
	 vector: 	out std_logic_vector(number_entries-1 downto 0)); -- a vector containing the read enable of each sensors FIFO
end mergeToBooleanVector;
 
architecture Behavioral of mergeToBooleanVector is
begin 
	vector(0) <= v0;
	vector(1) <= v1;
	vector(2) <= v2;
	vector(3) <= v3;
	vector(4) <= v4;
	vector(5) <= v5;
	vector(6) <= v6;
	vector(7) <= v7;
end Behavioral;