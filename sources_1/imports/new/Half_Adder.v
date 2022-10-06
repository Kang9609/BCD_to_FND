`timescale 1ns / 1ps


module Half_Adder
(

    input A,
    input B,
    output i_sum, carry

);

    assign i_sum = A ^ B;
    assign carry = A & B;


endmodule
