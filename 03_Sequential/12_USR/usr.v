module usr (
	input clk, rst,
	input [1:0] mode,
	input s_in_left, s_in_right,
	input [3:0] p_in,
	output reg [3:0] q
);

	always@(posedge clk) begin
		if(rst) begin
			q <= 4'b0000;
		end
		else begin
			case (mode)
				2'b00: q <= q; 							// Hold
				2'b01: q <= {s_in_right, q[3:1]}; 		// Shift Right
				2'b10: q <= {q[2:0], s_in_left}; 		// Shift left
				2'b11: q <= p_in; 						// Parallel Load
				default: q <= q;
			endcase
		end 
	end
	
endmodule
