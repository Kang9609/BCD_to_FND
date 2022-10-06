`timescale 1ns / 1ps



module BCD_to_FND_Decoder
(
    input [3:0] i_sum,
    input i_en,

    output [7:0] o_font

);


    // reg [3:0] r_digit;

    // assign o_digit = r_digit;    // reg : memory 기능

    // always @(i_digitSelect or i_en) begin   // ?��?�� ()?��?�� ?��?��?�� 보고?��?��,  (a,b) = (a or b)
    //     if (i_en) begin
    //         r_digit = 4'b1111;
    //     end
    //     else begin
    //         case (i_digitSelect)
    //             2'h0 : r_digit = 4'b1110;        // h0 : 16bit
    //             2'h1 : r_digit = 4'b1101;
    //             2'h2 : r_digit = 4'b1011;
    //             2'h3 : r_digit = 4'b0111;
    //         endcase
    //     end

    // end


    reg [7:0] r_font;
    assign o_font = r_font;

    always @(i_sum or i_en) begin
        if (i_en) begin
            r_font = 8'hff;
        end

        else begin
            case (i_sum)
                4'h0 : r_font = 8'hc0;
                4'h1 : r_font = 8'hf9;
                4'h2 : r_font = 8'ha4;
                4'h3 : r_font = 8'hb0;
                4'h4 : r_font = 8'h99;
                4'h5 : r_font = 8'h92;
                4'h6 : r_font = 8'h82;
                4'h7 : r_font = 8'hf8;
                4'h8 : r_font = 8'h80;
                4'h9 : r_font = 8'h90;
                default r_font = 8'hff;   // Latch 방�?
            endcase
        end

    end


endmodule
