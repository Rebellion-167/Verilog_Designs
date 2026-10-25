module carry_lookahead_adder_tb;

reg [3:0] a;
reg [3:0] b;
reg cin;
wire [3:0] sum;
wire cout;

carry_lookahead_adder dut (a, b, cin, sum, cout);

initial
	begin
		$dumpfile("carry_lookahead_adder.vcd");
		$dumpvars(0, carry_lookahead_adder_tb);
		
		a = 4'd0; b = 4'd0; cin = 0;
		#10;
		
		a = 4'd3; b = 4'd5; cin = 0;
		#10;
		
		a = 4'd7; b = 4'd8; cin = 0;
		#10;
		
		a = 4'd10; b = 4'd5; cin = 1;
		#10;
		
		$finish;
		
	end
	
endmodule
