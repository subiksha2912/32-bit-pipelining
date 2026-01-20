module bit_32_pipelining(
input wire clk,
input wire [31:0] in1,in2,in3,in4,
output reg [63:0] out_32);
reg [63:0] reg1,reg2,reg3;
always @(posedge clk) begin
reg1 = in1 * in2;
end
always @(posedge clk) begin
reg2 <= in3 * in4;
end
always @(posedge clk) begin
reg3 <= reg1 * reg2;
end
always @(posedge clk) begin
out_32 <= reg3;
end
endmodule
