all: t1 t2 t3 
t1:
	emacs -batch Banco.v -f verilog-batch-auto
t2:
	iverilog -o Banco Banco.v
t3:
	vvp Banco
t4:
	gtkwave muxsignal.vcd
clean:
	rm -r *.vcd *.out