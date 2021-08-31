module mux_conductual(
    input clk,
    input reset_L,
    input selector,//bit de seleccion
    input [1:0] data_in0,//entradad de datos 0
    input [1:0] data_in1,//entrada de datos 1
    output reg [1:0] data_out//salida como bus de dos bits
);
always@(posedge clk) //funcionamineto como flip-flop dincronizado por flanco positivo de reloj
            begin
                if (reset_L==1) //si el selector esta en 1, el mux de en medio funciona como buffer hasta el flip-flop
                    if(selector==0)
                        data_out<=data_in0; //aaignacion no bloqueante
                    else
                        data_out<=data_in1;
                else if(reset_L==0) //segun enunciado, en este caso, el mux dos estara con su salida en 0
                data_out<=2'b00; 
            end
endmodule