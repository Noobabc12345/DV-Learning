// alu.sv
module alu #(
  parameter int W = 4   // operand width (default 4-bit)
)(
  input  logic [W-1:0] a,     // operand A
  input  logic [W-1:0] b,     // operand B
  input  logic [2:0]   op,    // operation selector
  output logic [W-1:0] y,     // result
  output logic         zero,  // flag: result == 0
  output logic         carry  // flag: carry/borrow (for add/sub)
);
  // Implementation will go here
  // op = 000 add, 001 sub, 010 and, 011 or, 100 xor
  
  always_comb begin
    if (op == 000) begin
      y = a+b;
    end else (oop == 001) begin
      y = a-b;
    end else (oop == 010) begin
      y = a & b;
    end else (oop == 011) begin
      y = a | b;
    end else (oop == 100) begin
      y = a ^ b;
endmodule
