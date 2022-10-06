`timescale 1ns / 1ps



module bit_Full_Adder
(

    input [3:0] A, B,      // input B0, B1, B2, B3, A0, A1, A2, A3,
    input C_in,
    output [3:0] i_sum,      // [3:0] -> 3210   [0:3] -> 3210 => 하위 비트 (LSB)가 상위비트 (MSB)보다 늦게 나오도록           
    output carry

);

    wire carry_1, carry_2, carry_3;

    Full_Adder FA0
    (
        .A(A[0]),
        .B(B[0]),
        .i_sum(i_sum[0]),
        .C_in(C_in),
        .carry(carry_1)
    );

    Full_Adder FA1
    (
        .A(A[1]),
        .B(B[1]),
        .i_sum(i_sum[1]),
        .C_in(carry_1),
        .carry(carry_2)
    );

    Full_Adder FA2
    (
        .A(A[2]),
        .B(B[2]),
        .i_sum(i_sum[2]),
        .C_in(carry_2),
        .carry(carry_3)
    );

    Full_Adder FA3
    (
        .A(A[3]),
        .B(B[3]),
        .i_sum(i_sum[3]),
        .C_in(carry_3),
        .carry(carry)
    );

endmodule
