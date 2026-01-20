module bit_32_pipelining_tb;
reg clk;
reg [31:0] in1,in2,in3,in4;
wire [63:0] out_32;
bit_32_pipelining dut(.clk(clk),.rst(rst),.in1(in1),.in2(in2),.in3(in3),.in4(in4),.out_32(out_32));
initial begin
clk = 0;
forever #5 clk = ~clk;
end
initial begin
in1 = 4'd2;in2 = 4'd2;in3 = 4'd2;in4 = 4'd2;#50;
$finish;
end
initial begin
$monitor("in1 = %d | in2 = %d | in3 = %d | in4 = %d | out_32 = %d",in1,in2,in3,in4,out_32);
end
endmodule
