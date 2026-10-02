module mux2to1_tb;

reg [1:0] in;
reg sel;
wire y;

mux2to1 uut (
	.in(in),
	.sel(sel),
	.y(y)
);

initial begin

	$dumpfile("mux2to1.vcd");
	$dumpvars(0, mux2to1_tb);
	
	in = 2'b00; 
	sel = 0;
	#10;

	in = 2'b01;
	sel = 0;
	#10;

	in = 2'b10;
	sel = 1;
	#10;

	in = 2'b11;
	sel = 1;
	#10;
	
	$finish;
	
end

endmodule
