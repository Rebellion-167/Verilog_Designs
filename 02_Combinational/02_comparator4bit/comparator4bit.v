module comparator4bit (
	input [3:0] a,
	input [3:0] b,
	output a_gt_b,
	output a_lt_b,
	output a_eq_b
);

	wire [3:0] a_bar, b_bar;
	
	not n1(a_bar[0], a[0]);
	not n2(a_bar[1], a[1]);
	not n3(a_bar[2], a[2]);
	not n4(a_bar[3], a[3]);
	
	not n5(b_bar[0], a[0]);
	not n6(b_bar[1], b[1]);
	not n7(b_bar[2], b[2]);
	not n8(b_bar[3], b[3]);

	wire e0, e1, e2, e3;

	xnor x3(e3, a[3], b[3]);
	xnor x2(e2, a[2], b[2]);
	xnor x1(e1, a[1], b[1]);
	xnor x0(e0, a[0], b[0]);

	and (a_eq_b, e3, e2, e1, e0);

	wire g0, g1, g2, g3;

	and a3(g3, a[3], b_bar[3]);
	and a2(g2, e3, a[2], b_bar[2]);
	and a1(g1, e3, e2, a[1], b_bar[1]);
	and a0(g0, e3, e2, e1, a[0], b_bar[0]);

	or (a_gt_b, g3, g2, g1, g0);

	wire l0, l1, l2, l3;

	and a7(l3, a_bar[3], b[3]);
	and a6(l2, e3, a_bar[2], b[2]);
	and a5(l1, e3, e2, a_bar[1], b[1]);
	and a4(l0, e3, e2, e1, a_bar[0], b[0]);

	or (a_lt_b, l3, l2, l1, l0);

endmodule
