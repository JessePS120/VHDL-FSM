Library ieee; 
USE ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

ENTITY FSMTest IS 
	
END FSMTEST; 

ARCHITECTURE Test OF FSMTEST IS 

COMPONENT serialAdder IS 
	PORT(in_a, in_b : IN std_logic_vector(3 downto 0);
			control 	 : IN std_logic_vector(1 downto 0); 
			Clk 		 : IN STD_LOGIC;
			Reset_al  : IN STD_LOGIC; 
			Sum		 : OUT std_logic_vector(3 downto 0);
			Carry 	 : OUT STD_LOGIC); 
			
END COMPONENT;

COMPONENT BehavioralFSM IS 
	PORT(Start, Clk, Reset_SM : IN STD_LOGIC; 
			  Control : OUT std_logic_vector(3 downto 0)); 
END COMPONENT;

TYPE UnitTest IS RECORD
  in_a 			 : std_logic_vector(3 downto 0);
  in_b 			 : std_logic_vector(3 downto 0);               
  Expected_Sum  : std_logic_vector(3 downto 0);
  Expected_Cout : STD_LOGIC; 
END RECORD UnitTest;  

SIGNAL in_a 			: std_logic_vector(3 downto 0);
SIGNAL in_b 			: std_logic_vector(3 downto 0);
SIGNAL Sum_TEMP 		: std_logic_vector(3 downto 0);  
SIGNAL Control_TEMP  : std_logic_vector(3 downto 0);
SIGNAL Clk_TEMP 	   : STD_LOGIC := '1';  
SIGNAL Start_TEMP 	: STD_LOGIC; 
SIGNAL Carry_TEMP		: STD_LOGIC; 
SIGNAL Reset_TEMP    : STD_LOGIC;
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
  
 U1 : BehavioralFSM PORT MAP(Start_TEMP, Clk_TEMP, Reset_TEMP, Control_TEMP);
 U2 : serialAdder PORT MAP(in_a, in_b, Control_TEMP(1 downto 0), Clk_TEMP, Control_TEMP(2), Sum_TEMP, Carry_TEMP); 
 
 Clk_TEMP <= NOT Clk_TEMP AFTER 50ns;
 
 PROCESS 
  BEGIN 
	FOR i IN 6 DOWNTO 0 LOOP 
	  in_a <= Initial_Values(i).in_a; 
	  in_b <= Initial_Values(i).in_b; 
	  Reset_TEMP <= '1'; 
	  wait until rising_edge(CLK_TEMP);  
	  Reset_TEMP <= '0'; 
	  Start_TEMP <= '1';
	  wait until rising_edge(Clk_TEMP); 
	  Start_TEMP <= '0'; 
	  wait until Control_TEMP = "1000";  
	  wait for 1ns; 
	  ASSERT Sum_TEMP = Initial_Values(i).Expected_Sum REPORT "Expected Sum(" &integer'image(to_integer(unsigned(Initial_Values(i).Expected_Sum))) &")Doesn't Match Calculated Sum(" &integer'image(to_integer(unsigned(Sum_TEMP))) &")" SEVERITY ERROR;
	  ASSERT Carry_TEMP = Initial_Values(i).Expected_Cout REPORT "Expected Cout(" &STD_LOGIC'image(Initial_Values(i).Expected_Cout) &")Doesn't Match Calculated Cout(" &STD_LOGIC'image(Carry_TEMP) &")" SEVERITY ERROR; 
	  wait until rising_edge(Clk_TEMP); 
  END LOOP; 
  wait; 
END PROCESS; 
END TEST;  
 




