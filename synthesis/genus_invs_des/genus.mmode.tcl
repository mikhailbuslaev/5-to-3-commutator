create_library_set -name default_library_set -timing /local/users/r10021492/Documents/BuslaevMR/cadence/che/syn/../library/gsclib045_fast.lib
create_rc_corner -name _default_rc_corner_ -T 0.0
create_delay_corner -name _default_delay_corner_ -library_set default_library_set -opcond PVT_1P1V_0C  -opcond_library fast_vdd1v0 -rc_corner _default_rc_corner_

create_constraint_mode -name _default_constraint_mode_ -sdc_files {genus_invs_des/genus._default_constraint_mode_.sdc}
 
create_analysis_view -name _default_view_  -constraint_mode _default_constraint_mode_ -delay_corner _default_delay_corner_
 
 
set_analysis_view -setup _default_view_  -hold _default_view_
 
