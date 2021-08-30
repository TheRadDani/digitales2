
Objetivo1: dep1 dep2 dep3 dep4 dep5
dep1:
	iverilog -o prueba1 probador.v
dep2:
	vvp prueba1
dep3:
	gtkwave alarma.vcd
dep4:
	yosys -p "read -sv alarma_desc_conductual.v" -p "hierarchy -top \ 
	alarma_desc_conductual" -p "show"
dep5:
	sed 's/alarma_desc_conductual/alarma_desc_conductual_synth/' alarma_desc_conductualcopia.v
