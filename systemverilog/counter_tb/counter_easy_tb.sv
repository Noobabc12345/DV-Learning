module counter_easy_tb;
  logic clk, rst_n, up, en;
  logic [7:0] cnt;
    
  counter #(8) dut8(.clk(clk), .rst_n(rst_n), .up(up), .en(en), .cnt(cnt));
  // counter #(4) dut (...); make sure there are no other dut, because dut must have a unique name
  // counter dut4 (...); the module uses its default parameter int W = 8. So this gives you an 8-bit counter named dut4
  
  always #5 clk = ~clk;

  initial begin
    clk = 0;
    rst_n = 0;
    en = 0;
    up = 1;
    
    #10 
    rst_n = 1; 
    en = 1; up = 1; #100; //cnt = 9
    up = 1; #100; //cnt = 19
    up = 0; #100; //cnt = 11
    en = 0; #100; //cnt = 10
    $finish;
  end
  
  initial begin
  	forever begin
    	#100; // wait 50 time units
    	$display("t=%0t ns  rst_n=%0b en=%0b up=%0b  cnt=%0d",
             $time, rst_n, en, up, cnt);
  	end
	end


endmodule
