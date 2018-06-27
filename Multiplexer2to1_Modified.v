/******************************************************************
* Modified Multiplexor with 2 selectors
******************************************************************/

module Multiplexer2to1_Modified
#(
	parameter NBits=32
)
(
	input Selector1,
	input Selector2,
	input [NBits-1:0] MUX_Data0,
	input [NBits-1:0] MUX_Data1,
	
	output reg [NBits-1:0] MUX_Output

);

	always@(Selector1, Selector2 ,MUX_Data1, MUX_Data0) begin
		if(Selector1 | Selector2)
			MUX_Output = MUX_Data1;
		else
			MUX_Output = MUX_Data0;
	end

endmodule