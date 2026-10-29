module jk_latch_tb;

reg enb, rst, j, k;
wire q, qbar;

jk_latch dut(enb, rst, j, k, q, qbar);

initial begin
	{enb, rst, j, k} = 0;
end

always #5 enb = ~enb;

initial begin
	$dumpfile("jk_latch.vcd");
	$dumpvars(0, jk_latch_tb);
	
	rst = 1;
	#10;
	rst = 0;
	j = 0; k = 0;
	#10;
	j = 0; k = 1;
	#10;
	j = 1; k = 0;
	#10;
	j = 1; k = 1;
	#10;
	$finish;
end

endmodule
