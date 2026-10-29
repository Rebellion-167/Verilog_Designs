module jk_latch(
	input enb,
	input rst,
	input j,
	input k,
	output reg q,
	output reg qbar
);

	always@(enb) begin
		if(enb) begin
			if(rst) begin
				q <= 1'b0;
				qbar <= 1'b1;
			end
			else if(j == 0 && k == 0) begin
				q <= q;
				qbar <= qbar;
			end
			else if(j == 0 && k == 1) begin
				q <= 1'b0;
				qbar <= 1'b1;
			end
			else if(j == 1 && k == 0) begin
				q <= 1'b1;
				qbar <= 1'b0;
			end
			else if(j == 1 && k == 1) begin
				q <= ~q;
				qbar <= ~qbar;
			end
		end
	end
endmodule
