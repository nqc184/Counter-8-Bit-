TOP = tb_full_adder

all:
	vlib work
	vmap work work
	vlog *.sv
	vsim -c -voptargs=+acc work.$(TOP) -do "run -all; quit"

gui:
	vlib work
	vmap work work
	vlog *.sv
	vsim -voptargs=+acc work.$(TOP) -do "add wave -r sim:/$(TOP)/*"
