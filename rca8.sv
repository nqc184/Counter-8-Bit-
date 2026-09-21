module rca_8bit (
    input  logic [7:0] a, b,
    input  logic       cin,
    output logic [7:0] sum,
    output logic       cout
);
    logic [8:0] carry;  
    assign carry[0] = cin;

    genvar i;
    generate
        for (i = 0; i < 8; i++) begin : fa_inst
            full_adder fa_inst (
                .a(a[i]), .b(b[i]),
                .c_in (carry[i]),
                .s(sum[i]),
                .c(carry[i+1])
            );
        end
    endgenerate
    assign cout = carry[8];
endmodule