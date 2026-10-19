create_clock -name clk -period 10 [get_ports clk]

set_input_delay 2 -clock clk [get_ports {reset digit enter}]

set_output_delay 2 -clock clk [get_ports {unlock error locked}]

set_clock_uncertainty 0.2 [get_clocks clk]

set_clock_transition 0.1 [get_clocks clk]