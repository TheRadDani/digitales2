`timescale 1s/1s
`include "mux_conductual.v"
`include "muxtest.v"
module BancoPruebas;
    wire clk;
    wire reset_L;
    wire selector;
    wire [1:0] data_in0;
    wire [1:0] data_in1;
    wire [1:0] data_out;
    mux_conductual mux_(/*AUTOINST*/
			// Outputs
			.data_out	(data_out[1:0]),
			// Inputs
			.clk		(clk),
			.reset_L	(reset_L),
			.selector	(selector),
			.data_in0	(data_in0[1:0]),
			.data_in1	(data_in1[1:0]));
    muxtest test_(/*AUTOINST*/
		  // Outputs
		  .clk			(clk),
		  .reset_L		(reset_L),
		  .selector		(selector),
		  .data_in0		(data_in0[1:0]),
		  .data_in1		(data_in1[1:0]),
		  // Inputs
		  .data_out		(data_out[1:0]));
endmodule
