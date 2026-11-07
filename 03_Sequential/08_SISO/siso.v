module siso (
	input clk, rst, s_in,
	output s_out
);

	reg [3:0] temp;
	
	always@(posedge clk) begin
		if(rst)
			temp <= 4'b0000;
		else
			temp <= {s_in, temp[3:1]};
	end
		
	assign s_out = temp[0];
	
endmodule
