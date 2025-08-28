Library ieee; 
USE ieee.std_logic_1164.all; 

ENTITY RegB IS 
	PORT(Clk, RIN, LIN, Clr : IN STD_LOGIC; 
							    C : IN std_logic_vector(1 downto 0); 
								 D : IN std_logic_vector(3 downto 0); 
								 Q : OUT std_logic_vector(3 downto 0)); 
END RegB; 

ARCHITECTURE Reg OF RegB IS 
signal IQ: std_logic_vector(3 downto 0);  
BEGIN 

	PROCESS(Clk, Clr, IQ) 
		BEGIN 
			IF(Clr = '1') THEN IQ <= (others=>'0') after 20ns;    
			ELSIF(rising_edge(Clk)) THEN 
				IF(C(0)    = '1' AND C(1) = '0') THEN IQ <= RIN & IQ(3 downto 1) after 20ns;  
				ELSIF(C(0) = '0' AND C(1) = '1') THEN IQ <= IQ(2 downto 0) & LIN after 20ns; 
				ELSIF(C(0) = '1' AND C(1) = '1') THEN IQ <= D after 20ns; 
				END IF; 
			END IF; 
			Q <= IQ; 
	END PROCESS; 
END Reg; 
			  