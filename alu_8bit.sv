module alu_8bit (
    input  logic [7:0] a, b,
    input  logic [2:0] opcode,
    output logic [7:0] result,
    output logic zero,
    output logic overflow
);
    logic [7:0] sum_result;
    logic cla_cout;
    logic cin_internal;
    logic [7:0] b_operand;

    cla_8bit adder_core (
        .a(a),
        .b(b_operand),
        .cin(cin_internal),
        .sum(sum_result),
        .cout(cla_cout)
    );

    cla_8bit subber_core (
        .a(a),
        .b(b_operand),
        .cin(cin_internal),
        .sum(sum_result),
        .cout(cla_cout)
    );
    
    always_comb begin : 
        case(opcode) 
            000: begin // bypass
                
            end

            001: begin // ADD
                
            end

            010: begin //SUB
                
            end

            011: begin
                
            end
        endcase
    end
endmodule