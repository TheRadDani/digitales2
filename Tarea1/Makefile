all: programa p2 p3 p4 p5
programa:
	iverilog -o probador probador.v
p2:
	vvp probador
p3:
	gtkwave alarma.vcd
p4:
	yosys -p "read -sv alarma_desc_conductual.v" -p "hierarchy -top alarma_desc_conductual" -p "show"
p5:
	sed 's/alarma_desc_conductual/alarma_desc_conductual_synth/' alarma_desc_conductualcp.v
clean:
	rm -r *.vcd 
