module piso_tb;

reg clk, rst, load;
reg [3:0] p_in;
wire s_out;

piso dut (clk, rst, load, p_in, s_out);

initial begin
	{clk, rst, load, p_in} = 0;
end

always #5 clk = ~clk;

initial begin
	$dumpfile("piso.vcd");
	$dumpvars(0, piso_tb);
	
	rst = 1;
	#10 rst = 0;
	load = 1;
	p_in = 4'b1101;
	#10 load = 0;
	#50 $finish;
end

endmodule
