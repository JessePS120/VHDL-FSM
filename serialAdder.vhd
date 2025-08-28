Library ieee; 
USE ieee.std_logic_1164.all; 
ENTITY serialAdder IS 
	PORT(in_a, in_b : IN std_logic_vector(3 downto 0);
			control 	 : IN std_logic_vector(1 downto 0); 
			Clk 		 : IN STD_LOGIC;
			Reset_al  : IN STD_LOGIC; 
			Sum		 : OUT std_logic_vector(3 downto 0);
			Carry 	 : OUT STD_LOGIC); 
			
END serialAdder; 

ARCHITECTURE serial OF serialAdder IS 

COMPONENT D_Flip_Flop IS 
	PORT(Clk, D, Enable, Reset : IN STD_LOGIC; 
									 Q : OUT STD_LOGIC); 
END COMPONENT;

COMPONENT fullAdder IS 
	PORT(	X     : IN STD_LOGIC; 
			Y     : IN STD_LOGIC; 
			Cin   : IN STD_LOGIC; 
			Sum   : OUT STD_LOGIC; 
			Cout  : OUT STD_LOGIC); 
END COMPONENT;

COMPONENT AndGate IS 
	PORT(X, Y : IN STD_LOGIC; 
			  Z : OUT STD_LOGIC); 
END COMPONENT; 

COMPONENT RegA IS 
	PORT(Clk, RIN, LIN, Clr : IN STD_LOGIC; 
							    C : IN std_logic_vector(1 downto 0); 
								 D : IN std_logic_vector(3 downto 0); 
								 Q : OUT std_logic_vector(3 downto 0)); 
END COMPONENT; 

COMPONENT RegB IS 
	PORT(Clk, RIN, LIN, Clr : IN STD_LOGIC; 
							    C : IN std_logic_vector(1 downto 0); 
								 D : IN std_logic_vector(3 downto 0); 
								 Q : OUT std_logic_vector(3 downto 0)); 
END COMPONENT; 

SIGNAL RegAOut_TEMP : std_logic_vector(3 downto 0); 
SIGNAL RegBOut_TEMP : std_logic_vector(3 downto 0); 
SIGNAL RIN_TEMP     : STD_LOGIC; 
SIGNAL Enable_TEMP  : STD_LOGIC; 
SIGNAL Cout_TEMP    : STD_LOGIC; 
SIGNAL Cin_TEMP     : STD_LOGIC;  
SIGNAL Control_NOT  : STD_LOGIC; 

BEGIN  
	
	Control_NOT <= NOT control(1); 
	
	U1: RegA PORT MAP(Clk, RIN_TEMP, '0', Reset_al, control, in_a, RegAOut_TEMP); 
	U2: RegB PORT MAP(Clk, '0', '0', Reset_al, control, in_b, RegBOut_TEMP); 
	U3: AndGate PORT MAP(control(0), Control_NOT, Enable_TEMP); 
	U4: D_Flip_Flop PORT MAP(Clk, Cout_TEMP, Enable_TEMP, Reset_al, Cin_TEMP); 
	U5: fullAdder PORT MAP(RegAOut_TEMP(0), RegBOut_TEMP(0), Cin_TEMP, RIN_TEMP, Cout_TEMP);

	Sum <= RegAOut_TEMP; 
	Carry <= Cin_TEMP; 

END serial; 