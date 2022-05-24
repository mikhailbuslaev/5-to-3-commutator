`include "commutator.v"
`timescale 1ns/1ns

module commutator_test;
    reg [2:0] control;
    reg [2:0]clk;
    reg [7:0]inputs;
    wire [2:0]outputs;
    initial begin
        clk <= 3'b000;
        control <= 3'b000;
        inputs <= 8'b00000000;
    end
   commutator dd0(.inputs(inputs),.control(control),.clk(clk),.outputs(outputs));

    always #50 clk[0] = ~clk[0];  
    always #35 clk[1] = ~clk[1];
    always #43 clk[2] = ~clk[2];

    always #30 control[0] = ~control[0];
    always #27 control[1] = ~control[1];
    always #25 control[2] = ~control[2];

    always #12 inputs[0] = ~inputs[0];
    always #11 inputs[1] = ~inputs[1];
    always #10 inputs[2] = ~inputs[2];
    always #9 inputs[3] = ~inputs[3];
    always #8 inputs[4] = ~inputs[4];
    always #7 inputs[5] = ~inputs[5];
    always #4 inputs[6] = ~inputs[6];
    always #2 inputs[7] = ~inputs[7];
    initial begin
        $dumpfile("commutator_test.vcd");
        $dumpvars;
        $display("test complete");
        #400;
        $finish;
    end
endmodule