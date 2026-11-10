module mod10_counter_tb;

reg clk, rst;
wire [3:0] q;

mod10_counter dut (clk, rst, q);

initial begin
	{clk, rst} = 0;
end

always #5 clk = ~clk;

initial begin
	$dumpfile("mod10_counter.vcd");
	$dumpvars(0, mod10_counter_tb);
	
	rst = 1;
	#10 rst = 0;
	#110 $finish;
end

endmodule
