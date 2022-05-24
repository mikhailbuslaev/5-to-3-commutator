`timescale 1ns/1ns

module multiplexer_8_to_1(d,control,out);
    input [2:0]control;
    input [7:0]d;
    output reg out;
    always @ (d[0] or d[1] or d[2] or d[3] or d[4] or d[5] or d[6] or d[7] or control[0] or control[1]) begin
       case(control) 
       3'b000 : out <= d[0];
       3'b100 : out <= d[1];
       3'b010 : out <= d[2];
       3'b110 : out <= d[3];
       3'b001 : out <= d[4];
       3'b101 : out <= d[5];
       3'b011 : out <= d[6];
       3'b111 : out <= d[7];
       default : out <= 0;
       endcase
    end
endmodule

module mx_reg(d,control,out);
    input [7:0] d;
    input [2:0][2:0] control;
    output [2:0] out;
    multiplexer_8_to_1 dd0(.d(d), .control(control[0]), .out(out[0]));
    multiplexer_8_to_1 dd1(.d(d), .control(control[1]), .out(out[1]));
    multiplexer_8_to_1 dd2(.d(d), .control(control[2]), .out(out[2]));
endmodule

module d_trigger(d,clk,q,qbar);
    output reg q;
    output qbar;
    input d, clk;
    assign qbar = ~q;
    always @ (d or clk) begin
        if (clk)
       #1 q = d;
    end
endmodule

module mem_reg(control,clk,out);
    input  clk;
    input [2:0] control;
    output [2:0] out;
    d_trigger dd0(.d(control[0]), .clk(clk), .q(out[0]), .qbar());
    d_trigger dd1(.d(control[1]), .clk(clk), .q(out[1]), .qbar());
    d_trigger dd2(.d(control[2]), .clk(clk), .q(out[2]), .qbar());
endmodule

module mem3_reg(control,clk,out);
    input  [2:0]clk;
    input [2:0] control;
    output [2:0][2:0] out;
    mem_reg dd0(.control(control), .clk(clk[0]), .out(out[0]));
    mem_reg dd1(.control(control), .clk(clk[1]), .out(out[1]));
    mem_reg dd2(.control(control), .clk(clk[2]), .out(out[2]));
endmodule

module commutator(inputs,control,clk,outputs);
    input  [2:0]clk;
    input [2:0] control;
    input [7:0] inputs;
    output [2:0] outputs;
    wire [2:0][2:0] mem_out;
    mem3_reg dd0(.control(control),.clk(clk),.out(mem_out));
    mx_reg dd1(.d(inputs),.control(mem_out),.out(outputs));
endmodule

module top(inputs_i,control_i,clk_i,outputs_o);
    input  [2:0]clk_i;
    input [2:0] control_i;
    input [7:0] inputs_i;
    output [2:0][2:0] outputs_o;

    wire [2:0] clk;
    wire [2:0] control;
    wire [7:0] inputs;
    wire [2:0][2:0] outputs;
    wire vddc, vddo;
    wire vssc, vsso;

    commutator dd0(.inputs(inputs),.control(control),.clk(clk),.outputs(outputs));

    PADDI pad_clk(.A(clk_i), .Y(clk), .VDDIOR(vddo), .VSSIOR(vsso));
    PADDI pad_control(.A(control_i), .Y(control), .VDDIOR(vddo), .VSSIOR(vsso));
    PADDI pad_inputs(.A(inputs_i), .Y(inputs), .VDDIOR(vddo), .VSSIOR(vsso));
    PADDO pad_outputs(.A(outputs_i), .Y(outputs), .VDDIOR(vddo), .VSSIOR(vsso));

    PADVDD pad_vdd1(.VDD(vddc), .VDDIOR(vddo), .VSSIOR(vsso));
    PADVDD pad_vdd2(.VDD(vddc), .VDDIOR(vddo), .VSSIOR(vsso));
    PADVDD pad_vss1(.VSS(vssc), .VDDIOR(vddo), .VSSIOR(vsso));
    PADVDD pad_vss2(.VSS(vssc), .VDDIOR(vddo), .VSSIOR(vsso));

    PADVDDIOR pad_vddior(.VDDIOR(vddo), .VSSIOR(vsso));
    PADVSSIOR pad_vssior(.VDDIOR(vddo), .VSSIOR(vsso));
endmodule