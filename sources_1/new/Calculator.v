`timescale 1ns / 1ps



module Calculator
(
    input [3:0] A, B,
    input [1:0] i_selOperatior,
    input [1:0] i_digitSelect,
    input i_en,
    output [3:0] o_digit,
    output [7:0] o_fndfont

);

    wire [3:0] w_result;

    simple_carculator U0
    (
        .A(A),
        .B(B),
        .i_selOperatior(i_selOperatior),
        .o_result(w_result)
    );

    BCD_to_FND U1
    (

        .i_digitSelect(i_digitSelect),
        .i_sum(w_result),
        .i_en(i_en),
        .o_digit(o_digit),
        .o_fndfont(o_fndfont)
    );

endmodule
