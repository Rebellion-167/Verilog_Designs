module arithmetic_unit(
	input [3:0] a,
	input [3:0] b,
	input op,
	output reg [4:0] y
);

	always@(*)
		begin
			case(op)
				1'b0: y = {1'b0, a} + {1'b0, b};
				1'b1: y = {1'b0, a} - {1'b0, b};
				
				default: y = 5'b00000;
			endcase
		end
endmodule
