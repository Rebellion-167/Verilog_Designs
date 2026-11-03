module d_ff_tb;

reg clk, rst, d_in;
wire q, qbar;

d_ff dut (clk, rst, d_in, q, qbar);

initial begin
	{clk, rst, d_in} = 0;
end

always #5 clk = ~clk;

initial begin
	$dumpfile("d_ff.vcd");
	$dumpvars(0, d_ff_tb);
	
	rst = 1;
	#10;
	rst = 0;
	d_in = 1;
	#10 d_in = 0;
	#10 d_in = 1;
	#10 d_in = 1;
	#10 d_in = 0;
	#10 d_in = 1;
	
	$finish;
end

endmodule
