module rom(
    input wire ce, // enable
    input wire[5:0] addr, // address, width 6 bits, 0x00 ~ 0x3f
    
    output reg[31:0] inst // instruction
);

reg[31:0] rom[63:0]; // width 32 bits, depth 64, 0 ~ 63 -> 0x00 ~ 0x3f

always @(*) begin // triggered by any input
    if (ce == 1'b0) begin
        inst <= 32'h0; // invalid data
    end else begin
        inst <= rom[addr];
    end
end

endmodule