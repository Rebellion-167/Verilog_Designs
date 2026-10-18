module mux4to1 (
	input [3:0] in,
	input [1:0] sel,
	output y
);
	
	wire s0_bar, s1_bar;
	wire w0, w1, w2, w3;

	not n1(s0_bar, sel[0]);
	not n2(s1_bar, sel[1]);

	and a1(w0, s1_bar, s0_bar, in[0]);
	and a2(w1, s1_bar, sel[0], in[1]);
	and a3(w2, sel[1], s0_bar, in[2]);
	and a4(w3, sel[1], sel[0], in[3]);

	or o1(y, w0, w1, w2, w3);

endmodule
