all: programa p2 p3 p4
programa:
	iverilog -o probador probador.v
p2:
	vvp probador
p3:
	gtkwave alarma.vcd
p4:
	yosys -p "read -sv alarma_desc_conductual.v" -p "hierarchy -top \
alarma_desc_conductual" -p "show"

clean:
	rm -r *.vcd 
