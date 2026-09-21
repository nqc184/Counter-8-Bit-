`include "adder_packet.sv"
module tb_adder_packet;
    adder_packet pkt;

    initial begin
        pkt = new();
        repeat(5) begin
            pkt.randomize();
            pkt.print();
        end

        $finish;
    end
endmodule