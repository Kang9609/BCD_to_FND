`timescale 1ns / 1ps

module BCD_to_FND
(

    input [1:0] i_digitSelect,
    input i_en,
    input [3:0] A, B,
    output [3:0] o_digit,
    output [7:0] o_fndfont

);

    wire [3:0] w_sum;

    BCD_to_FND_Decoder fndFontDecoder
    (
        .i_sum(w_sum),
        .i_en(i_en),
        .i_digitSelect(i_digitSelect),
        .o_font(o_fndfont),
        .o_digit(o_digit)
    );

    bit_Full_Adder fndAdder
    (

        .A(A), 
        .B(B),      // input B0, B1, B2, B3, A0, A1, A2, A3,
        .C_in(C_in),
        .i_sum(w_sum),      // [3:0] -> 3210   [0:3] -> 3210 => ?��?�� 비트 (LSB)�? ?��?��비트 (MSB)보다 ?���? ?��?��?���?           
        .carry(carry)

    );

endmodule
