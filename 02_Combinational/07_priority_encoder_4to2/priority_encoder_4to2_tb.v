module priority_encoder_4to2_tb;

reg [3:0] d;
wire [1:0] y;

priority_encoder_4to2 dut (d, y);

initial
	begin
		$dumpfile("priority_encoder.vcd");
		$dumpvars(0, priority_encoder_4to2_tb);
		
		d = 4'b0001;
		#10;
		d = 4'b0010;
		#10;
		d = 4'b0100;
		#10;
		d = 4'b0110;
		#10;
		d = 4'b1000;
		#10;
		d = 4'b1010;
		#10;
		$finish;
	end

endmodule
