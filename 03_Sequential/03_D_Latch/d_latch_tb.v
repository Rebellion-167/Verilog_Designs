module d_latch_tb;

reg enb, rst, d;
wire q, qbar;

d_latch dut (enb, rst, d, q, qbar);

initial begin
	{enb, rst, d} = 0;
end

always #5 enb = ~enb;

initial begin
	$dumpfile("d_latch.vcd");
	$dumpvars(0, d_latch_tb);
	
	rst = 1;
	d = 0;
	#10;
	rst = 0;
	// enb = 1, d = 0
	d = 0;
	#10;
	// enb = 1, d = 1
	d = 1;
	#5;
	// enb = 0, d = 0
	d = 0;
	#5;
	// enb = 0, d = 1
	d = 1;
	#10;
	// enb = 1, d = 0;
	d = 0;
	$finish;
end

endmodule
