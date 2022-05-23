`include "mem3_reg.v"
`timescale 1ns/1ns

module mem3_reg_test;
    reg [2:0]control;
    reg [2:0]clk;
    wire [8:0]out;
    initial begin
        clk <= 3'b000;
        control <= 3'b000;
    end
   mem3_reg dd0(.control(control),.clk(clk),.out(out));
    always #50 clk[0] = ~clk[0];
    always #35 clk[1] = ~clk[1];
    always #43 clk[2] = ~clk[2];
    always #30 control[0] = ~control[0];
    always #27 control[1] = ~control[1];
    always #25 control[2] = ~control[2];
    initial begin
        $dumpfile("mem3_reg_test.vcd");
        $dumpvars;
        $display("test complete");
        #400;
        $finish;
    end
endmodule