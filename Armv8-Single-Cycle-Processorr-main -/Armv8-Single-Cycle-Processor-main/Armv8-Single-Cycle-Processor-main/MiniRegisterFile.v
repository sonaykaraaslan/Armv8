`timescale 1ns / 1ps
module RegisterFile(BusA, BusB, BusW, RA, RB, RW, RegWr, Clk);
    output [63:0] BusA;
    output [63:0] BusB;
    input [63:0] BusW;
    input [4:0] RA;
    input [4:0] RB;
    input [4:0] RW;
    input RegWr;
    input Clk;
    reg [63:0] registers [31:0];

    assign #2 BusA = RA == 5'b11111 ? 0 : registers[RA];
    assign #2 BusB = RB == 5'b11111 ? 0:  registers[RB];
     
    always @ (negedge Clk) begin
	if(RegWr)begin
	    if(RW == 5'b11111) begin
	        registers[RW] <= #3 0;
	    end
	    else
            	registers[RW] <= #3 BusW;
    	end
	
    end
endmodule
