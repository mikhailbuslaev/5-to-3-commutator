`include "mx_reg.v"
`timescale 1ns/1ns

module mx_reg_test;
    reg [7:0]d;
    reg [8:0]control;
    wire [2:0]out;
    initial begin
        d <= 8'b00000000;
        control[0] <= 3'b000;
        control[1] <= 3'b000;
        control[2] <= 3'b000;
    end
   mx_reg dd0(.d(d),.control(control),.out(out));
    always #12 d[0] = ~d[0];
    always #11 d[1] = ~d[1];
    always #10 d[2] = ~d[2];
    always #9 d[3] = ~d[3];
    always #8 d[4] = ~d[4];
    always #7 d[5] = ~d[5];
    always #4 d[6] = ~d[6];
    always #2 d[7] = ~d[7];
    always #30 control[0][0] = ~control[0][0];
    always #27 control[0][1] = ~control[0][1];
    always #25 control[0][2] = ~control[0][2];
    always #23 control[1][0] = ~control[1][0];
    always #21 control[1][1] = ~control[1][1];
    always #22 control[1][2] = ~control[1][2];
    always #24 control[2][0] = ~control[2][0];
    always #26 control[2][1] = ~control[2][1];
    always #28 control[2][2] = ~control[2][2];
    initial begin
        $dumpfile("mx_reg_test.vcd");
        $dumpvars;
        $display("test complete");
        #200;
        $finish;
    end
endmodule