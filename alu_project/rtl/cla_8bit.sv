module cla_8bit (
    input logic [7:0] a, b,
    input logic cin,
    output logic [7:0] sum,
    output logic cout
);
    logic c4;  
    cla_4bit low_nibble (
        .a(a[3:0]),
        .b(b[3:0]),
        .cin(cin),
        .sum(sum[3:0]),
        .cout(c4)
    );

    cla_4bit high_nibble (
        .a(a[7:4]),
        .b(b[7:4]),
        .cin(c4),
        .sum(sum[7:4]),
        .cout(cout)
    );
endmodule