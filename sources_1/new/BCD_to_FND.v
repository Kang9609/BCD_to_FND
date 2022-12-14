`timescale 1ns / 1ps

module BCD_to_FND
(

    input [1:0] i_digitSelect,
    input i_en,
    input [3:0]i_sum,
    output [3:0] o_digit,
    output [7:0] o_fndfont

);

    BCD_to_FND_Decoder fndFontDecoder
    (

        .i_en(i_en),
        .i_sum(i_sum),
        .o_font(o_fndfont)
    );

    FND_Select_Decoder fndDecoder
(
    .i_digitSelect(i_digitSelect),
    .i_en(i_en),
    .o_digit(o_digit)
);

endmodule