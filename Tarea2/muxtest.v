module muxtest(
    input      [1:0] data_out,
    output reg clk,//       estimilar salidas
    output reg reset_L,
    output reg selector,
    output reg [1:0] data_in0,//    estimular salidas
    output reg [1:0] data_in1
);
initial begin
    $dumpfile("muxsignal.vcd");	// Nombre de .vcd a graficar
	$dumpvars;
    //$display ("\t\t\tclk,\tout,\treset,\tselector,\tin0,\tin1");
    $monitor("t=",$time,"clk=%b,data_out=%b,\t\t%b\t\t%b\t%b\t%b", clk,data_out,selector,reset_L,data_in0,data_in1);
    reset_L=0;    //valor por defecto de entrada selector
    selector=0;
    {data_in0,data_in1}= 2'b00; //valor inicial de datos de entradas
    repeat (1) begin //Vamos a repetirlo 3 ciclos
        @(posedge clk);
        reset_L<=1;
        selector<=0;
    end 
        @(posedge clk)
        data_in0 <= 2'b11;
		data_in1 <= 2'b10;
		
        @(posedge clk)
        data_in0 <= 2'b01;
		data_in1 <= 2'b00;
        selector <= 1;
        
        @(posedge clk)
        data_in0 <= 2'b00;
		data_in1 <= 2'b10;
        
        @(posedge clk)
        data_in0 <= 2'b11;
		data_in1 <= 2'b11;
        selector <= 0;
        
        @(posedge clk)
        data_in0 <= 2'b00;
		data_in1 <= 2'b01;
        selector <= 1;

        @(posedge clk)
        data_in0 <= 2'b10;
		data_in1 <= 2'b00;
        selector <= 0;

		@(posedge clk)
        selector <= 1;

		@(posedge clk)
        data_in0 <= 2'b10;
		data_in1 <= 2'b00;
        selector <= 1;

		$finish;
    end
    // Reloj
	initial	clk 	<= 0;			// Valor inicial al relo
	always	#2 clk 	<= ~clk;		//invertido cada 2*10ns
endmodule