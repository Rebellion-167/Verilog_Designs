module t_ff (
	input clk, rst, t,
	output reg q, qbar
);

	always@(posedge clk) begin
		if(rst) begin
			q <= 1'b0;
			qbar <= 1'b1;
		end
		else if(t) begin
			q <= ~q;
			qbar <= ~qbar;
		end
	end

endmodule
