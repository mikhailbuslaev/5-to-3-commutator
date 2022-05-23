`include "d_trigger.v"
`timescale 1ns/1ns
module d_trigger_test;
    reg d, clk;
    wire q, qbar;
    d_trigger dd0(.d(d),.clk(clk),.q(q),.qbar(qbar));
    initial begin
        clk <= 0;
        d <= 0;
    end
    always #17 clk = ~clk;
    always #5 d = ~d;
    initial begin
        $dumpfile("d_trigger_test.vcd");
        $dumpvars;
        $display("test complete");
        #100;
        $finish;
    end
    
endmodule