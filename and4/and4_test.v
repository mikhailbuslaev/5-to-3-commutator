`include "and4.v"
`timescale 1ns/1ns

module and4_test;
    reg a, b, c, d;
    wire out;
    initial begin
        a <= 0;
        b <= 0;
        c <= 0;
        d <= 0;
    end
    and4 dd0(.a(a),.b(b),.c(c),.d(d),.out(out));
    always #10 a = ~a;
    always #7 b = ~b;
    always #5 c = ~c;
    always #3 d = ~d;
    initial begin
        $dumpfile("and4_test.vcd");
        $dumpvars;
        $display("test complete");
        #70;
        $finish;
    end
endmodule