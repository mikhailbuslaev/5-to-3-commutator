global testDir
global dataDir
global libDir
create_library_set -name default_library_set\
   -timing\
    [list ${libDir}/lib/typ/gsclib045_fast.lib]
create_rc_corner -name _default_rc_corner_\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -T 0
create_delay_corner -name _default_delay_corner_\
   -library_set default_library_set\
   -opcond_library fast_vdd1v0\
   -opcond PVT_1P1V_0C\
   -rc_corner _default_rc_corner_
create_constraint_mode -name _default_constraint_mode_\
   -sdc_files\
    [list ${dataDir}/top.enc.dat/mmmc/modes/_default_constraint_mode_/_default_constraint_mode_.sdc]
create_analysis_view -name _default_view_ -constraint_mode _default_constraint_mode_ -delay_corner _default_delay_corner_
set_analysis_view -setup [list _default_view_] -hold [list _default_view_]
