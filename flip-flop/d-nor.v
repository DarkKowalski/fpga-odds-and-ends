module d_nor(
    input d, enable,
    output q, not_q
);

wire temp0, temp1;
and and0(temp0, ~d, enable);
and and1(temp1, d, enable);
nor nor0(q, temp0, not_q);
nor nor1(not_q, temp1, q);

endmodule

