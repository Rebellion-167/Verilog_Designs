module binary_to_gray_tb;

reg [3:0] binary;
wire [3:0] gray;
integer i;

binary_to_gray dut (binary, gray);

initial
	begin
		$dumpfile("binary_to_gray.vcd");
		$dumpvars(0, binary_to_gray_tb);
		
		for(i = 0; i <= 15; i = i+1)
			begin
				binary = i;
				#5;
			end
		
		$finish;

	end

endmodule
