module siso_tb;

reg clk, rst, s_in;
wire s_out;

siso dut (clk, rst, s_in, s_out);

initial begin
	{clk, rst, s_in} = 0;
end

always #5 clk = ~clk;

initial begin
	$dumpfile("siso.vcd");
	$dumpvars(0, siso_tb);
	
	rst = 1;
	#10;
	rst = 0;
	s_in = 1;
	#10 s_in = 0;
	#10 s_in = 1;
	#10 s_in = 1;
	#40 $finish;
end

endmodule
