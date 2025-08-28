Library ieee; 
USE ieee.std_logic_1164.all;

ENTITY BehavioralFSM IS 
	PORT(Start, Clk, Reset_SM : IN STD_LOGIC; 
			  Control : OUT std_logic_vector(3 downto 0)); 
END BehavioralFSM; 

ARCHITECTURE Behavior OF BehavioralFSM IS 

TYPE States IS (IDLE, RESET, LOAD, SR1, SR2, SR3, SR4, READY);
SIGNAL Current_State : States;  
SIGNAL Next_State 	: States;  

BEGIN 
	
	PROCESS(Clk, Start, Reset_SM)
		BEGIN 
		IF rising_edge(Clk) THEN 
			IF Start = '1' AND Current_State = IDLE THEN Current_State <= RESET; 
			ELSIF Reset_SM = '1' THEN Current_State <= IDLE;
			ELSIF Current_State /= IDLE THEN Current_State <= Next_State;
			END IF; 
		END IF; 
	END PROCESS; 
	
	PROCESS(Current_State)
		BEGIN 
		 CASE Current_State IS 
			WHEN RESET  => Next_State <= LOAD; 
			WHEN LOAD   => Next_State <= SR1; 
			WHEN SR1    => Next_State <= SR2; 
			WHEN SR2    => Next_State <= SR3; 
			WHEN SR3    => Next_State <= SR4; 
			WHEN SR4    => Next_State <= READY; 
			WHEN READY  => Next_State <= IDLE; 
			WHEN IDLE 	=> Next_State <= RESET; 
		END CASE;  
	END PROCESS; 
			
	WITH Current_State SELECT 
		Control <=  "0000" WHEN IDLE, 
						"0100" WHEN RESET, 
						"0011" WHEN LOAD, 
						"0001" WHEN SR1, 
						"0001" WHEN SR2, 
						"0001" WHEN SR3, 
						"0001" WHEN SR4, 
						"1000" WHEN READY; 
		
END Behavior; 
