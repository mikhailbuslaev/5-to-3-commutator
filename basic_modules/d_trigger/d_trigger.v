`timescale 1ns/1ns
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