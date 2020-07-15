module MACRO_INC(in, out);
  input [3:0] in;
  output [3:0] out;
  assign out = in + 4'd1;
endmodule

module MACRO_DFF(clk, rst, en, d, q);
  input clk, rst, en;
  input [3:0] d;
  output reg [3:0] q;
  always @(posedge clk)
    q <= rst ? 4'd0 : en ? d : q;
endmodule
