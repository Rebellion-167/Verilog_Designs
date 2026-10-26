module shift_unit (
    input [3:0] a,
    input op,
    output reg [3:0] y
);

always @(*) begin

    case (op)

        1'b0: y = a << 1;
        1'b1: y = a >> 1;

        default: y = 4'b0000;

    endcase

end

endmodule
