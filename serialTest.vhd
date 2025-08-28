Library ieee; 
USE ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

ENTITY serialTEST IS

END ENTITY; 

ARCHITECTURE TestBench OF serialTEST IS 
COMPONENT serialAdder IS 
	PORT(in_a, in_b : IN std_logic_vector(3 downto 0);
			control 	 : IN std_logic_vector(1 downto 0); 
			Clk 		 : IN STD_LOGIC;
			Reset_al  : IN STD_LOGIC; 
			Sum		 : OUT std_logic_vector(3 downto 0);
			Carry 	 : OUT STD_LOGIC); 
END COMPONENT; 

TYPE UnitTest IS RECORD
  in_a 			 : std_logic_vector(3 downto 0);
  in_b 			 : std_logic_vector(3 downto 0);               
  Expected_Sum  : std_logic_vector(3 downto 0);
  Expected_Cout : STD_LOGIC; 
END RECORD UnitTest;

SIGNAL in_a 			: std_logic_vector(3 downto 0);
SIGNAL in_b 			: std_logic_vector(3 downto 0);
SIGNAL control_TEMP  : std_logic_vector(1 downto 0); 
SIGNAL Sum_TEMP 		: std_logic_vector(3 downto 0); 
SIGNAL Clk_TEMP 	   : STD_LOGIC := '1';  
SIGNAL Carry_TEMP		: STD_LOGIC; 
SIGNAL Reset_al_TEMP : STD_LOGIC; 	

TYPE UnitTests IS ARRAY (NATURAL RANGE<>) OF UnitTest;
CONSTANT Initial_Values : UnitTests(6 downto 0) := (
        (in_a => x"0",  in_b => x"4", Expected_Sum => x"4",  Expected_Cout =>  '0'),
        (in_a => x"C",  in_b => x"E", Expected_Sum => x"A",  Expected_Cout => '1'),
        (in_a => x"8",  in_b => x"A", Expected_Sum => x"2", Expected_Cout =>  '1'),
		  (in_a => x"F",  in_b => x"F", Expected_Sum => x"E", Expected_Cout =>  '1'),
		  (in_a => x"F",  in_b => x"1", Expected_Sum => x"0",  Expected_Cout => '1'),
		  (in_a => x"A",  in_b => x"5", Expected_Sum => x"2",   Expected_Cout => '0'),
		  (in_a => x"8",  in_b => x"7", Expected_Sum => x"F",   Expected_Cout => '0')
);

BEGIN 
	U1: serialAdder PORT MAP(in_a, in_b, control_TEMP, Clk_TEMP, Reset_al_TEMP, Sum_TEMP, Carry_TEMP); 
	Clk_TEMP <= NOT Clk_TEMP AFTER 50ns;
	PROCESS
	BEGIN
		FOR i IN 6 DOWNTO 0 LOOP 
		   in_a <= Initial_Values(i).in_a; 
	      in_b <= Initial_Values(i).in_b; 
			Reset_al_TEMP <= '1'; 
			wait until rising_edge(Clk_TEMP);
			wait for 1ns; 
			Reset_al_TEMP <= '0'; 
			control_TEMP <= "11";  
			wait until rising_edge(Clk_TEMP);
			wait for 1ns; 
			FOR j IN 3 DOWNTO 0 LOOP 
				control_TEMP <= "01";
		      wait until rising_edge(Clk_TEMP);
				wait for 1ns; 
			END LOOP; 
			control_TEMP <= "00"; 
			ASSERT Sum_TEMP = Initial_Values(i).Expected_Sum REPORT "Expected Sum(" &integer'image(to_integer(unsigned(Initial_Values(i).Expected_Sum))) &")Doesn't Match Calculated Sum(" &integer'image(to_integer(unsigned(Sum_TEMP))) &")" SEVERITY ERROR;
			ASSERT Carry_TEMP = Initial_Values(i).Expected_Cout REPORT "Expected Cout(" &STD_LOGIC'image(Initial_Values(i).Expected_Cout) &")Doesn't Match Calculated Cout(" &STD_LOGIC'image(Carry_TEMP) &")" SEVERITY ERROR;
			wait until rising_edge(clk_TEMP); 
			wait for 1ns; 
		END LOOP; 
		wait; 
   END PROCESS; 
END TestBench; 
