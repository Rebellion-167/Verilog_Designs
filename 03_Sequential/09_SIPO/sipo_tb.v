module sipo_tb;

reg clk, rst, s_in;
wire [3:0] p_out;

sipo dut (clk, rst, s_in, p_out);

initial begin
	{clk, rst, s_in} = 0;
end

always #5 clk = ~clk;

initial begin
	$dumpfile("sipo.vcd");
	$dumpvars(0, sipo_tb);
	
	rst = 1;
	#10 rst = 0;
	s_in = 1;
	#10 s_in = 0;
	#10 s_in = 1;
	#10 s_in = 1;
	#20 $finish;
end

endmodule
