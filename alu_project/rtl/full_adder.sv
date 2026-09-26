module full_adder (
    input logic  a, b, c_in,
    output logic s, c
);
    assign s = a ^ b ^ c_in;
    assign c = (a & b) | (a & c_in) | (b & c_in);
endmodule