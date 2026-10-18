module mux4to1_tb;

reg [3:0] in;
reg [1:0] sel;
wire y;

mux4to1 uut (
	.in(in),
	.sel(sel),
	.y(y)
);

initial begin
	
	$dumpfile("mux4to1.vcd");
	$dumpvars(0, mux4to1_tb);

	in = 4'b1010;

	sel = 2'b00; #10;
	sel = 2'b01; #10;
	sel = 2'b10; #10;
	sel = 2'b11; #10;

	$finish;

end

endmodule
