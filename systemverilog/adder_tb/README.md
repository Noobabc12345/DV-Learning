# 4-Bit Adder Testbench

# Overview
A simple '4-bit adder DUT' and a 'SystemVerilog testbench'

# Files
1. `adder.sv` – 4-bit adder RTL design  
2. `adder_tb.sv` – SystemVerilog tb  

# How to run
You can run the testbench on [EDA Playground](https://www.edaplayground.com/):  
1. Copy `adder.sv` and `adder_tb.sv` into EDA Playground.  
2. Select a SystemVerilog simulator (e.g., I use Icarus Verilog 12.0).  
3. Run simulation and check console output.  

#Example Output
Time   a	 b	 sum
----------------------
10	   4	 7	 11
20	   15	 15	 30
30	   8	 3	 11
