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
  logic [W:0] yadd; assign yadd = a + b;
  logic [W:0] ysub; assign yadd = a - b;
  logic [W-1:0] yand; assign yadd = a & b;
  logic [W:0] yor; assign yadd = a + b;
  logic [W:0] yxor; assign yadd = a + b;

  always_comb begin
    if ()
  
endmodule
