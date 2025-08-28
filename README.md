## VHDL-FSM Introduction 
This repository contains VHDL source files developed in Intel Quartus for practicing and learning digital design concepts. The project implements a Moore finite state machine and integrates several fundamental digital components. 
<img width="425" height="233" alt="image" src="https://github.com/user-attachments/assets/ab6a4627-ae13-40b4-8e53-ac4a7300f77c" />

Picture of Moore State Machine. 
The repository includes the following main modules:

+ Serial Adder

  + Built from a full adder, D flip-flops, and an AND gate. All of which are built from scratch. 

  + Operates sequentially to add binary numbers bit by bit with the following delays:
    + Full adder: 8 ns
    + D flip-flop: 2 ns
    + AND gate: 4 ns 

+ 4-bit Parallel Load Shift Register

  + Rising edge active 4-Bit Bidirectional universal shift register made to emulate the 74LS194A. 

  + Has a total delay of 20 ns. 

+ Moore FSM Implementation. Note: Two versions exist, one that only utilizes gates and ones that utilizes VHDL's "PROCESS". 

  + Designed to reinforce understanding of FSM principles(see state machine diagram above). 

+ Quartus Test Bench.

  + Used to test the following items:  

    + Serial addition process.
  
    + Shift register operation.
  
    + FSM state transitions.

## Running 
All VHDL files were designed and tested using the Intel Quartus Prime Lite software version 20.1.1 found [here](https://www.intel.com/content/www/us/en/software-kit/660907/intel-quartus-prime-lite-edition-design-software-version-20-1-1-for-windows.html). There is no guarentee that these files will work on newer or older versions of Quartus. The D flip-flop, Load Shift Register, and FSM all have dependencies, so it is best to keep these files in the same directory. 

## Testing 
A test bench file for the serial adder is named "serialTest.vhd". Another test bench exists for the FSM named "FSMTest.vhd", but is not compatible with the gate only FSM. All other files(including the gate only FSM) were tested using Quartus' built in waveform generator. The results for these can be found below: 
<img width="959" height="551" alt="AndGateWaveform" src="https://github.com/user-attachments/assets/193b3a7d-fd72-4d0a-9d87-28a735a2c201" />
And Gate Waveform
<img width="959" height="491" alt="DFF" src="https://github.com/user-attachments/assets/906430b2-7f22-4470-adf0-d2268e727485" />
D Flip Flop Waveform 
<img width="959" height="485" alt="FullAdderWaveformpng" src="https://github.com/user-attachments/assets/da0198c6-4cf5-4c41-8ef1-35804d429151" />
Full Adder Waveform 
<img width="959" height="548" alt="RegisterAWaveform" src="https://github.com/user-attachments/assets/f1d0b0de-92c5-4491-b6dd-3bcda1907bf5" />
Register Waveform 
<img width="959" height="488" alt="BehavioralFSMWaveform" src="https://github.com/user-attachments/assets/824f54fe-0fe7-438d-95c4-4693b098ae3c" />
Finite State Machine Waveform 
## Final Notes 
This project is not optimized for production use and exists purely for learning purposes. 




