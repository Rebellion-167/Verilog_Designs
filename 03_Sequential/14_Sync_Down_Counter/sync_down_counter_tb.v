module sync_down_counter_tb;

reg clk, rst;
wire [3:0] q;

sync_down_counter dut (clk, rst, q);

initial begin
	{clk, rst} = 0;
end

always #5 clk = ~clk;

initial begin
	$dumpfile("sync_down_counter.vcd");
	$dumpvars(0, sync_down_counter_tb);
	
	rst = 1;
	#10;
	
	rst = 0;
	#160;
	
	$finish;
end

endmodule
