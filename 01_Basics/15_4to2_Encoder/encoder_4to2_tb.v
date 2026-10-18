module encoder_4to2_tb;

reg [3:0] in;
wire [1:0] y;

encoder_4to2 uut (
	.in(in),
	.y(y)
);

initial begin

	$dumpfile("encoder_4to2.vcd");
	$dumpvars(0, encoder_4to2_tb);
	
	in = 4'b0001; #10;
	in = 4'b0010; #10;
	in = 4'b0100; #10;
	in = 4'b1000; #10;

	$finish;
end

endmodule
