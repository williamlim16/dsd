`timescale 1ns / 1ps
// fpga4student.com 
// FPGA projects, VHDL projects, Verilog projects 
// Verilog code for RISC Processor 
// Verilog code for Control Unit 
module Control_Unit(
      input[3:0] opcode,
      output reg[1:0] alu_op,
      output reg jump,beq,bne,mem_read,mem_write,alu_src,reg_dst,mem_to_reg,reg_write,inc,dec, clr    
    );


always @(*)
begin
 case(opcode) 
  4'b0000:  //NOP
   begin
    reg_dst = 1'b0;
    alu_src = 1'b0;
    mem_to_reg = 1'b0;
    reg_write = 1'b0;
    mem_read = 1'b0;
    mem_write = 1'b0;
    beq = 1'b0;
    bne = 1'b0;
    alu_op = 2'b10;
    jump = 1'b0; 
    inc = 1'b0;
	 dec = 1'b0;
	 clr = 1'b0;
   end
 4'b0001:  // LW
   begin
    reg_dst = 1'b0;
    alu_src = 1'b1;
    mem_to_reg = 1'b1;
    reg_write = 1'b1;
    mem_read = 1'b1;
    mem_write = 1'b0;
    beq = 1'b0;
    bne = 1'b0;
    alu_op = 2'b10;
    jump = 1'b0;
    inc = 1'b0;
	 dec = 1'b0;
	 clr = 1'b0;
   end
 4'b0010:  // SW
   begin
    reg_dst = 1'b0;
    alu_src = 1'b1;
    mem_to_reg = 1'b0;
    reg_write = 1'b0;
    mem_read = 1'b0;
    mem_write = 1'b1;
    beq = 1'b0;
    bne = 1'b0;
    alu_op = 2'b10;
    jump = 1'b0;
    inc = 1'b0;
	 dec = 1'b0;
	 clr = 1'b0;
   end
 4'b0011:  // data_processing add
   begin
    reg_dst = 1'b1;
    alu_src = 1'b0;
    mem_to_reg = 1'b0;
    reg_write = 1'b1;
    mem_read = 1'b0;
    mem_write = 1'b0;
    beq = 1'b0;
    bne = 1'b0;
    alu_op = 2'b00;
    jump = 1'b0;
    inc = 1'b0;
	 dec = 1'b0;
	 clr = 1'b0;
   end
 4'b0100:  // data_processing subtract
   begin
    reg_dst = 1'b1;
    alu_src = 1'b0;
    mem_to_reg = 1'b0;
    reg_write = 1'b1;
    mem_read = 1'b0;
    mem_write = 1'b0;
    beq = 1'b0;
    bne = 1'b0;
    alu_op = 2'b00;
    jump = 1'b0;
    inc = 1'b0;
    dec = 1'b0;
	 clr = 1'b0;	 
   end

 4'b0101:  // data_processing shift left
   begin
    reg_dst = 1'b1;
    alu_src = 1'b0;
    mem_to_reg = 1'b0;
    reg_write = 1'b1;
    mem_read = 1'b0;
    mem_write = 1'b0;
    beq = 1'b0;
    bne = 1'b0;
    alu_op = 2'b00;
    jump = 1'b0;
	 inc = 1'b0;
	 dec = 1'b0;
	 clr = 1'b0;
   end
 4'b0110:  // data_processing shift right
   begin
    reg_dst = 1'b1;
    alu_src = 1'b0;
    mem_to_reg = 1'b0;
    reg_write = 1'b1;
    mem_read = 1'b0;
    mem_write = 1'b0;
    beq = 1'b0;
    bne = 1'b0;
    alu_op = 2'b00;
    jump = 1'b0;
	 inc = 1'b0;
	 dec = 1'b0;
	 clr = 1'b0;
   end
 4'b0111:  // data_processing and logic
   begin
    reg_dst = 1'b1;
    alu_src = 1'b0;
    mem_to_reg = 1'b0;
    reg_write = 1'b1;
    mem_read = 1'b0;
    mem_write = 1'b0;
    beq = 1'b0;
    bne = 1'b0;
    alu_op = 2'b00;
    jump = 1'b0;  
	 inc = 1'b0; 
	 dec = 1'b0;
	 clr = 1'b0;
   end
 4'b1000:  // data_processing or logic
   begin
    reg_dst = 1'b1;
    alu_src = 1'b0;
    mem_to_reg = 1'b0;
    reg_write = 1'b1;
    mem_read = 1'b0;
    mem_write = 1'b0;
    beq = 1'b0;
    bne = 1'b0;
    alu_op = 2'b00;
    jump = 1'b0; 
    inc = 1'b0;
	 dec = 1'b0;
	 clr = 1'b0;	 
   end
 4'b1001:  // BEQ
   begin
    reg_dst = 1'b0;
    alu_src = 1'b0;
    mem_to_reg = 1'b0;
    reg_write = 1'b0;
    mem_read = 1'b0;
    mem_write = 1'b0;
    beq = 1'b1;
    bne = 1'b0;
    alu_op = 2'b01;
    jump = 1'b0;
	 inc = 1'b0;
	 dec = 1'b0;
	 clr = 1'b0;
   end
 4'b1010:  // BNE
   begin
    reg_dst = 1'b0;
    alu_src = 1'b0;
    mem_to_reg = 1'b0;
    reg_write = 1'b0;
    mem_read = 1'b0;
    mem_write = 1'b0;
    beq = 1'b0;
    bne = 1'b1;
    alu_op = 2'b01;
    jump = 1'b0;
	 inc = 1'b0;
	 dec = 1'b0;
	 clr = 1'b0;
   end
 4'b1011:  // J
   begin
    reg_dst = 1'b0;
    alu_src = 1'b0;
    mem_to_reg = 1'b0;
    reg_write = 1'b0;
    mem_read = 1'b0;
    mem_write = 1'b0;
    beq = 1'b0;
    bne = 1'b0;
    alu_op = 2'b00;
    jump = 1'b1;
	 inc = 1'b0;
	 dec = 1'b0;
	 clr = 1'b0;
   end
 4'b1100:  // increment by 1
   begin
    reg_dst = 1'b0;
    alu_src = 1'b1;
    mem_to_reg = 1'b0;
    reg_write = 1'b1;
    mem_read = 1'b0;
    mem_write = 1'b0;
    beq = 1'b0;
    bne = 1'b0;
    alu_op = 2'b10;
    jump = 1'b0;
	 inc = 1'b1;
	 dec = 1'b0;
	 clr = 1'b0;
   end
4'b1101: // decrement by 1
	 begin
    reg_dst = 1'b0;
    alu_src = 1'b1;
    mem_to_reg = 1'b0;
    reg_write = 1'b1;
    mem_read = 1'b0;
    mem_write = 1'b0;
    beq = 1'b0;
    bne = 1'b0;
    alu_op = 2'b00;
    jump = 1'b0;
	 inc = 1'b0;
	 dec = 1'b1;
	 clr = 1'b0;
   end
	
4'b1110: // CLR
	 begin
    reg_dst = 1'b0;
    alu_src = 1'b1;
    mem_to_reg = 1'b0;
    reg_write = 1'b1;
    mem_read = 1'b0;
    mem_write = 1'b0;
    beq = 1'b0;
    bne = 1'b0;
    alu_op = 2'b00;
    jump = 1'b0;
	 inc = 1'b0;
	 dec = 1'b0;
	 clr = 1'b1;
   end

	
		
 default: begin
    reg_dst = 1'b1;
    alu_src = 1'b0;
    mem_to_reg = 1'b0;
    reg_write = 1'b1;
    mem_read = 1'b0;
    mem_write = 1'b0;
    beq = 1'b0;
    bne = 1'b0;
    alu_op = 2'b00;
    jump = 1'b0;
	 inc = 1'b0;
	 dec = 1'b0;
	 clr = 1'b0; 
   end
 endcase
 end

endmodule