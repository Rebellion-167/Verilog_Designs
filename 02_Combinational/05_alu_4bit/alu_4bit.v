module alu_4bit(
    input [3:0] a,
    input [3:0] b,
    input [2:0] sel,
    output reg [4:0] y
);

    wire [4:0] arithmetic_res;
    wire [3:0] logic_res;
    wire [3:0] shift_res;

    arithmetic_unit AU (
        .a(a),
        .b(b),
        .op(sel[0]),
        .y(arithmetic_res)
    );

    logic_unit LU (
        .a(a),
        .b(b),
        .op(sel[1:0]),
        .y(logic_res)
    );

    shift_unit SU (
        .a(a),
        .op(sel[0]),
        .y(shift_res)
    );

    always @(*) begin
        case (sel)

            3'b000: y = arithmetic_res;
            3'b001: y = arithmetic_res;

            3'b010: y = {1'b0, logic_res};
            3'b011: y = {1'b0, logic_res};
            3'b100: y = {1'b0, logic_res};
            3'b101: y = {1'b0, logic_res};

            3'b110: y = {1'b0, shift_res};
            3'b111: y = {1'b0, shift_res};

            default: y = 5'b00000;

        endcase
    end

endmodule
