`timescale 1ns / 1ps

module BCD_to_FND
(

    input [1:0] i_digitSelect,
    input [3:0] i_value,
    input i_en,
    output [3:0] o_digit,
    output [7:0] o_fndfont

);

    FND_Select_Decoder fndDigitDecoder
    (
        .i_digitSelect(i_digitSelect),
        .i_en(i_en),
        .o_digit(o_digit)
    );

    BCD_to_FND_Decoder fndFontDecoder
    (
        .i_value(i_value),
        .i_en(i_en),
        .o_font(o_fndfont)
    );
    
endmodule
