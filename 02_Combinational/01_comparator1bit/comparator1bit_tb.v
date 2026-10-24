module comparator1bit_tb;

reg a;
reg b;
wire a_gt_b;
wire a_lt_b;
wire a_eq_b;

comparator1bit dut(a, b, a_gt_b, a_lt_b, a_eq_b);

initial begin
	
	$dumpfile("comparator1bit.vcd");
	$dumpvars(0, comparator1bit_tb);

	a = 0; b = 0;
	#10;

	a = 0; b = 1;
	#10;

	a = 1; b = 0;
	#10;

	a = 1; b = 1;
	#10;

	$finish;

end

endmodule
