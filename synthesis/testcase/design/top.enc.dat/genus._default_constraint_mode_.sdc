# ####################################################################

#  Created by Genus(TM) Synthesis Solution 19.10-p002_1 on Tue May 24 21:09:24 MSK 2022

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design commutator

set_clock_gating_check -setup 0.0 