module demux1to2_tb;

reg d;
reg sel;
wire [1:0] y;

demux1to2 uut (
	.d(d),
	.sel(sel),
	.y(y)
);

initial begin
	
	$dumpfile("demux1to2.vcd");
	$dumpvars(0, demux1to2_tb);
	
	d = 0;
	sel = 0;
	#10;

	d = 0;
	sel = 1;
	#10;

	d = 1;
	sel = 0;
	#10;

	d = 1;
	sel = 1;
	#10;

	$finish;
	
end

endmodule
