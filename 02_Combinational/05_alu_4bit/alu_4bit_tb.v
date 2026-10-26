module alu_4bit_tb;

reg [3:0] a;
reg [3:0] b;
reg [2:0] sel;
wire [4:0] y;
integer i;

alu_4bit dut(a, b, sel, y);

initial
	begin
		$dumpfile("alu_4bit.vcd");
		$dumpvars(0, alu_4bit_tb);
		
		a = 4'b0101;
		b = 4'b0011;
		
		for(i = 0; i < 8; i = i+1)
			begin
				sel = i;
				#10;
			end
		
		$finish;
	end
	
endmodule
