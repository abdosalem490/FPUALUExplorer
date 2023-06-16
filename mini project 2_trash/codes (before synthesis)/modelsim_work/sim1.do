vlog ../verilog\ codes/testbench.v

vsim -t 1ps testbench

add wave reset RES OVFs NumOfSuccess NumOfFailure i clk B A

run 3000