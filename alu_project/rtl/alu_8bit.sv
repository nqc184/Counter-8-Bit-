module alu_8bit (
    input logic [7:0] a, b,
    input logic [2:0] opcode,
    output logic [7:0] result,
    output logic zero,
    output logic overflow
);
    logic [7:0] sum_result;
    logic cla_cout;
    logic cin_internal;
    logic [7:0] b_operand;
    assign b_operand = (opcode == 3'b001) ? (~b) : b;
    assign cin_internal = (opcode == 3'b001) ? 1 : 0;

    cla_8bit adder_core (
        .a(a),
        .b(b_operand),
        .cin(cin_internal),
        .sum(sum_result),
        .cout(cla_cout)
    );
    
    always_comb begin 
        case(opcode) 
            3'b000: begin // ADD
                result = sum_result;
            end

            3'b001: begin // SUB
                result = sum_result;
            end

            3'b010: begin // AND
                result = a & b;
            end

            3'b011: begin // OR
                result = a | b;
            end

            3'b100: begin //XOR
                result = a ^ b;
            end

            3'b101: begin // NOT
                result = ~a;
            end

            default: begin // Bypass
                result = a;
            end
        endcase
    end

    assign zero = (result == 8'b0);
    assign overflow = (opcode == 3'b000 || opcode == 3'b001)
                        ? ((a[7] == b_operand[7]) && (result[7] != a[7])) : 1'b0;
endmodule