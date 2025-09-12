module counter #(parameter int w = 8)(
	input logic clk,
  input logic rst_n,
  input logic up, // 1=up, 0=down
  input logic enable,
  output logic [w-1:0] cnt
);
  always @(posedge clk) begin
    if (!rst_n)
      cnt <='0;
  end else if (enable) begin
      cnt <= up ? (cnt + 1'b1) : (cnt - 1'b1);
    end
  end
endmodule
