`include "mem_reg.v"
`timescale 1ns/1ns

module mem_reg_test;
    reg [2:0]control;
    reg clk;
    wire [2:0]out;
    initial begin
        clk <= 1'b0;
        control <= 3'b000;
    end
   mem_reg dd0(.control(control),.clk(clk),.out(out));
    always #50 clk = ~clk;
    always #30 control[0] = ~control[0];
    always #27 control[1] = ~control[1];
    always #25 control[2] = ~control[2];
    initial begin
        $dumpfile("mem_reg_test.vcd");
        $dumpvars;
        $display("test complete");
        #400;
        $finish;
    end
endmodule