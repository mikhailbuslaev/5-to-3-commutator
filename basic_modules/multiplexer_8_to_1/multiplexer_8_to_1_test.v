`include "multiplexer_8_to_1.v"
`timescale 1ns/1ns

module multiplexer_8_to_1_test;
    reg [7:0]d;
    reg [2:0]control;
    wire out;
    initial begin
        d <= 8'b00000000;
        control <= 3'b000;
    end
    multiplexer_8_to_1 dd0(.d(d),.control(control),.out(out));
    always #12 d[0] = ~d[0];
    always #11 d[1] = ~d[1];
    always #10 d[2] = ~d[2];
    always #9 d[3] = ~d[3];
    always #8 d[4] = ~d[4];
    always #7 d[5] = ~d[5];
    always #4 d[6] = ~d[6];
    always #2 d[7] = ~d[7];
    always #30 control[0] = ~control[0];
    always #37 control[1] = ~control[1];
    always #24 control[2] = ~control[2];
    initial begin
        $dumpfile("multiplexer_8_to_1_test.vcd");
        $dumpvars;
        $display("test complete");
        #200;
        $finish;
    end
endmodule