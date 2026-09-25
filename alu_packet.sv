class alu_packet;
    rand logic [7:0] a, b;
    rand logic [2:0] opcode;

    logic [7:0] expected_result;
    logic expected_zero;
    logic expected_overflow;

    function new();
        a = 8'b0; b = 8'b0; opcode = 3'b0;
    endfunction

    function void print();
        $display("packet: a=%h b=%h opcode=%b", a, b, opcode);    
    endfunction

    function void predict();
        logic [7:0] b_overflow;
        b_overflow = (opcode == 3'b001) ? (~b) : b;
        case (opcode)
            3'b000: expected_result = a + b;
            3'b001: expected_result = a - b;
            3'b010: expected_result = a & b;
            3'b011: expected_result = a | b;
            3'b100: expected_result = a ^ b;
            3'b101: expected_result = ~a;
            default: expected_result = a;   
        endcase
        expected_zero = (expected_result == 8'b0);  
        expected_overflow = (opcode == 3'b000 || opcode == 3'b001)
                     ? ((a[7] == b_overflow[7]) && (expected_result[7] != a[7]))
                     : 1'b0;
    endfunction
endclass