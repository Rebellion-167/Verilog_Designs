module piso (
	input clk, rst, load,
	input [3:0] p_in,
	output s_out
);

	reg [3:0] temp;
	
	always@(posedge clk) begin
		if (rst)
			temp <= 4'b0000;
		else if(load)
			temp <= p_in;
		else
			temp <= {1'b0, temp[3:1]};
	end
	
	assign s_out = temp[0];
	
endmodule
