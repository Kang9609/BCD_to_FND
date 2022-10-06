`timescale 1ns / 1ps


module FND_Select_Decoder
    (
        input [1:0] i_digitSelect,
        input i_en,
        output [3:0] o_digit
    );

    reg [3:0] r_digit;

    assign o_digit = r_digit;    // reg : memory 기능

    always @(i_digitSelect or i_en) begin   // ?��?�� ()?��?�� ?��?��?�� 보고?��?��,  (a,b) = (a or b)
        if (i_en) begin
            r_digit = 4'b1111;
        end
        else begin
            case (i_digitSelect)
                2'h0 : r_digit = 4'b1110;        // h0 : 16bit
                2'h1 : r_digit = 4'b1101;
                2'h2 : r_digit = 4'b1011;
                2'h3 : r_digit = 4'b0111;
            endcase
        end

    end

endmodule
