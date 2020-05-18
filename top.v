module top(clk, reset);
	input clk, reset;

  wire clk_out;
  
  divider div(
    .clk_in(clk),
    .rate(8'd104),
    .clk_out(clk_out)
  );
endmodule
