module rs_nand(
    input not_r,
    input not_s,
    output q,
    output not_q
    );
nand nand0(q, not_s, not_q);
nand nand1(not_q, not_r, q);

endmodule
