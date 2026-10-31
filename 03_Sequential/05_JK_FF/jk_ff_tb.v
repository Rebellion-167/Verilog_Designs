module jk_ff_tb;

reg clk, j, k;
wire q, qbar;

jk_ff dut (clk, j, k, q, qbar);

initial begin
	{clk, j, k} = 0;
end

always #5 clk = ~clk;

initial begin
	$dumpfile("jk_ff.vcd");
	$dumpvars(0, jk_ff_tb);
	
	j = 0; k = 1;
	#10;
	
	j = 0; k = 0;
	#10;
	
	j = 1; k = 0;
	#10;
	
	j = 0; k = 0;
	#10;
	
	j = 1; k = 1;
	#10;
	
	j = 1; k = 1;
	#10;
	
	j = 0; k = 1;
	#10;
	
	$finish;
end

endmodule
