`include "basic_modules/multiplexer_8_to_1/multiplexer_8_to_1.v"
`timescale 1ns/1ns
module mx_reg(d,control,out);
    input [7:0] d;
    input [2:0][2:0] control;
    output [2:0] out;
    multiplexer_8_to_1 dd0(.d(d), .control(control[0]), .out(out[0]));
    multiplexer_8_to_1 dd1(.d(d), .control(control[1]), .out(out[1]));
    multiplexer_8_to_1 dd2(.d(d), .control(control[2]), .out(out[2]));
endmodule