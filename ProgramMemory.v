/******************************************************************
* Description
*	This is  a ROM memory that represents the program memory. 
* 	Internally, the memory is read without a signal clock. The initial 
*	values (program) of this memory are written from a file named text.dat.
* Version:
*	1.0
* Author:
*	Dr. José Luis Pizano Escalante
* email:
*	luispizano@iteso.mx
* Date:
*	01/03/2014
******************************************************************/
module ProgramMemory
#
(
	parameter MEMORY_DEPTH=32,
	parameter DATA_WIDTH=32
)
(
	input [(DATA_WIDTH-1):0] Address,
	output reg [(DATA_WIDTH-1):0] Instruction
);
wire [(DATA_WIDTH-1):0] RealAddress;
wire [(DATA_WIDTH-1):0] AddressFix;

assign AddressFix = Address-4_194_304;

//localparam addressFix = 4_194_304;

assign RealAddress = {2'b0,AddressFix[(DATA_WIDTH-1):2]};

	// Declare the ROM variable
	reg [DATA_WIDTH-1:0] rom[MEMORY_DEPTH-1:0];

	initial
	begin
		$readmemh("C:/MIPS_Processor/MIPS_Single_Cycle/Sources/text.dat", rom);	//Puede borrarse si está en la misma carpeta
	end

	always @ (RealAddress)
	begin
		Instruction = rom[RealAddress];
	end

endmodule
