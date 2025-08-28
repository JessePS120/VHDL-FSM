Library ieee; 
USE ieee.std_logic_1164.all;

ENTITY GateFSM IS 
	PORT(Start, W, Clk, Reset_SM : IN STD_LOGIC; 
			  Control : OUT std_logic_vector(3 downto 0)); 
END GateFSM; 

ARCHITECTURE Gates OF GateFSM IS 

COMPONENT D_Flip_Flop IS 
	PORT(Clk, D, Enable, Reset : IN STD_LOGIC; 
									 Q : OUT STD_LOGIC); 
END COMPONENT; 

SIGNAL D2, D1, D0     : STD_LOGIC; 
SIGNAL Q2, Q1, Q0     : STD_LOGIC;
SIGNAL Z3, Z2, Z1, Z0 : STD_LOGIC; 
SIGNAL W_TEMP			 : STD_LOGIC;  
SIGNAL Enable_TEMP    : STD_LOGIC; 

BEGIN 
	Enable_TEMP <= '1'; 
	
	U1: D_Flip_Flop PORT MAP(Clk, D2, Enable_TEMP, Reset_SM, Q2); 
	U2: D_Flip_Flop PORT MAP(Clk, D1, Enable_TEMP, Reset_SM, Q1); 
	U3: D_Flip_Flop PORT MAP(Clk, D0, Enable_TEMP, Reset_SM, Q0); 
	
	W_TEMP <= '1' WHEN Start = '1' ELSE 
	W; 
	D2 <= '0' WHEN Reset_SM = '1'ELSE 
	(NOT Q2 AND Q1 AND Q0 AND W_TEMP) OR (Q2 AND NOT W_TEMP) OR (Q2 AND NOT Q0) OR (Q2 AND NOT Q1);
	D1 <= '0' WHEN Reset_SM = '1' ELSE 
	(NOT Q1 AND Q0 AND W_TEMP) OR (Q1 AND NOT Q0) OR (Q1 AND NOT W_TEMP);
	D0 <= '0' WHEN Reset_SM = '1' ELSE
	Q0 XOR W_TEMP;
	Z3 <= '0' WHEN Reset_SM = '1' ELSE 
	(Q2 AND Q1 AND Q0);
	Z2 <= '0' WHEN Reset_SM = '1' ELSE
	(NOT Q2 AND NOT Q1 AND Q0); 
	Z1 <= '0' WHEN Reset_SM = '1' ELSE 
	(NOT Q2 AND Q1 AND NOT Q0); 
	Z0 <= '0' WHEN Reset_SM = '1' ELSE 
	(NOT Q2 AND Q1) OR (Q1 AND NOT Q0) OR (Q2 AND NOT Q0) OR (Q2 AND NOT Q1); 
	
	Control(0) <= Z0;
	Control(1) <= Z1;
	Control(2) <= Z2; 
	Control(3) <= Z3;

END Gates; 


