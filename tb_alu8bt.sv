`include "alu_packet.sv"
module tb_alu8bit;
    logic [7:0] a, b, result;
    logic [2:0] opcode;
    logic zero, overflow;

    alu_8bit dut (
        .a(a),
        .b(b),
        .opcode(opcode),
        .result(result),
        .zero(zero),
        .overflow(overflow)
    );

    alu_packet pkt;
    
    task check_result();
        a = pkt.a; b = pkt.b; opcode = pkt.opcode;
        #1;
        assert (result == pkt.expected_result) 
            else $error("RESULT MISMATCH: a=%h | b=%h opcode=%b | got result=%h | expected=%h",
                    a, b, opcode, result, pkt.expected_result);
        assert (zero == pkt.expected_zero) 
            else $error("ZERO MISMATCH: a=%h | b=%h opcode=%b | got result=%h | expected=%h",
                    a, b, opcode, result, pkt.expected_zero);
        assert (overflow == pkt.expected_overflow) 
            else $error("OVERFLOW MISMATCH: a=%h | b=%h opcode=%b | got result=%h | expected=%h",
                    a, b, opcode, result, pkt.expected_overflow);
    endtask

    initial begin
        pkt = new();
        repeat(20) begin
            pkt.randomize();
            pkt.predict();
            pkt.print();
            check_result();
        end
        $finish;
    end
endmodule