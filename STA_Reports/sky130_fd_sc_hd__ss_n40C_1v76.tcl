read_liberty STA_Libraries/all_corners/sky130_fd_sc_hd__ss_n40C_1v76.lib
read_db /home/vscode/Desktop/OpenROAD-flow-scripts/flow/results/sky130hd/digital_lock_opt7/base/6_final.odb
read_sdc /home/vscode/Desktop/OpenROAD-flow-scripts/flow/results/sky130hd/digital_lock_opt7/base/6_final.sdc
source /home/vscode/Desktop/OpenROAD-flow-scripts/flow/platforms/sky130hd/setRC.tcl
estimate_parasitics -global_routing

puts "\n===== CORNER: sky130_fd_sc_hd__ss_n40C_1v76 ====="
puts "\n===== SETUP / MAXIMUM DELAY ====="
report_checks -path_delay max -format full_clock_expanded -fields {slew cap fanout} -digits 4
report_worst_slack -max

puts "\n===== HOLD / MINIMUM DELAY ====="
report_checks -path_delay min -format full_clock_expanded -fields {slew cap fanout} -digits 4
report_worst_slack -min
exit
