module sr_flip_flop_tb;

reg clk, s, r;
wire q, qbar;

sr_flip_flop dut (clk, s, r, q, qbar);

initial begin
	{clk, s, r} = 0;
end

always #5 clk = ~clk;

initial begin
	$dumpfile("sr_flip_flop.vcd");
	$dumpvars(0, sr_flip_flop_tb);
	
	s = 0; r = 1;
	#10;
	
	s = 0; r = 0;
	#10;
	
	s = 1; r = 0;
	#10;
	
	s = 0; r = 0;
	#10;
	
	s = 0; r = 1;
	#10;
	
	s = 1; r = 1;
	#10;
	
	s = 0; r = 0;
	#10;
	
	$finish;
end

endmodule
