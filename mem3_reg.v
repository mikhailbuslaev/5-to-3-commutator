`include "mem_reg.v"
`timescale 1ns/1ns
module mem3_reg(control,clk,out);
    input  [2:0]clk;
    input [2:0] control;
    output [2:0][2:0] out;
    mem_reg dd0(.control(control), .clk(clk[0]), .out(out[0]));
    mem_reg dd1(.control(control), .clk(clk[1]), .out(out[1]));
    mem_reg dd2(.control(control), .clk(clk[2]), .out(out[2]));
endmodule