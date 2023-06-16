vlog ../verilog\ codes/FPU_testbench.v

vsim -t 1ps FPU_testbench

add wave reset RES NumOfSuccess NumOfFailure i clk B A enable

run 7000