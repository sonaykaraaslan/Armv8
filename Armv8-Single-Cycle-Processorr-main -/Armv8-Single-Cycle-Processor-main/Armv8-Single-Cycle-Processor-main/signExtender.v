module SignExtender(BusImm, Imm26, Ctrl); 
  output reg [63:0] BusImm; 
  input [25:0] Imm26; 
  input [2:0] Ctrl; 

  always @(*) begin
    // Initialize BusImm to a default value
    BusImm = 64'b0;

    case (Ctrl)
      3'b001: // Add/SUB
        BusImm = BusImm | Imm26[21:10];
      3'b010: // CBZ
        BusImm = {{44{Imm26[23]}}, Imm26[23:5], 2'b0};
      3'b011: // B
        BusImm = {{36{Imm26[25]}}, Imm26[25:0], 2'b0};
      3'b000: // LDUR/STUR
        BusImm = {{55{Imm26[20]}}, Imm26[20:12]};
      3'b100: //MOVZ1 - shift by 0
	BusImm = {48'b0, Imm26[20:5]};
      3'b101:
	BusImm = {32'b0, Imm26[20:5], 16'b0};
      3'b110:
	BusImm = {16'b0, Imm26[20:5], 32'b0};
      3'b111:
	BusImm = {Imm26[20:5], 48'b0};
	default:
        // Handle default case here if necessary
	BusImm = BusImm | Imm26;
    endcase
    
  end
  // CBZ->10: gets its 19-bit offset[23:5] bits) sign extended
  // ADD/SUB->01: gets its passed thu
  //
endmodule
