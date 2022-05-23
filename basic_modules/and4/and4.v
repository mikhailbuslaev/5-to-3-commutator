`timescale 1ns/1ns
module and4(a,b,c,d,out);
    input a,b,c,d;
    output out;
    assign out = a & b & c & d;
endmodule