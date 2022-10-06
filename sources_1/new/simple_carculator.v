`timescale 1ns / 1ps



module simple_carculator
(
    input [3:0] A, B,
    input [1:0] i_selOperatior,
    output [3:0] o_result
);

    reg [3:0] r_result;
    assign o_result = r_result;

    always @(*) begin   // (*) : 모든 입력에 대한 감시
        case (i_selOperatior)
            2'b00 : r_result = A + B;
            2'b01 : r_result = A - B;
            2'b10 : r_result = A * B;
            2'b11 : begin
                if (B == 0) r_result = 0;
                else r_result = A / B;
            end
        endcase


    end 

endmodule
