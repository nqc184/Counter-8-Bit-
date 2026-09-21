module tb_cla_8bit;
    logic [7:0] a, b;
    logic cin;
    logic [7:0] sum;
    logic cout;

    cla_8bit dut(
        .a(a), .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    task check_result (
        input logic [7:0] ta, tb, 
        input logic tcin
    );
        logic [8:0] expected;
        #10;
        expected = ta + tb + tcin;
        assert ({cout, sum} == expected)
            else $error("MISMATCH: a=%h | b=%h | cin=%b | sum=%h | cout=%b | expected=%h",
                    ta, tb, tcin, sum, cout, expected);
    endtask

    initial begin
        a = 8'h12; b = 8'h34; cin = 0; #10; check_result(a,b,cin);
        a = 8'h18; b = 8'h36; cin = 0; #10; check_result(a,b,cin);
        a = 8'h12; b = 8'h34; cin = 1; #10; check_result(a,b,cin);
        a = 8'h12; b = 8'h36; cin = 1; #10; check_result(a,b,cin);
        a = 8'hFF; b = 8'h01; cin = 0; #10; check_result(a,b,cin);
        a = 8'hFF; b = 8'h01; cin = 1; #10; check_result(a,b,cin);
        $finish;
    end
endmodule