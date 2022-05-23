`include "basic_modules/d_trigger/d_trigger.v"
`timescale 1ns/1ns
module mem_reg(control,clk,out);
    input  clk;
    input [2:0] control;
    output [2:0] out;
    d_trigger dd0(.d(control[0]), .clk(clk), .q(out[0]), .qbar());
    d_trigger dd1(.d(control[1]), .clk(clk), .q(out[1]), .qbar());
    d_trigger dd2(.d(control[2]), .clk(clk), .q(out[2]), .qbar());
endmodule