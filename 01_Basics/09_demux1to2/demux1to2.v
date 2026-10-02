module demux1to2 (
	input d,
	input sel,
	output [1:0] y
);
	
	assign y[0] = d & ~sel;
	assign y[1] = d & sel;
endmodule
