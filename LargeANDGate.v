/******************************************************************
* Description
* Modified AND Gate for larger ports
******************************************************************/
module LargeANDGate
(
	input [5:0] A,
	input [5:0] B,
	output reg C
);

always@(*)
	C = (A - B == 0) ? 1'b1:1'b0;

endmodule