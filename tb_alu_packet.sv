`include "alu_packet.sv"
module tb_alu_packet;
    alu_packet apkt;
    
    initial begin
        apkt = new();
        repeat(10) begin
            apkt.randomize();
            apkt.print();
            apkt.predict();

        end
        $finish;
    end
endmodule