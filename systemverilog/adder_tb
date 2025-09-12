module adder_tb;
  logic [3:0] a, b;
  logic [4:0] sum;

  adder dut(.a(a), .b(b), .sum(sum));
  
  initial begin
    $display("Time   a\t b\t sum");
    $display("----------------------");
    
    a = 4'd4; b = 4'd7; #10;
    $display("%0t\t   %0d\t %0d\t %0d", $time, a, b, sum);
    
    a = 4'd15; b = 4'd15; #10;
    $display("%0t\t   %0d\t %0d\t %0d", $time, a, b, sum);
    
    a = 4'd8; b = 4'd3; #10;
    $display("%0t\t   %0d\t %0d\t %0d", $time, a, b, sum);
    
    $finish;
    
  end
endmodule
