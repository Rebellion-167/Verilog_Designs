module sync_up_counter_tb;

reg clk, rst;
wire [3:0] q;

sync_up_counter dut (clk, rst, q);

initial begin
	{clk, rst} = 0;
end

always #5 clk = ~clk;

initial begin
	$dumpfile("sync_up_counter.vcd");
	$dumpvars(0, sync_up_counter_tb);
	
	rst = 1;
	#10;
	
	rst = 0;
	#60;
	
	$finish;
end

endmodule
