all: t1 t2 t3 
t1:
	iverilog -o mux_conductual mux_conductual.v
t2:
	vvp mux_conductual
t3:
	gtkwave muxsignal.vcd
t4:
	emacs -batch Banco.v -f verilog-batch-auto
clean:
	rm -r *.vcd *.out