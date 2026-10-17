module decoder_2to4_tb;

reg a;
reg b;
wire [3:0] y;

decoder_2to4 uut(
	.a(a),
	.b(b),
	.y(y)
);

initial begin
	
	$dumpfile("decoder_2to4.vcd");
	$dumpvars(0, decoder_2to4_tb);
	
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
