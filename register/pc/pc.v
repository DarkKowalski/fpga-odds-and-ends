module pc(
    input wire clk,
    input wire rst,

    output reg[5:0] pc, // 6 bits pc
    output reg ce // enable
);

always @(posedge clk) begin // positive edge, aka rising edge
    if (rst == 1'b1) begin
        ce <= 1'b0;
    end else begin
        ce <= 1'b1;
    end
end

always @(posedge clk) begin
    if (ce == 1'b0) begin
        pc <= 6'h00;
    end else begin
        pc <= pc + 1'b1;
    end
end

endmodule