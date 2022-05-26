######################################################################

# Created by Genus(TM) Synthesis Solution 19.10-p002_1 on Wed May 25 20:10:28 MSK 2022

# This file contains the RC script for /designs/commutator

######################################################################

::legacy::set_attribute -quiet init_lib_search_path ../library /
::legacy::set_attribute -quiet common_ui false /
::legacy::set_attribute -quiet design_mode_process no_value /
::legacy::set_attribute -quiet phys_assume_met_fill 0.0 /
::legacy::set_attribute -quiet map_placed_for_hum false /
::legacy::set_attribute -quiet phys_use_invs_extraction true /
::legacy::set_attribute -quiet phys_route_time_out 120.0 /
::legacy::set_attribute -quiet capacitance_per_unit_length_mmmc {} /
::legacy::set_attribute -quiet resistance_per_unit_length_mmmc {} /
::legacy::set_attribute -quiet runtime_by_stage { {to_generic 0 333 0 10}  {first_condense 0 333 0 11}  {second_condense 0 333 0 11}  {reify 0 333 0 11}  {global_incr_map 0 333 0 11} } /
::legacy::set_attribute -quiet tinfo_tstamp_file .rs_r10021492.tstamp /
::legacy::set_attribute -quiet flow_metrics_snapshot_uuid cefea8ed-fada-47d4-9ca2-55c33057643b /
::legacy::set_attribute -quiet phys_use_segment_parasitics true /
::legacy::set_attribute -quiet probabilistic_extraction true /
::legacy::set_attribute -quiet ple_correlation_factors {1.9000 2.0000} /
::legacy::set_attribute -quiet maximum_interval_of_vias inf /
::legacy::set_attribute -quiet layer_aware_buffer true /
::legacy::set_attribute -quiet interconnect_mode wireload /
::legacy::set_attribute -quiet wireload_mode enclosed /
::legacy::set_attribute -quiet wireload_selection none /
::legacy::set_attribute -quiet tree_type balanced_tree /libraries/fast_vdd1v0/operating_conditions/PVT_1P1V_0C
::legacy::set_attribute -quiet tree_type balanced_tree /libraries/fast_vdd1v0/operating_conditions/_nominal_
# BEGIN MSV SECTION
# END MSV SECTION
# BEGIN DFT SECTION
::legacy::set_attribute -quiet dft_scan_style muxed_scan /
::legacy::set_attribute -quiet dft_scanbit_waveform_analysis false /
identify_multibit_cell_abstract_scan_segments -design /designs/commutator
# END DFT SECTION
::legacy::set_attribute -quiet qos_by_stage {{to_generic {wns -11111111} {tns -111111111} {vep -111111111} {area 112} {cell_count 12} {utilization  0.00} {runtime 0 333 0 10} }{first_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 216} {cell_count 72} {utilization  0.00} {runtime 0 333 0 11} }{second_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 216} {cell_count 72} {utilization  0.00} {runtime 0 333 0 11} }{reify {wns 214748365} {tns 0} {vep 0} {area 99} {cell_count 21} {utilization  0.00} {runtime 0 333 0 11} }{global_incr_map {wns 214748365} {tns 0} {vep 0} {area 98} {cell_count 21} {utilization  0.00} {runtime 0 333 0 11} }} /designs/commutator
::legacy::set_attribute -quiet seq_mbci_coverage 0.0 /designs/commutator
::legacy::set_attribute -quiet hdl_user_name commutator /designs/commutator
::legacy::set_attribute -quiet hdl_filelist {{default -v2001 {SYNTHESIS} {../rtl/commutator.v} {} {}}} /designs/commutator
::legacy::set_attribute -quiet verification_directory fv/commutator /designs/commutator
::legacy::set_attribute -quiet arch_filename ../rtl/commutator.v /designs/commutator
::legacy::set_attribute -quiet entity_filename ../rtl/commutator.v /designs/commutator
::legacy::set_attribute -quiet original_name {inputs[7]} {/designs/commutator/ports_in/inputs[7]}
::legacy::set_attribute -quiet original_name {inputs[6]} {/designs/commutator/ports_in/inputs[6]}
::legacy::set_attribute -quiet original_name {inputs[5]} {/designs/commutator/ports_in/inputs[5]}
::legacy::set_attribute -quiet original_name {inputs[4]} {/designs/commutator/ports_in/inputs[4]}
::legacy::set_attribute -quiet original_name {inputs[3]} {/designs/commutator/ports_in/inputs[3]}
::legacy::set_attribute -quiet original_name {inputs[2]} {/designs/commutator/ports_in/inputs[2]}
::legacy::set_attribute -quiet original_name {inputs[1]} {/designs/commutator/ports_in/inputs[1]}
::legacy::set_attribute -quiet original_name {inputs[0]} {/designs/commutator/ports_in/inputs[0]}
::legacy::set_attribute -quiet original_name {control[2]} {/designs/commutator/ports_in/control[2]}
::legacy::set_attribute -quiet original_name {control[1]} {/designs/commutator/ports_in/control[1]}
::legacy::set_attribute -quiet original_name {control[0]} {/designs/commutator/ports_in/control[0]}
::legacy::set_attribute -quiet original_name {clk[2]} {/designs/commutator/ports_in/clk[2]}
::legacy::set_attribute -quiet original_name {clk[1]} {/designs/commutator/ports_in/clk[1]}
::legacy::set_attribute -quiet original_name {clk[0]} {/designs/commutator/ports_in/clk[0]}
::legacy::set_attribute -quiet original_name {outputs[2]} {/designs/commutator/ports_out/outputs[2]}
::legacy::set_attribute -quiet original_name {outputs[1]} {/designs/commutator/ports_out/outputs[1]}
::legacy::set_attribute -quiet original_name {outputs[0]} {/designs/commutator/ports_out/outputs[0]}
::legacy::set_attribute -quiet original_name dd0/dd0/dd1/q /designs/commutator/instances_seq/dd0_dd0_dd1_q_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/commutator/instances_seq/dd0_dd0_dd1_q_reg
::legacy::set_attribute -quiet single_bit_orig_name dd0/dd0/dd1/q /designs/commutator/instances_seq/dd0_dd0_dd1_q_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/commutator/instances_seq/dd0_dd0_dd1_q_reg
::legacy::set_attribute -quiet original_name dd0/dd0/dd1/q/q /designs/commutator/instances_seq/dd0_dd0_dd1_q_reg/pins_out/Q
::legacy::set_attribute -quiet original_name dd0/dd0/dd1/q/q /designs/commutator/instances_seq/dd0_dd0_dd1_q_reg/pins_out/QN
::legacy::set_attribute -quiet original_name dd0/dd2/dd1/q /designs/commutator/instances_seq/dd0_dd2_dd1_q_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/commutator/instances_seq/dd0_dd2_dd1_q_reg
::legacy::set_attribute -quiet single_bit_orig_name dd0/dd2/dd1/q /designs/commutator/instances_seq/dd0_dd2_dd1_q_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/commutator/instances_seq/dd0_dd2_dd1_q_reg
::legacy::set_attribute -quiet original_name dd0/dd2/dd1/q/q /designs/commutator/instances_seq/dd0_dd2_dd1_q_reg/pins_out/Q
::legacy::set_attribute -quiet original_name dd0/dd2/dd1/q/q /designs/commutator/instances_seq/dd0_dd2_dd1_q_reg/pins_out/QN
::legacy::set_attribute -quiet original_name dd0/dd2/dd0/q /designs/commutator/instances_seq/dd0_dd2_dd0_q_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/commutator/instances_seq/dd0_dd2_dd0_q_reg
::legacy::set_attribute -quiet single_bit_orig_name dd0/dd2/dd0/q /designs/commutator/instances_seq/dd0_dd2_dd0_q_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/commutator/instances_seq/dd0_dd2_dd0_q_reg
::legacy::set_attribute -quiet original_name dd0/dd2/dd0/q/q /designs/commutator/instances_seq/dd0_dd2_dd0_q_reg/pins_out/Q
::legacy::set_attribute -quiet original_name dd0/dd2/dd0/q/q /designs/commutator/instances_seq/dd0_dd2_dd0_q_reg/pins_out/QN
::legacy::set_attribute -quiet original_name dd0/dd0/dd0/q /designs/commutator/instances_seq/dd0_dd0_dd0_q_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/commutator/instances_seq/dd0_dd0_dd0_q_reg
::legacy::set_attribute -quiet single_bit_orig_name dd0/dd0/dd0/q /designs/commutator/instances_seq/dd0_dd0_dd0_q_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/commutator/instances_seq/dd0_dd0_dd0_q_reg
::legacy::set_attribute -quiet original_name dd0/dd0/dd0/q/q /designs/commutator/instances_seq/dd0_dd0_dd0_q_reg/pins_out/Q
::legacy::set_attribute -quiet original_name dd0/dd0/dd0/q/q /designs/commutator/instances_seq/dd0_dd0_dd0_q_reg/pins_out/QN
::legacy::set_attribute -quiet original_name dd0/dd1/dd2/q /designs/commutator/instances_seq/dd0_dd1_dd2_q_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/commutator/instances_seq/dd0_dd1_dd2_q_reg
::legacy::set_attribute -quiet single_bit_orig_name dd0/dd1/dd2/q /designs/commutator/instances_seq/dd0_dd1_dd2_q_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/commutator/instances_seq/dd0_dd1_dd2_q_reg
::legacy::set_attribute -quiet original_name dd0/dd1/dd2/q/q /designs/commutator/instances_seq/dd0_dd1_dd2_q_reg/pins_out/Q
::legacy::set_attribute -quiet original_name dd0/dd1/dd2/q/q /designs/commutator/instances_seq/dd0_dd1_dd2_q_reg/pins_out/QN
::legacy::set_attribute -quiet original_name dd0/dd1/dd1/q /designs/commutator/instances_seq/dd0_dd1_dd1_q_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/commutator/instances_seq/dd0_dd1_dd1_q_reg
::legacy::set_attribute -quiet single_bit_orig_name dd0/dd1/dd1/q /designs/commutator/instances_seq/dd0_dd1_dd1_q_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/commutator/instances_seq/dd0_dd1_dd1_q_reg
::legacy::set_attribute -quiet original_name dd0/dd1/dd1/q/q /designs/commutator/instances_seq/dd0_dd1_dd1_q_reg/pins_out/Q
::legacy::set_attribute -quiet original_name dd0/dd1/dd1/q/q /designs/commutator/instances_seq/dd0_dd1_dd1_q_reg/pins_out/QN
::legacy::set_attribute -quiet original_name dd0/dd2/dd2/q /designs/commutator/instances_seq/dd0_dd2_dd2_q_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/commutator/instances_seq/dd0_dd2_dd2_q_reg
::legacy::set_attribute -quiet single_bit_orig_name dd0/dd2/dd2/q /designs/commutator/instances_seq/dd0_dd2_dd2_q_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/commutator/instances_seq/dd0_dd2_dd2_q_reg
::legacy::set_attribute -quiet original_name dd0/dd2/dd2/q/q /designs/commutator/instances_seq/dd0_dd2_dd2_q_reg/pins_out/Q
::legacy::set_attribute -quiet original_name dd0/dd2/dd2/q/q /designs/commutator/instances_seq/dd0_dd2_dd2_q_reg/pins_out/QN
::legacy::set_attribute -quiet original_name dd0/dd0/dd2/q /designs/commutator/instances_seq/dd0_dd0_dd2_q_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/commutator/instances_seq/dd0_dd0_dd2_q_reg
::legacy::set_attribute -quiet single_bit_orig_name dd0/dd0/dd2/q /designs/commutator/instances_seq/dd0_dd0_dd2_q_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/commutator/instances_seq/dd0_dd0_dd2_q_reg
::legacy::set_attribute -quiet original_name dd0/dd0/dd2/q/q /designs/commutator/instances_seq/dd0_dd0_dd2_q_reg/pins_out/Q
::legacy::set_attribute -quiet original_name dd0/dd0/dd2/q/q /designs/commutator/instances_seq/dd0_dd0_dd2_q_reg/pins_out/QN
::legacy::set_attribute -quiet original_name dd0/dd1/dd0/q /designs/commutator/instances_seq/dd0_dd1_dd0_q_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/commutator/instances_seq/dd0_dd1_dd0_q_reg
::legacy::set_attribute -quiet single_bit_orig_name dd0/dd1/dd0/q /designs/commutator/instances_seq/dd0_dd1_dd0_q_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/commutator/instances_seq/dd0_dd1_dd0_q_reg
::legacy::set_attribute -quiet original_name dd0/dd1/dd0/q/q /designs/commutator/instances_seq/dd0_dd1_dd0_q_reg/pins_out/Q
::legacy::set_attribute -quiet original_name dd0/dd1/dd0/q/q /designs/commutator/instances_seq/dd0_dd1_dd0_q_reg/pins_out/QN
# BEGIN PMBIST SECTION
# END PMBIST SECTION
#############################################################
#####   FLOW WRITE   ########################################
##
## Written by Genus(TM) Synthesis Solution version 19.10-p002_1
## flowkit v19.10-b002_1
## Written on 20:10:28 25-May 2022
#############################################################
#####   Flow Definitions   ##################################

#############################################################
#####   Step Definitions   ##################################


#############################################################
#####   Attribute Definitions   #############################

if {[is_attribute flow_edit_end_steps -obj_type root]} {set_flowkit_db flow_edit_end_steps {}}
if {[is_attribute flow_edit_start_steps -obj_type root]} {set_flowkit_db flow_edit_start_steps {}}
if {[is_attribute flow_footer_tcl -obj_type root]} {set_flowkit_db flow_footer_tcl {}}
if {[is_attribute flow_header_tcl -obj_type root]} {set_flowkit_db flow_header_tcl {}}
if {[is_attribute flow_metadata -obj_type root]} {set_flowkit_db flow_metadata {}}
if {[is_attribute flow_setup_config -obj_type root]} {set_flowkit_db flow_setup_config {HUDDLE {!!map {}}}}
if {[is_attribute flow_step_begin_tcl -obj_type root]} {set_flowkit_db flow_step_begin_tcl {}}
if {[is_attribute flow_step_check_tcl -obj_type root]} {set_flowkit_db flow_step_check_tcl {}}
if {[is_attribute flow_step_end_tcl -obj_type root]} {set_flowkit_db flow_step_end_tcl {}}
if {[is_attribute flow_step_order -obj_type root]} {set_flowkit_db flow_step_order {}}
if {[is_attribute flow_summary_tcl -obj_type root]} {set_flowkit_db flow_summary_tcl {}}
if {[is_attribute flow_template_feature_definition -obj_type root]} {set_flowkit_db flow_template_feature_definition {}}
if {[is_attribute flow_template_type -obj_type root]} {set_flowkit_db flow_template_type {}}
if {[is_attribute flow_template_version -obj_type root]} {set_flowkit_db flow_template_version {}}
if {[is_attribute flow_user_templates -obj_type root]} {set_flowkit_db flow_user_templates {}}


#############################################################
#####   Flow History   ######################################

if {[is_attribute flow_branch -obj_type root]} {set_flowkit_db flow_branch {}}
if {[is_attribute flow_caller_data -obj_type root]} {set_flowkit_db flow_caller_data {}}
if {[is_attribute flow_current -obj_type root]} {set_flowkit_db flow_current {}}
if {[is_attribute flow_hier_path -obj_type root]} {set_flowkit_db flow_hier_path {}}
if {[is_attribute flow_db_directory -obj_type root]} {set_flowkit_db flow_db_directory dbs}
if {[is_attribute flow_exit_when_done -obj_type root]} {set_flowkit_db flow_exit_when_done false}
if {[is_attribute flow_history -obj_type root]} {set_flowkit_db flow_history {}}
if {[is_attribute flow_log_directory -obj_type root]} {set_flowkit_db flow_log_directory logs}
if {[is_attribute flow_mail_on_error -obj_type root]} {set_flowkit_db flow_mail_on_error false}
if {[is_attribute flow_mail_to -obj_type root]} {set_flowkit_db flow_mail_to {}}
if {[is_attribute flow_metrics_file -obj_type root]} {set_flowkit_db flow_metrics_file {}}
if {[is_attribute flow_metrics_snapshot_parent_uuid -obj_type root]} {set_flowkit_db flow_metrics_snapshot_parent_uuid {}}
if {[is_attribute flow_metrics_snapshot_uuid -obj_type root]} {set_flowkit_db flow_metrics_snapshot_uuid cefea8ed-fada-47d4-9ca2-55c33057643b}
if {[is_attribute flow_overwrite_db -obj_type root]} {set_flowkit_db flow_overwrite_db false}
if {[is_attribute flow_report_directory -obj_type root]} {set_flowkit_db flow_report_directory reports}
if {[is_attribute flow_run_tag -obj_type root]} {set_flowkit_db flow_run_tag {}}
if {[is_attribute flow_schedule -obj_type root]} {set_flowkit_db flow_schedule {}}
if {[is_attribute flow_script -obj_type root]} {set_flowkit_db flow_script {}}
if {[is_attribute flow_starting_db -obj_type root]} {set_flowkit_db flow_starting_db {}}
if {[is_attribute flow_status_file -obj_type root]} {set_flowkit_db flow_status_file {}}
if {[is_attribute flow_step_canonical_current -obj_type root]} {set_flowkit_db flow_step_canonical_current {}}
if {[is_attribute flow_step_current -obj_type root]} {set_flowkit_db flow_step_current {}}
if {[is_attribute flow_step_last -obj_type root]} {set_flowkit_db flow_step_last {}}
if {[is_attribute flow_step_last_msg -obj_type root]} {set_flowkit_db flow_step_last_msg {}}
if {[is_attribute flow_step_last_status -obj_type root]} {set_flowkit_db flow_step_last_status not_run}
if {[is_attribute flow_step_next -obj_type root]} {set_flowkit_db flow_step_next {}}
if {[is_attribute flow_working_directory -obj_type root]} {set_flowkit_db flow_working_directory .}

#############################################################
#####   User Defined Attributes   ###########################

