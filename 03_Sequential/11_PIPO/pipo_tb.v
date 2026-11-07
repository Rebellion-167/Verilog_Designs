module pipo_tb;

reg clk, rst, load;
reg [3:0] p_in;
wire [3:0] p_out;

pipo dut (clk, rst, load, p_in, p_out);

initial begin
	{clk, rst, load, p_in} = 0;
end

always #5 clk = ~clk;

initial begin
	$dumpfile("pipo.vcd");
	$dumpvars(0, pipo_tb);
	
	rst = 1;
	#10 rst = 0;
	load = 1;
	p_in = 4'b1101;
	#10 load = 0;
	p_in = 4'b0000;
	#10 $finish;
end

endmodule
