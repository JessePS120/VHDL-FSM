Library ieee; 
USE ieee.std_logic_1164.all;

ENTITY D_Flip_Flop IS 
	PORT(Clk, D, Enable, Reset : IN STD_LOGIC; 
									 Q : OUT STD_LOGIC); 
END D_Flip_Flop; 

ARCHITECTURE DFF OF D_Flip_Flop IS 
BEGIN 
 
PROCESS(D, Clk, Enable, Reset)
	BEGIN 
		
	IF(Reset = '1') THEN Q <= '0' after 2ns;
		ElSIF(Enable = '1' AND rising_edge(Clk)) THEN Q <= D after 2ns;   
	END IF; 		
	
	END PROCESS; 
	
END DFF; 