`include "or8.v"
`timescale 1ns/1ns

module or8_test;
    reg d0, d1, d2, d3, d4, d5, d6, d7;
    wire out;
    initial begin
        d0 <= 0;
        d1 <= 0;
        d2 <= 0;
        d3 <= 0;
        d4 <= 0;
        d5 <= 0;
        d6 <= 0;
        d7 <= 0;
    end
    or8 dd0(.d0(d0),.d1(d1),.d2(d2),.d3(d3),.d4(d4),.d5(d5),.d6(d6),.d7(d7),.out(out));
    always #12 d0 = ~d0;
    always #11 d1 = ~d1;
    always #10 d2 = ~d2;
    always #9 d3 = ~d3;
    always #8 d4 = ~d4;
    always #7 d5 = ~d5;
    always #4 d6 = ~d6;
    always #2 d7 = ~d7;
    initial begin
        $dumpfile("or8_test.vcd");
        $dumpvars;
        $display("test complete");
        #200;
        $finish;
    end
endmodule