# We skipped these
insert_pg_vias -partitions [get_top_partition]
trim_pg_route
write_db -file db/pg.db
# Till here

source flow_scripts/3_route.tcl > LOGs/route.log
check_design
write_db -file db/route.db
report_timing
