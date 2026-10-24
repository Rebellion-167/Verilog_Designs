module comparator1bit (
	input a,
	input b,
	output a_gt_b,
	output a_lt_b,
	output a_eq_b
);

	assign a_gt_b = a & ~b;
	assign a_lt_b = ~a & b;
	assign a_eq_b = a ~^ b;

endmodule
