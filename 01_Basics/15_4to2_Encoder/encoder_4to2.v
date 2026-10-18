module encoder_4to2 (
	input [3:0] in,
	output [1:0] y
);
	
	assign y[1] = in[3] | in[2];
	assign y[0] = in[1] | in[3];

endmodule
