`include "Parameter.v"
// fpga4student.com 
// FPGA projects, VHDL projects, Verilog projects 
// Verilog code for RISC Processor 
// Verilog code for Instruction Memory
module Instruction_Memory(
 input[15:0] pc,
 output[15:0] instruction
);

 reg [`col - 1:0] memory [`row_i - 1:0];
 wire [7 : 0] rom_addr = pc[8 : 1];
 
 initial
 begin
	memory[0] = 16'b0001000000000000;
	memory[1] = 16'b0001010001000010;
	memory[2] = 16'b0011000001010000;
	memory[3] = 16'b0010000010000000;
	memory[4] = 16'b0100000001100000;
	memory[5] = 16'b0010001100000000;
	memory[6] = 16'b0101000001011000;
	memory[7] = 16'b0110000001101000;
	memory[8] = 16'b0111000001100000;
	memory[9] = 16'b1000000001111000;
	memory[10] = 16'b1100001000000000;
	memory[11] = 16'b1101001000000000;
	memory[12] = 16'b1001001000000111;
	memory[13] = 16'b1001010111000001;
	memory[14] = 16'b0000000000000000;
	memory[15] = 16'b1010010111000111;
	memory[16] = 16'b1010000111000001;
	memory[17] = 16'b0000000000000000;
	memory[18] = 16'b1110000000000000;
	memory[19] = 16'b1011000000000000;
 end

 assign instruction =  memory[rom_addr]; 

endmodule