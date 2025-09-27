// alu testbench
module alu_tb;
  localparam int W = 4;

  logic [W-1:0] a, b, y;
  logic zero, carry;
  logic [2:0] op;

  alu #(W) uut(.a(a), .b(b), .y(y), .zero(zero), .carry(carry), .op(op));

  integer mismatch = 0;
    
  initial begin
    
    

  end
endmodule
