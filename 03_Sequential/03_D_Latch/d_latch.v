module d_latch(
	input enb,
	input rst,
	input d,
	output reg q,
	output reg qbar
);

	always@(enb) begin
		if(enb) begin
			if(rst) begin
				q <= 1'b0;
				qbar <= 1'b1;
			end
			else begin
				q <= d;
				qbar <= ~d;
			end
		end
	end

endmodule
