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
  logic [W:0] tmp; // one extra bit for carry

  always_comb begin
    y = '0;
    carry = 1'b0;
    tmp = '0;
    
    case (op)
      3'b000: begin // add
        tmp = {1'b0, a} + {1'b0, b};
        y = tmp[W-1:0];
        carry = tmp[W];
      end
      3'b001: begin // sub
        tmp = {1'b0, a} - {1'b0, b};
        y = tmp[W-1:0];
        carry = tmp[W];
      end
      1'b010: y = a & b;
      1'b011: y = a | b;
      1'b100: y = a ^ b;
      
      default: y = '0;
    endcase

    zero = (y == '0);    
endmodule
