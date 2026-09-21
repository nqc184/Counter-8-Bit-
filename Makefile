TOP ?= tb_full_adder

compile:
	vlib work
	vmap work work
	vlog *.sv

gui: compile
	vsim -voptargs=+acc work.$(TOP) -do "add wave -r sim:/$(TOP)/*"

run: compile
	vsim -c -voptargs=+acc work.$(TOP) -do "run -all; quit"

clean:
	rm -rf work
	rm -f transcript
	rm -f vsim.wlf