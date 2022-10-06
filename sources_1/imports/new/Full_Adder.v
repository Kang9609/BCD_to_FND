`timescale 1ns / 1ps


module Full_Adder
(

    input A,
    input B,
    input C_in,
    output i_sum, carry

);

    wire w_sum_0, w_carry_0, w_carry_1;

    Half_Adder HA0
    (
        .A(A),          
        .B(B),          
        .i_sum(w_sum_0),      
        .carry(w_carry_0)
    );

    Half_Adder HA1
    (
        .A(w_sum_0),
        .B(C_in),
        .i_sum(i_sum),
        .carry(w_carry_1)
    );

    assign carry = w_carry_0 | w_carry_1;

    
endmodule
