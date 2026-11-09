module usr_tb;

reg clk, rst;
reg [1:0] mode;
reg s_in_l, s_in_r;
reg [3:0] p_in;
wire [3:0] q;

usr dut (clk, rst, mode, s_in_l, s_in_r, p_in, q);

initial begin
	{clk, rst, mode, s_in_l, s_in_r, p_in} = 0;
end

always #5 clk = ~clk;

initial begin
	$dumpfile("usr.vcd");
	$dumpvars(0, usr_tb);
	
	rst = 1;
	#10 rst = 0;
	
	mode = 2'b11;
	p_in = 4'b1101;
	#10;
	
	mode = 2'b00;
	#10;
	
	mode = 2'b01;
	s_in_r = 1;
	#10;
	
	mode = 2'b10;
	s_in_l = 0;
	#10;
	
	$finish;
end

endmodule
