module comparator4bit_tb;

reg [3:0] a;
reg [3:0] b;
wire a_gt_b, a_lt_b, a_eq_b;

comparator4bit dut(a, b, a_gt_b, a_lt_b, a_eq_b);

initial begin

	$dumpfile("comparator4bit.vcd");
	$dumpvars(0, comparator4bit_tb);
	
	a = 4'b1010; b = 4'b0110;
	#10;

	a = 4'b0011; b = 4'b1001;
	#10;

	a = 4'b1101; b = 4'b1101;
	#10;

	a = 4'b1111; b = 4'b0000;
	#10;

	a = 4'b0000; b = 4'b1111;
	#10;

	$finish;

end

endmodule
