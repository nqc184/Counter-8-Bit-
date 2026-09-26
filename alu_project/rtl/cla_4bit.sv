module cla_4bit (
    input logic [3:0] a, b, 
    input logic cin,
    output logic [3:0] sum,
    output logic cout
);
    logic [4:0] c;
    assign c[0] = cin;
    assign c[1] = (a[0] & b[0]) | ((a[0] ^ b[0]) & c[0]);

    assign c[2] = (a[1] & b[1]) | ((a[1] ^ b[1]) & (a[0] & b[0])) | 
            ((a[1] ^ b[1]) & (a[0] ^ b[0]) & c[0]);

    assign c[3] = (a[2] & b[2]) | ((a[2] ^ b[2]) & (a[1] & b[1])) | 
            ((a[2] ^ b[2]) & (a[1] ^ b[1]) & (a[0] & b[0])) | 
            ((a[2] ^ b[2]) & (a[1] ^ b[1]) & (a[0] ^ b[0]) & c[0]);

    assign c[4] = (a[3] & b[3]) | ((a[3] ^ b[3]) & (a[2] & b[2])) |
            ((a[3] ^ b[3]) & (a[2] ^ b[2]) & (a[1] & b[1])) |
            ((a[3] ^ b[3]) & (a[2] ^ b[2]) & (a[1] ^ b[1]) & (a[0] & b[0])) |
            ((a[3] ^ b[3]) & (a[2] ^ b[2]) & (a[1] ^ b[1]) & (a[0] ^ b[0]) & c[0]);
    assign cout = c[4]; 

    assign sum[0] = a[0] ^ b[0] ^ c[0];
    assign sum[1] = a[1] ^ b[1] ^ c[1];
    assign sum[2] = a[2] ^ b[2] ^ c[2];
    assign sum[3] = a[3] ^ b[3] ^ c[3];
endmodule