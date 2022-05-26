set OUTPUT_DIR ./run_dir
set_attribute lib_search_path ../library
set_attribute library {gsclib045_fast.lib}
set_attribute lef_library {\
gsclib045_tech.lef \
gsclib045_macro.lef \
giolib045.lef}
load -v2001 ../rtl/commutator.v
set DESIGN commutator
elaborate
synthesize -to_mapped -eff high -no_incr
write -mapped > ${DESIGN}_synth.v
write_sdc > ${DESIGN}.sdc
write_design -innovus ${DESIGN}
exit
