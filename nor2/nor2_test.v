`include "nor2.v"
`timescale 1ns/1ns

module nor2_test;
    reg a, b;
    wire out;
    initial begin
        a <= 0;
        b <= 0;
    end
    nor2 dd0(.a(a),.b(b),.out(out));
    always #10 a = ~a;
    always #5 b = ~b;
    initial begin
        $dumpfile("nor2_test.vcd");
        $dumpvars;
        $display("test complete");
        #50;
        $finish;
    end
endmodule