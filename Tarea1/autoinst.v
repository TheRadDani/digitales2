`include "alarma_desc_conductual.v"

module autoinst;
    
    alarma_desc_conductual alarma_desc_conductual(/*AUTOINST*/
						  // Outputs
						  .sAlr			(sAlr),
						  // Inputs
						  .sLuz			(sLuz),
						  .sPrta		(sPrta),
						  .sIgn			(sIgn));
endmodule


