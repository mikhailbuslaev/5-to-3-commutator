`include "mem3_reg.v"
`include "mx_reg.v"
`timescale 1ns/1ns
module commutator(inputs,control,clk,outputs);
    input  [2:0]clk;
    input [2:0] control;
    input [7:0] inputs;
    output [2:0] outputs;
    wire [2:0][2:0] mem_out;
    mem3_reg dd0(.control(control),.clk(clk),.out(mem_out));
    mx_reg dd1(.d(inputs),.control(mem_out),.out(outputs));
endmodule