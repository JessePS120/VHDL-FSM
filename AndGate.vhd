Library ieee; 
USE ieee.std_logic_1164.all;

ENTITY AndGate IS 
	PORT(X, Y : IN STD_LOGIC; 
			  Z : OUT STD_LOGIC); 
END AndGate; 

ARCHITECTURE Gate OF AndGate IS 
BEGIN 
	PROCESS(X, Y)
	
	BEGIN
	
		Z <= X AND Y after 4ns; 
	
	END PROCESS; 
END Gate; 