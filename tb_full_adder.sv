`timescale 1ns/1ps
module tb_full_adder;
    logic a, b, c_in;
    logic s, c;

    full_adder dut (
        .a(a), .b(b), 
        .c_in(c_in), 
        .s(s), .c(c)
    );

    initial begin
        $display("Time = %d | a = %b | b = %b | c_in = %b |s = %b | c = %b", $time, a, b, c_in, s, c);
        a = 0; b = 0; c_in = 0; #10;
        a = 1; b = 0; c_in = 0; #10;
        a = 0; b = 1; c_in = 0; #10;
        a = 0; b = 0; c_in = 1; #10;
        a = 1; b = 1; c_in = 0; #10;
        a = 1; b = 1; c_in = 1; #10;
        $finish;
    end
endmodule