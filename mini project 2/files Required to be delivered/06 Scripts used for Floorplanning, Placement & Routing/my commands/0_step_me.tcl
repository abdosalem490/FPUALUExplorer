nitro -log LOGs/nitro.log -journal LOGs/nitro.jou
setup_nrf
source flow_scripts/0_import.tcl
start
check_design
write_db -file db/import.db

