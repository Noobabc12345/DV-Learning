module counter_medium_tb;
  logic clk=0, rst_n=0, en=0, up=1;
  logic [7:0] cnt, ref;
    
  counter #(8) dut2(.clk(clk), .rst_n(rst_n), .up(up), .en(en), .cnt(cnt));
  // counter #(4) dut (...); make sure there are no other dut, because dut must have a unique name
  // counter dut4 (...); the module uses its default parameter int W = 8. So this gives you an 8-bit counter named dut4
  
  always #5 clk = ~clk;
	
  // reference signal
  always_ff @(posedge clk) begin
    if (!rst_n) ref <= '0;
  	else if (en) ref <= up ? (ref + 1) : (ref - 1);
//     if (!rst_n) begin
//       ref <= '0;
//     end else if (en) begin
//       if (up) begin
//     	ref <= ref + 1;   // when up = 1 → count up
//       end else begin
//     	ref <= ref - 1;
//       end   // when up = 0 → count down
//     end
  end
  
  always_ff @(posedge clk) begin
    if (rst_n && (cnt !== ref)) begin
      $error("Mismatch @%0t: dut=%0d ref=%0d (en=%0b up=%0b)", $time, cnt, ref, en, up);
    end
  end
  
  initial begin
    #10 rst_n = 1;
    en = 1; up = 1; #100;
    up = 0; #100;
    en = 0; #100;
    $display("Simulation passed ~ ~ ~");
    $finish;
  end
  
  initial begin
  	forever begin
    	#100;
    	$display("t=%0t ns  rst_n=%0b en=%0b up=%0b  cnt=%0d",
             $time, rst_n, en, up, cnt);
      if ($time > 400) $finish;
  	end
  end
endmodule
    
