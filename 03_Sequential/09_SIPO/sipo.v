module sipo (
	input clk, rst, s_in,
	output [3:0] p_out
);

	reg [3:0] temp;
	
	always@(posedge clk) begin
		if(rst)
			temp <= 4'b0000;
		else
			temp <= {s_in, temp[3:1]};
	end
	
	assign p_out = temp;
	
endmodule
