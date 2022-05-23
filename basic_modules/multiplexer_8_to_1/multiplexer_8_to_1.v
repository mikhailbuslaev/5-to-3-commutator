`timescale 1ns/1ns
module multiplexer_8_to_1(d,control,out);
    input [2:0]control;
    input [7:0]d;
    output reg out;
    always @ (d[0] or d[1] or d[2] or d[3] or d[4] or d[5] or d[6] or d[7] or control[0] or control[1]) begin
       case(control) 
       3'b000 : out <= d[0];
       3'b100 : out <= d[1];
       3'b010 : out <= d[2];
       3'b110 : out <= d[3];
       3'b001 : out <= d[4];
       3'b101 : out <= d[5];
       3'b011 : out <= d[6];
       3'b111 : out <= d[7];
       default : out <= 0;
       endcase
    end
endmodule