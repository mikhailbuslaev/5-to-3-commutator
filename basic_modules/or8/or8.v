`timescale 1ns/1ns
module or8(d0,d1,d2,d3,d4,d5,d6,d7,out);
    input d0,d1,d2,d3,d4,d5,d6,d7;
    output out;
    assign out =  d0 | d1 | d2 | d3 | d4 | d5 | d6 | d7;
endmodule