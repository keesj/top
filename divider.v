module divider(
    input wire clk_in,
    output clk_out
);
  
  reg [7:0] cnt = 8'b0;

  always @ (posedge clk_in) begin
    cnt <= cnt + 1'b1;
    if (cnt == 8'd127) begin
      clk_out <= ~clk_out;
      cnt <= 0;
    end
  end

endmodule
