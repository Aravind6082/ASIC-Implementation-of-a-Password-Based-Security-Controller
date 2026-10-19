###############################################################################
# Created by write_sdc
###############################################################################
current_design digital_lock
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 10.0000 [get_ports {clk}]
set_clock_transition 0.1000 [get_clocks {clk}]
set_clock_uncertainty 0.2000 clk
set_propagated_clock [get_clocks {clk}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {digit[0]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {digit[1]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {digit[2]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {digit[3]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {enter}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {reset}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {error}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {locked}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {unlock}]
###############################################################################
# Environment
###############################################################################
###############################################################################
# Design Rules
###############################################################################
