Library ieee; 
USE ieee.std_logic_1164.all; 

ENTITY fullAdder IS 
	PORT(	X     : IN STD_LOGIC; 
			Y     : IN STD_LOGIC; 
			Cin   : IN STD_LOGIC; 
			Sum   : OUT STD_LOGIC; 
			Cout  : OUT STD_LOGIC); 
END fullAdder; 

ARCHITECTURE adder OF fullAdder IS 
BEGIN

PROCESS(X, Y, Cin)
	BEGIN 
		SUM <= X XOR Y XOR CIN after 10ns; 
		Cout <= (X AND Y) OR (Cin AND (X XOR Y));   
	END PROCESS; 
END adder; 