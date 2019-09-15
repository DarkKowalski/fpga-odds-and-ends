module rs_nor(
    input r,
    input s,
    output q,
    output not_q
    );
nor nor0(q, r, not_q);
nor nor1(not_q, s, q);
endmodule
