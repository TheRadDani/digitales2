`timescale 	1s/1s
`include "mux_conductual.v"
`include "muxtest.v"
module BancoPruebas;
    wire clk;
    wire reset_L;
    wire selector;
    wire [1:0] data_in0;
    wire [1:0] data_in1;
    wire [1:0] data_out;
    muxconductual mux_m(/*AUTOINST*/);
    muxprobador prob_m(/*AUTOINST*/);
endmodule