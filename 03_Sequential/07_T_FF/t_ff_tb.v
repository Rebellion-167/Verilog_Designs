module t_ff_tb;

reg clk, rst, t;
wire q, qbar;

t_ff dut (clk, rst, t, q, qbar);

initial begin
	{clk, rst, t} = 0;
end

always #5 clk = ~clk;

initial begin
	$dumpfile("t_ff.vcd");
	$dumpvars(0, t_ff_tb);
	
	rst = 1;
	#10 rst = 0;
	
	#10 t = 1;
	#10 t = 0;
	#10 t = 1;
	#10 t = 0;
	
	$finish;
end

endmodule
